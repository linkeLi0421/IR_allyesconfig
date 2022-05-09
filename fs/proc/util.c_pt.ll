; ModuleID = '/llk/IR_all_yes/fs/proc/util.c_pt.bc'
source_filename = "../fs/proc/util.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @name_to_int(ptr nocapture noundef readonly %qstr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %name1 = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 1
  %0 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1, align 8
  %2 = ptrtoint ptr %qstr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qstr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %land.lhs.true, label %entry.do.body.preheader_crit_edge

entry.do.body.preheader_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.body.preheader

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %5)
  %cmp3 = icmp eq i8 %5, 48
  br i1 %cmp3, label %land.lhs.true.cleanup16_crit_edge, label %land.lhs.true.do.body.preheader_crit_edge

land.lhs.true.do.body.preheader_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.body.preheader

land.lhs.true.cleanup16_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup16

do.body.preheader:                                ; preds = %land.lhs.true.do.body.preheader_crit_edge, %entry.do.body.preheader_crit_edge
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %name.0 = phi ptr [ %incdec.ptr, %do.cond.do.body_crit_edge ], [ %1, %do.body.preheader ]
  %len.0 = phi i32 [ %dec, %do.cond.do.body_crit_edge ], [ %3, %do.body.preheader ]
  %n.0 = phi i32 [ %add, %do.cond.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %6 = ptrtoint ptr %name.0 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %name.0, align 1
  %conv5 = zext i8 %7 to i32
  %sub = add nsw i32 %conv5, -48
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sub)
  %cmp6 = icmp ugt i32 %sub, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 429496727, i32 %n.0)
  %cmp10 = icmp ugt i32 %n.0, 429496727
  %or.cond = select i1 %cmp6, i1 true, i1 %cmp10
  br i1 %or.cond, label %do.body.cleanup16_crit_edge, label %do.cond

do.body.cleanup16_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup16

do.cond:                                          ; preds = %do.body
  %mul = mul nuw i32 %n.0, 10
  %add = add nuw i32 %sub, %mul
  %incdec.ptr = getelementptr i8, ptr %name.0, i32 1
  %dec = add i32 %len.0, -1
  %cmp14 = icmp sgt i32 %dec, 0
  br i1 %cmp14, label %do.cond.do.body_crit_edge, label %do.cond.cleanup16_crit_edge

do.cond.cleanup16_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup16

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.body

cleanup16:                                        ; preds = %do.cond.cleanup16_crit_edge, %do.body.cleanup16_crit_edge, %land.lhs.true.cleanup16_crit_edge
  %retval.0 = phi i32 [ -1, %land.lhs.true.cleanup16_crit_edge ], [ -1, %do.body.cleanup16_crit_edge ], [ %add, %do.cond.cleanup16_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

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
