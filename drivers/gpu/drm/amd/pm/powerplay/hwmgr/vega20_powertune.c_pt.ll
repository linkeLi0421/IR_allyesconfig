; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/hwmgr/vega20_powertune.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega20_powertune.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pp_hwmgr = type { ptr, i32, i32, i32, i8, i8, i8, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, i32, ptr, i8, [6 x %struct.amd_vce_state], i32, i32, i32, i32, i32, ptr, %struct.phm_platform_descriptor, ptr, ptr, ptr, i8, i32, %struct.phm_dynamic_state_info, ptr, ptr, ptr, i32, %struct.pp_thermal_controller_info, i8, i32, i8, i32, %struct.phm_microcode_version_info, i32, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, [6 x i32], [6 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.amd_vce_state = type { i32, i32, i32, i32, i8, i8 }
%struct.phm_platform_descriptor = type { [7 x i32], i32, %struct.PP_Clocks, %struct.PP_Clocks, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i16, i32, i8, i16, i32, i32, i32, i32, i8 }
%struct.PP_Clocks = type { i32, i32, i32, i32, i32, i32 }
%struct.phm_dynamic_state_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phm_clock_and_voltage_limits = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.pp_thermal_controller_info = type { i8, i8, i8, i8, %struct.pp_fan_info, %struct.pp_advance_fan_control_parameters }
%struct.pp_fan_info = type { i8, i8, i32, i32 }
%struct.pp_advance_fan_control_parameters = type { i16, i16, i16, i16, i16, i16, i8, i32, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32, i16, i16, i16 }
%struct.phm_microcode_version_info = type { i32, i32, i32, i32 }
%struct.vega20_hwmgr = type { %struct.vega20_dpm_table, %struct.vega20_dpm_table, %struct.vega20_registry_data, %struct.vega20_vbios_boot_state, %struct.vega20_mclk_latency_table, %struct.vega20_max_sustainable_clocks, %struct.vega20_leakage_voltage, i32, %struct.pp_atomfwctrl_voltage_table, i32, %struct.pp_atomfwctrl_voltage_table, i32, %struct.pp_atomfwctrl_voltage_table, i32, %struct.vega20_bacos, i8, i8, i8, i8, i8, i32, i32, i32, %struct.vega20_display_timing, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vega20_dpmlevel_enable_mask, i8, i8, i8, i8, i8, i32, %struct.vega20_odn_data, i8, i8, %struct.vega20_od8_settings, i32, i32, [34 x %struct.smu_features], %struct.vega20_smc_state_table, i8, i32, i32, %struct.SmuMetrics_t, %struct.gpu_metrics_v1_0, i8, i32, i32, i8 }
%struct.vega20_dpm_table = type { %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_pcie_table }
%struct.vega20_single_dpm_table = type { i32, %struct.vega20_dpm_state, [16 x %struct.vega20_dpm_level] }
%struct.vega20_dpm_state = type { i32, i32, i32, i32 }
%struct.vega20_dpm_level = type { i8, i32, i32 }
%struct.vega20_pcie_table = type { i16, [2 x i8], [2 x i8], [2 x i32] }
%struct.vega20_registry_data = type { i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i32, i32, i16, i16, i32, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.vega20_vbios_boot_state = type { i8, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vega20_mclk_latency_table = type { i32, [16 x %struct.vega20_mclk_latency_entries] }
%struct.vega20_mclk_latency_entries = type { i32, i32 }
%struct.vega20_max_sustainable_clocks = type { i32, i32, i32, i32, i32, i32 }
%struct.vega20_leakage_voltage = type { i16, [8 x i16], [8 x i16] }
%struct.pp_atomfwctrl_voltage_table = type { i32, i32, i32, i8, i8, i8, i8, i8, [32 x %struct.pp_atomfwctrl_voltage_table_entry] }
%struct.pp_atomfwctrl_voltage_table_entry = type { i16, i32 }
%struct.vega20_bacos = type { i32 }
%struct.vega20_display_timing = type { i32, i32 }
%struct.vega20_dpmlevel_enable_mask = type { i32, i32, i32, i32, i32 }
%struct.vega20_odn_data = type { i32, i32, i32, i32, i32, %struct.vega20_odn_dpm_table, %struct.vega20_odn_fan_table, %struct.vega20_odn_temp_table }
%struct.vega20_odn_dpm_table = type { %struct.vega20_odn_dpm_control, %struct.vega20_odn_dpm_control, %struct.phm_odn_clock_levels, %struct.phm_odn_clock_levels, %struct.vega20_odn_clock_voltage_dependency_table, %struct.vega20_odn_clock_voltage_dependency_table, %struct.vega20_odn_clock_voltage_dependency_table, i32 }
%struct.vega20_odn_dpm_control = type { i32, [16 x i32] }
%struct.phm_odn_clock_levels = type { i32, i32, i32, i32, [8 x %struct.phm_odn_performance_level] }
%struct.phm_odn_performance_level = type { i32, i32, i8 }
%struct.vega20_odn_clock_voltage_dependency_table = type { i32, [16 x %struct.phm_ppt_v1_clock_voltage_dependency_record] }
%struct.phm_ppt_v1_clock_voltage_dependency_record = type { i32, i8, i8, i8, i16, i16, i16, i16, i16, i8, i8, i8, i32 }
%struct.vega20_odn_fan_table = type { i32, i32, i32, i32, i8 }
%struct.vega20_odn_temp_table = type { i16, i16, i16, i16, i16 }
%struct.vega20_od8_settings = type { i32, [16 x %struct.vega20_od8_single_setting] }
%struct.vega20_od8_single_setting = type { i32, i32, i32, i32, i32 }
%struct.smu_features = type { i8, i8, i8, i32, i64 }
%struct.vega20_smc_state_table = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, %struct.PPTable_t, %struct.Watermarks_t, %struct.AvfsDebugTable_t, %struct.AvfsFuseOverride_t, %struct.SmuMetrics_t, %struct.DriverSmuConfig_t, %struct.DpmActivityMonitorCoeffInt_t, %struct.OverDriveTable_t }
%struct.PPTable_t = type { i32, [2 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i8, i8, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, [11 x %struct.DpmDescriptor_t], [16 x i16], [8 x i16], [8 x i16], [8 x i16], [8 x i16], [4 x i16], [8 x i16], [8 x i16], [8 x i16], [8 x i16], [8 x i16], [11 x i16], i16, [2 x i16], [2 x i16], i16, i16, i16, i16, %struct.QuadraticInt_t, [4 x i8], i16, i8, i8, i8, [3 x i8], [2 x i8], [2 x i8], [2 x i16], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, [2 x i8], [2 x i8], [2 x %struct.QuadraticInt_t], %struct.DroopInt_t, %struct.DroopInt_t, %struct.DroopInt_t, %struct.DroopInt_t, [2 x %struct.LinearInt_t], [2 x %struct.QuadraticInt_t], [2 x i16], [2 x i8], [2 x i8], [2 x i16], [2 x i16], [2 x i8], [2 x i8], [2 x i16], [2 x i16], [2 x i16], [2 x i16], i32, %struct.QuadraticInt_t, %struct.QuadraticInt_t, %struct.QuadraticInt_t, %struct.QuadraticInt_t, i16, i16, i16, i16, i16, i16, [2 x i16], [11 x i32], [3 x i32], i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i16, [7 x %struct.I2cControllerConfig_t], [10 x i32], [8 x i32] }
%struct.DpmDescriptor_t = type { i8, i8, i8, i8, %struct.LinearInt_t, %struct.QuadraticInt_t }
%struct.LinearInt_t = type { i32, i32 }
%struct.DroopInt_t = type { i32, i32, i32 }
%struct.QuadraticInt_t = type { i32, i32, i32 }
%struct.I2cControllerConfig_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.Watermarks_t = type { [2 x [4 x %struct.WatermarkRowGeneric_t]], [7 x i32] }
%struct.WatermarkRowGeneric_t = type { i16, i16, i16, i16, i8, [3 x i8] }
%struct.AvfsDebugTable_t = type { [45 x i16], [45 x i16], [45 x float], [45 x float], i16, i16, float, float, [6 x i32] }
%struct.AvfsFuseOverride_t = type { i8, [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [7 x i32] }
%struct.DriverSmuConfig_t = type { i16, i16, i16, i16, i16, i16, [8 x i32] }
%struct.DpmActivityMonitorCoeffInt_t = type { i8, i8, i8, i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.OverDriveTable_t = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.SmuMetrics_t = type { [11 x i16], i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i16, i8, [7 x i32] }
%struct.gpu_metrics_v1_0 = type { %struct.metrics_table_header, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i8, i8 }
%struct.metrics_table_header = type { i16, i8, i8 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega20_set_power_limit(ptr noundef %hwmgr, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %enabled = getelementptr %struct.vega20_hwmgr, ptr %1, i32 0, i32 56, i32 13, i32 1
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 15, i32 noundef %n, ptr noundef null) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc_with_parameter(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vega20_validate_power_level_request(ptr nocapture noundef readonly %hwmgr, i32 noundef %tdp_percentage_adjustment, i32 noundef %tdp_absolute_value_adjustment) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %TDPLimit = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 11
  %0 = ptrtoint ptr %TDPLimit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %TDPLimit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %tdp_percentage_adjustment)
  %cmp = icmp ult i32 %1, %tdp_percentage_adjustment
  %cond = sext i1 %cmp to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega20_power_control_set_level(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %TDPAdjustmentPolarity = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 18
  %2 = ptrtoint ptr %TDPAdjustmentPolarity to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %TDPAdjustmentPolarity, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %TDPAdjustment4 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 17
  %4 = ptrtoint ptr %TDPAdjustment4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %TDPAdjustment4, align 4
  %mul = sub i32 0, %5
  %cond = select i1 %tobool.not, i32 %mul, i32 %5
  %call.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 53, i32 noundef %cond, ptr noundef null) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %result.0 = phi i32 [ %call.i, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %result.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i8 0, i8 2}
