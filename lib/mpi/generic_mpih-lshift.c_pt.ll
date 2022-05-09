; ModuleID = '/llk/IR_all_yes/lib/mpi/generic_mpih-lshift.c_pt.bc'
source_filename = "../lib/mpi/generic_mpih-lshift.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpihelp_lshift(ptr nocapture noundef writeonly %wp, ptr nocapture noundef readonly %up, i32 noundef %usize, i32 noundef %cnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 32, %cnt
  %sub2 = add i32 %usize, -1
  %arrayidx = getelementptr i32, ptr %up, i32 %sub2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %dec22 = add i32 %usize, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec22)
  %cmp23 = icmp sgt i32 %dec22, -1
  br i1 %cmp23, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %dec26 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec22, %entry.while.body_crit_edge ]
  %i.025 = phi i32 [ %dec26, %while.body.while.body_crit_edge ], [ %sub2, %entry.while.body_crit_edge ]
  %high_limb.024 = phi i32 [ %3, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %arrayidx3 = getelementptr i32, ptr %up, i32 %dec26
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3, align 4
  %shl = shl i32 %high_limb.024, %cnt
  %shr4 = lshr i32 %3, %sub
  %or = or i32 %shr4, %shl
  %arrayidx5 = getelementptr i32, ptr %wp, i32 %i.025
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %arrayidx5, align 4
  %dec = add nsw i32 %dec26, -1
  %cmp = icmp sgt i32 %dec26, 0
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %high_limb.0.lcssa = phi i32 [ %1, %entry.while.end_crit_edge ], [ %3, %while.body.while.end_crit_edge ]
  %i.0.lcssa = phi i32 [ %sub2, %entry.while.end_crit_edge ], [ 0, %while.body.while.end_crit_edge ]
  %shr = lshr i32 %1, %sub
  %shl6 = shl i32 %high_limb.0.lcssa, %cnt
  %arrayidx7 = getelementptr i32, ptr %wp, i32 %i.0.lcssa
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shl6, ptr %arrayidx7, align 4
  ret i32 %shr
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
