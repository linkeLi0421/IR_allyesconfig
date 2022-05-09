; ModuleID = '/llk/IR_all_yes/lib/zlib_inflate/infutil.c_pt.bc'
source_filename = "../lib/zlib_inflate/infutil.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.z_stream_s = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32 }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zlib_inflate_blob(ptr noundef %gunzip_buf, i32 noundef %sz, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 48) #7
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.gunzip_nomem1_crit_edge, label %if.end

entry.gunzip_nomem1_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %gunzip_nomem1

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @zlib_inflate_workspacesize() #4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %call1, i32 noundef 3264) #8
  %workspace = getelementptr inbounds %struct.z_stream_s, ptr %call7.i, i32 0, i32 8
  %1 = ptrtoint ptr %workspace to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call9.i, ptr %workspace, align 8
  %cmp4 = icmp eq ptr %call9.i, null
  br i1 %cmp4, label %if.end.gunzip_nomem2_crit_edge, label %if.end6

if.end.gunzip_nomem2_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %gunzip_nomem2

if.end6:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %buf, ptr %call7.i, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %avail_in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %len, ptr %avail_in, align 4
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %call7.i, i32 0, i32 3
  %4 = ptrtoint ptr %next_out to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %gunzip_buf, ptr %next_out, align 4
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %call7.i, i32 0, i32 4
  %5 = ptrtoint ptr %avail_out to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sz, ptr %avail_out, align 8
  %call7 = tail call i32 @zlib_inflateInit2(ptr noundef nonnull %call7.i, i32 noundef -15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end6.if.end17_crit_edge

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then9:                                         ; preds = %if.end6
  %call10 = tail call i32 @zlib_inflate(ptr noundef nonnull %call7.i, i32 noundef 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 1
  br i1 %cmp11, label %if.then12, label %if.then9.if.end14_crit_edge

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %avail_out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %avail_out, align 8
  %sub = sub i32 %sz, %7
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.then9.if.end14_crit_edge
  %rc.0 = phi i32 [ %sub, %if.then12 ], [ -22, %if.then9.if.end14_crit_edge ]
  %call15 = tail call i32 @zlib_inflateEnd(ptr noundef nonnull %call7.i) #4
  br label %if.end17

if.end17:                                         ; preds = %if.end14, %if.end6.if.end17_crit_edge
  %rc.1 = phi i32 [ %rc.0, %if.end14 ], [ -22, %if.end6.if.end17_crit_edge ]
  %8 = ptrtoint ptr %workspace to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %workspace, align 8
  tail call void @kfree(ptr noundef %9) #4
  br label %gunzip_nomem2

gunzip_nomem2:                                    ; preds = %if.end17, %if.end.gunzip_nomem2_crit_edge
  %rc.2 = phi i32 [ -12, %if.end.gunzip_nomem2_crit_edge ], [ %rc.1, %if.end17 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #4
  br label %gunzip_nomem1

gunzip_nomem1:                                    ; preds = %gunzip_nomem2, %entry.gunzip_nomem1_crit_edge
  %rc.3 = phi i32 [ -12, %entry.gunzip_nomem1_crit_edge ], [ %rc.2, %gunzip_nomem2 ]
  ret i32 %rc.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate_workspacesize() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateInit2(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateEnd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { nounwind allocsize(0) }

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
