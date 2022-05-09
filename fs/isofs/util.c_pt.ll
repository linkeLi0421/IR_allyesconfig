; ModuleID = '/llk/IR_all_yes/fs/isofs/util.c_pt.bc'
source_filename = "../fs/isofs/util.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iso_date(ptr nocapture noundef readonly %p, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p, align 1
  %arrayidx1 = getelementptr i8, ptr %p, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %arrayidx3 = getelementptr i8, ptr %p, i32 2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %arrayidx5 = getelementptr i8, ptr %p, i32 3
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 1
  %arrayidx7 = getelementptr i8, ptr %p, i32 4
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx7, align 1
  %arrayidx9 = getelementptr i8, ptr %p, i32 5
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flag)
  %cmp = icmp eq i32 %flag, 0
  br i1 %cmp, label %if.then, label %entry.if.else17_crit_edge

entry.if.else17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else17

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx12 = getelementptr i8, ptr %p, i32 6
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %13 to i32
  br label %if.else17

if.else17:                                        ; preds = %if.then, %entry.if.else17_crit_edge
  %tz.0 = phi i32 [ %conv13, %if.then ], [ 0, %entry.if.else17_crit_edge ]
  %conv10 = zext i8 %11 to i32
  %conv8 = zext i8 %9 to i32
  %conv6 = zext i8 %7 to i32
  %conv4 = zext i8 %5 to i32
  %conv2 = zext i8 %3 to i32
  %conv = zext i8 %1 to i32
  %add = add nuw nsw i32 %conv, 1900
  %call = tail call i64 @mktime64(i32 noundef %add, i32 noundef %conv2, i32 noundef %conv4, i32 noundef %conv6, i32 noundef %conv8, i32 noundef %conv10) #2
  %conv18 = trunc i64 %call to i32
  %and = and i32 %tz.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or = or i32 %tz.0, -256
  %spec.select = select i1 %tobool.not, i32 %tz.0, i32 %or
  %14 = add nsw i32 %spec.select, 52
  call void @__sanitizer_cov_trace_const_cmp4(i32 105, i32 %14)
  %15 = icmp ult i32 %14, 105
  %mul26.neg = mul nsw i32 %spec.select, -900
  %sub = select i1 %15, i32 %mul26.neg, i32 0
  %crtime.0 = add i32 %sub, %conv18
  ret i32 %crtime.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mktime64(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

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
