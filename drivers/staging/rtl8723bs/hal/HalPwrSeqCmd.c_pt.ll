; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.wlan_pwr_cfg = type <{ i16, i8, i16, i8, i8, i8 }>

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @HalPwrSeqCmdParsing(ptr noundef %padapter, i8 noundef zeroext %CutVersion, i8 noundef zeroext %FabVersion, i8 noundef zeroext %InterfaceType, ptr nocapture noundef readonly %PwrSeqCmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %conv1 = zext i8 %FabVersion to i32
  %conv11 = zext i8 %InterfaceType to i32
  br label %do.body

do.body:                                          ; preds = %if.end134, %entry
  %AryIdx.0 = phi i32 [ 0, %entry ], [ %inc135, %if.end134 ]
  %pollingCount.0 = phi i32 [ 0, %entry ], [ %pollingCount.2, %if.end134 ]
  %arrayidx = getelementptr %struct.wlan_pwr_cfg, ptr %PwrSeqCmd, i32 %AryIdx.0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %PwrCfgCmd.sroa.0.0.copyload = load i16, ptr %arrayidx, align 2
  %PwrCfgCmd.sroa.16.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 3
  %1 = ptrtoint ptr %PwrCfgCmd.sroa.16.0.arrayidx.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %PwrCfgCmd.sroa.16.0.copyload = load i16, ptr %PwrCfgCmd.sroa.16.0.arrayidx.sroa_idx, align 1
  %PwrCfgCmd.sroa.22.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 5
  %2 = ptrtoint ptr %PwrCfgCmd.sroa.22.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %PwrCfgCmd.sroa.22.0.copyload = load i8, ptr %PwrCfgCmd.sroa.22.0.arrayidx.sroa_idx, align 1
  %PwrCfgCmd.sroa.29.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 6
  %3 = ptrtoint ptr %PwrCfgCmd.sroa.29.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %PwrCfgCmd.sroa.29.0.copyload = load i8, ptr %PwrCfgCmd.sroa.29.0.arrayidx.sroa_idx, align 2
  %bf.lshr = lshr i16 %PwrCfgCmd.sroa.16.0.copyload, 12
  %bf.cast = zext i16 %bf.lshr to i32
  %and = and i32 %bf.cast, %conv1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.if.end134_crit_edge, label %land.lhs.true

do.body.if.end134_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end134

land.lhs.true:                                    ; preds = %do.body
  %PwrCfgCmd.sroa.14.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 2
  %4 = ptrtoint ptr %PwrCfgCmd.sroa.14.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %PwrCfgCmd.sroa.14.0.copyload = load i8, ptr %PwrCfgCmd.sroa.14.0.arrayidx.sroa_idx, align 2
  %and4179 = and i8 %PwrCfgCmd.sroa.14.0.copyload, %CutVersion
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and4179)
  %tobool5.not = icmp eq i8 %and4179, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end134_crit_edge, label %land.lhs.true6

land.lhs.true.if.end134_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end134

land.lhs.true6:                                   ; preds = %land.lhs.true
  %bf.lshr8 = lshr i16 %PwrCfgCmd.sroa.16.0.copyload, 8
  %5 = and i16 %bf.lshr8, 15
  %bf.cast9 = zext i16 %5 to i32
  %and12 = and i32 %bf.cast9, %conv11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %land.lhs.true6.if.end134_crit_edge, label %if.then

land.lhs.true6.if.end134_crit_edge:               ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end134

if.then:                                          ; preds = %land.lhs.true6
  %6 = and i16 %PwrCfgCmd.sroa.16.0.copyload, 15
  %bf.cast16 = zext i16 %6 to i32
  %7 = zext i32 %bf.cast16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bf.cast16, label %if.then.if.end134_crit_edge [
    i32 4, label %if.then.cleanup_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb54
    i32 3, label %sw.bb92
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.if.end134_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end134

sw.bb:                                            ; preds = %if.then
  %conv19 = zext i16 %PwrCfgCmd.sroa.0.0.copyload to i32
  %8 = and i16 %PwrCfgCmd.sroa.16.0.copyload, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %8)
  %cmp = icmp eq i16 %8, 48
  br i1 %cmp, label %if.then26, label %if.else

if.then26:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call zeroext i8 @SdioLocalCmd52Read1Byte(ptr noundef %padapter, i32 noundef %conv19) #3
  %neg = xor i8 %PwrCfgCmd.sroa.22.0.copyload, -1
  %and29 = and i8 %call, %neg
  %and35184 = and i8 %PwrCfgCmd.sroa.29.0.copyload, %PwrCfgCmd.sroa.22.0.copyload
  %or185 = or i8 %and29, %and35184
  tail call void @SdioLocalCmd52Write1Byte(ptr noundef %padapter, i32 noundef %conv19, i8 noundef zeroext %or185) #3
  br label %if.end134

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %call38 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef %conv19) #3
  %neg41 = xor i8 %PwrCfgCmd.sroa.22.0.copyload, -1
  %and43 = and i8 %call38, %neg41
  %and49182 = and i8 %PwrCfgCmd.sroa.29.0.copyload, %PwrCfgCmd.sroa.22.0.copyload
  %or51183 = or i8 %and43, %and49182
  %call53 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef %conv19, i8 noundef zeroext %or51183) #3
  br label %if.end134

sw.bb54:                                          ; preds = %if.then
  %conv56 = zext i16 %PwrCfgCmd.sroa.0.0.copyload to i32
  %9 = and i16 %PwrCfgCmd.sroa.16.0.copyload, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %9)
  %cmp64 = icmp eq i16 %9, 48
  %umax = call i32 @llvm.umax.i32(i32 %pollingCount.0, i32 5001)
  br label %do.body57

do.body57:                                        ; preds = %do.cond, %sw.bb54
  %pollingCount.1 = phi i32 [ %pollingCount.0, %sw.bb54 ], [ %inc, %do.cond ]
  br i1 %cmp64, label %if.then66, label %if.else68

if.then66:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #5
  %call67 = tail call zeroext i8 @SdioLocalCmd52Read1Byte(ptr noundef %padapter, i32 noundef %conv56) #3
  br label %if.end70

if.else68:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #5
  %call69 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef %conv56) #3
  br label %if.end70

if.end70:                                         ; preds = %if.else68, %if.then66
  %value.0 = phi i8 [ %call67, %if.then66 ], [ %call69, %if.else68 ]
  %10 = xor i8 %value.0, %PwrCfgCmd.sroa.29.0.copyload
  %11 = and i8 %10, %PwrCfgCmd.sroa.22.0.copyload
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp82 = icmp eq i8 %11, 0
  br i1 %cmp82, label %if.end86.thread, label %if.end86

if.end86:                                         ; preds = %if.end70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #3
  %exitcond = icmp eq i32 %pollingCount.1, %umax
  br i1 %exitcond, label %if.end86.cleanup_crit_edge, label %do.cond

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end86.thread:                                  ; preds = %if.end70
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %pollingCount.1)
  %cmp87187 = icmp ugt i32 %pollingCount.1, 5000
  br i1 %cmp87187, label %if.end86.thread.cleanup_crit_edge, label %do.cond.thread

if.end86.thread.cleanup_crit_edge:                ; preds = %if.end86.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.cond.thread:                                   ; preds = %if.end86.thread
  call void @__sanitizer_cov_trace_pc() #5
  %inc190 = add nuw nsw i32 %pollingCount.1, 1
  br label %if.end134

do.cond:                                          ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #5
  %inc = add i32 %pollingCount.1, 1
  br label %do.body57

sw.bb92:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %PwrCfgCmd.sroa.29.0.copyload)
  %cmp95 = icmp eq i8 %PwrCfgCmd.sroa.29.0.copyload, 0
  br i1 %cmp95, label %cond.false106, label %cond.false127

cond.false106:                                    ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv108 = zext i16 %PwrCfgCmd.sroa.0.0.copyload to i32
  tail call void %13(i32 noundef %conv108) #3
  br label %if.end134

cond.false127:                                    ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #5
  %conv112 = zext i16 %PwrCfgCmd.sroa.0.0.copyload to i32
  %mul113 = mul nuw nsw i32 %conv112, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %14(i32 noundef %mul113) #3
  br label %if.end134

if.end134:                                        ; preds = %cond.false127, %cond.false106, %do.cond.thread, %if.else, %if.then26, %if.then.if.end134_crit_edge, %land.lhs.true6.if.end134_crit_edge, %land.lhs.true.if.end134_crit_edge, %do.body.if.end134_crit_edge
  %pollingCount.2 = phi i32 [ %pollingCount.0, %if.then.if.end134_crit_edge ], [ %pollingCount.0, %cond.false106 ], [ %pollingCount.0, %cond.false127 ], [ %pollingCount.0, %if.then26 ], [ %pollingCount.0, %if.else ], [ %pollingCount.0, %land.lhs.true6.if.end134_crit_edge ], [ %pollingCount.0, %land.lhs.true.if.end134_crit_edge ], [ %pollingCount.0, %do.body.if.end134_crit_edge ], [ %inc190, %do.cond.thread ]
  %inc135 = add i32 %AryIdx.0, 1
  br label %do.body

cleanup:                                          ; preds = %if.end86.thread.cleanup_crit_edge, %if.end86.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %if.end86.cleanup_crit_edge ], [ 0, %if.end86.thread.cleanup_crit_edge ], [ 1, %if.then.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @SdioLocalCmd52Read1Byte(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @SdioLocalCmd52Write1Byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_read8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
