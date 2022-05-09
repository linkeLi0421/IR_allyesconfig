; ModuleID = '/llk/IR_all_yes/drivers/media/platform/qcom/venus/hfi_platform.c_pt.bc'
source_filename = "../drivers/media/platform/qcom/venus/hfi_platform.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hfi_platform = type { ptr, ptr, ptr, ptr, ptr, ptr }

@hfi_plat_v4 = external dso_local constant %struct.hfi_platform, align 4
@hfi_plat_v6 = external dso_local constant %struct.hfi_platform, align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @hfi_platform_get(i32 noundef %version) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %version)
  %switch.selectcmp = icmp eq i32 %version, 3
  %switch.select = select i1 %switch.selectcmp, ptr @hfi_plat_v6, ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %version)
  %switch.selectcmp2 = icmp eq i32 %version, 2
  %switch.select3 = select i1 %switch.selectcmp2, ptr @hfi_plat_v4, ptr %switch.select
  ret ptr %switch.select3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfi_platform_get_codec_vpp_freq(i32 noundef %version, i32 noundef %codec, i32 noundef %session_type) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %version)
  %switch.selectcmp.i = icmp eq i32 %version, 3
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @hfi_plat_v6, ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %version)
  %switch.selectcmp2.i = icmp eq i32 %version, 2
  %switch.select3.i = select i1 %switch.selectcmp2.i, ptr @hfi_plat_v4, ptr %switch.select.i
  %tobool.not = icmp eq ptr %switch.select3.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %switch.select3.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %switch.select3.i, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %call4 = tail call i32 %1(i32 noundef %session_type, i32 noundef %codec) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call4, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfi_platform_get_codec_vsp_freq(i32 noundef %version, i32 noundef %codec, i32 noundef %session_type) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %version)
  %switch.selectcmp.i = icmp eq i32 %version, 3
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @hfi_plat_v6, ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %version)
  %switch.selectcmp2.i = icmp eq i32 %version, 2
  %switch.select3.i = select i1 %switch.selectcmp2.i, ptr @hfi_plat_v4, ptr %switch.select.i
  %tobool.not = icmp eq ptr %switch.select3.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %switch.select3.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %switch.select3.i, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %codec_vsp_freq = getelementptr inbounds %struct.hfi_platform, ptr %switch.select3.i, i32 0, i32 1
  %2 = ptrtoint ptr %codec_vsp_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %codec_vsp_freq, align 4
  %call3 = tail call i32 %3(i32 noundef %session_type, i32 noundef %codec) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call3, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfi_platform_get_codec_lp_freq(i32 noundef %version, i32 noundef %codec, i32 noundef %session_type) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %version)
  %switch.selectcmp.i = icmp eq i32 %version, 3
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @hfi_plat_v6, ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %version)
  %switch.selectcmp2.i = icmp eq i32 %version, 2
  %switch.select3.i = select i1 %switch.selectcmp2.i, ptr @hfi_plat_v4, ptr %switch.select.i
  %tobool.not = icmp eq ptr %switch.select3.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %codec_lp_freq = getelementptr inbounds %struct.hfi_platform, ptr %switch.select3.i, i32 0, i32 2
  %0 = ptrtoint ptr %codec_lp_freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %codec_lp_freq, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %call4 = tail call i32 %1(i32 noundef %session_type, i32 noundef %codec) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call4, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
