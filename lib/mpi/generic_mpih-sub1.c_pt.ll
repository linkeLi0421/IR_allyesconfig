; ModuleID = '/llk/IR_all_yes/lib/mpi/generic_mpih-sub1.c_pt.bc'
source_filename = "../lib/mpi/generic_mpih-sub1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpihelp_sub_n(ptr nocapture noundef writeonly %res_ptr, ptr nocapture noundef readonly %s1_ptr, ptr nocapture noundef readonly %s2_ptr, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 0, %size
  %add.ptr = getelementptr i32, ptr %s1_ptr, i32 %size
  %add.ptr2 = getelementptr i32, ptr %s2_ptr, i32 %size
  %add.ptr4 = getelementptr i32, ptr %res_ptr, i32 %size
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %cy.0 = phi i32 [ 0, %entry ], [ %add9, %do.body.do.body_crit_edge ]
  %j.0 = phi i32 [ %sub, %entry ], [ %inc, %do.body.do.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %add.ptr2, i32 %j.0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx5 = getelementptr i32, ptr %add.ptr, i32 %j.0
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx5, align 4
  %add = add i32 %1, %cy.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %cy.0)
  %cmp = icmp ult i32 %add, %cy.0
  %conv = zext i1 %cmp to i32
  %sub6 = sub i32 %3, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add)
  %cmp7 = icmp ult i32 %3, %add
  %conv8 = zext i1 %cmp7 to i32
  %add9 = add nuw nsw i32 %conv, %conv8
  %arrayidx10 = getelementptr i32, ptr %add.ptr4, i32 %j.0
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub6, ptr %arrayidx10, align 4
  %inc = add i32 %j.0, 1
  %tobool.not = icmp eq i32 %inc, 0
  br i1 %tobool.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #3
  ret i32 %add9
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
