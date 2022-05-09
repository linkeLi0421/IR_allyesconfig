; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/hal/odm_NoiseMonitor.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/hal/odm_NoiseMonitor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dm_odm_t = type { ptr, i8, i32, i8, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i8, i8, i8, i8, i8, i32, i8, i32, i8, i64, i64, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, %struct.odm_noise_monitor, [32 x ptr], i8, %struct.odm_phy_dbg_info, ptr, %struct.fat_t, %struct.dig_t, %struct.ps_t, %struct.dynamic_primary_CCA, %struct.rxhp_t, %struct.ra_t, %struct.false_ALARM_STATISTICS, %struct.false_ALARM_STATISTICS, %struct.swat_t, i8, %struct.cfo_tracking, %struct.edca_t, i32, %struct.pathdiv_t, ptr, ptr, ptr, i8, %struct.timer_list, i8, i8, i8, i8, %struct.timer_list, i8, %struct.odm_rate_adaptive, %struct.ant_detected_info, %struct.odm_rf_cal_t, [4 x i8], i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, [4 x i8], %struct.timer_list, %struct.timer_list, %struct.timer_list }
%struct.odm_noise_monitor = type { [4 x i8], i16 }
%struct.odm_phy_dbg_info = type { [4 x i8], i32, i32, i32, i8, [4 x i32] }
%struct.fat_t = type { [6 x i8], i8, i8, i8, i8, [7 x i32], [7 x i32], [7 x i32], i8, i32, [32 x i8], [32 x i8], [32 x i8], [32 x i32], [32 x i32], [32 x i32], [32 x i32], i8, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dig_t = type { i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, ptr }
%struct.ps_t = type { i8, i8, i8, i8, i32, i8, i32, i32, i32, i32 }
%struct.dynamic_primary_CCA = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.rxhp_t = type { i8, i8, [80 x i8], i8, i8, i8, i8, i8, i8, i8, %struct.timer_list }
%struct.ra_t = type { i8 }
%struct.false_ALARM_STATISTICS = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.swat_t = type { i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i8, i8, i8, %struct.timer_list, %struct.timer_list, i32, i8 }
%struct.cfo_tracking = type { i8, i8, i8, i8, i8, [2 x i32], i32, i32, i32, i8, i8 }
%struct.edca_t = type { i8, i8, i32 }
%struct.pathdiv_t = type { i8, [32 x i8], [32 x i32], [32 x i32], [32 x i32], [32 x i32] }
%struct.odm_rate_adaptive = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.ant_detected_info = type { i8, i32, i32, i32 }
%struct.odm_rf_cal_t = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, [8 x i8], i8, [14 x %struct.iqk_matrix_regs_setting], i8, i8, i8, i8, i8, [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [16 x i32], [4 x i32], [9 x i32], [9 x i32], [2 x [3 x [2 x i32]]], [2 x [2 x [2 x i32]]], [2 x [2 x i32]], i8, i8, i8, i8, i8, i8, [2 x i32] }
%struct.iqk_matrix_regs_setting = type { i8, [3 x [8 x i32]], [3 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local signext i16 @ODM_InbandNoise_Monitor(ptr noundef %pDM_VOID, i8 noundef zeroext %bPauseDIG, i8 noundef zeroext %IGIValue, i32 noundef %max_time) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %noise_level.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 125
  %noise_all.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 125, i32 1
  %0 = ptrtoint ptr %noise_all.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %noise_all.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bPauseDIG)
  %tobool.not.i = icmp eq i8 %bPauseDIG, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @odm_PauseDIG(ptr noundef %pDM_VOID, i32 noundef 1, i8 noundef zeroext %IGIValue) #2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  br label %while.cond.i

while.cond.i:                                     ; preds = %lor.lhs.false.i.while.cond.i_crit_edge, %if.end.i
  %noise_data.sroa.17.0.i = phi i32 [ 0, %if.end.i ], [ %noise_data.sroa.17.1.lcssa228.i, %lor.lhs.false.i.while.cond.i_crit_edge ]
  %noise_data.sroa.30.0.i = phi i8 [ 0, %if.end.i ], [ %noise_data.sroa.30.1.lcssa230.i, %lor.lhs.false.i.while.cond.i_crit_edge ]
  %valid_done.0.i = phi i8 [ 0, %if.end.i ], [ %valid_done.1.lcssa232.i, %lor.lhs.false.i.while.cond.i_crit_edge ]
  %2 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %3, i32 noundef 2060, i32 noundef 33554432, i32 noundef 1) #2
  %4 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pDM_VOID, align 8
  %call.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %5, i32 noundef 2296, i32 noundef -1) #2
  %6 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %7, i32 noundef 2060, i32 noundef 33554432, i32 noundef 0) #2
  %conv.i = trunc i32 %call.i to i8
  %8 = sdiv i8 %conv.i, 2
  %9 = add nsw i8 %8, 35
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %9)
  %10 = icmp ult i8 %9, 45
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %noise_data.sroa.30.0.i)
  %cmp28.i = icmp ult i8 %noise_data.sroa.30.0.i, 5
  %or.cond.i = select i1 %cmp28.i, i1 %10, i1 false
  br i1 %or.cond.i, label %for.end66.i, label %while.cond.i.lor.lhs.false.i_crit_edge

while.cond.i.lor.lhs.false.i_crit_edge:           ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %lor.lhs.false.i

for.end66.i:                                      ; preds = %while.cond.i
  %conv51.i = sext i8 %8 to i32
  %inc47.i = add nuw nsw i8 %noise_data.sroa.30.0.i, 1
  %add.i = add i32 %noise_data.sroa.17.0.i, %conv51.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %inc47.i)
  %cmp58.i = icmp eq i8 %inc47.i, 5
  %inc61.i = zext i1 %cmp58.i to i8
  %spec.select.i = add i8 %valid_done.0.i, %inc61.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %spec.select.i)
  %cmp69.i = icmp eq i8 %spec.select.i, 1
  br i1 %cmp69.i, label %for.end66.i.if.then85.i_crit_edge, label %for.end66.i.lor.lhs.false.i_crit_edge

for.end66.i.lor.lhs.false.i_crit_edge:            ; preds = %for.end66.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %lor.lhs.false.i

for.end66.i.if.then85.i_crit_edge:                ; preds = %for.end66.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then85.i

lor.lhs.false.i:                                  ; preds = %for.end66.i.lor.lhs.false.i_crit_edge, %while.cond.i.lor.lhs.false.i_crit_edge
  %valid_done.1.lcssa232.i = phi i8 [ %spec.select.i, %for.end66.i.lor.lhs.false.i_crit_edge ], [ %valid_done.0.i, %while.cond.i.lor.lhs.false.i_crit_edge ]
  %noise_data.sroa.30.1.lcssa230.i = phi i8 [ %inc47.i, %for.end66.i.lor.lhs.false.i_crit_edge ], [ %noise_data.sroa.30.0.i, %while.cond.i.lor.lhs.false.i_crit_edge ]
  %noise_data.sroa.17.1.lcssa228.i = phi i32 [ %add.i, %for.end66.i.lor.lhs.false.i_crit_edge ], [ %noise_data.sroa.17.0.i, %while.cond.i.lor.lhs.false.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %11, %1
  %call71.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub.i) #2
  %cmp72.i = icmp ugt i32 %call71.i, %max_time
  br i1 %cmp72.i, label %if.then74.i, label %lor.lhs.false.i.while.cond.i_crit_edge

lor.lhs.false.i.while.cond.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.cond.i

if.then74.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %noise_data.sroa.30.1.lcssa230.i)
  %tobool84.not.i = icmp eq i8 %noise_data.sroa.30.1.lcssa230.i, 0
  br i1 %tobool84.not.i, label %if.then74.i.while.end.i_crit_edge, label %if.then74.i.if.then85.i_crit_edge

if.then74.i.if.then85.i_crit_edge:                ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then85.i

if.then74.i.while.end.i_crit_edge:                ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end.i

if.then85.i:                                      ; preds = %if.then74.i.if.then85.i_crit_edge, %for.end66.i.if.then85.i_crit_edge
  %noise_data.sroa.17.1.lcssa229237.i = phi i32 [ %noise_data.sroa.17.1.lcssa228.i, %if.then74.i.if.then85.i_crit_edge ], [ %add.i, %for.end66.i.if.then85.i_crit_edge ]
  %noise_data.sroa.30.1.lcssa231236.i = phi i8 [ %noise_data.sroa.30.1.lcssa230.i, %if.then74.i.if.then85.i_crit_edge ], [ %inc47.i, %for.end66.i.if.then85.i_crit_edge ]
  %conv89.i = zext i8 %noise_data.sroa.30.1.lcssa231236.i to i32
  %div93.i = sdiv i32 %noise_data.sroa.17.1.lcssa229237.i, %conv89.i
  %phi.bo.i = add i32 %div93.i, 146
  br label %while.end.i

while.end.i:                                      ; preds = %if.then85.i, %if.then74.i.while.end.i_crit_edge
  %noise_data.sroa.17.3.lcssa.i = phi i32 [ %phi.bo.i, %if.then85.i ], [ 146, %if.then74.i.while.end.i_crit_edge ]
  %12 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pDM_VOID, align 8
  %call103.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %13, i32 noundef 3152, i32 noundef 255) #2
  %conv107.i = and i32 %call103.i, 127
  %add112.i = add i32 %conv107.i, %noise_data.sroa.17.3.lcssa.i
  %conv113.i = trunc i32 %add112.i to i8
  %14 = ptrtoint ptr %noise_level.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv113.i, ptr %noise_level.i, align 2
  %sext.i = shl i32 %add112.i, 24
  %conv119.i = ashr exact i32 %sext.i, 24
  %15 = ptrtoint ptr %noise_all.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %noise_all.i, align 2
  %17 = trunc i32 %conv119.i to i16
  %conv124.i = add i16 %16, %17
  store i16 %conv124.i, ptr %noise_all.i, align 2
  br i1 %tobool.not.i, label %while.end.i.odm_InbandNoise_Monitor_NSeries.exit_crit_edge, label %if.then161.i

while.end.i.odm_InbandNoise_Monitor_NSeries.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %odm_InbandNoise_Monitor_NSeries.exit

if.then161.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @odm_PauseDIG(ptr noundef %pDM_VOID, i32 noundef 2, i8 noundef zeroext %IGIValue) #2
  br label %odm_InbandNoise_Monitor_NSeries.exit

odm_InbandNoise_Monitor_NSeries.exit:             ; preds = %if.then161.i, %while.end.i.odm_InbandNoise_Monitor_NSeries.exit_crit_edge
  %18 = ptrtoint ptr %noise_all.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %noise_all.i, align 2
  ret i16 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @odm_PauseDIG(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_write_bbreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_read_bbreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

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
