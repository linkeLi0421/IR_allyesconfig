; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/smumgr/smumgr.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smumgr.c"
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
%struct.pp_smumgr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_firmware343 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/bonaire_smc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware344 = internal constant [41 x i8] c"amdgpu.firmware=amdgpu/bonaire_k_smc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware345 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/hawaii_smc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware346 = internal constant [40 x i8] c"amdgpu.firmware=amdgpu/hawaii_k_smc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware347 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/topaz_smc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware348 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/topaz_k_smc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware349 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/tonga_smc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware350 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/tonga_k_smc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware351 = internal constant [36 x i8] c"amdgpu.firmware=amdgpu/fiji_smc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware352 = internal constant [41 x i8] c"amdgpu.firmware=amdgpu/polaris10_smc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware353 = internal constant [44 x i8] c"amdgpu.firmware=amdgpu/polaris10_smc_sk.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware354 = internal constant [43 x i8] c"amdgpu.firmware=amdgpu/polaris10_k_smc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware355 = internal constant [44 x i8] c"amdgpu.firmware=amdgpu/polaris10_k2_smc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware356 = internal constant [41 x i8] c"amdgpu.firmware=amdgpu/polaris11_smc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware357 = internal constant [44 x i8] c"amdgpu.firmware=amdgpu/polaris11_smc_sk.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware358 = internal constant [43 x i8] c"amdgpu.firmware=amdgpu/polaris11_k_smc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware359 = internal constant [44 x i8] c"amdgpu.firmware=amdgpu/polaris11_k2_smc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware360 = internal constant [41 x i8] c"amdgpu.firmware=amdgpu/polaris12_smc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware361 = internal constant [43 x i8] c"amdgpu.firmware=amdgpu/polaris12_k_smc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware362 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/vegam_smc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware363 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/vega10_smc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware364 = internal constant [42 x i8] c"amdgpu.firmware=amdgpu/vega10_acg_smc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware365 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/vega12_smc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware366 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/vega20_smc.bin\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_firmware343, ptr @__UNIQUE_ID_firmware344, ptr @__UNIQUE_ID_firmware345, ptr @__UNIQUE_ID_firmware346, ptr @__UNIQUE_ID_firmware347, ptr @__UNIQUE_ID_firmware348, ptr @__UNIQUE_ID_firmware349, ptr @__UNIQUE_ID_firmware350, ptr @__UNIQUE_ID_firmware351, ptr @__UNIQUE_ID_firmware352, ptr @__UNIQUE_ID_firmware353, ptr @__UNIQUE_ID_firmware354, ptr @__UNIQUE_ID_firmware355, ptr @__UNIQUE_ID_firmware356, ptr @__UNIQUE_ID_firmware357, ptr @__UNIQUE_ID_firmware358, ptr @__UNIQUE_ID_firmware359, ptr @__UNIQUE_ID_firmware360, ptr @__UNIQUE_ID_firmware361, ptr @__UNIQUE_ID_firmware362, ptr @__UNIQUE_ID_firmware363, ptr @__UNIQUE_ID_firmware364, ptr @__UNIQUE_ID_firmware365, ptr @__UNIQUE_ID_firmware366], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smum_thermal_avfs_enable(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %smumgr_funcs = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %0 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smumgr_funcs, align 4
  %thermal_avfs_enable = getelementptr inbounds %struct.pp_smumgr_func, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %thermal_avfs_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %thermal_avfs_enable, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 %3(ptr noundef %hwmgr) #2
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smum_thermal_setup_fan_table(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %smumgr_funcs = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %0 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smumgr_funcs, align 4
  %thermal_setup_fan_table = getelementptr inbounds %struct.pp_smumgr_func, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %thermal_setup_fan_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %thermal_setup_fan_table, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 %3(ptr noundef %hwmgr) #2
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smum_update_sclk_threshold(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %smumgr_funcs = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %0 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smumgr_funcs, align 4
  %update_sclk_threshold = getelementptr inbounds %struct.pp_smumgr_func, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %update_sclk_threshold to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %update_sclk_threshold, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 %3(ptr noundef %hwmgr) #2
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smum_update_smc_table(ptr noundef %hwmgr, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %smumgr_funcs = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %0 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smumgr_funcs, align 4
  %update_smc_table = getelementptr inbounds %struct.pp_smumgr_func, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %update_smc_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %update_smc_table, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 %3(ptr noundef %hwmgr, i32 noundef %type) #2
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smum_get_offsetof(ptr nocapture noundef readonly %hwmgr, i32 noundef %type, i32 noundef %member) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %smumgr_funcs = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %0 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smumgr_funcs, align 4
  %get_offsetof = getelementptr inbounds %struct.pp_smumgr_func, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %get_offsetof to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_offsetof, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 %3(i32 noundef %type, i32 noundef %member) #2
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smum_process_firmware_header(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %smumgr_funcs = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %0 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smumgr_funcs, align 4
  %process_firmware_header = getelementptr inbounds %struct.pp_smumgr_func, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %process_firmware_header to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %process_firmware_header, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 %3(ptr noundef %hwmgr) #2
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smum_get_mac_definition(ptr nocapture noundef readonly %hwmgr, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %smumgr_funcs = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %0 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smumgr_funcs, align 4
  %get_mac_definition = getelementptr inbounds %struct.pp_smumgr_func, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %get_mac_definition to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_mac_definition, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 %3(i32 noundef %value) #2
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smum_download_powerplay_table(ptr noundef %hwmgr, ptr noundef %table) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %smumgr_funcs = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %0 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smumgr_funcs, align 4
  %download_pptable_settings = getelementptr inbounds %struct.pp_smumgr_func, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %download_pptable_settings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %download_pptable_settings, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 %3(ptr noundef %hwmgr, ptr noundef %table) #2
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smum_upload_powerplay_table(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %smumgr_funcs = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %0 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smumgr_funcs, align 4
  %upload_pptable_settings = getelementptr inbounds %struct.pp_smumgr_func, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %upload_pptable_settings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %upload_pptable_settings, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 %3(ptr noundef %hwmgr) #2
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext %msg, ptr noundef writeonly %resp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %smumgr_funcs = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %0 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smumgr_funcs, align 4
  %send_msg_to_smc = getelementptr inbounds %struct.pp_smumgr_func, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %send_msg_to_smc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %send_msg_to_smc, align 4
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %tobool.not = icmp eq ptr %resp, null
  br i1 %tobool.not, label %lor.lhs.false2.if.end_crit_edge, label %land.lhs.true

lor.lhs.false2.if.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false2
  %get_argument = getelementptr inbounds %struct.pp_smumgr_func, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %get_argument to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_argument, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false2.if.end_crit_edge
  %msg_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %msg_lock, i32 noundef 0) #2
  %6 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smumgr_funcs, align 4
  %send_msg_to_smc6 = getelementptr inbounds %struct.pp_smumgr_func, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %send_msg_to_smc6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %send_msg_to_smc6, align 4
  %call = tail call i32 %9(ptr noundef nonnull %hwmgr, i16 noundef zeroext %msg) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp ne i32 %call, 0
  %brmerge = or i1 %tobool7.not, %tobool.not
  br i1 %brmerge, label %if.end.cleanup.sink.split_crit_edge, label %if.then12

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.sink.split

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %10 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smumgr_funcs, align 4
  %get_argument14 = getelementptr inbounds %struct.pp_smumgr_func, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %get_argument14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_argument14, align 4
  %call15 = tail call i32 %13(ptr noundef nonnull %hwmgr) #2
  %14 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call15, ptr %resp, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then12, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call, %if.end.cleanup.sink.split_crit_edge ], [ 0, %if.then12 ]
  tail call void @mutex_unlock(ptr noundef %msg_lock) #2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext %msg, i32 noundef %parameter, ptr noundef writeonly %resp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %smumgr_funcs = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %0 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smumgr_funcs, align 4
  %send_msg_to_smc_with_parameter = getelementptr inbounds %struct.pp_smumgr_func, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %send_msg_to_smc_with_parameter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %send_msg_to_smc_with_parameter, align 4
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %tobool.not = icmp eq ptr %resp, null
  br i1 %tobool.not, label %lor.lhs.false2.if.end_crit_edge, label %land.lhs.true

lor.lhs.false2.if.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false2
  %get_argument = getelementptr inbounds %struct.pp_smumgr_func, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %get_argument to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_argument, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false2.if.end_crit_edge
  %msg_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %msg_lock, i32 noundef 0) #2
  %6 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smumgr_funcs, align 4
  %send_msg_to_smc_with_parameter6 = getelementptr inbounds %struct.pp_smumgr_func, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %send_msg_to_smc_with_parameter6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %send_msg_to_smc_with_parameter6, align 4
  %call = tail call i32 %9(ptr noundef nonnull %hwmgr, i16 noundef zeroext %msg, i32 noundef %parameter) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp ne i32 %call, 0
  %brmerge = or i1 %tobool7.not, %tobool.not
  br i1 %brmerge, label %if.end.cleanup.sink.split_crit_edge, label %if.then12

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.sink.split

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %10 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smumgr_funcs, align 4
  %get_argument14 = getelementptr inbounds %struct.pp_smumgr_func, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %get_argument14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_argument14, align 4
  %call15 = tail call i32 %13(ptr noundef nonnull %hwmgr) #2
  %14 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call15, ptr %resp, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then12, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call, %if.end.cleanup.sink.split_crit_edge ], [ 0, %if.then12 ]
  tail call void @mutex_unlock(ptr noundef %msg_lock) #2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smum_init_smc_table(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %smumgr_funcs = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %0 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smumgr_funcs, align 4
  %init_smc_table = getelementptr inbounds %struct.pp_smumgr_func, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %init_smc_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_smc_table, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 %3(ptr noundef %hwmgr) #2
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smum_populate_all_graphic_levels(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %smumgr_funcs = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %0 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smumgr_funcs, align 4
  %populate_all_graphic_levels = getelementptr inbounds %struct.pp_smumgr_func, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %populate_all_graphic_levels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %populate_all_graphic_levels, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 %3(ptr noundef %hwmgr) #2
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smum_populate_all_memory_levels(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %smumgr_funcs = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %0 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smumgr_funcs, align 4
  %populate_all_memory_levels = getelementptr inbounds %struct.pp_smumgr_func, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %populate_all_memory_levels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %populate_all_memory_levels, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 %3(ptr noundef %hwmgr) #2
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smum_initialize_mc_reg_table(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %smumgr_funcs = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %0 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smumgr_funcs, align 4
  %initialize_mc_reg_table = getelementptr inbounds %struct.pp_smumgr_func, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %initialize_mc_reg_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %initialize_mc_reg_table, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 %3(ptr noundef %hwmgr) #2
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @smum_is_dpm_running(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %smumgr_funcs = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %0 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smumgr_funcs, align 4
  %is_dpm_running = getelementptr inbounds %struct.pp_smumgr_func, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %is_dpm_running to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %is_dpm_running, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call zeroext i1 %3(ptr noundef %hwmgr) #2
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i1 [ %call, %if.then ], [ true, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @smum_is_hw_avfs_present(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %smumgr_funcs = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %0 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smumgr_funcs, align 4
  %is_hw_avfs_present = getelementptr inbounds %struct.pp_smumgr_func, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %is_hw_avfs_present to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %is_hw_avfs_present, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call zeroext i1 %3(ptr noundef %hwmgr) #2
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i1 [ %call, %if.then ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smum_update_dpm_settings(ptr noundef %hwmgr, ptr noundef %profile_setting) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %smumgr_funcs = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %0 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smumgr_funcs, align 4
  %update_dpm_settings = getelementptr inbounds %struct.pp_smumgr_func, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %update_dpm_settings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %update_dpm_settings, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 %3(ptr noundef %hwmgr, ptr noundef %profile_setting) #2
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smum_smc_table_manager(ptr noundef %hwmgr, ptr noundef %table, i16 noundef zeroext %table_id, i1 noundef zeroext %rw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %smumgr_funcs = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %0 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smumgr_funcs, align 4
  %smc_table_manager = getelementptr inbounds %struct.pp_smumgr_func, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %smc_table_manager to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smc_table_manager, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 %3(ptr noundef %hwmgr, ptr noundef %table, i16 noundef zeroext %table_id, i1 noundef zeroext %rw) #2
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smum_stop_smc(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %smumgr_funcs = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %0 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smumgr_funcs, align 4
  %stop_smc = getelementptr inbounds %struct.pp_smumgr_func, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %stop_smc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stop_smc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 %3(ptr noundef %hwmgr) #2
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__UNIQUE_ID_firmware343, !1, !"__UNIQUE_ID_firmware343", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smumgr.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware344, !3, !"__UNIQUE_ID_firmware344", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smumgr.c", i32 33, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware345, !5, !"__UNIQUE_ID_firmware345", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smumgr.c", i32 34, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware346, !7, !"__UNIQUE_ID_firmware346", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smumgr.c", i32 35, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware347, !9, !"__UNIQUE_ID_firmware347", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smumgr.c", i32 36, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware348, !11, !"__UNIQUE_ID_firmware348", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smumgr.c", i32 37, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware349, !13, !"__UNIQUE_ID_firmware349", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smumgr.c", i32 38, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware350, !15, !"__UNIQUE_ID_firmware350", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smumgr.c", i32 39, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware351, !17, !"__UNIQUE_ID_firmware351", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smumgr.c", i32 40, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware352, !19, !"__UNIQUE_ID_firmware352", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smumgr.c", i32 41, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware353, !21, !"__UNIQUE_ID_firmware353", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smumgr.c", i32 42, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware354, !23, !"__UNIQUE_ID_firmware354", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smumgr.c", i32 43, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware355, !25, !"__UNIQUE_ID_firmware355", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smumgr.c", i32 44, i32 1}
!26 = !{ptr @__UNIQUE_ID_firmware356, !27, !"__UNIQUE_ID_firmware356", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smumgr.c", i32 45, i32 1}
!28 = !{ptr @__UNIQUE_ID_firmware357, !29, !"__UNIQUE_ID_firmware357", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smumgr.c", i32 46, i32 1}
!30 = !{ptr @__UNIQUE_ID_firmware358, !31, !"__UNIQUE_ID_firmware358", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smumgr.c", i32 47, i32 1}
!32 = !{ptr @__UNIQUE_ID_firmware359, !33, !"__UNIQUE_ID_firmware359", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smumgr.c", i32 48, i32 1}
!34 = !{ptr @__UNIQUE_ID_firmware360, !35, !"__UNIQUE_ID_firmware360", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smumgr.c", i32 49, i32 1}
!36 = !{ptr @__UNIQUE_ID_firmware361, !37, !"__UNIQUE_ID_firmware361", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smumgr.c", i32 50, i32 1}
!38 = !{ptr @__UNIQUE_ID_firmware362, !39, !"__UNIQUE_ID_firmware362", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smumgr.c", i32 51, i32 1}
!40 = !{ptr @__UNIQUE_ID_firmware363, !41, !"__UNIQUE_ID_firmware363", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smumgr.c", i32 52, i32 1}
!42 = !{ptr @__UNIQUE_ID_firmware364, !43, !"__UNIQUE_ID_firmware364", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smumgr.c", i32 53, i32 1}
!44 = !{ptr @__UNIQUE_ID_firmware365, !45, !"__UNIQUE_ID_firmware365", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smumgr.c", i32 54, i32 1}
!46 = !{ptr @__UNIQUE_ID_firmware366, !47, !"__UNIQUE_ID_firmware366", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smumgr.c", i32 55, i32 1}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
