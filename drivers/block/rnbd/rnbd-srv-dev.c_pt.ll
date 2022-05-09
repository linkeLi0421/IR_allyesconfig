; ModuleID = '/llk/IR_all_yes/drivers/block/rnbd/rnbd-srv-dev.c_pt.bc'
source_filename = "../drivers/block/rnbd/rnbd-srv-dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rnbd_dev = type { ptr, ptr, i32, [32 x i8] }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.23, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.23 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.rnbd_dev_blk_io = type { ptr, ptr, %struct.bio }
%struct.page = type { i32, %union.anon.6, %union.anon.71, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.71 = type { %struct.atomic_t }

@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rnbd_dev_open(ptr noundef %path, i32 noundef %flags, ptr noundef %bs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 44) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %blk_open_flags = getelementptr inbounds %struct.rnbd_dev, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %blk_open_flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %flags, ptr %blk_open_flags, align 8
  %call2 = tail call ptr @blkdev_get_by_path(ptr noundef %path, i32 noundef %flags, ptr noundef null) #4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %call7.i.i, align 8
  %cmp.i.i.not = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %err, label %if.end7

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %blk_open_flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %flags, ptr %blk_open_flags, align 8
  %name = getelementptr inbounds %struct.rnbd_dev, ptr %call7.i.i, i32 0, i32 3
  %call10 = tail call ptr @bdevname(ptr noundef %call2, ptr noundef %name) #4
  %ibd_bio_set = getelementptr inbounds %struct.rnbd_dev, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %ibd_bio_set to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %bs, ptr %ibd_bio_set, align 4
  br label %cleanup

err:                                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %err ], [ %call7.i.i, %if.end7 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdevname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rnbd_dev_close(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %blk_open_flags = getelementptr inbounds %struct.rnbd_dev, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %blk_open_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blk_open_flags, align 4
  tail call void @blkdev_put(ptr noundef %1, i32 noundef %3) #4
  tail call void @kfree(ptr noundef %dev) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rnbd_dev_bi_end_io(ptr noundef %bio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %priv = getelementptr inbounds %struct.rnbd_dev_blk_io, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %4 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bi_status, align 2
  %call = tail call i32 @blk_status_to_errno(i8 noundef zeroext %5) #4
  tail call void @rnbd_endio(ptr noundef %3, i32 noundef %call) #4
  tail call void @bio_put(ptr noundef %bio) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rnbd_endio(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rnbd_bio_map_kern(ptr noundef %data, ptr noundef %bs, i32 noundef %len, i32 noundef %gfp_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  %add = add i32 %0, 4095
  %sub = add i32 %add, %len
  %shr = lshr i32 %sub, 12
  %shr2 = lshr i32 %0, 12
  %sub3 = sub nsw i32 %shr, %shr2
  %conv = trunc i32 %sub3 to i16
  %call = tail call ptr @bio_alloc_bioset(i32 noundef %gfp_mask, i16 noundef zeroext %conv, ptr noundef %bs) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup27_crit_edge, label %if.end

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup27

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub3)
  %cmp67 = icmp slt i32 %sub3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp768 = icmp eq i32 %len, 0
  %or.cond69 = or i1 %cmp67, %cmp768
  br i1 %or.cond69, label %if.end.cleanup27_crit_edge, label %if.end10.preheader

if.end.cleanup27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup27

if.end10.preheader:                               ; preds = %if.end
  %and = and i32 %0, 4095
  br label %if.end10

if.end10:                                         ; preds = %for.inc.if.end10_crit_edge, %if.end10.preheader
  %i.073 = phi i32 [ %inc, %for.inc.if.end10_crit_edge ], [ 0, %if.end10.preheader ]
  %offset.072 = phi i32 [ 0, %for.inc.if.end10_crit_edge ], [ %and, %if.end10.preheader ]
  %data.addr.071 = phi ptr [ %add.ptr25, %for.inc.if.end10_crit_edge ], [ %data, %if.end10.preheader ]
  %len.addr.070 = phi i32 [ %sub26, %for.inc.if.end10_crit_edge ], [ %len, %if.end10.preheader ]
  %sub6 = sub nuw nsw i32 4096, %offset.072
  %1 = tail call i32 @llvm.umin.i32(i32 %sub6, i32 %len.addr.070)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %2 = load ptr, ptr @mem_map, align 4
  %3 = ptrtoint ptr %data.addr.071 to i32
  %sub15 = add i32 %3, 1073741824
  %shr16 = lshr i32 %sub15, 12
  %add.ptr = getelementptr %struct.page, ptr %2, i32 %shr16
  %call19 = tail call i32 @bio_add_page(ptr noundef nonnull %call, ptr noundef %add.ptr, i32 noundef %1, i32 noundef %offset.072) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call19, i32 %1)
  %cmp20 = icmp ult i32 %call19, %1
  br i1 %cmp20, label %cleanup.thread, label %for.inc

cleanup.thread:                                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @bio_put(ptr noundef nonnull %call) #4
  br label %cleanup27

for.inc:                                          ; preds = %if.end10
  %add.ptr25 = getelementptr i8, ptr %data.addr.071, i32 %1
  %sub26 = sub i32 %len.addr.070, %1
  %inc = add nuw nsw i32 %i.073, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %sub3)
  %cmp = icmp sge i32 %inc, %sub3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub26)
  %cmp7 = icmp eq i32 %sub26, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp7
  br i1 %or.cond, label %for.inc.cleanup27_crit_edge, label %for.inc.if.end10_crit_edge

for.inc.if.end10_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

for.inc.cleanup27_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup27

cleanup27:                                        ; preds = %for.inc.cleanup27_crit_edge, %cleanup.thread, %if.end.cleanup27_crit_edge, %entry.cleanup27_crit_edge
  %retval.2 = phi ptr [ inttoptr (i32 -12 to ptr), %entry.cleanup27_crit_edge ], [ inttoptr (i32 -22 to ptr), %cleanup.thread ], [ %call, %if.end.cleanup27_crit_edge ], [ %call, %for.inc.cleanup27_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

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
