; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/ttm/ttm_module.c_pt.bc'
source_filename = "../drivers/gpu/drm/ttm/ttm_module.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@__UNIQUE_ID_author219 = internal constant [43 x i8] c"ttm.author=Thomas Hellstrom, Jerome Glisse\00", section ".modinfo", align 1
@__UNIQUE_ID_description220 = internal constant [62 x i8] c"ttm.description=TTM memory manager subsystem (for DRM device)\00", section ".modinfo", align 1
@__UNIQUE_ID_file221 = internal constant [33 x i8] c"ttm.file=drivers/gpu/drm/ttm/ttm\00", section ".modinfo", align 1
@__UNIQUE_ID_license222 = internal constant [38 x i8] c"ttm.license=GPL and additional rights\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author219, ptr @__UNIQUE_ID_description220, ptr @__UNIQUE_ID_file221, ptr @__UNIQUE_ID_license222], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ttm_prot_from_caching(i32 noundef %caching, i32 noundef %tmp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %caching to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %caching, label %if.else [
    i32 2, label %entry.return_crit_edge
    i32 1, label %if.then2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %and = and i32 %tmp, -61
  %or = or i32 %and, 4
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %and3 = and i32 %tmp, -61
  br label %return

return:                                           ; preds = %if.else, %if.then2, %entry.return_crit_edge
  %retval.0 = phi i32 [ %tmp, %entry.return_crit_edge ], [ %or, %if.then2 ], [ %and3, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @__UNIQUE_ID_author219, !1, !"__UNIQUE_ID_author219", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/ttm/ttm_module.c", i32 89, i32 1}
!2 = !{ptr @__UNIQUE_ID_description220, !3, !"__UNIQUE_ID_description220", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/ttm/ttm_module.c", i32 90, i32 1}
!4 = !{ptr @__UNIQUE_ID_file221, !5, !"__UNIQUE_ID_file221", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/ttm/ttm_module.c", i32 91, i32 1}
!6 = !{ptr @__UNIQUE_ID_license222, !5, !"__UNIQUE_ID_license222", i1 false, i1 false}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
