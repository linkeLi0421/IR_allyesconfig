; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/core/softcursor.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/softcursor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.81, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.81 = type { ptr }
%struct.fb_cursor = type { i16, i16, i16, ptr, %struct.fbcurpos, %struct.fb_image }
%struct.fbcurpos = type { i16, i16 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }
%struct.fbcon_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.fb_var_screeninfo, %struct.timer_list, %struct.fb_cursor, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32 }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @soft_cursor(ptr noundef %info, ptr nocapture noundef readonly %cursor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 29
  %0 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbcon_par, align 4
  %pixmap = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10
  %scan_align1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 4
  %2 = ptrtoint ptr %scan_align1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan_align1, align 4
  %sub = add i32 %3, -1
  %buf_align3 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 3
  %4 = ptrtoint ptr %buf_align3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf_align3, align 4
  %sub4 = add i32 %5, -1
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %image5 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5
  %width = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 4
  %add = add i32 %9, 7
  %shr = lshr i32 %add, 3
  %height = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 3
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %mul = mul i32 %shr, %11
  %add7 = add i32 %mul, 56
  %cursor_size = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 26
  %12 = ptrtoint ptr %cursor_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cursor_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add7, i32 %13)
  %cmp8.not = icmp eq i32 %add7, %13
  br i1 %cmp8.not, label %if.end.if.end18_crit_edge, label %if.then9

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

if.then9:                                         ; preds = %if.end
  %cursor_src = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 25
  %14 = ptrtoint ptr %cursor_src to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cursor_src, align 4
  tail call void @kfree(ptr noundef %15) #3
  %16 = ptrtoint ptr %cursor_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add7, ptr %cursor_size, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add7, i32 noundef 2592) #6
  %17 = ptrtoint ptr %cursor_src to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9.i, ptr %cursor_src, align 4
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.then15, label %if.then9.if.end18_crit_edge

if.then9.if.end18_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

if.then15:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %cursor_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %cursor_size, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.then9.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %cursor_src19 = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 25
  %19 = ptrtoint ptr %cursor_src19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cursor_src19, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 56
  %21 = call ptr @memcpy(ptr %20, ptr %image5, i32 56)
  %add22 = add i32 %sub, %shr
  %neg = sub i32 0, %3
  %and = and i32 %add22, %neg
  %height23 = getelementptr inbounds %struct.fb_image, ptr %20, i32 0, i32 3
  %22 = ptrtoint ptr %height23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height23, align 4
  %mul24 = mul i32 %23, %and
  %add25 = add i32 %sub4, %mul24
  %neg26 = sub i32 0, %5
  %and27 = and i32 %add25, %neg26
  %call29 = tail call ptr @fb_get_buffer_offset(ptr noundef %info, ptr noundef %pixmap, i32 noundef %and27) #3
  %enable = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 1
  %24 = ptrtoint ptr %enable to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %enable, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool30.not = icmp eq i16 %25, 0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end18
  %rop = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 2
  %26 = ptrtoint ptr %rop to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %rop, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %27)
  %cond = icmp eq i16 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp32128.not = icmp eq i32 %mul, 0
  br i1 %cond, label %for.cond.preheader, label %for.cond40.preheader

for.cond40.preheader:                             ; preds = %if.then31
  br i1 %cmp32128.not, label %for.cond40.preheader.if.end57_crit_edge, label %for.body43.lr.ph

for.cond40.preheader.if.end57_crit_edge:          ; preds = %for.cond40.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end57

for.body43.lr.ph:                                 ; preds = %for.cond40.preheader
  %data44 = getelementptr inbounds %struct.fb_image, ptr %20, i32 0, i32 7
  %mask47 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 3
  br label %for.body43

for.cond.preheader:                               ; preds = %if.then31
  br i1 %cmp32128.not, label %for.cond.preheader.if.end57_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end57_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end57

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %data = getelementptr inbounds %struct.fb_image, ptr %20, i32 0, i32 7
  %mask = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0129 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %29, i32 %i.0129
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 1
  %32 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mask, align 4
  %arrayidx35 = getelementptr i8, ptr %33, i32 %i.0129
  %34 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx35, align 1
  %xor122 = xor i8 %35, %31
  %arrayidx38 = getelementptr i8, ptr %add.ptr, i32 %i.0129
  %36 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %xor122, ptr %arrayidx38, align 1
  %inc = add nuw i32 %i.0129, 1
  %exitcond131.not = icmp eq i32 %inc, %mul
  br i1 %exitcond131.not, label %for.body.if.end57_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.if.end57_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end57

for.body43:                                       ; preds = %for.body43.for.body43_crit_edge, %for.body43.lr.ph
  %i.1127 = phi i32 [ 0, %for.body43.lr.ph ], [ %inc54, %for.body43.for.body43_crit_edge ]
  %37 = ptrtoint ptr %data44 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data44, align 4
  %arrayidx45 = getelementptr i8, ptr %38, i32 %i.1127
  %39 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx45, align 1
  %41 = ptrtoint ptr %mask47 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mask47, align 4
  %arrayidx48 = getelementptr i8, ptr %42, i32 %i.1127
  %43 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx48, align 1
  %and50121 = and i8 %44, %40
  %arrayidx52 = getelementptr i8, ptr %add.ptr, i32 %i.1127
  %45 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %and50121, ptr %arrayidx52, align 1
  %inc54 = add nuw i32 %i.1127, 1
  %exitcond.not = icmp eq i32 %inc54, %mul
  br i1 %exitcond.not, label %for.body43.if.end57_crit_edge, label %for.body43.for.body43_crit_edge

for.body43.for.body43_crit_edge:                  ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body43

for.body43.if.end57_crit_edge:                    ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end57

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  %data56 = getelementptr inbounds %struct.fb_image, ptr %20, i32 0, i32 7
  %46 = ptrtoint ptr %data56 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data56, align 4
  %48 = call ptr @memcpy(ptr %add.ptr, ptr %47, i32 %mul)
  br label %if.end57

if.end57:                                         ; preds = %if.else, %for.body43.if.end57_crit_edge, %for.body.if.end57_crit_edge, %for.cond.preheader.if.end57_crit_edge, %for.cond40.preheader.if.end57_crit_edge
  %49 = ptrtoint ptr %height23 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %height23, align 4
  tail call void @fb_pad_aligned_buffer(ptr noundef %call29, i32 noundef %and, ptr noundef %add.ptr, i32 noundef %shr, i32 noundef %50) #3
  %data59 = getelementptr inbounds %struct.fb_image, ptr %20, i32 0, i32 7
  %51 = ptrtoint ptr %data59 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call29, ptr %data59, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %52 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fbops, align 4
  %fb_imageblit = getelementptr inbounds %struct.fb_ops, ptr %53, i32 0, i32 13
  %54 = ptrtoint ptr %fb_imageblit to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fb_imageblit, align 4
  tail call void %55(ptr noundef %info, ptr noundef %20) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.then15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end57 ], [ -12, %if.then15 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_get_buffer_offset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_pad_aligned_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(0) }

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
