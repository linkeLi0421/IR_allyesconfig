; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvif/fifo.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvif/fifo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nv_device_info_v1 = type { i8, i8, [6 x i8], [0 x %struct.nv_device_info_v1_data] }
%struct.nv_device_info_v1_data = type { i64, i64 }
%struct.anon.0 = type { %struct.nv_device_info_v1, %struct.anon.1 }
%struct.anon.1 = type { %struct.nv_device_info_v1_data, [64 x %struct.nv_device_info_v1_data] }
%struct.nvif_fifo_runlist = type { i64 }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @nvif_fifo_runlist(ptr noundef %device, i64 noundef %engine) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %runlist.i = getelementptr inbounds %struct.nvif_device, ptr %device, i32 0, i32 2
  %0 = ptrtoint ptr %runlist.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runlist.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.for.cond.preheader_crit_edge

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 1048) #8
  %tobool2.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %call7.i.i, align 8
  %count.i = getelementptr inbounds %struct.nv_device_info_v1, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 65, ptr %count.i, align 1
  %v.i = getelementptr inbounds %struct.anon.0, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %v.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 4294967296, ptr %v.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end4.i
  %i.082.i = phi i32 [ 0, %if.end4.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.anon.0, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 %i.082.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 4294967552, ptr %arrayidx.i, align 8
  %conv81.i = zext i32 %i.082.i to i64
  %data.i = getelementptr %struct.anon.0, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 %i.082.i, i32 1
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv81.i, ptr %data.i, align 8
  %inc.i = add nuw nsw i32 %i.082.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %call12.i = tail call i32 @nvif_object_mthd(ptr noundef %device, i32 noundef 0, ptr noundef nonnull %call7.i.i, i32 noundef 1048) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %for.end.i.nvif_fifo_runlists.exit_crit_edge

for.end.i.nvif_fifo_runlists.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvif_fifo_runlists.exit

if.end15.i:                                       ; preds = %for.end.i
  %data18.i = getelementptr inbounds %struct.anon.0, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %data18.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %data18.i, align 8
  %shr.i.i = lshr i64 %9, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i, i1 true) #5, !range !9
  %add.i.i = sub nuw nsw i32 64, %10
  br label %fls64.exit.i

if.end.i.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv1.i.i = trunc i64 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %conv1.i.i, 0
  %11 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i, i1 true) #5, !range !9
  %sub.i6.i.i = sub nuw nsw i32 32, %11
  %cond.i7.i.i = select i1 %tobool.not.i5.i.i, i32 0, i32 %sub.i6.i.i
  br label %fls64.exit.i

fls64.exit.i:                                     ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %cond.i7.i.i, %if.end.i.i ]
  %runlists20.i = getelementptr inbounds %struct.nvif_device, ptr %device, i32 0, i32 3
  %12 = ptrtoint ptr %runlists20.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %retval.0.i.i, ptr %runlists20.i, align 4
  %13 = shl nuw nsw i32 %retval.0.i.i, 3
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #9
  %14 = ptrtoint ptr %runlist.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call8.i.i.i, ptr %runlist.i, align 8
  %tobool25.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool25.not.i, label %fls64.exit.i.nvif_fifo_runlists.exit_crit_edge, label %for.cond28.preheader.i

fls64.exit.i.nvif_fifo_runlists.exit_crit_edge:   ; preds = %fls64.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvif_fifo_runlists.exit

for.cond28.preheader.i:                           ; preds = %fls64.exit.i
  %15 = ptrtoint ptr %runlists20.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %runlists20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp3083.i = icmp sgt i32 %16, 0
  br i1 %cmp3083.i, label %for.cond28.preheader.i.for.body32.i_crit_edge, label %for.cond28.preheader.i.nvif_fifo_runlists.exit.thread21_crit_edge

for.cond28.preheader.i.nvif_fifo_runlists.exit.thread21_crit_edge: ; preds = %for.cond28.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvif_fifo_runlists.exit.thread21

for.cond28.preheader.i.for.body32.i_crit_edge:    ; preds = %for.cond28.preheader.i
  br label %for.body32.i

for.body32.i:                                     ; preds = %for.inc47.i.for.body32.i_crit_edge, %for.cond28.preheader.i.for.body32.i_crit_edge
  %i.184.i = phi i32 [ %inc48.i, %for.inc47.i.for.body32.i_crit_edge ], [ 0, %for.cond28.preheader.i.for.body32.i_crit_edge ]
  %arrayidx35.i = getelementptr %struct.anon.0, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 %i.184.i
  %17 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx35.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %18)
  %cmp37.not.i = icmp eq i64 %18, -1
  br i1 %cmp37.not.i, label %for.body32.i.for.inc47.i_crit_edge, label %if.then39.i

for.body32.i.for.inc47.i_crit_edge:               ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc47.i

if.then39.i:                                      ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #7
  %data43.i = getelementptr %struct.anon.0, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 %i.184.i, i32 1
  %19 = ptrtoint ptr %data43.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %data43.i, align 8
  %21 = ptrtoint ptr %runlist.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %runlist.i, align 8
  %arrayidx45.i = getelementptr %struct.nvif_fifo_runlist, ptr %22, i32 %i.184.i
  %23 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %20, ptr %arrayidx45.i, align 8
  br label %for.inc47.i

for.inc47.i:                                      ; preds = %if.then39.i, %for.body32.i.for.inc47.i_crit_edge
  %inc48.i = add nuw nsw i32 %i.184.i, 1
  %24 = ptrtoint ptr %runlists20.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %runlists20.i, align 4
  %cmp30.i = icmp slt i32 %inc48.i, %25
  br i1 %cmp30.i, label %for.inc47.i.for.body32.i_crit_edge, label %for.inc47.i.nvif_fifo_runlists.exit.thread21_crit_edge

for.inc47.i.nvif_fifo_runlists.exit.thread21_crit_edge: ; preds = %for.inc47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvif_fifo_runlists.exit.thread21

for.inc47.i.for.body32.i_crit_edge:               ; preds = %for.inc47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body32.i

nvif_fifo_runlists.exit.thread21:                 ; preds = %for.inc47.i.nvif_fifo_runlists.exit.thread21_crit_edge, %for.cond28.preheader.i.nvif_fifo_runlists.exit.thread21_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %for.cond.preheader

nvif_fifo_runlists.exit:                          ; preds = %fls64.exit.i.nvif_fifo_runlists.exit_crit_edge, %for.end.i.nvif_fifo_runlists.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

for.cond.preheader:                               ; preds = %nvif_fifo_runlists.exit.thread21, %entry.for.cond.preheader_crit_edge
  %runlists = getelementptr inbounds %struct.nvif_device, ptr %device, i32 0, i32 3
  %26 = ptrtoint ptr %runlists to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %runlists, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp15 = icmp sgt i32 %27, 0
  br i1 %cmp15, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %28 = ptrtoint ptr %runlist.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %runlist.i, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %runm.016 = phi i64 [ 0, %for.body.lr.ph ], [ %runm.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nvif_fifo_runlist, ptr %29, i32 %i.017
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx, align 8
  %and = and i64 %31, %engine
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.then2

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %sh_prom = zext i32 %i.017 to i64
  %shl = shl nuw i64 1, %sh_prom
  %or = or i64 %shl, %runm.016
  br label %for.inc

for.inc:                                          ; preds = %if.then2, %for.body.for.inc_crit_edge
  %runm.1 = phi i64 [ %or, %if.then2 ], [ %runm.016, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, %27
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %nvif_fifo_runlists.exit, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i64 [ 0, %nvif_fifo_runlists.exit ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %runm.1, %for.inc.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_mthd(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind allocsize(0) }

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
!9 = !{i32 0, i32 33}
