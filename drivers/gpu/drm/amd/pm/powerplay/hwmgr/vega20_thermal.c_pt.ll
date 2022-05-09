; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/hwmgr/vega20_thermal.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega20_thermal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pp_hwmgr = type { ptr, i32, i32, i32, i8, i8, i8, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, i32, ptr, i8, [6 x %struct.amd_vce_state], i32, i32, i32, i32, i32, ptr, %struct.phm_platform_descriptor, ptr, ptr, ptr, i8, i32, %struct.phm_dynamic_state_info, ptr, ptr, ptr, i32, %struct.pp_thermal_controller_info, i8, i32, i8, i32, %struct.phm_microcode_version_info, i32, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, [6 x i32], [6 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
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
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.99, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.81 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.91 = type { i32, ptr }
%struct.amdgpu_acp = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_mmio_remap = type { i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.amdgpu_doorbell = type { i32, i32, ptr, i32 }
%struct.amdgpu_clock = type { [3 x %struct.amdgpu_pll], %struct.amdgpu_pll, %struct.amdgpu_pll, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_pll = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_gmc = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, ptr, i32, %struct.amdgpu_irq_src, i32, i8, i32, i8, i32, i64, i64, i64, i64, %struct.spinlock, i8, ptr, %struct.atomic_t, [256 x %struct.amdgpu_gmc_fault], [256 x %struct.anon.98], i8, i8, ptr, %struct.amdgpu_xgmi, %struct.amdgpu_irq_src, i32, i32, i32, ptr, ptr }
%struct.amdgpu_gmc_fault = type { i56, %struct.atomic64_t }
%struct.anon.98 = type { i8, [7 x i8] }
%struct.amdgpu_xgmi = type { i64, i64, i64, i32, i32, %struct.list_head, i8, ptr, i8, i8, ptr }
%struct.amdgpu_gart = type { ptr, ptr, i32, i32, i32, i8, i64 }
%struct.amdgpu_vm_manager = type { [3 x %struct.amdgpu_vmid_mgr], i32, i8, i64, [28 x i32], i64, i32, i32, i32, i32, i64, ptr, [28 x ptr], i32, ptr, %struct.spinlock, %struct.atomic_t, i32, %struct.xarray }
%struct.amdgpu_vmid_mgr = type { %struct.mutex, i32, %struct.list_head, [16 x %struct.amdgpu_vmid], %struct.atomic_t }
%struct.amdgpu_vmid = type { %struct.list_head, %struct.amdgpu_sync, ptr, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.amdgpu_sync = type { [16 x %struct.hlist_head], ptr }
%struct.hlist_head = type { ptr }
%struct.amdgpu_vmhub = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.amdgpu_mman = type { %struct.ttm_device, i8, ptr, ptr, ptr, i8, %struct.mutex, %struct.drm_sched_entity, %struct.amdgpu_vram_mgr, %struct.amdgpu_gtt_mgr, %struct.amdgpu_preempt_mgr, i64, ptr, i64, ptr, i8, ptr, i64, i64, ptr, i32, ptr, i64, i64, ptr, ptr }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.95] }
%struct.anon.95 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.amdgpu_vram_mgr = type { %struct.ttm_resource_manager, %struct.drm_mm, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.atomic64_t, %struct.atomic64_t }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.amdgpu_gtt_mgr = type { %struct.ttm_resource_manager, %struct.drm_mm, %struct.spinlock, %struct.atomic64_t }
%struct.amdgpu_preempt_mgr = type { %struct.ttm_resource_manager, %struct.atomic64_t }
%struct.amdgpu_vram_scratch = type { ptr, ptr, i64 }
%struct.amdgpu_wb = type { ptr, ptr, i64, i32, [8 x i32] }
%struct.anon.99 = type { %struct.spinlock, i64, i64, i64, i32 }
%struct.amdgpu_mode_info = type { ptr, ptr, i8, [6 x ptr], [6 x ptr], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i8, %struct.amdgpu_audio, i32, i32, i32, i32, ptr, ptr }
%struct.amdgpu_audio = type { i8, [9 x %struct.amdgpu_audio_pin], i32 }
%struct.amdgpu_audio_pin = type { i32, i32, i32, i8, i8, i32, i8, i32 }
%struct.amdgpu_irq_src = type { i32, ptr, ptr }
%struct.amdgpu_sa_manager = type { %struct.wait_queue_head, ptr, ptr, [32 x %struct.list_head], %struct.list_head, i32, i64, ptr, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.amdgpu_sched = type { i32, [8 x ptr] }
%struct.amdgpu_irq = type { i8, i32, %struct.spinlock, [32 x %struct.amdgpu_irq_client], i8, %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.amdgpu_irq_src, ptr, [256 x i32], i32 }
%struct.amdgpu_irq_client = type { ptr }
%struct.amdgpu_ih_ring = type { i32, i32, i32, i8, i8, ptr, ptr, i64, i64, ptr, i64, ptr, i8, i32, %struct.amdgpu_ih_regs, %struct.wait_queue_head, i64 }
%struct.amdgpu_ih_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amd_powerplay = type { ptr, ptr }
%struct.smu_context = type { ptr, %struct.amdgpu_irq_src, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, i64, %struct.smu_table_context, %struct.smu_dpm_context, %struct.smu_power_context, %struct.smu_feature, ptr, %struct.smu_baco_context, %struct.smu_temperature_range, ptr, %struct.smu_umd_pstate_table, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i8, i8, i32, i32, i8, i32, [7 x i32], [7 x i32], i32, i32, i8, i8, i32, i32, i32, i8, i8, %struct.work_struct, %struct.atomic64_t, %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, %struct.smu_user_dpm_profile, %struct.stb_context }
%struct.smu_table_context = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, %struct.smu_bios_boot_up_values, ptr, ptr, [15 x %struct.smu_table], %struct.smu_table, %struct.smu_table, %struct.smu_table, i8, ptr, ptr, ptr, i32, ptr }
%struct.smu_bios_boot_up_values = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, i32, i32, i32, i32 }
%struct.smu_table = type { i64, i32, i8, i64, ptr, ptr }
%struct.smu_dpm_context = type { i32, ptr, ptr, i8, i32, i32, i32, ptr, ptr, ptr }
%struct.smu_power_context = type { ptr, i32, %struct.smu_power_gate }
%struct.smu_power_gate = type { i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.mutex }
%struct.smu_feature = type { i32, [2 x i32], [2 x i32], [2 x i32], %struct.mutex }
%struct.smu_baco_context = type { %struct.mutex, i32, i8 }
%struct.smu_temperature_range = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.smu_umd_pstate_table = type { %struct.pstates_clk_freq, %struct.pstates_clk_freq, %struct.pstates_clk_freq, %struct.pstates_clk_freq, %struct.pstates_clk_freq }
%struct.pstates_clk_freq = type { i32, i32, i32, %struct.smu_freq_info, %struct.smu_freq_info }
%struct.smu_freq_info = type { i32, i32, i32 }
%struct.smu_user_dpm_profile = type { i32, i32, i32, i32, i32, i32, [23 x i32], i32 }
%struct.stb_context = type { i32, i8, %struct.spinlock }
%struct.amdgpu_pm = type { %struct.mutex, i32, i32, i32, i32, ptr, i8, i32, ptr, i8, i8, i8, i8, i8, i8, %struct.amdgpu_dpm, ptr, i32, i32, i32, %struct.amd_pp_display_configuration, i32, ptr, i8, i32, %struct.i2c_adapter, %struct.mutex, %struct.list_head, [14 x %struct.atomic_t], i32 }
%struct.amdgpu_dpm = type { ptr, i32, ptr, ptr, ptr, ptr, i32, [6 x %struct.amd_vce_state], i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.amdgpu_dpm_dynamic_state, %struct.amdgpu_dpm_fan, i32, i32, i32, i32, i32, i16, i32, i16, i8, i8, i8, i8, %struct.amdgpu_dpm_thermal, i32 }
%struct.amdgpu_dpm_dynamic_state = type { %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_uvd_clock_voltage_dependency_table, %struct.amdgpu_vce_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_array, %struct.amdgpu_clock_array, %struct.amdgpu_clock_and_voltage_limits, %struct.amdgpu_clock_and_voltage_limits, i32, i32, i16, i16, %struct.amdgpu_cac_leakage_table, %struct.amdgpu_phase_shedding_limits_table, ptr, ptr }
%struct.amdgpu_uvd_clock_voltage_dependency_table = type { i8, ptr }
%struct.amdgpu_vce_clock_voltage_dependency_table = type { i8, ptr }
%struct.amdgpu_clock_voltage_dependency_table = type { i32, ptr }
%struct.amdgpu_clock_array = type { i32, ptr }
%struct.amdgpu_clock_and_voltage_limits = type { i32, i32, i16, i16 }
%struct.amdgpu_cac_leakage_table = type { i32, ptr }
%struct.amdgpu_phase_shedding_limits_table = type { i32, ptr }
%struct.amdgpu_dpm_fan = type { i16, i16, i16, i16, i16, i16, i8, i32, i16, i8, i16, i16, i16, i8 }
%struct.amdgpu_dpm_thermal = type { %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.amdgpu_irq_src }
%struct.amd_pp_display_configuration = type { i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, [32 x %struct.single_display_configuration], i32, i32, i8, i32, i32, i8, i32, i32, i32, i32 }
%struct.single_display_configuration = type { i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.amdgpu_nbio = type { ptr, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, ptr, ptr, ptr }
%struct.amdgpu_hdp = type { ptr, ptr, ptr }
%struct.amdgpu_smuio = type { ptr }
%struct.amdgpu_mmhub = type { ptr, ptr, ptr }
%struct.amdgpu_gfxhub = type { ptr }
%struct.amdgpu_gfx = type { %struct.mutex, %struct.amdgpu_gfx_config, %struct.amdgpu_rlc, %struct.amdgpu_pfp, %struct.amdgpu_ce, %struct.amdgpu_me, %struct.amdgpu_mec, %struct.amdgpu_kiq, %struct.amdgpu_scratch, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [2 x %struct.amdgpu_ring], i32, [8 x %struct.amdgpu_ring], i32, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.sq_work, i32, i32, %struct.amdgpu_cu_info, ptr, i32, i32, i8, %struct.mutex, i32, %struct.delayed_work, %struct.mutex, [4 x i32], ptr, ptr }
%struct.amdgpu_gfx_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], [16 x i32], %struct.gb_addr_config, [4 x [2 x %struct.amdgpu_rb_config]], i32, i32, i32, i32, i32, i64 }
%struct.gb_addr_config = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.amdgpu_rb_config = type { i32, i32, i32, i32 }
%struct.amdgpu_rlc = type { ptr, i64, ptr, ptr, i32, ptr, i64, ptr, ptr, i32, ptr, i64, ptr, i32, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, i64, ptr, ptr, i64, ptr }
%struct.amdgpu_pfp = type { ptr, i64, ptr }
%struct.amdgpu_ce = type { ptr, i64, ptr }
%struct.amdgpu_me = type { ptr, i64, ptr, i32, i32, i32, [2 x ptr], [4 x i32] }
%struct.amdgpu_mec = type { ptr, i64, ptr, i64, i32, i32, i32, [9 x ptr], [4 x i32] }
%struct.amdgpu_kiq = type { i64, ptr, %struct.spinlock, %struct.amdgpu_ring, %struct.amdgpu_irq_src, ptr }
%struct.amdgpu_ring = type { ptr, ptr, %struct.amdgpu_fence_driver, %struct.drm_gpu_scheduler, ptr, ptr, i32, i64, i64, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, ptr, i64, ptr, i64, i32, i8, i8, i32, i32, i64, [16 x i8], i32, i32, i64, ptr, i32, i64, ptr, i32, ptr, i8, i8, i32 }
%struct.amdgpu_fence_driver = type { i64, ptr, i32, %struct.atomic_t, i8, ptr, i32, %struct.timer_list, i32, %struct.spinlock, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.amdgpu_scratch = type { i32, i32, i32 }
%struct.sq_work = type { %struct.work_struct, i32 }
%struct.amdgpu_cu_info = type { i32, i32, i32, i32, i32, i32, i32, [4 x [4 x i32]], [4 x [4 x i32]] }
%struct.amdgpu_sdma = type { [8 x %struct.amdgpu_sdma_instance], %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i32, i32, i8, ptr, ptr }
%struct.amdgpu_sdma_instance = type { ptr, i32, i32, %struct.amdgpu_ring, %struct.amdgpu_ring, i8 }
%struct.amdgpu_uvd = type { ptr, i32, i32, i32, i8, i8, i8, [2 x %struct.amdgpu_uvd_inst], [40 x ptr], [40 x %struct.atomic_t], %struct.drm_sched_entity, %struct.delayed_work, i32, i32, i32, ptr }
%struct.amdgpu_uvd_inst = type { ptr, ptr, i64, ptr, %struct.amdgpu_ring, [2 x %struct.amdgpu_ring], %struct.amdgpu_irq_src, i32 }
%struct.amdgpu_vce = type { ptr, i64, ptr, ptr, i32, i32, [16 x %struct.atomic_t], [16 x ptr], [16 x i32], %struct.delayed_work, %struct.mutex, ptr, [3 x %struct.amdgpu_ring], %struct.amdgpu_irq_src, i32, %struct.drm_sched_entity, i32, i32 }
%struct.amdgpu_vcn = type { i32, %struct.delayed_work, ptr, i32, i32, i8, i8, [2 x %struct.amdgpu_vcn_inst], [2 x i8], %struct.amdgpu_vcn_reg, %struct.mutex, %struct.mutex, %struct.atomic_t, i32, ptr }
%struct.amdgpu_vcn_inst = type { ptr, ptr, i64, ptr, %struct.amdgpu_ring, [3 x %struct.amdgpu_ring], %struct.atomic_t, %struct.amdgpu_irq_src, %struct.amdgpu_vcn_reg, ptr, %struct.dpg_pause_state, ptr, i64, ptr, %struct.atomic_t, ptr, i64 }
%struct.dpg_pause_state = type { i32, i32 }
%struct.amdgpu_vcn_reg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_jpeg = type { i8, [2 x %struct.amdgpu_jpeg_inst], %struct.amdgpu_jpeg_reg, i32, %struct.delayed_work, i32, %struct.mutex, %struct.atomic_t }
%struct.amdgpu_jpeg_inst = type { %struct.amdgpu_ring, %struct.amdgpu_irq_src, %struct.amdgpu_jpeg_reg }
%struct.amdgpu_jpeg_reg = type { i32 }
%struct.amdgpu_firmware = type { [35 x %struct.amdgpu_firmware_info], i32, ptr, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i64 }
%struct.amdgpu_firmware_info = type { i32, ptr, i64, ptr, i32, i32, i32 }
%struct.psp_context = type { ptr, %struct.psp_ring, ptr, ptr, ptr, i64, ptr, ptr, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, ptr, i64, ptr, ptr, ptr, i64, ptr, ptr, i64, ptr, %struct.atomic_t, i8, i8, ptr, i32, %struct.ta_context, %struct.psp_xgmi_context, %struct.psp_ras_context, %struct.ta_cp_context, %struct.ta_cp_context, %struct.ta_cp_context, %struct.ta_cp_context, %struct.mutex, %struct.psp_memory_training_context, i32 }
%struct.psp_ring = type { i32, ptr, i64, ptr, i32, i32 }
%struct.psp_bin_desc = type { i32, i32, i32, ptr }
%struct.ta_context = type { i8, i32, %struct.ta_mem_context, %struct.psp_bin_desc, i32 }
%struct.ta_mem_context = type { ptr, i64, ptr, i32 }
%struct.psp_xgmi_context = type { %struct.ta_context, %struct.psp_xgmi_topology_info, i8 }
%struct.psp_xgmi_topology_info = type { i32, [64 x %struct.psp_xgmi_node_info] }
%struct.psp_xgmi_node_info = type { i64, i8, i8, i32, i8 }
%struct.psp_ras_context = type { %struct.ta_context, ptr }
%struct.ta_cp_context = type { %struct.ta_context, %struct.mutex }
%struct.psp_memory_training_context = type { i64, ptr, i64, i64, ptr, i32, i32, i8 }
%struct.amdgpu_gds = type { i32, i32, i32, i32 }
%struct.amdgpu_kfd_dev = type { ptr, i64, i8 }
%struct.amdgpu_umc = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.amdgpu_display_manager = type { ptr, ptr, ptr, [5 x ptr], [5 x i8], ptr, ptr, ptr, i64, ptr, i32, ptr, ptr, ptr, i16, %struct.drm_private_obj, %struct.mutex, %struct.mutex, ptr, i8, [99 x %struct.list_head], [99 x %struct.list_head], [7 x %struct.common_irq_params], [6 x %struct.common_irq_params], [6 x %struct.common_irq_params], [6 x %struct.common_irq_params], [1 x %struct.common_irq_params], [1 x %struct.common_irq_params], %struct.spinlock, [2 x ptr], [2 x ptr], i8, [2 x %struct.amdgpu_dm_backlight_caps], ptr, ptr, ptr, ptr, %struct.dm_compressor_info, ptr, i32, ptr, ptr, [6 x %struct.amdgpu_encoder], i8, i8, i8, %struct.list_head, %struct.completion, ptr, [2 x i32] }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.common_irq_params = type { ptr, i32, %struct.atomic64_t }
%struct.amdgpu_dm_backlight_caps = type { ptr, i32, i32, i32, i32, i8, i8 }
%struct.dm_compressor_info = type { ptr, ptr, i64 }
%struct.amdgpu_encoder = type { %struct.drm_encoder, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, ptr, i32, i8, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.amdgpu_mes = type { ptr, i32, i32, i32, i64, i64, %struct.amdgpu_ring, ptr, ptr, i64, ptr, i32, i64, ptr, i64, ptr, i32, i64, ptr, i64, ptr, i32, i32, [8 x i32], [2 x i32], [2 x i32], [5 x i32], i32, i64, ptr, i32, i64, ptr, ptr }
%struct.amdgpu_df = type { %struct.amdgpu_df_hash_status, ptr }
%struct.amdgpu_df_hash_status = type { i8, i8, i8 }
%struct.amdgpu_mca = type { ptr, %struct.amdgpu_mca_ras, %struct.amdgpu_mca_ras, %struct.amdgpu_mca_ras }
%struct.amdgpu_mca_ras = type { ptr, ptr }
%struct.amdgpu_ip_block = type { %struct.amdgpu_ip_block_status, ptr }
%struct.amdgpu_ip_block_status = type { i8, i8, i8, i8, i8 }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.amdgpu_virt = type { i32, ptr, ptr, i8, i32, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.work_struct, %struct.amdgpu_mm_table, ptr, %struct.amdgpu_vf_error_buffer, %struct.amdgpu_virt_fw_reserve, i32, i32, i32, i8, ptr, i8, i32, %struct.delayed_work, i32, i8, i32, i32, i32, i32 }
%struct.amdgpu_mm_table = type { ptr, ptr, i64 }
%struct.amdgpu_vf_error_buffer = type { %struct.mutex, i32, i32, [16 x i16], [16 x i16], [16 x i64] }
%struct.amdgpu_virt_fw_reserve = type { ptr, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.110, i32, i32, i32, i32 }
%union.anon.110 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phm_fan_speed_info = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.amdgpu_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phm_ppt_v3_information = type { i8, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr }

@vega20_disable_fan_control_feature._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.vega20_disable_fan_control_feature = private unnamed_addr constant [35 x i8] c"vega20_disable_fan_control_feature\00", align 1
@vega20_disable_fan_control_feature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_disable_fan_control_feature, ptr @.str.2, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014amdgpu: [powerplay] %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega20_thermal.c\00", [62 x i8] zeroinitializer }, align 32
@vega20_disable_fan_control_feature._entry_ptr = internal global ptr @vega20_disable_fan_control_feature._entry, section ".printk_index", align 4
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Disable FAN CONTROL feature Failed!\00", [60 x i8] zeroinitializer }, align 32
@vega20_enable_fan_control_feature._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega20_enable_fan_control_feature = private unnamed_addr constant [34 x i8] c"vega20_enable_fan_control_feature\00", align 1
@vega20_enable_fan_control_feature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_enable_fan_control_feature, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_enable_fan_control_feature._entry_ptr = internal global ptr @vega20_enable_fan_control_feature._entry, section ".printk_index", align 4
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Enable FAN CONTROL feature Failed!\00", [61 x i8] zeroinitializer }, align 32
@vega20_get_current_rpm._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega20_get_current_rpm = private unnamed_addr constant [23 x i8] c"vega20_get_current_rpm\00", align 1
@vega20_get_current_rpm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_get_current_rpm, ptr @.str.2, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_get_current_rpm._entry_ptr = internal global ptr @vega20_get_current_rpm._entry, section ".printk_index", align 4
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Attempt to get current RPM from SMC Failed!\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 42, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 71, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [69 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega20_thermal.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 108, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @vega20_disable_fan_control_feature._entry, ptr @vega20_disable_fan_control_feature._entry_ptr, ptr @vega20_enable_fan_control_feature._entry, ptr @vega20_enable_fan_control_feature._entry_ptr, ptr @vega20_get_current_rpm._entry, ptr @vega20_get_current_rpm._entry_ptr, ptr @vega20_disable_fan_control_feature._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vega20_enable_fan_control_feature._rs, ptr @.str.4, ptr @vega20_get_current_rpm._rs, ptr @.str.5], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_disable_fan_control_feature._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_disable_fan_control_feature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_enable_fan_control_feature._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_enable_fan_control_feature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_get_current_rpm._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_get_current_rpm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega20_fan_ctrl_stop_smc_fan_control(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %arrayidx = getelementptr %struct.vega20_hwmgr, ptr %1, i32 0, i32 56, i32 24
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 8, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %smu_feature_bitmap.i = getelementptr %struct.vega20_hwmgr, ptr %1, i32 0, i32 56, i32 24, i32 4
  %4 = ptrtoint ptr %smu_feature_bitmap.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %smu_feature_bitmap.i, align 8
  %call.i = tail call i32 @vega20_enable_smc_features(ptr noundef %hwmgr, i1 noundef zeroext false, i64 noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %do.end12.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  %call5.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_disable_fan_control_feature._rs, ptr noundef nonnull @__func__.vega20_disable_fan_control_feature) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then4.i.cleanup_crit_edge, label %do.end.i

if.then4.i.cleanup_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #8
  br label %cleanup

do.end12.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %enabled.i = getelementptr %struct.vega20_hwmgr, ptr %1, i32 0, i32 56, i32 24, i32 1
  %6 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %enabled.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end12.i, %do.end.i, %if.then4.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %do.end.i ], [ %call.i, %if.then4.i.cleanup_crit_edge ], [ 0, %do.end12.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega20_fan_ctrl_start_smc_fan_control(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %arrayidx = getelementptr %struct.vega20_hwmgr, ptr %1, i32 0, i32 56, i32 24
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 8, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %smu_feature_bitmap.i = getelementptr %struct.vega20_hwmgr, ptr %1, i32 0, i32 56, i32 24, i32 4
  %4 = ptrtoint ptr %smu_feature_bitmap.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %smu_feature_bitmap.i, align 8
  %call.i = tail call i32 @vega20_enable_smc_features(ptr noundef %hwmgr, i1 noundef zeroext true, i64 noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %do.end12.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  %call5.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_enable_fan_control_feature._rs, ptr noundef nonnull @__func__.vega20_enable_fan_control_feature) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then4.i.cleanup_crit_edge, label %do.end.i

if.then4.i.cleanup_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #8
  br label %cleanup

do.end12.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %enabled.i = getelementptr %struct.vega20_hwmgr, ptr %1, i32 0, i32 56, i32 24, i32 1
  %6 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %enabled.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end12.i, %do.end.i, %if.then4.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %do.end.i ], [ %call.i, %if.then4.i.cleanup_crit_edge ], [ 0, %do.end12.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega20_fan_ctrl_get_fan_speed_pwm(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef writeonly %speed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 104
  %call = tail call i32 %7(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 25) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx15, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add18 = add i32 %15, 104
  %call19 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add18, i32 noundef 0) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call19, %cond.false ]
  %and20 = and i32 %cond, 255
  %16 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %virt, align 8
  %and23 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %cond.end.cond.false47_crit_edge, label %land.lhs.true25

cond.end.cond.false47_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false47

land.lhs.true25:                                  ; preds = %cond.end
  %funcs28 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %18 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs28, align 4
  %tobool29.not = icmp eq ptr %19, null
  br i1 %tobool29.not, label %land.lhs.true25.cond.false47_crit_edge, label %land.lhs.true30

land.lhs.true25.cond.false47_crit_edge:           ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false47

land.lhs.true30:                                  ; preds = %land.lhs.true25
  %sriov_rreg34 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %sriov_rreg34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sriov_rreg34, align 4
  %tobool35.not = icmp eq ptr %21, null
  br i1 %tobool35.not, label %land.lhs.true30.cond.false47_crit_edge, label %cond.true36

land.lhs.true30.cond.false47_crit_edge:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false47

cond.true36:                                      ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx42 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %22 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx42, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add45 = add i32 %25, 108
  %call46 = tail call i32 %21(ptr noundef %1, i32 noundef %add45, i32 noundef 0, i32 noundef 25) #5
  br label %cond.end54

cond.false47:                                     ; preds = %land.lhs.true30.cond.false47_crit_edge, %land.lhs.true25.cond.false47_crit_edge, %cond.end.cond.false47_crit_edge
  %arrayidx49 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %26 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx49, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add52 = add i32 %29, 108
  %call53 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add52, i32 noundef 0) #5
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false47, %cond.true36
  %cond55 = phi i32 [ %call46, %cond.true36 ], [ %call53, %cond.false47 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool58.not = icmp eq i32 %and20, 0
  br i1 %tobool58.not, label %cond.end54.cleanup_crit_edge, label %if.end251

cond.end54.cleanup_crit_edge:                     ; preds = %cond.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end251:                                        ; preds = %cond.end54
  call void @__sanitizer_cov_trace_pc() #7
  %and56 = lshr i32 %cond55, 9
  %30 = trunc i32 %and56 to i16
  %31 = and i16 %30, 255
  %div245.lhs.trunc = mul nuw i16 %31, 255
  %div245.rhs.trunc = trunc i32 %and20 to i16
  %div245388 = udiv i16 %div245.lhs.trunc, %div245.rhs.trunc
  %32 = call i16 @llvm.umin.i16(i16 %div245388, i16 255)
  %33 = zext i16 %32 to i32
  %34 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %speed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end251, %cond.end54.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end251 ], [ -22, %cond.end54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega20_fan_ctrl_set_fan_speed_pwm(ptr noundef %hwmgr, i32 noundef %speed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %speed, i32 255)
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %5 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %backend.i, align 4
  %arrayidx.i464 = getelementptr %struct.vega20_hwmgr, ptr %6, i32 0, i32 56, i32 24
  %7 = ptrtoint ptr %arrayidx.i464 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i464, align 8, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i.i:                                      ; preds = %if.then
  %smu_feature_bitmap.i.i = getelementptr %struct.vega20_hwmgr, ptr %6, i32 0, i32 56, i32 24, i32 4
  %9 = ptrtoint ptr %smu_feature_bitmap.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %smu_feature_bitmap.i.i, align 8
  %call.i.i = tail call i32 @vega20_enable_smc_features(ptr noundef %hwmgr, i1 noundef zeroext false, i64 noundef %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end12.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i
  %call5.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_disable_fan_control_feature._rs, ptr noundef nonnull @__func__.vega20_disable_fan_control_feature) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.then4.i.i.if.end_crit_edge, label %do.end.i.i

if.then4.i.i.if.end_crit_edge:                    ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end.i.i:                                       ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #8
  br label %if.end

do.end12.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %enabled.i.i = getelementptr %struct.vega20_hwmgr, ptr %6, i32 0, i32 56, i32 24, i32 1
  %11 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %enabled.i.i, align 1
  br label %if.end

if.end:                                           ; preds = %do.end12.i.i, %do.end.i.i, %if.then4.i.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %12 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %virt, align 8
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cond.false17_crit_edge, label %land.lhs.true

if.end.cond.false17_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false17

land.lhs.true:                                    ; preds = %if.end
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %14 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %funcs, align 4
  %tobool3.not = icmp eq ptr %15, null
  br i1 %tobool3.not, label %land.lhs.true.cond.false17_crit_edge, label %land.lhs.true4

land.lhs.true.cond.false17_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false17

land.lhs.true4:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sriov_rreg, align 4
  %tobool8.not = icmp eq ptr %17, null
  br i1 %tobool8.not, label %land.lhs.true4.cond.false17_crit_edge, label %cond.true9

land.lhs.true4.cond.false17_crit_edge:            ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false17

cond.true9:                                       ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add = add i32 %21, 104
  %call16 = tail call i32 %17(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 25) #5
  br label %cond.end24

cond.false17:                                     ; preds = %land.lhs.true4.cond.false17_crit_edge, %land.lhs.true.cond.false17_crit_edge, %if.end.cond.false17_crit_edge
  %arrayidx19 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %22 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx19, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add22 = add i32 %25, 104
  %call23 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add22, i32 noundef 0) #5
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false17, %cond.true9
  %cond25 = phi i32 [ %call16, %cond.true9 ], [ %call23, %cond.false17 ]
  %and26 = and i32 %cond25, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %cmp27 = icmp eq i32 %and26, 0
  br i1 %cmp27, label %cond.end24.cleanup_crit_edge, label %if.end224

cond.end24.cleanup_crit_edge:                     ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end224:                                        ; preds = %cond.end24
  %narrow = mul nuw nsw i32 %and26, %2
  %mul = zext i32 %narrow to i64
  %26 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 72340172838076673, i64 %mul, i64 72340172838076673) #9, !srcloc !31
  %27 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 72340172838076673, i64 %mul, i64 %26) #9, !srcloc !32
  %extract.t463 = trunc i64 %27 to i32
  %28 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %virt, align 8
  %and229 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and229)
  %tobool230.not = icmp eq i32 %and229, 0
  br i1 %tobool230.not, label %if.end224.cond.false322.sink.split_crit_edge, label %land.lhs.true231

if.end224.cond.false322.sink.split_crit_edge:     ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false322.sink.split

land.lhs.true231:                                 ; preds = %if.end224
  %funcs234 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %30 = ptrtoint ptr %funcs234 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %funcs234, align 4
  %tobool235.not = icmp eq ptr %31, null
  br i1 %tobool235.not, label %land.lhs.true231.cond.false322.sink.split_crit_edge, label %land.lhs.true236

land.lhs.true231.cond.false322.sink.split_crit_edge: ; preds = %land.lhs.true231
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false322.sink.split

land.lhs.true236:                                 ; preds = %land.lhs.true231
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sriov_wreg, align 4
  %tobool240.not = icmp eq ptr %33, null
  br i1 %tobool240.not, label %land.lhs.true300, label %cond.true241

cond.true241:                                     ; preds = %land.lhs.true236
  %arrayidx247 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %34 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx247, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %add250 = add i32 %37, 103
  %sriov_rreg264 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %31, i32 0, i32 13
  %38 = ptrtoint ptr %sriov_rreg264 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sriov_rreg264, align 4
  %tobool265.not = icmp eq ptr %39, null
  br i1 %tobool265.not, label %cond.false277, label %cond.true266

cond.true266:                                     ; preds = %cond.true241
  call void @__sanitizer_cov_trace_pc() #7
  %call276 = tail call i32 %39(ptr noundef %1, i32 noundef %add250, i32 noundef 0, i32 noundef 25) #5
  br label %cond.end284

cond.false277:                                    ; preds = %cond.true241
  call void @__sanitizer_cov_trace_pc() #7
  %call283 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add250, i32 noundef 0) #5
  br label %cond.end284

cond.end284:                                      ; preds = %cond.false277, %cond.true266
  %cond285 = phi i32 [ %call276, %cond.true266 ], [ %call283, %cond.false277 ]
  %and286 = and i32 %cond285, -256
  %and288 = and i32 %extract.t463, 255
  %or289 = or i32 %and286, %and288
  tail call void %33(ptr noundef %1, i32 noundef %add250, i32 noundef %or289, i32 noundef 0, i32 noundef 25) #5
  br label %cond.end335

land.lhs.true300:                                 ; preds = %land.lhs.true236
  %40 = ptrtoint ptr %funcs234 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr = load ptr, ptr %funcs234, align 4
  %arrayidx292465 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %41 = ptrtoint ptr %arrayidx292465 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx292465, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %add295466 = add i32 %44, 103
  %tobool304.not = icmp eq ptr %.pr, null
  br i1 %tobool304.not, label %land.lhs.true300.cond.false322_crit_edge, label %land.lhs.true305

land.lhs.true300.cond.false322_crit_edge:         ; preds = %land.lhs.true300
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false322

land.lhs.true305:                                 ; preds = %land.lhs.true300
  %sriov_rreg309 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %.pr, i32 0, i32 13
  %45 = ptrtoint ptr %sriov_rreg309 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sriov_rreg309, align 4
  %tobool310.not = icmp eq ptr %46, null
  br i1 %tobool310.not, label %land.lhs.true305.cond.false322_crit_edge, label %cond.true311

land.lhs.true305.cond.false322_crit_edge:         ; preds = %land.lhs.true305
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false322

cond.true311:                                     ; preds = %land.lhs.true305
  call void @__sanitizer_cov_trace_pc() #7
  %call321 = tail call i32 %46(ptr noundef %1, i32 noundef %add295466, i32 noundef 0, i32 noundef 25) #5
  br label %cond.end329

cond.false322.sink.split:                         ; preds = %land.lhs.true231.cond.false322.sink.split_crit_edge, %if.end224.cond.false322.sink.split_crit_edge
  %arrayidx292465470 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %47 = ptrtoint ptr %arrayidx292465470 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx292465470, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %add295466471 = add i32 %50, 103
  br label %cond.false322

cond.false322:                                    ; preds = %cond.false322.sink.split, %land.lhs.true305.cond.false322_crit_edge, %land.lhs.true300.cond.false322_crit_edge
  %add295469 = phi i32 [ %add295466, %land.lhs.true305.cond.false322_crit_edge ], [ %add295466, %land.lhs.true300.cond.false322_crit_edge ], [ %add295466471, %cond.false322.sink.split ]
  %call328 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add295469, i32 noundef 0) #5
  br label %cond.end329

cond.end329:                                      ; preds = %cond.false322, %cond.true311
  %add295467 = phi i32 [ %add295466, %cond.true311 ], [ %add295469, %cond.false322 ]
  %cond330 = phi i32 [ %call321, %cond.true311 ], [ %call328, %cond.false322 ]
  %and331 = and i32 %cond330, -256
  %and333 = and i32 %extract.t463, 255
  %or334 = or i32 %and331, %and333
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add295467, i32 noundef %or334, i32 noundef 0) #5
  br label %cond.end335

cond.end335:                                      ; preds = %cond.end329, %cond.end284
  tail call fastcc void @vega20_fan_ctrl_set_static_mode(ptr noundef %hwmgr, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %cond.end335, %cond.end24.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end335 ], [ -22, %cond.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vega20_fan_ctrl_set_static_mode(ptr nocapture noundef readonly %hwmgr, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false77.sink.split_crit_edge, label %land.lhs.true

entry.cond.false77.sink.split_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false77.sink.split

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false77.sink.split_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false77.sink.split_crit_edge:  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false77.sink.split

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_wreg, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true55, label %cond.true

cond.true:                                        ; preds = %land.lhs.true3
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 105
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %12 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sriov_rreg, align 4
  %tobool27.not = icmp eq ptr %13, null
  br i1 %tobool27.not, label %cond.false, label %cond.true28

cond.true28:                                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %13(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 25) #5
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  %call43 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add, i32 noundef 0) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true28
  %cond = phi i32 [ %call, %cond.true28 ], [ %call43, %cond.false ]
  %and44 = and i32 %cond, -256
  tail call void %7(ptr noundef %1, i32 noundef %add, i32 noundef %and44, i32 noundef 0, i32 noundef 25) #5
  br label %cond.end88

land.lhs.true55:                                  ; preds = %land.lhs.true3
  %14 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load ptr, ptr %funcs, align 4
  %arrayidx471 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %15 = ptrtoint ptr %arrayidx471 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx471, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add502 = add i32 %18, 105
  %tobool59.not = icmp eq ptr %.pr, null
  br i1 %tobool59.not, label %land.lhs.true55.cond.false77_crit_edge, label %land.lhs.true60

land.lhs.true55.cond.false77_crit_edge:           ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false77

land.lhs.true60:                                  ; preds = %land.lhs.true55
  %sriov_rreg64 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %.pr, i32 0, i32 13
  %19 = ptrtoint ptr %sriov_rreg64 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sriov_rreg64, align 4
  %tobool65.not = icmp eq ptr %20, null
  br i1 %tobool65.not, label %land.lhs.true60.cond.false77_crit_edge, label %cond.true66

land.lhs.true60.cond.false77_crit_edge:           ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false77

cond.true66:                                      ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #7
  %call76 = tail call i32 %20(ptr noundef %1, i32 noundef %add502, i32 noundef 0, i32 noundef 25) #5
  br label %cond.end84

cond.false77.sink.split:                          ; preds = %land.lhs.true.cond.false77.sink.split_crit_edge, %entry.cond.false77.sink.split_crit_edge
  %arrayidx47111 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %21 = ptrtoint ptr %arrayidx47111 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx47111, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %add50212 = add i32 %24, 105
  br label %cond.false77

cond.false77:                                     ; preds = %cond.false77.sink.split, %land.lhs.true60.cond.false77_crit_edge, %land.lhs.true55.cond.false77_crit_edge
  %add505 = phi i32 [ %add502, %land.lhs.true60.cond.false77_crit_edge ], [ %add502, %land.lhs.true55.cond.false77_crit_edge ], [ %add50212, %cond.false77.sink.split ]
  %call83 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add505, i32 noundef 0) #5
  br label %cond.end84

cond.end84:                                       ; preds = %cond.false77, %cond.true66
  %add503 = phi i32 [ %add502, %cond.true66 ], [ %add505, %cond.false77 ]
  %cond85 = phi i32 [ %call76, %cond.true66 ], [ %call83, %cond.false77 ]
  %and86 = and i32 %cond85, -256
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add503, i32 noundef %and86, i32 noundef 0) #5
  br label %cond.end88

cond.end88:                                       ; preds = %cond.end84, %cond.end
  %25 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %virt, align 8
  %and91 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %cond.end88.cond.false184.sink.split_crit_edge, label %land.lhs.true93

cond.end88.cond.false184.sink.split_crit_edge:    ; preds = %cond.end88
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false184.sink.split

land.lhs.true93:                                  ; preds = %cond.end88
  %funcs96 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %27 = ptrtoint ptr %funcs96 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %funcs96, align 4
  %tobool97.not = icmp eq ptr %28, null
  br i1 %tobool97.not, label %land.lhs.true93.cond.false184.sink.split_crit_edge, label %land.lhs.true98

land.lhs.true93.cond.false184.sink.split_crit_edge: ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false184.sink.split

land.lhs.true98:                                  ; preds = %land.lhs.true93
  %sriov_wreg102 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %sriov_wreg102 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sriov_wreg102, align 4
  %tobool103.not = icmp eq ptr %30, null
  br i1 %tobool103.not, label %land.lhs.true162, label %cond.true104

cond.true104:                                     ; preds = %land.lhs.true98
  %arrayidx110 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %31 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx110, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add113 = add i32 %34, 105
  %sriov_rreg127 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %28, i32 0, i32 13
  %35 = ptrtoint ptr %sriov_rreg127 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sriov_rreg127, align 4
  %tobool128.not = icmp eq ptr %36, null
  br i1 %tobool128.not, label %cond.false140, label %cond.true129

cond.true129:                                     ; preds = %cond.true104
  call void @__sanitizer_cov_trace_pc() #7
  %call139 = tail call i32 %36(ptr noundef %1, i32 noundef %add113, i32 noundef 0, i32 noundef 25) #5
  br label %cond.end147

cond.false140:                                    ; preds = %cond.true104
  call void @__sanitizer_cov_trace_pc() #7
  %call146 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add113, i32 noundef 0) #5
  br label %cond.end147

cond.end147:                                      ; preds = %cond.false140, %cond.true129
  %cond148 = phi i32 [ %call139, %cond.true129 ], [ %call146, %cond.false140 ]
  %and149 = and i32 %cond148, -14337
  %shl = shl i32 %mode, 11
  %and150 = and i32 %shl, 14336
  %or151 = or i32 %and149, %and150
  tail call void %30(ptr noundef %1, i32 noundef %add113, i32 noundef %or151, i32 noundef 0, i32 noundef 25) #5
  br label %cond.end197

land.lhs.true162:                                 ; preds = %land.lhs.true98
  %37 = ptrtoint ptr %funcs96 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr14 = load ptr, ptr %funcs96, align 4
  %arrayidx1546 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %38 = ptrtoint ptr %arrayidx1546 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx1546, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %add1577 = add i32 %41, 105
  %tobool166.not = icmp eq ptr %.pr14, null
  br i1 %tobool166.not, label %land.lhs.true162.cond.false184_crit_edge, label %land.lhs.true167

land.lhs.true162.cond.false184_crit_edge:         ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false184

land.lhs.true167:                                 ; preds = %land.lhs.true162
  %sriov_rreg171 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %.pr14, i32 0, i32 13
  %42 = ptrtoint ptr %sriov_rreg171 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sriov_rreg171, align 4
  %tobool172.not = icmp eq ptr %43, null
  br i1 %tobool172.not, label %land.lhs.true167.cond.false184_crit_edge, label %cond.true173

land.lhs.true167.cond.false184_crit_edge:         ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false184

cond.true173:                                     ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #7
  %call183 = tail call i32 %43(ptr noundef %1, i32 noundef %add1577, i32 noundef 0, i32 noundef 25) #5
  br label %cond.end191

cond.false184.sink.split:                         ; preds = %land.lhs.true93.cond.false184.sink.split_crit_edge, %cond.end88.cond.false184.sink.split_crit_edge
  %arrayidx154615 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %44 = ptrtoint ptr %arrayidx154615 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx154615, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %add157716 = add i32 %47, 105
  br label %cond.false184

cond.false184:                                    ; preds = %cond.false184.sink.split, %land.lhs.true167.cond.false184_crit_edge, %land.lhs.true162.cond.false184_crit_edge
  %add15710 = phi i32 [ %add1577, %land.lhs.true167.cond.false184_crit_edge ], [ %add1577, %land.lhs.true162.cond.false184_crit_edge ], [ %add157716, %cond.false184.sink.split ]
  %call190 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add15710, i32 noundef 0) #5
  br label %cond.end191

cond.end191:                                      ; preds = %cond.false184, %cond.true173
  %add1578 = phi i32 [ %add1577, %cond.true173 ], [ %add15710, %cond.false184 ]
  %cond192 = phi i32 [ %call183, %cond.true173 ], [ %call190, %cond.false184 ]
  %and193 = and i32 %cond192, -14337
  %shl194 = shl i32 %mode, 11
  %and195 = and i32 %shl194, 14336
  %or196 = or i32 %and193, %and195
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add1578, i32 noundef %or196, i32 noundef 0) #5
  br label %cond.end197

cond.end197:                                      ; preds = %cond.end191, %cond.end147
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @vega20_fan_ctrl_get_fan_speed_info(ptr nocapture noundef readnone %hwmgr, ptr nocapture noundef writeonly %fan_speed_info) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %fan_speed_info, i32 0, i32 16)
  %supports_percent_read = getelementptr inbounds %struct.phm_fan_speed_info, ptr %fan_speed_info, i32 0, i32 4
  %1 = ptrtoint ptr %supports_percent_read to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 16843009, ptr %supports_percent_read, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega20_fan_ctrl_get_fan_speed_rpm(ptr noundef %hwmgr, ptr noundef %speed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %speed, align 4
  %call.i = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 60, ptr noundef %speed) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %entry.vega20_get_current_rpm.exit_crit_edge, label %if.then.i

entry.vega20_get_current_rpm.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %vega20_get_current_rpm.exit

if.then.i:                                        ; preds = %entry
  %call1.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_get_current_rpm._rs, ptr noundef nonnull @__func__.vega20_get_current_rpm) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i.vega20_get_current_rpm.exit_crit_edge, label %do.end.i

if.then.i.vega20_get_current_rpm.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vega20_get_current_rpm.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #8
  br label %vega20_get_current_rpm.exit

vega20_get_current_rpm.exit:                      ; preds = %do.end.i, %if.then.i.vega20_get_current_rpm.exit_crit_edge, %entry.vega20_get_current_rpm.exit_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega20_fan_ctrl_set_fan_speed_rpm(ptr noundef %hwmgr, i32 noundef %speed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %speed)
  %tobool.not = icmp eq i32 %speed, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %4 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %backend.i, align 4
  %arrayidx.i144 = getelementptr %struct.vega20_hwmgr, ptr %5, i32 0, i32 56, i32 24
  %6 = ptrtoint ptr %arrayidx.i144 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i144, align 8, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then2.if.end7_crit_edge, label %if.then.i.i

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then.i.i:                                      ; preds = %if.then2
  %smu_feature_bitmap.i.i = getelementptr %struct.vega20_hwmgr, ptr %5, i32 0, i32 56, i32 24, i32 4
  %8 = ptrtoint ptr %smu_feature_bitmap.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %smu_feature_bitmap.i.i, align 8
  %call.i.i = tail call i32 @vega20_enable_smc_features(ptr noundef %hwmgr, i1 noundef zeroext false, i64 noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end12.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i
  %call5.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_disable_fan_control_feature._rs, ptr noundef nonnull @__func__.vega20_disable_fan_control_feature) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.then4.i.i.cleanup_crit_edge, label %do.end.i.i

if.then4.i.i.cleanup_crit_edge:                   ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.i.i:                                       ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #8
  br label %cleanup

do.end12.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %enabled.i.i = getelementptr %struct.vega20_hwmgr, ptr %5, i32 0, i32 56, i32 24, i32 1
  %10 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %enabled.i.i, align 1
  br label %if.end7

if.end7:                                          ; preds = %do.end12.i.i, %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %11 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hwmgr, align 4
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %asic_funcs, align 4
  %get_xclk = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %get_xclk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_xclk, align 4
  %call10 = tail call i32 %16(ptr noundef %12) #5
  %mul11 = mul i32 %call10, 600000
  %mul12 = shl i32 %speed, 3
  %div = udiv i32 %mul11, %mul12
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %17 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %virt, align 8
  %and = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end7.cond.false91.sink.split_crit_edge, label %land.lhs.true

if.end7.cond.false91.sink.split_crit_edge:        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false91.sink.split

land.lhs.true:                                    ; preds = %if.end7
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %19 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %funcs, align 4
  %tobool14.not = icmp eq ptr %20, null
  br i1 %tobool14.not, label %land.lhs.true.cond.false91.sink.split_crit_edge, label %land.lhs.true15

land.lhs.true.cond.false91.sink.split_crit_edge:  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false91.sink.split

land.lhs.true15:                                  ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sriov_wreg, align 4
  %tobool19.not = icmp eq ptr %22, null
  br i1 %tobool19.not, label %land.lhs.true69, label %cond.true

cond.true:                                        ; preds = %land.lhs.true15
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %add = add i32 %26, 106
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %20, i32 0, i32 13
  %27 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sriov_rreg, align 4
  %tobool39.not = icmp eq ptr %28, null
  br i1 %tobool39.not, label %cond.false, label %cond.true40

cond.true40:                                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  %call50 = tail call i32 %28(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 25) #5
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  %call56 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add, i32 noundef 0) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true40
  %cond = phi i32 [ %call50, %cond.true40 ], [ %call56, %cond.false ]
  %and57 = and i32 %cond, 7
  %shl = shl i32 %div, 3
  %or = or i32 %and57, %shl
  tail call void %22(ptr noundef %1, i32 noundef %add, i32 noundef %or, i32 noundef 0, i32 noundef 25) #5
  br label %cond.end104

land.lhs.true69:                                  ; preds = %land.lhs.true15
  %29 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr = load ptr, ptr %funcs, align 4
  %arrayidx61147 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %30 = ptrtoint ptr %arrayidx61147 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx61147, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add64148 = add i32 %33, 106
  %tobool73.not = icmp eq ptr %.pr, null
  br i1 %tobool73.not, label %land.lhs.true69.cond.false91_crit_edge, label %land.lhs.true74

land.lhs.true69.cond.false91_crit_edge:           ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false91

land.lhs.true74:                                  ; preds = %land.lhs.true69
  %sriov_rreg78 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %.pr, i32 0, i32 13
  %34 = ptrtoint ptr %sriov_rreg78 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sriov_rreg78, align 4
  %tobool79.not = icmp eq ptr %35, null
  br i1 %tobool79.not, label %land.lhs.true74.cond.false91_crit_edge, label %cond.true80

land.lhs.true74.cond.false91_crit_edge:           ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false91

cond.true80:                                      ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #7
  %call90 = tail call i32 %35(ptr noundef %1, i32 noundef %add64148, i32 noundef 0, i32 noundef 25) #5
  br label %cond.end98

cond.false91.sink.split:                          ; preds = %land.lhs.true.cond.false91.sink.split_crit_edge, %if.end7.cond.false91.sink.split_crit_edge
  %arrayidx61147152 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %36 = ptrtoint ptr %arrayidx61147152 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx61147152, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %add64148153 = add i32 %39, 106
  br label %cond.false91

cond.false91:                                     ; preds = %cond.false91.sink.split, %land.lhs.true74.cond.false91_crit_edge, %land.lhs.true69.cond.false91_crit_edge
  %add64151 = phi i32 [ %add64148, %land.lhs.true74.cond.false91_crit_edge ], [ %add64148, %land.lhs.true69.cond.false91_crit_edge ], [ %add64148153, %cond.false91.sink.split ]
  %call97 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add64151, i32 noundef 0) #5
  br label %cond.end98

cond.end98:                                       ; preds = %cond.false91, %cond.true80
  %add64149 = phi i32 [ %add64148, %cond.true80 ], [ %add64151, %cond.false91 ]
  %cond99 = phi i32 [ %call90, %cond.true80 ], [ %call97, %cond.false91 ]
  %and100 = and i32 %cond99, 7
  %shl101 = shl i32 %div, 3
  %or103 = or i32 %and100, %shl101
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add64149, i32 noundef %or103, i32 noundef 0) #5
  br label %cond.end104

cond.end104:                                      ; preds = %cond.end98, %cond.end
  tail call fastcc void @vega20_fan_ctrl_set_static_mode(ptr noundef %hwmgr, i32 noundef 5)
  br label %cleanup

cleanup:                                          ; preds = %cond.end104, %do.end.i.i, %if.then4.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end104 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %do.end.i.i ], [ %call.i.i, %if.then4.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega20_thermal_get_temperature(ptr nocapture noundef readonly %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 95
  %call = tail call i32 %7(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 25) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx15, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add18 = add i32 %15, 95
  %call19 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add18, i32 noundef 0) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call19, %cond.false ]
  %and20 = lshr i32 %cond, 9
  %16 = and i32 %and20, 511
  %mul = mul nuw nsw i32 %16, 1000
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega20_thermal_disable_alert(ptr nocapture noundef readonly %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_wreg, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 10
  tail call void %7(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 0, i32 noundef 25) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx15, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add18 = add i32 %15, 10
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add18, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega20_thermal_stop_thermal_controller(ptr nocapture noundef readonly %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cond.false.i_crit_edge, label %land.lhs.true.i

entry.cond.false.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %entry
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool7.not.i = icmp eq ptr %7, null
  br i1 %tobool7.not.i, label %land.lhs.true3.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true3.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add.i = add i32 %11, 10
  tail call void %7(ptr noundef %1, i32 noundef %add.i, i32 noundef 0, i32 noundef 0, i32 noundef 25) #5
  br label %vega20_thermal_disable_alert.exit

cond.false.i:                                     ; preds = %land.lhs.true3.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %entry.cond.false.i_crit_edge
  %arrayidx15.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %12 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx15.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add18.i = add i32 %15, 10
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add18.i, i32 noundef 0, i32 noundef 0) #5
  br label %vega20_thermal_disable_alert.exit

vega20_thermal_disable_alert.exit:                ; preds = %cond.false.i, %cond.true.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega20_start_thermal_controller(ptr noundef %hwmgr, ptr noundef readonly %range) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %range, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %pptable.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %0 = ptrtoint ptr %pptable.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pptable.i, align 4
  %2 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr, align 4
  %4 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %range, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %5)
  %cmp.i = icmp sgt i32 %5, 999
  %div.i = sdiv i32 %5, 1000
  %spec.select.i = select i1 %cmp.i, i32 %div.i, i32 0
  %us_software_shutdown_temp.i = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %us_software_shutdown_temp.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %us_software_shutdown_temp.i, align 4
  %8 = tail call i16 @llvm.umin.i16(i16 %7, i16 255) #5
  %high.0.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %high.0.i)
  %cmp10.i = icmp sgt i32 %spec.select.i, %high.0.i
  br i1 %cmp10.i, label %if.end.cleanup_crit_edge, label %if.end13.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13.i:                                       ; preds = %if.end
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 132
  %9 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end13.i.cond.false.i_crit_edge, label %land.lhs.true.i

if.end13.i.cond.false.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.end13.i
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 2, i32 15
  %11 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %funcs.i, align 4
  %tobool14.not.i = icmp eq ptr %12, null
  br i1 %tobool14.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true15.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true15.i:                                ; preds = %land.lhs.true.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool19.not.i = icmp eq ptr %14, null
  br i1 %tobool19.not.i, label %land.lhs.true15.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true15.i.cond.false.i_crit_edge:         ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %3, i32 0, i32 130, i32 25
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add.i = add i32 %18, 11
  %call.i = tail call i32 %14(ptr noundef %3, i32 noundef %add.i, i32 noundef 0, i32 noundef 25) #5
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true15.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %if.end13.i.cond.false.i_crit_edge
  %arrayidx27.i = getelementptr %struct.amdgpu_device, ptr %3, i32 0, i32 130, i32 25
  %19 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx27.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add30.i = add i32 %22, 11
  %call31.i = tail call i32 @amdgpu_device_rreg(ptr noundef %3, i32 noundef %add30.i, i32 noundef 0) #5
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %call31.i, %cond.false.i ]
  %and32.i = and i32 %cond.i, 201261056
  %shl39.i = shl nsw i32 %spec.select.i, 8
  %and40.i = and i32 %shl39.i, 65280
  %or37.i = or i32 %and40.i, %high.0.i
  %and38.i = or i32 %or37.i, %and32.i
  %or41.i = or i32 %and38.i, -1342177280
  %23 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %virt.i, align 8
  %and45.i = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %cond.end.i.cond.false67.i_crit_edge, label %land.lhs.true47.i

cond.end.i.cond.false67.i_crit_edge:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false67.i

land.lhs.true47.i:                                ; preds = %cond.end.i
  %funcs50.i = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 2, i32 15
  %25 = ptrtoint ptr %funcs50.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %funcs50.i, align 4
  %tobool51.not.i = icmp eq ptr %26, null
  br i1 %tobool51.not.i, label %land.lhs.true47.i.cond.false67.i_crit_edge, label %land.lhs.true52.i

land.lhs.true47.i.cond.false67.i_crit_edge:       ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false67.i

land.lhs.true52.i:                                ; preds = %land.lhs.true47.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool56.not.i = icmp eq ptr %28, null
  br i1 %tobool56.not.i, label %land.lhs.true52.i.cond.false67.i_crit_edge, label %cond.true57.i

land.lhs.true52.i.cond.false67.i_crit_edge:       ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false67.i

cond.true57.i:                                    ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx63.i = getelementptr %struct.amdgpu_device, ptr %3, i32 0, i32 130, i32 25
  %29 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx63.i, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add66.i = add i32 %32, 11
  tail call void %28(ptr noundef %3, i32 noundef %add66.i, i32 noundef %or41.i, i32 noundef 0, i32 noundef 25) #5
  br label %if.end2

cond.false67.i:                                   ; preds = %land.lhs.true52.i.cond.false67.i_crit_edge, %land.lhs.true47.i.cond.false67.i_crit_edge, %cond.end.i.cond.false67.i_crit_edge
  %arrayidx69.i = getelementptr %struct.amdgpu_device, ptr %3, i32 0, i32 130, i32 25
  %33 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx69.i, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %add72.i = add i32 %36, 11
  tail call void @amdgpu_device_wreg(ptr noundef %3, i32 noundef %add72.i, i32 noundef %or41.i, i32 noundef 0) #5
  br label %if.end2

if.end2:                                          ; preds = %cond.false67.i, %cond.true57.i
  %37 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hwmgr, align 4
  %virt.i15 = getelementptr inbounds %struct.amdgpu_device, ptr %38, i32 0, i32 132
  %39 = ptrtoint ptr %virt.i15 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %virt.i15, align 8
  %and.i16 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16)
  %tobool.not.i17 = icmp eq i32 %and.i16, 0
  br i1 %tobool.not.i17, label %if.end2.cond.false.i24_crit_edge, label %land.lhs.true.i19

if.end2.cond.false.i24_crit_edge:                 ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i24

land.lhs.true.i19:                                ; preds = %if.end2
  %funcs.i18 = getelementptr inbounds %struct.amdgpu_device, ptr %38, i32 0, i32 106, i32 2, i32 15
  %41 = ptrtoint ptr %funcs.i18 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %funcs.i18, align 4
  %tobool4.not.i = icmp eq ptr %42, null
  br i1 %tobool4.not.i, label %land.lhs.true.i19.cond.false.i24_crit_edge, label %land.lhs.true5.i

land.lhs.true.i19.cond.false.i24_crit_edge:       ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i24

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i19
  %sriov_wreg.i20 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %42, i32 0, i32 12
  %43 = ptrtoint ptr %sriov_wreg.i20 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sriov_wreg.i20, align 4
  %tobool9.not.i = icmp eq ptr %44, null
  br i1 %tobool9.not.i, label %land.lhs.true5.i.cond.false.i24_crit_edge, label %cond.true.i23

land.lhs.true5.i.cond.false.i24_crit_edge:        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i24

cond.true.i23:                                    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i21 = getelementptr %struct.amdgpu_device, ptr %38, i32 0, i32 130, i32 25
  %45 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i21, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %add.i22 = add i32 %48, 10
  tail call void %44(ptr noundef %38, i32 noundef %add.i22, i32 noundef 56, i32 noundef 0, i32 noundef 25) #5
  br label %vega20_thermal_enable_alert.exit

cond.false.i24:                                   ; preds = %land.lhs.true5.i.cond.false.i24_crit_edge, %land.lhs.true.i19.cond.false.i24_crit_edge, %if.end2.cond.false.i24_crit_edge
  %arrayidx17.i = getelementptr %struct.amdgpu_device, ptr %38, i32 0, i32 130, i32 25
  %49 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx17.i, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %add20.i = add i32 %52, 10
  tail call void @amdgpu_device_wreg(ptr noundef %38, i32 noundef %add20.i, i32 noundef 56, i32 noundef 0) #5
  br label %vega20_thermal_enable_alert.exit

vega20_thermal_enable_alert.exit:                 ; preds = %cond.false.i24, %cond.true.i23
  %backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %53 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %backend.i, align 4
  %FanTargetTemperature.i = getelementptr inbounds %struct.vega20_hwmgr, ptr %54, i32 0, i32 57, i32 13, i32 89
  %55 = ptrtoint ptr %FanTargetTemperature.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %FanTargetTemperature.i, align 2
  %conv.i = zext i16 %56 to i32
  %call.i26 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 63, i32 noundef %conv.i, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %vega20_thermal_enable_alert.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i26, %vega20_thermal_enable_alert.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vega20_enable_smc_features(ptr noundef, i1 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc_with_parameter(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !12, !13, !14, !15, !17, !18, !19, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega20_thermal.c", i32 42, i32 3}
!2 = !{ptr @vega20_disable_fan_control_feature._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.vega20_disable_fan_control_feature, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vega20_disable_fan_control_feature._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @vega20_disable_fan_control_feature._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @vega20_enable_fan_control_feature._rs, !10, !"_rs", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega20_thermal.c", i32 71, i32 3}
!11 = !{ptr @__func__.vega20_enable_fan_control_feature, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @vega20_enable_fan_control_feature._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @vega20_enable_fan_control_feature._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @vega20_get_current_rpm._rs, !16, !"_rs", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega20_thermal.c", i32 108, i32 2}
!17 = !{ptr @__func__.vega20_get_current_rpm, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @vega20_get_current_rpm._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @vega20_get_current_rpm._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i8 0, i8 2}
!31 = !{i64 787059, i64 787086}
!32 = !{i64 787399, i64 787426, i64 787460, i64 787481}
