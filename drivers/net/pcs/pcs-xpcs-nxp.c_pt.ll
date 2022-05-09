; ModuleID = '/llk/IR_all_yes/drivers/net/pcs/pcs-xpcs-nxp.c_pt.bc'
source_filename = "../drivers/net/pcs/pcs-xpcs-nxp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nxp_sja1105_sgmii_pma_config(ptr noundef %xpcs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xpcs_write(ptr noundef %xpcs, i32 noundef 31, i32 noundef 32993, i16 noundef zeroext 16) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xpcs_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nxp_sja1110_sgmii_pma_config(ptr noundef %xpcs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @nxp_sja1110_pma_config(ptr noundef %xpcs, i16 noundef zeroext 25, i16 noundef zeroext 1, i16 noundef zeroext 25, i16 noundef zeroext 1, i16 noundef zeroext 8490)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nxp_sja1110_pma_config(ptr noundef %xpcs, i16 noundef zeroext %txpll_fbdiv, i16 noundef zeroext %txpll_refdiv, i16 noundef zeroext %rxpll_fbdiv, i16 noundef zeroext %rxpll_refdiv, i16 noundef zeroext %rx_cdr_ctle) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %txpll_fbdiv, 4095
  %call = tail call i32 @xpcs_write(ptr noundef %xpcs, i32 noundef 31, i32 noundef 32877, i16 noundef zeroext %0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = and i16 %txpll_refdiv, 63
  %call6 = tail call i32 @xpcs_write(ptr noundef %xpcs, i32 noundef 31, i32 noundef 32878, i16 noundef zeroext %1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @xpcs_write(ptr noundef %xpcs, i32 noundef 31, i32 noundef 32824, i16 noundef zeroext 20480) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %call16 = tail call i32 @xpcs_write(ptr noundef %xpcs, i32 noundef 31, i32 noundef 32826, i16 noundef zeroext -1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %call21 = tail call i32 @xpcs_write(ptr noundef %xpcs, i32 noundef 31, i32 noundef 32827, i16 noundef zeroext 767) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end20.cleanup_crit_edge, label %if.end25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %call26 = tail call i32 @xpcs_write(ptr noundef %xpcs, i32 noundef 31, i32 noundef 32832, i16 noundef zeroext 3045) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end25.cleanup_crit_edge, label %if.end30

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %call31 = tail call i32 @xpcs_write(ptr noundef %xpcs, i32 noundef 31, i32 noundef 32823, i16 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end30.cleanup_crit_edge, label %if.end35

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  %shl = shl i16 %rxpll_fbdiv, 2
  %and37 = and i16 %shl, 1020
  %call39 = tail call i32 @xpcs_write(ptr noundef %xpcs, i32 noundef 31, i32 noundef 32869, i16 noundef zeroext %and37) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.end35.cleanup_crit_edge, label %if.end43

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end43:                                         ; preds = %if.end35
  %2 = and i16 %rxpll_refdiv, 31
  %call47 = tail call i32 @xpcs_write(ptr noundef %xpcs, i32 noundef 31, i32 noundef 32870, i16 noundef zeroext %2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.end43.cleanup_crit_edge, label %if.end51

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end51:                                         ; preds = %if.end43
  %call52 = tail call i32 @xpcs_write(ptr noundef %xpcs, i32 noundef 31, i32 noundef 32837, i16 noundef zeroext 5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.end51.cleanup_crit_edge, label %if.end56

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end56:                                         ; preds = %if.end51
  %call57 = tail call i32 @xpcs_read(ptr noundef %xpcs, i32 noundef 31, i32 noundef 32833) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.end56.cleanup_crit_edge, label %if.end61

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end61:                                         ; preds = %if.end56
  %3 = trunc i32 %call57 to i16
  %4 = and i16 %3, -8177
  %conv65 = or i16 %4, 1040
  %call66 = tail call i32 @xpcs_write(ptr noundef %xpcs, i32 noundef 31, i32 noundef 32833, i16 noundef zeroext %conv65) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.end61.cleanup_crit_edge, label %if.end70

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end70:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #5
  %call71 = tail call i32 @xpcs_write(ptr noundef %xpcs, i32 noundef 31, i32 noundef 32834, i16 noundef zeroext %rx_cdr_ctle) #3
  %5 = tail call i32 @llvm.smin.i32(i32 %call71, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.end61.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ %call26, %if.end25.cleanup_crit_edge ], [ %call31, %if.end30.cleanup_crit_edge ], [ %call39, %if.end35.cleanup_crit_edge ], [ %call47, %if.end43.cleanup_crit_edge ], [ %call52, %if.end51.cleanup_crit_edge ], [ %call57, %if.end56.cleanup_crit_edge ], [ %call66, %if.end61.cleanup_crit_edge ], [ %5, %if.end70 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nxp_sja1110_2500basex_pma_config(ptr noundef %xpcs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @nxp_sja1110_pma_config(ptr noundef %xpcs, i16 noundef zeroext 125, i16 noundef zeroext 2, i16 noundef zeroext 125, i16 noundef zeroext 2, i16 noundef zeroext 29482)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xpcs_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

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
