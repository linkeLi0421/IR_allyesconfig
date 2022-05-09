; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/hwmgr/vega12_hwmgr.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pp_hwmgr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pp_table_func = type { ptr, ptr, ptr, ptr }
%struct.PP_TemperatureRange = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pp_hwmgr = type { ptr, i32, i32, i32, i8, i8, i8, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, i32, ptr, i8, [6 x %struct.amd_vce_state], i32, i32, i32, i32, i32, ptr, %struct.phm_platform_descriptor, ptr, ptr, ptr, i8, i32, %struct.phm_dynamic_state_info, ptr, ptr, ptr, i32, %struct.pp_thermal_controller_info, i8, i32, i8, i32, %struct.phm_microcode_version_info, i32, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, [6 x i32], [6 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.vega12_hwmgr = type { %struct.vega12_dpm_table, %struct.vega12_dpm_table, %struct.vega12_registry_data, %struct.vega12_vbios_boot_state, %struct.vega12_mclk_latency_table, %struct.vega12_leakage_voltage, i32, %struct.pp_atomfwctrl_voltage_table, i32, %struct.pp_atomfwctrl_voltage_table, i32, %struct.pp_atomfwctrl_voltage_table, i32, i32, %struct.vega12_odn_dpm_table, %struct.vega12_odn_fan_table, i8, i8, i8, i8, i8, i32, i32, %struct.vega12_display_timing, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vega12_dpmlevel_enable_mask, i8, i8, i8, i8, i8, i32, i32, i32, i32, [29 x %struct.smu_features], %struct.vega12_smc_state_table, [10 x %struct.vega12_clock_range], i8, i32, %struct.SmuMetrics_t, %struct.gpu_metrics_v1_0 }
%struct.vega12_dpm_table = type { %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table, %struct.vega12_pcie_table }
%struct.vega12_single_dpm_table = type { i32, %struct.vega12_dpm_state, [16 x %struct.vega12_dpm_level] }
%struct.vega12_dpm_state = type { i32, i32, i32, i32 }
%struct.vega12_dpm_level = type { i8, i32, i32 }
%struct.vega12_pcie_table = type { i16, [2 x i8], [2 x i8], [2 x i32] }
%struct.vega12_registry_data = type { i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i32, i32, i16, i16, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8 }
%struct.vega12_vbios_boot_state = type { i8, i8, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32 }
%struct.vega12_mclk_latency_table = type { i32, [16 x %struct.vega12_mclk_latency_entries] }
%struct.vega12_mclk_latency_entries = type { i32, i32 }
%struct.vega12_leakage_voltage = type { i16, [8 x i16], [8 x i16] }
%struct.pp_atomfwctrl_voltage_table = type { i32, i32, i32, i8, i8, i8, i8, i8, [32 x %struct.pp_atomfwctrl_voltage_table_entry] }
%struct.pp_atomfwctrl_voltage_table_entry = type { i16, i32 }
%struct.vega12_odn_dpm_table = type { %struct.vega12_odn_dpm_control, %struct.vega12_odn_dpm_control, %struct.phm_odn_clock_levels, %struct.phm_odn_clock_levels, %struct.vega12_odn_clock_voltage_dependency_table, %struct.vega12_odn_clock_voltage_dependency_table, %struct.vega12_odn_clock_voltage_dependency_table, i32 }
%struct.vega12_odn_dpm_control = type { i32, [16 x i32] }
%struct.phm_odn_clock_levels = type { i32, i32, i32, i32, [8 x %struct.phm_odn_performance_level] }
%struct.phm_odn_performance_level = type { i32, i32, i8 }
%struct.vega12_odn_clock_voltage_dependency_table = type { i32, [16 x %struct.phm_ppt_v1_clock_voltage_dependency_record] }
%struct.phm_ppt_v1_clock_voltage_dependency_record = type { i32, i8, i8, i8, i16, i16, i16, i16, i16, i8, i8, i8, i32 }
%struct.vega12_odn_fan_table = type { i32, i32, i32, i32, i8 }
%struct.vega12_display_timing = type { i32, i32 }
%struct.vega12_dpmlevel_enable_mask = type { i32, i32, i32, i32, i32 }
%struct.smu_features = type { i8, i8, i8, i32, i64 }
%struct.vega12_smc_state_table = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, %struct.PPTable_t, %struct.Watermarks_t, %struct.AvfsDebugTable_t, %struct.AvfsFuseOverride_t, %struct.SmuMetrics_t, %struct.DriverSmuConfig_t, %struct.DpmActivityMonitorCoeffInt_t, %struct.OverDriveTable_t }
%struct.PPTable_t = type { i32, [2 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i8, [3 x i8], i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, [10 x %struct.DpmDescriptor_t], [16 x i16], [8 x i16], [8 x i16], [8 x i16], [8 x i16], [4 x i16], [8 x i16], [8 x i16], [8 x i16], [8 x i16], [10 x i16], [2 x i16], [2 x i16], i16, i16, i16, i16, %struct.QuadraticInt_t, i16, i16, i16, [2 x i8], i8, [3 x i8], [2 x i8], [2 x i8], [2 x i16], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, [3 x i8], %struct.QuadraticInt_t, %struct.DroopInt_t, %struct.DroopInt_t, %struct.DroopInt_t, %struct.DroopInt_t, %struct.LinearInt_t, %struct.LinearInt_t, %struct.QuadraticInt_t, %struct.QuadraticInt_t, i16, i16, i8, i8, [2 x i8], i16, i16, i16, i16, i32, %struct.QuadraticInt_t, %struct.QuadraticInt_t, %struct.QuadraticInt_t, %struct.QuadraticInt_t, i16, i16, [14 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, [3 x i8], [9 x i32], [7 x i32] }
%struct.DpmDescriptor_t = type { i8, i8, i8, i8, %struct.LinearInt_t, %struct.QuadraticInt_t }
%struct.DroopInt_t = type { i32, i32, i32 }
%struct.LinearInt_t = type { i32, i32 }
%struct.QuadraticInt_t = type { i32, i32, i32 }
%struct.Watermarks_t = type { [2 x [4 x %struct.WatermarkRowGeneric_t]], [7 x i32] }
%struct.WatermarkRowGeneric_t = type { i16, i16, i16, i16, i8, [3 x i8] }
%struct.AvfsDebugTable_t = type { [30 x i16], [30 x i16], [30 x float], [30 x float], [7 x i32] }
%struct.AvfsFuseOverride_t = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i32] }
%struct.DriverSmuConfig_t = type { i16, i16, i16, i16, i16, [7 x i32] }
%struct.DpmActivityMonitorCoeffInt_t = type { i8, i8, i8, i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.OverDriveTable_t = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.vega12_clock_range = type { i32, i32, i32 }
%struct.SmuMetrics_t = type { [10 x i16], i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, [3 x i8], [7 x i32] }
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
%struct.pp_atomfwctrl_bios_boot_up_values = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i8 }
%struct.phm_ppt_v3_information = type { i8, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pp_clock_levels_with_latency = type { i32, [16 x %struct.pp_clock_with_latency] }
%struct.pp_clock_with_latency = type { i32, i32 }
%struct.pp_display_clock_request = type { i32, i32 }

@vega12_enable_disable_vce_dpm._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.vega12_enable_disable_vce_dpm = private unnamed_addr constant [30 x i8] c"vega12_enable_disable_vce_dpm\00", align 1
@vega12_enable_disable_vce_dpm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_enable_disable_vce_dpm, ptr @.str.2, i32 1301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014amdgpu: [powerplay] %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c\00", [32 x i8] zeroinitializer }, align 32
@vega12_enable_disable_vce_dpm._entry_ptr = internal global ptr @vega12_enable_disable_vce_dpm._entry, section ".printk_index", align 4
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Attempt to Enable/Disable DPM VCE Failed!\00", [54 x i8] zeroinitializer }, align 32
@vega12_hwmgr_funcs = internal constant { %struct.pp_hwmgr_func, [76 x i8] } { %struct.pp_hwmgr_func { ptr @vega12_hwmgr_backend_init, ptr @vega12_hwmgr_backend_fini, ptr @vega12_setup_asic_task, ptr null, ptr null, ptr @vega12_apply_clocks_adjust_rules, ptr @vega12_dpm_force_dpm_level, ptr @vega12_enable_dpm_tasks, ptr @vega12_disable_dpm_tasks, ptr @vega12_patch_boot_state, ptr null, ptr null, ptr null, ptr @vega12_power_gate_vce, ptr @vega12_power_gate_uvd, ptr null, ptr @vega12_dpm_get_mclk, ptr @vega12_dpm_get_sclk, ptr null, ptr @vega12_notify_smc_display_config_after_ps_adjustment, ptr @vega12_pre_display_configuration_changed_task, ptr @vega12_display_configuration_changed_task, ptr null, ptr null, ptr null, ptr null, ptr @vega12_thermal_stop_thermal_controller, ptr @vega12_fan_ctrl_get_fan_speed_info, ptr @vega12_set_fan_control_mode, ptr @vega12_get_fan_control_mode, ptr null, ptr null, ptr null, ptr @vega12_fan_ctrl_get_fan_speed_rpm, ptr @vega12_fan_ctrl_reset_fan_speed_to_default, ptr null, ptr @smu9_register_irq_handlers, ptr @vega12_check_smc_update_required_for_display_configuration, ptr null, ptr null, ptr null, ptr @vega12_get_dal_power_level, ptr @vega12_get_performance_level, ptr null, ptr null, ptr @vega12_get_clock_by_type_with_latency, ptr @vega12_get_clock_by_type_with_voltage, ptr @vega12_set_watermarks_for_clocks_ranges, ptr @vega12_display_clock_voltage_request, ptr null, ptr @vega12_power_off_asic, ptr @vega12_force_clock_level, ptr @vega12_print_clock_levels, ptr @vega12_gfx_off_control, ptr null, ptr null, ptr null, ptr null, ptr @vega12_read_sensor, ptr null, ptr @vega12_thermal_disable_alert, ptr null, ptr null, ptr @vega12_start_thermal_controller, ptr @vega12_notify_cac_buffer_info, ptr null, ptr @vega12_get_thermal_temperature_range, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smu9_baco_get_capability, ptr @smu9_baco_get_state, ptr @vega12_baco_set_state, ptr @vega12_get_ppfeature_status, ptr @vega12_set_ppfeature_status, ptr @vega12_set_mp1_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vega12_get_gpu_metrics, ptr null }, [76 x i8] zeroinitializer }, align 32
@vega12_pptable_funcs = external dso_local constant %struct.pp_table_func, align 4
@__func__.vega12_setup_asic_task = private unnamed_addr constant [23 x i8] c"vega12_setup_asic_task\00", align 1
@vega12_setup_asic_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_setup_asic_task, ptr @.str.2, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_setup_asic_task._entry_ptr = internal global ptr @vega12_setup_asic_task._entry, section ".printk_index", align 4
@vega12_force_dpm_highest._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_force_dpm_highest = private unnamed_addr constant [25 x i8] c"vega12_force_dpm_highest\00", align 1
@vega12_force_dpm_highest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_force_dpm_highest, ptr @.str.2, i32 1644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_force_dpm_highest._entry_ptr = internal global ptr @vega12_force_dpm_highest._entry, section ".printk_index", align 4
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to upload boot level to highest!\00", [56 x i8] zeroinitializer }, align 32
@vega12_force_dpm_highest._rs.6 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_force_dpm_highest._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_force_dpm_highest, ptr @.str.2, i32 1648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_force_dpm_highest._entry_ptr.8 = internal global ptr @vega12_force_dpm_highest._entry.7, section ".printk_index", align 4
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to upload dpm max level to highest!\00", [53 x i8] zeroinitializer }, align 32
@vega12_find_highest_dpm_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_find_highest_dpm_level = private unnamed_addr constant [30 x i8] c"vega12_find_highest_dpm_level\00", align 1
@vega12_find_highest_dpm_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_find_highest_dpm_level, ptr @.str.2, i32 1113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_find_highest_dpm_level._entry_ptr = internal global ptr @vega12_find_highest_dpm_level._entry, section ".printk_index", align 4
@.str.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[FindHighestDPMLevel] DPM Table has too many entries!\00", [42 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_min_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_upload_dpm_min_level = private unnamed_addr constant [28 x i8] c"vega12_upload_dpm_min_level\00", align 1
@vega12_upload_dpm_min_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_upload_dpm_min_level, ptr @.str.2, i32 1141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_min_level._entry_ptr = internal global ptr @vega12_upload_dpm_min_level._entry, section ".printk_index", align 4
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set soft min gfxclk !\00", [32 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_min_level._rs.12 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_min_level._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_upload_dpm_min_level, ptr @.str.2, i32 1151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_min_level._entry_ptr.14 = internal global ptr @vega12_upload_dpm_min_level._entry.13, section ".printk_index", align 4
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set soft min memclk !\00", [32 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_min_level._rs.16 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_min_level._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_upload_dpm_min_level, ptr @.str.2, i32 1159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_min_level._entry_ptr.18 = internal global ptr @vega12_upload_dpm_min_level._entry.17, section ".printk_index", align 4
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set hard min memclk !\00", [32 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_min_level._rs.20 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_min_level._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_upload_dpm_min_level, ptr @.str.2, i32 1170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_min_level._entry_ptr.22 = internal global ptr @vega12_upload_dpm_min_level._entry.21, section ".printk_index", align 4
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to set soft min vclk!\00", [35 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_min_level._rs.24 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_min_level._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_upload_dpm_min_level, ptr @.str.2, i32 1179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_min_level._entry_ptr.26 = internal global ptr @vega12_upload_dpm_min_level._entry.25, section ".printk_index", align 4
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to set soft min dclk!\00", [35 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_min_level._rs.28 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_min_level._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_upload_dpm_min_level, ptr @.str.2, i32 1190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_min_level._entry_ptr.30 = internal global ptr @vega12_upload_dpm_min_level._entry.29, section ".printk_index", align 4
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to set soft min eclk!\00", [35 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_min_level._rs.32 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_min_level._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_upload_dpm_min_level, ptr @.str.2, i32 1201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_min_level._entry_ptr.34 = internal global ptr @vega12_upload_dpm_min_level._entry.33, section ".printk_index", align 4
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set soft min socclk!\00", [33 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_min_level._rs.36 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_min_level._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_upload_dpm_min_level, ptr @.str.2, i32 1212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_min_level._entry_ptr.38 = internal global ptr @vega12_upload_dpm_min_level._entry.37, section ".printk_index", align 4
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set hard min dcefclk!\00", [32 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_max_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_upload_dpm_max_level = private unnamed_addr constant [28 x i8] c"vega12_upload_dpm_max_level\00", align 1
@vega12_upload_dpm_max_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_upload_dpm_max_level, ptr @.str.2, i32 1233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_max_level._entry_ptr = internal global ptr @vega12_upload_dpm_max_level._entry, section ".printk_index", align 4
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set soft max gfxclk!\00", [33 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_max_level._rs.41 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_max_level._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_upload_dpm_max_level, ptr @.str.2, i32 1244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_max_level._entry_ptr.43 = internal global ptr @vega12_upload_dpm_max_level._entry.42, section ".printk_index", align 4
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set soft max memclk!\00", [33 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_max_level._rs.45 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_max_level._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_upload_dpm_max_level, ptr @.str.2, i32 1255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_max_level._entry_ptr.47 = internal global ptr @vega12_upload_dpm_max_level._entry.46, section ".printk_index", align 4
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to set soft max vclk!\00", [35 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_max_level._rs.49 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_max_level._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_upload_dpm_max_level, ptr @.str.2, i32 1263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_max_level._entry_ptr.51 = internal global ptr @vega12_upload_dpm_max_level._entry.50, section ".printk_index", align 4
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to set soft max dclk!\00", [35 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_max_level._rs.53 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_max_level._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_upload_dpm_max_level, ptr @.str.2, i32 1274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_max_level._entry_ptr.55 = internal global ptr @vega12_upload_dpm_max_level._entry.54, section ".printk_index", align 4
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to set soft max eclk!\00", [35 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_max_level._rs.57 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_max_level._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_upload_dpm_max_level, ptr @.str.2, i32 1285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_upload_dpm_max_level._entry_ptr.59 = internal global ptr @vega12_upload_dpm_max_level._entry.58, section ".printk_index", align 4
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set soft max socclk!\00", [33 x i8] zeroinitializer }, align 32
@vega12_force_dpm_lowest._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_force_dpm_lowest = private unnamed_addr constant [24 x i8] c"vega12_force_dpm_lowest\00", align 1
@vega12_force_dpm_lowest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_force_dpm_lowest, ptr @.str.2, i32 1673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_force_dpm_lowest._entry_ptr = internal global ptr @vega12_force_dpm_lowest._entry, section ".printk_index", align 4
@vega12_force_dpm_lowest._rs.61 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_force_dpm_lowest._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_force_dpm_lowest, ptr @.str.2, i32 1677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_force_dpm_lowest._entry_ptr.63 = internal global ptr @vega12_force_dpm_lowest._entry.62, section ".printk_index", align 4
@vega12_unforce_dpm_levels._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_unforce_dpm_levels = private unnamed_addr constant [26 x i8] c"vega12_unforce_dpm_levels\00", align 1
@vega12_unforce_dpm_levels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_unforce_dpm_levels, ptr @.str.2, i32 1687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_unforce_dpm_levels._entry_ptr = internal global ptr @vega12_unforce_dpm_levels._entry, section ".printk_index", align 4
@.str.64 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to upload DPM Bootup Levels!\00", [60 x i8] zeroinitializer }, align 32
@vega12_unforce_dpm_levels._rs.65 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_unforce_dpm_levels._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_unforce_dpm_levels, ptr @.str.2, i32 1691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_unforce_dpm_levels._entry_ptr.67 = internal global ptr @vega12_unforce_dpm_levels._entry.66, section ".printk_index", align 4
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to upload DPM Max Levels!\00", [63 x i8] zeroinitializer }, align 32
@vega12_enable_dpm_tasks._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_enable_dpm_tasks = private unnamed_addr constant [24 x i8] c"vega12_enable_dpm_tasks\00", align 1
@vega12_enable_dpm_tasks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_enable_dpm_tasks, ptr @.str.2, i32 1039, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_enable_dpm_tasks._entry_ptr = internal global ptr @vega12_enable_dpm_tasks._entry, section ".printk_index", align 4
@.str.69 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[EnableDPMTasks] Failed to set allowed featuresmask!\0A\00", [42 x i8] zeroinitializer }, align 32
@vega12_enable_dpm_tasks._rs.70 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_enable_dpm_tasks._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_enable_dpm_tasks, ptr @.str.2, i32 1044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_enable_dpm_tasks._entry_ptr.72 = internal global ptr @vega12_enable_dpm_tasks._entry.71, section ".printk_index", align 4
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize SMC table!\00", [32 x i8] zeroinitializer }, align 32
@vega12_enable_dpm_tasks._rs.74 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_enable_dpm_tasks._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_enable_dpm_tasks, ptr @.str.2, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_enable_dpm_tasks._entry_ptr.76 = internal global ptr @vega12_enable_dpm_tasks._entry.75, section ".printk_index", align 4
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to run ACG BTC!\00", [41 x i8] zeroinitializer }, align 32
@vega12_enable_dpm_tasks._rs.78 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_enable_dpm_tasks._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_enable_dpm_tasks, ptr @.str.2, i32 1054, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_enable_dpm_tasks._entry_ptr.80 = internal global ptr @vega12_enable_dpm_tasks._entry.79, section ".printk_index", align 4
@.str.81 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to enable all smu features!\00", [61 x i8] zeroinitializer }, align 32
@vega12_enable_dpm_tasks._rs.82 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_enable_dpm_tasks._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_enable_dpm_tasks, ptr @.str.2, i32 1059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_enable_dpm_tasks._entry_ptr.84 = internal global ptr @vega12_enable_dpm_tasks._entry.83, section ".printk_index", align 4
@.str.85 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"[EnableDPMTasks] Failed to override pcie parameters!\00", [43 x i8] zeroinitializer }, align 32
@vega12_enable_dpm_tasks._rs.86 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_enable_dpm_tasks._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_enable_dpm_tasks, ptr @.str.2, i32 1064, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_enable_dpm_tasks._entry_ptr.88 = internal global ptr @vega12_enable_dpm_tasks._entry.87, section ".printk_index", align 4
@.str.89 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to power control set level!\00", [61 x i8] zeroinitializer }, align 32
@vega12_enable_dpm_tasks._rs.90 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_enable_dpm_tasks._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_enable_dpm_tasks, ptr @.str.2, i32 1069, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_enable_dpm_tasks._entry_ptr.92 = internal global ptr @vega12_enable_dpm_tasks._entry.91, section ".printk_index", align 4
@.str.93 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get all clock ranges!\00", [32 x i8] zeroinitializer }, align 32
@vega12_enable_dpm_tasks._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_enable_dpm_tasks, ptr @.str.2, i32 1074, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_enable_dpm_tasks._entry_ptr.96 = internal global ptr @vega12_enable_dpm_tasks._entry.95, section ".printk_index", align 4
@vega12_enable_dpm_tasks._rs.97 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_enable_dpm_tasks._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_enable_dpm_tasks, ptr @.str.2, i32 1079, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_enable_dpm_tasks._entry_ptr.99 = internal global ptr @vega12_enable_dpm_tasks._entry.98, section ".printk_index", align 4
@.str.100 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to setup default DPM tables!\00", [60 x i8] zeroinitializer }, align 32
@vega12_set_allowed_featuresmask._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_set_allowed_featuresmask = private unnamed_addr constant [32 x i8] c"vega12_set_allowed_featuresmask\00", align 1
@vega12_set_allowed_featuresmask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_set_allowed_featuresmask, ptr @.str.2, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_set_allowed_featuresmask._entry_ptr = internal global ptr @vega12_set_allowed_featuresmask._entry, section ".printk_index", align 4
@.str.101 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"[SetAllowedFeaturesMask] Attempt to set allowed features mask (high) failed!\00", [51 x i8] zeroinitializer }, align 32
@vega12_set_allowed_featuresmask._rs.102 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_set_allowed_featuresmask._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_set_allowed_featuresmask, ptr @.str.2, i32 888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_set_allowed_featuresmask._entry_ptr.104 = internal global ptr @vega12_set_allowed_featuresmask._entry.103, section ".printk_index", align 4
@.str.105 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"[SetAllowedFeaturesMask] Attempt to set allowed features mask (low) failed!\00", [52 x i8] zeroinitializer }, align 32
@vega12_init_smc_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_init_smc_table = private unnamed_addr constant [22 x i8] c"vega12_init_smc_table\00", align 1
@vega12_init_smc_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_init_smc_table, ptr @.str.2, i32 845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_init_smc_table._entry_ptr = internal global ptr @vega12_init_smc_table._entry, section ".printk_index", align 4
@.str.106 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to upload PPtable!\00", [38 x i8] zeroinitializer }, align 32
@vega12_run_acg_btc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_run_acg_btc = private unnamed_addr constant [19 x i8] c"vega12_run_acg_btc\00", align 1
@vega12_run_acg_btc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_run_acg_btc, ptr @.str.2, i32 857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_run_acg_btc._entry_ptr = internal global ptr @vega12_run_acg_btc._entry, section ".printk_index", align 4
@.str.107 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[Run_ACG_BTC] Attempt to run ACG BTC failed!\00", [51 x i8] zeroinitializer }, align 32
@vega12_run_acg_btc._rs.108 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_run_acg_btc._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_run_acg_btc, ptr @.str.2, i32 860, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_run_acg_btc._entry_ptr.110 = internal global ptr @vega12_run_acg_btc._entry.109, section ".printk_index", align 4
@vega12_enable_all_smu_features._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_enable_all_smu_features = private unnamed_addr constant [31 x i8] c"vega12_enable_all_smu_features\00", align 1
@vega12_enable_all_smu_features._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_enable_all_smu_features, ptr @.str.2, i32 919, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_enable_all_smu_features._entry_ptr = internal global ptr @vega12_enable_all_smu_features._entry, section ".printk_index", align 4
@.str.111 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[EnableAllSMUFeatures] Failed to enable all smu features!\00", [38 x i8] zeroinitializer }, align 32
@vega12_override_pcie_parameters._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_override_pcie_parameters = private unnamed_addr constant [32 x i8] c"vega12_override_pcie_parameters\00", align 1
@vega12_override_pcie_parameters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_override_pcie_parameters, ptr @.str.2, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_override_pcie_parameters._entry_ptr = internal global ptr @vega12_override_pcie_parameters._entry, section ".printk_index", align 4
@.str.112 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"[OverridePcieParameters] Attempt to override pcie params failed!\00", [63 x i8] zeroinitializer }, align 32
@vega12_override_pcie_parameters._rs.113 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_override_pcie_parameters._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_override_pcie_parameters, ptr @.str.2, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_override_pcie_parameters._entry_ptr.115 = internal global ptr @vega12_override_pcie_parameters._entry.114, section ".printk_index", align 4
@vega12_override_pcie_parameters._rs.116 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_override_pcie_parameters._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_override_pcie_parameters, ptr @.str.2, i32 562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_override_pcie_parameters._entry_ptr.118 = internal global ptr @vega12_override_pcie_parameters._entry.117, section ".printk_index", align 4
@.str.119 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Attempt to Disable DPM LINK Failed!\00", [60 x i8] zeroinitializer }, align 32
@vega12_get_all_clock_ranges._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_get_all_clock_ranges = private unnamed_addr constant [28 x i8] c"vega12_get_all_clock_ranges\00", align 1
@vega12_get_all_clock_ranges._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_get_all_clock_ranges, ptr @.str.2, i32 1024, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_get_all_clock_ranges._entry_ptr = internal global ptr @vega12_get_all_clock_ranges._entry, section ".printk_index", align 4
@.str.120 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get clk range from SMC!\00", [62 x i8] zeroinitializer }, align 32
@vega12_get_all_clock_ranges_helper._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_get_all_clock_ranges_helper = private unnamed_addr constant [35 x i8] c"vega12_get_all_clock_ranges_helper\00", align 1
@vega12_get_all_clock_ranges_helper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_get_all_clock_ranges_helper, ptr @.str.2, i32 995, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_get_all_clock_ranges_helper._entry_ptr = internal global ptr @vega12_get_all_clock_ranges_helper._entry, section ".printk_index", align 4
@.str.121 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[GetClockRanges] Failed to get max ac clock from SMC!\00", [42 x i8] zeroinitializer }, align 32
@vega12_get_all_clock_ranges_helper._rs.122 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_get_all_clock_ranges_helper._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_get_all_clock_ranges_helper, ptr @.str.2, i32 1002, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_get_all_clock_ranges_helper._entry_ptr.124 = internal global ptr @vega12_get_all_clock_ranges_helper._entry.123, section ".printk_index", align 4
@.str.125 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[GetClockRanges] Failed to get min ac clock from SMC!\00", [42 x i8] zeroinitializer }, align 32
@vega12_get_all_clock_ranges_helper._rs.126 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_get_all_clock_ranges_helper._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_get_all_clock_ranges_helper, ptr @.str.2, i32 1009, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_get_all_clock_ranges_helper._entry_ptr.128 = internal global ptr @vega12_get_all_clock_ranges_helper._entry.127, section ".printk_index", align 4
@.str.129 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[GetClockRanges] Failed to get max dc clock from SMC!\00", [42 x i8] zeroinitializer }, align 32
@vega12_setup_default_dpm_tables._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_setup_default_dpm_tables = private unnamed_addr constant [32 x i8] c"vega12_setup_default_dpm_tables\00", align 1
@vega12_setup_default_dpm_tables._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_setup_default_dpm_tables, ptr @.str.2, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_setup_default_dpm_tables._entry_ptr = internal global ptr @vega12_setup_default_dpm_tables._entry, section ".printk_index", align 4
@.str.130 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[SetupDefaultDpmTable] failed to get socclk dpm levels!\00", [40 x i8] zeroinitializer }, align 32
@vega12_setup_default_dpm_tables._rs.131 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_setup_default_dpm_tables._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_setup_default_dpm_tables, ptr @.str.2, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_setup_default_dpm_tables._entry_ptr.133 = internal global ptr @vega12_setup_default_dpm_tables._entry.132, section ".printk_index", align 4
@.str.134 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[SetupDefaultDpmTable] failed to get gfxclk dpm levels!\00", [40 x i8] zeroinitializer }, align 32
@vega12_setup_default_dpm_tables._rs.135 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_setup_default_dpm_tables._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_setup_default_dpm_tables, ptr @.str.2, i32 676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_setup_default_dpm_tables._entry_ptr.137 = internal global ptr @vega12_setup_default_dpm_tables._entry.136, section ".printk_index", align 4
@.str.138 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[SetupDefaultDpmTable] failed to get memclk dpm levels!\00", [40 x i8] zeroinitializer }, align 32
@vega12_setup_default_dpm_tables._rs.139 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_setup_default_dpm_tables._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_setup_default_dpm_tables, ptr @.str.2, i32 689, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_setup_default_dpm_tables._entry_ptr.141 = internal global ptr @vega12_setup_default_dpm_tables._entry.140, section ".printk_index", align 4
@.str.142 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[SetupDefaultDpmTable] failed to get eclk dpm levels!\00", [42 x i8] zeroinitializer }, align 32
@vega12_setup_default_dpm_tables._rs.143 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_setup_default_dpm_tables._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_setup_default_dpm_tables, ptr @.str.2, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_setup_default_dpm_tables._entry_ptr.145 = internal global ptr @vega12_setup_default_dpm_tables._entry.144, section ".printk_index", align 4
@.str.146 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[SetupDefaultDpmTable] failed to get vclk dpm levels!\00", [42 x i8] zeroinitializer }, align 32
@vega12_setup_default_dpm_tables._rs.147 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_setup_default_dpm_tables._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_setup_default_dpm_tables, ptr @.str.2, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_setup_default_dpm_tables._entry_ptr.149 = internal global ptr @vega12_setup_default_dpm_tables._entry.148, section ".printk_index", align 4
@.str.150 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[SetupDefaultDpmTable] failed to get dclk dpm levels!\00", [42 x i8] zeroinitializer }, align 32
@vega12_setup_default_dpm_tables._rs.151 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_setup_default_dpm_tables._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_setup_default_dpm_tables, ptr @.str.2, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_setup_default_dpm_tables._entry_ptr.153 = internal global ptr @vega12_setup_default_dpm_tables._entry.152, section ".printk_index", align 4
@.str.154 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"[SetupDefaultDpmTable] failed to get dcefclk dpm levels!\00", [39 x i8] zeroinitializer }, align 32
@vega12_setup_default_dpm_tables._rs.155 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_setup_default_dpm_tables._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_setup_default_dpm_tables, ptr @.str.2, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_setup_default_dpm_tables._entry_ptr.157 = internal global ptr @vega12_setup_default_dpm_tables._entry.156, section ".printk_index", align 4
@.str.158 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[SetupDefaultDpmTable] failed to get pixclk dpm levels!\00", [40 x i8] zeroinitializer }, align 32
@vega12_setup_default_dpm_tables._rs.159 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_setup_default_dpm_tables._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_setup_default_dpm_tables, ptr @.str.2, i32 752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_setup_default_dpm_tables._entry_ptr.161 = internal global ptr @vega12_setup_default_dpm_tables._entry.160, section ".printk_index", align 4
@.str.162 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"[SetupDefaultDpmTable] failed to get dispclk dpm levels!\00", [39 x i8] zeroinitializer }, align 32
@vega12_setup_default_dpm_tables._rs.163 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_setup_default_dpm_tables._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_setup_default_dpm_tables, ptr @.str.2, i32 763, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_setup_default_dpm_tables._entry_ptr.165 = internal global ptr @vega12_setup_default_dpm_tables._entry.164, section ".printk_index", align 4
@.str.166 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[SetupDefaultDpmTable] failed to get phyclk dpm levels!\00", [40 x i8] zeroinitializer }, align 32
@vega12_setup_single_dpm_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_setup_single_dpm_table = private unnamed_addr constant [30 x i8] c"vega12_setup_single_dpm_table\00", align 1
@vega12_setup_single_dpm_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_setup_single_dpm_table, ptr @.str.2, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_setup_single_dpm_table._entry_ptr = internal global ptr @vega12_setup_single_dpm_table._entry, section ".printk_index", align 4
@.str.167 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[SetupSingleDpmTable] failed to get clk levels!\00", [48 x i8] zeroinitializer }, align 32
@vega12_setup_single_dpm_table._rs.168 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_setup_single_dpm_table._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_setup_single_dpm_table, ptr @.str.2, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_setup_single_dpm_table._entry_ptr.170 = internal global ptr @vega12_setup_single_dpm_table._entry.169, section ".printk_index", align 4
@.str.171 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[SetupSingleDpmTable] failed to get clk of specific level!\00", [37 x i8] zeroinitializer }, align 32
@vega12_get_number_of_dpm_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_get_number_of_dpm_level = private unnamed_addr constant [31 x i8] c"vega12_get_number_of_dpm_level\00", align 1
@vega12_get_number_of_dpm_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_get_number_of_dpm_level, ptr @.str.2, i32 580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_get_number_of_dpm_level._entry_ptr = internal global ptr @vega12_get_number_of_dpm_level._entry, section ".printk_index", align 4
@.str.172 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[GetNumOfDpmLevel] failed to get dpm levels!\00", [51 x i8] zeroinitializer }, align 32
@vega12_get_dpm_frequency_by_index._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_get_dpm_frequency_by_index = private unnamed_addr constant [34 x i8] c"vega12_get_dpm_frequency_by_index\00", align 1
@vega12_get_dpm_frequency_by_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_get_dpm_frequency_by_index, ptr @.str.2, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_get_dpm_frequency_by_index._entry_ptr = internal global ptr @vega12_get_dpm_frequency_by_index._entry, section ".printk_index", align 4
@.str.173 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[GetDpmFrequencyByIndex] Failed to get dpm frequency from SMU!\00", [33 x i8] zeroinitializer }, align 32
@vega12_disable_dpm_tasks._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_disable_dpm_tasks = private unnamed_addr constant [25 x i8] c"vega12_disable_dpm_tasks\00", align 1
@vega12_disable_dpm_tasks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_disable_dpm_tasks, ptr @.str.2, i32 2614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_disable_dpm_tasks._entry_ptr = internal global ptr @vega12_disable_dpm_tasks._entry, section ".printk_index", align 4
@.str.174 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to disable all smu features!\00", [60 x i8] zeroinitializer }, align 32
@vega12_disable_all_smu_features._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_disable_all_smu_features = private unnamed_addr constant [32 x i8] c"vega12_disable_all_smu_features\00", align 1
@vega12_disable_all_smu_features._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_disable_all_smu_features, ptr @.str.2, i32 945, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_disable_all_smu_features._entry_ptr = internal global ptr @vega12_disable_all_smu_features._entry, section ".printk_index", align 4
@.str.175 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[DisableAllSMUFeatures] Failed to disable all smu features!\00", [36 x i8] zeroinitializer }, align 32
@vega12_enable_disable_uvd_dpm._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_enable_disable_uvd_dpm = private unnamed_addr constant [30 x i8] c"vega12_enable_disable_uvd_dpm\00", align 1
@vega12_enable_disable_uvd_dpm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_enable_disable_uvd_dpm, ptr @.str.2, i32 2562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_enable_disable_uvd_dpm._entry_ptr = internal global ptr @vega12_enable_disable_uvd_dpm._entry, section ".printk_index", align 4
@.str.176 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Attempt to Enable/Disable DPM UVD Failed!\00", [54 x i8] zeroinitializer }, align 32
@__func__.vega12_dpm_get_mclk = private unnamed_addr constant [20 x i8] c"vega12_dpm_get_mclk\00", align 1
@vega12_dpm_get_mclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_dpm_get_mclk, ptr @.str.2, i32 1344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_dpm_get_mclk._entry_ptr = internal global ptr @vega12_dpm_get_mclk._entry, section ".printk_index", align 4
@vega12_dpm_get_mclk._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_dpm_get_mclk, ptr @.str.2, i32 1349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_dpm_get_mclk._entry_ptr.180 = internal global ptr @vega12_dpm_get_mclk._entry.179, section ".printk_index", align 4
@__func__.vega12_dpm_get_sclk = private unnamed_addr constant [20 x i8] c"vega12_dpm_get_sclk\00", align 1
@vega12_dpm_get_sclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_dpm_get_sclk, ptr @.str.2, i32 1321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_dpm_get_sclk._entry_ptr = internal global ptr @vega12_dpm_get_sclk._entry, section ".printk_index", align 4
@vega12_dpm_get_sclk._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_dpm_get_sclk, ptr @.str.2, i32 1326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_dpm_get_sclk._entry_ptr.185 = internal global ptr @vega12_dpm_get_sclk._entry.184, section ".printk_index", align 4
@vega12_notify_smc_display_config_after_ps_adjustment._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_notify_smc_display_config_after_ps_adjustment = private unnamed_addr constant [53 x i8] c"vega12_notify_smc_display_config_after_ps_adjustment\00", align 1
@vega12_notify_smc_display_config_after_ps_adjustment._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_notify_smc_display_config_after_ps_adjustment, ptr @.str.2, i32 1614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_notify_smc_display_config_after_ps_adjustment._entry_ptr = internal global ptr @vega12_notify_smc_display_config_after_ps_adjustment._entry, section ".printk_index", align 4
@.str.187 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Attempt to set divider for DCEFCLK Failed!\00", [53 x i8] zeroinitializer }, align 32
@vega12_notify_smc_display_config_after_ps_adjustment._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @__func__.vega12_notify_smc_display_config_after_ps_adjustment, ptr @.str.2, i32 1616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016amdgpu: [powerplay] Attempt to set Hard Min for DCEFCLK Failed!\00", [62 x i8] zeroinitializer }, align 32
@vega12_notify_smc_display_config_after_ps_adjustment._entry_ptr.190 = internal global ptr @vega12_notify_smc_display_config_after_ps_adjustment._entry.188, section ".printk_index", align 4
@vega12_set_uclk_to_highest_dpm_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_set_uclk_to_highest_dpm_level = private unnamed_addr constant [37 x i8] c"vega12_set_uclk_to_highest_dpm_level\00", align 1
@vega12_set_uclk_to_highest_dpm_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_set_uclk_to_highest_dpm_level, ptr @.str.2, i32 2496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_set_uclk_to_highest_dpm_level._entry_ptr = internal global ptr @vega12_set_uclk_to_highest_dpm_level._entry, section ".printk_index", align 4
@.str.191 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[SetUclkToHightestDpmLevel] Dpm table has no entry!\00", [44 x i8] zeroinitializer }, align 32
@vega12_set_uclk_to_highest_dpm_level._rs.192 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_set_uclk_to_highest_dpm_level._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_set_uclk_to_highest_dpm_level, ptr @.str.2, i32 2499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_set_uclk_to_highest_dpm_level._entry_ptr.194 = internal global ptr @vega12_set_uclk_to_highest_dpm_level._entry.193, section ".printk_index", align 4
@.str.195 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[SetUclkToHightestDpmLevel] Dpm table has too many entries!\00", [36 x i8] zeroinitializer }, align 32
@vega12_set_uclk_to_highest_dpm_level._rs.196 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_set_uclk_to_highest_dpm_level._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_set_uclk_to_highest_dpm_level, ptr @.str.2, i32 2507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_set_uclk_to_highest_dpm_level._entry_ptr.198 = internal global ptr @vega12_set_uclk_to_highest_dpm_level._entry.197, section ".printk_index", align 4
@.str.199 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[SetUclkToHightestDpmLevel] Set hard min uclk failed!\00", [42 x i8] zeroinitializer }, align 32
@vega12_display_configuration_changed_task._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_display_configuration_changed_task = private unnamed_addr constant [42 x i8] c"vega12_display_configuration_changed_task\00", align 1
@vega12_display_configuration_changed_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_display_configuration_changed_task, ptr @.str.2, i32 2538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_display_configuration_changed_task._entry_ptr = internal global ptr @vega12_display_configuration_changed_task._entry, section ".printk_index", align 4
@.str.200 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to update WMTABLE!\00", [38 x i8] zeroinitializer }, align 32
@vega12_display_clock_voltage_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.202, ptr @.str.2, i32 1567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016amdgpu: [powerplay] [DisplayClockVoltageRequest]Invalid Clock Type!\00", [58 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"vega12_display_clock_voltage_request\00", [59 x i8] zeroinitializer }, align 32
@vega12_display_clock_voltage_request._entry_ptr = internal global ptr @vega12_display_clock_voltage_request._entry, section ".printk_index", align 4
@vega12_power_off_asic._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_power_off_asic = private unnamed_addr constant [22 x i8] c"vega12_power_off_asic\00", align 1
@vega12_power_off_asic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_power_off_asic, ptr @.str.2, i32 2627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_power_off_asic._entry_ptr = internal global ptr @vega12_power_off_asic._entry, section ".printk_index", align 4
@.str.203 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[disable_dpm_tasks] Failed to disable DPM!\00", [53 x i8] zeroinitializer }, align 32
@vega12_force_clock_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_force_clock_level = private unnamed_addr constant [25 x i8] c"vega12_force_clock_level\00", align 1
@vega12_force_clock_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_force_clock_level, ptr @.str.2, i32 2014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_force_clock_level._entry_ptr = internal global ptr @vega12_force_clock_level._entry, section ".printk_index", align 4
@.str.204 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to upload boot level to lowest!\00", [57 x i8] zeroinitializer }, align 32
@vega12_force_clock_level._rs.205 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_force_clock_level._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_force_clock_level, ptr @.str.2, i32 2019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_force_clock_level._entry_ptr.207 = internal global ptr @vega12_force_clock_level._entry.206, section ".printk_index", align 4
@vega12_force_clock_level._rs.208 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_force_clock_level._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_force_clock_level, ptr @.str.2, i32 2034, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_force_clock_level._entry_ptr.210 = internal global ptr @vega12_force_clock_level._entry.209, section ".printk_index", align 4
@vega12_force_clock_level._rs.211 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_force_clock_level._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_force_clock_level, ptr @.str.2, i32 2039, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_force_clock_level._entry_ptr.213 = internal global ptr @vega12_force_clock_level._entry.212, section ".printk_index", align 4
@vega12_force_clock_level._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @__func__.vega12_force_clock_level, ptr @.str.2, i32 2050, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013amdgpu: [powerplay] Clock level specified %d is over max allowed %d\0A\00", [57 x i8] zeroinitializer }, align 32
@vega12_force_clock_level._entry_ptr.216 = internal global ptr @vega12_force_clock_level._entry.214, section ".printk_index", align 4
@vega12_force_clock_level._rs.217 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_force_clock_level._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_force_clock_level, ptr @.str.2, i32 2062, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_force_clock_level._entry_ptr.219 = internal global ptr @vega12_force_clock_level._entry.218, section ".printk_index", align 4
@vega12_force_clock_level._rs.220 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_force_clock_level._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_force_clock_level, ptr @.str.2, i32 2067, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_force_clock_level._entry_ptr.222 = internal global ptr @vega12_force_clock_level._entry.221, section ".printk_index", align 4
@vega12_force_clock_level._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @__func__.vega12_force_clock_level, ptr @.str.2, i32 2077, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_force_clock_level._entry_ptr.224 = internal global ptr @vega12_force_clock_level._entry.223, section ".printk_index", align 4
@vega12_force_clock_level._rs.225 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_force_clock_level._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_force_clock_level, ptr @.str.2, i32 2087, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_force_clock_level._entry_ptr.227 = internal global ptr @vega12_force_clock_level._entry.226, section ".printk_index", align 4
@vega12_print_clock_levels._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_print_clock_levels = private unnamed_addr constant [26 x i8] c"vega12_print_clock_levels\00", align 1
@vega12_print_clock_levels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_print_clock_levels, ptr @.str.2, i32 2254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_print_clock_levels._entry_ptr = internal global ptr @vega12_print_clock_levels._entry, section ".printk_index", align 4
@.str.228 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Attempt to get current gfx clk Failed!\00", [57 x i8] zeroinitializer }, align 32
@vega12_print_clock_levels._rs.229 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_print_clock_levels._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_print_clock_levels, ptr @.str.2, i32 2259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_print_clock_levels._entry_ptr.231 = internal global ptr @vega12_print_clock_levels._entry.230, section ".printk_index", align 4
@.str.232 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Attempt to get gfx clk levels Failed!\00", [58 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%d: %uMhz %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@vega12_print_clock_levels._rs.236 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_print_clock_levels._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_print_clock_levels, ptr @.str.2, i32 2270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_print_clock_levels._entry_ptr.238 = internal global ptr @vega12_print_clock_levels._entry.237, section ".printk_index", align 4
@.str.239 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Attempt to get current mclk freq Failed!\00", [55 x i8] zeroinitializer }, align 32
@vega12_print_clock_levels._rs.240 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_print_clock_levels._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_print_clock_levels, ptr @.str.2, i32 2275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_print_clock_levels._entry_ptr.242 = internal global ptr @vega12_print_clock_levels._entry.241, section ".printk_index", align 4
@.str.243 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Attempt to get memory clk levels Failed!\00", [55 x i8] zeroinitializer }, align 32
@vega12_print_clock_levels._rs.244 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_print_clock_levels._entry.245 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_print_clock_levels, ptr @.str.2, i32 2288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_print_clock_levels._entry_ptr.246 = internal global ptr @vega12_print_clock_levels._entry.245, section ".printk_index", align 4
@.str.247 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Attempt to get Current SOCCLK Frequency Failed!\00", [48 x i8] zeroinitializer }, align 32
@vega12_print_clock_levels._rs.248 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_print_clock_levels._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_print_clock_levels, ptr @.str.2, i32 2293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_print_clock_levels._entry_ptr.250 = internal global ptr @vega12_print_clock_levels._entry.249, section ".printk_index", align 4
@.str.251 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Attempt to get soc clk levels Failed!\00", [58 x i8] zeroinitializer }, align 32
@vega12_print_clock_levels._rs.252 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_print_clock_levels._entry.253 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_print_clock_levels, ptr @.str.2, i32 2306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_print_clock_levels._entry_ptr.254 = internal global ptr @vega12_print_clock_levels._entry.253, section ".printk_index", align 4
@.str.255 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Attempt to get Current DCEFCLK Frequency Failed!\00", [47 x i8] zeroinitializer }, align 32
@vega12_print_clock_levels._rs.256 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_print_clock_levels._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_print_clock_levels, ptr @.str.2, i32 2311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_print_clock_levels._entry_ptr.258 = internal global ptr @vega12_print_clock_levels._entry.257, section ".printk_index", align 4
@.str.259 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Attempt to get dcef clk levels Failed!\00", [57 x i8] zeroinitializer }, align 32
@vega12_get_current_gfx_clk_freq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_get_current_gfx_clk_freq = private unnamed_addr constant [32 x i8] c"vega12_get_current_gfx_clk_freq\00", align 1
@vega12_get_current_gfx_clk_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_get_current_gfx_clk_freq, ptr @.str.2, i32 1406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_get_current_gfx_clk_freq._entry_ptr = internal global ptr @vega12_get_current_gfx_clk_freq._entry, section ".printk_index", align 4
@.str.260 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"[GetCurrentGfxClkFreq] Attempt to get Current GFXCLK Frequency Failed!\00", [57 x i8] zeroinitializer }, align 32
@vega12_get_current_mclk_freq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_get_current_mclk_freq = private unnamed_addr constant [29 x i8] c"vega12_get_current_mclk_freq\00", align 1
@vega12_get_current_mclk_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_get_current_mclk_freq, ptr @.str.2, i32 1423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_get_current_mclk_freq._entry_ptr = internal global ptr @vega12_get_current_mclk_freq._entry, section ".printk_index", align 4
@.str.261 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"[GetCurrentMClkFreq] Attempt to get Current MCLK Frequency Failed!\00", [61 x i8] zeroinitializer }, align 32
@vega12_get_current_activity_percent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.263, ptr @.str.2, i32 1450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013amdgpu: [powerplay] Invalid index for retrieving clock activity\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"vega12_get_current_activity_percent\00", [60 x i8] zeroinitializer }, align 32
@vega12_get_current_activity_percent._entry_ptr = internal global ptr @vega12_get_current_activity_percent._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@vega12_get_metrics_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.264, ptr @.str.265, ptr @.str.2, i32 1370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016amdgpu: [powerplay] Failed to export SMU metrics table!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vega12_get_metrics_table\00", [39 x i8] zeroinitializer }, align 32
@vega12_get_metrics_table._entry_ptr = internal global ptr @vega12_get_metrics_table._entry, section ".printk_index", align 4
@SMU7ThermalWithDelayPolicy = internal constant { [2 x %struct.PP_TemperatureRange], [56 x i8] } { [2 x %struct.PP_TemperatureRange] [%struct.PP_TemperatureRange { i32 -273150, i32 99000, i32 99000, i32 -273150, i32 99000, i32 99000, i32 -273150, i32 99000, i32 99000 }, %struct.PP_TemperatureRange { i32 120000, i32 120000, i32 120000, i32 120000, i32 120000, i32 120000, i32 120000, i32 120000, i32 120000 }], [56 x i8] zeroinitializer }, align 32
@vega12_get_ppfeature_status.ppfeature_name = internal constant { [29 x ptr], [44 x i8] } { [29 x ptr] [ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294], [44 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DPM_PREFETCHER\00", [17 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"GFXCLK_DPM\00", [21 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"UCLK_DPM\00", [23 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SOCCLK_DPM\00", [21 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UVD_DPM\00", [24 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VCE_DPM\00", [24 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ULV\00", [28 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MP0CLK_DPM\00", [21 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LINK_DPM\00", [23 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DCEFCLK_DPM\00", [20 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"GFXCLK_DS\00", [22 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SOCCLK_DS\00", [22 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LCLK_DS\00", [24 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PPT\00", [28 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TDC\00", [28 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"THERMAL\00", [24 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GFX_PER_CU_CG\00", [18 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RM\00", [29 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DCEFCLK_DS\00", [21 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ACDC\00", [27 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VR0HOT\00", [25 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VR1HOT\00", [25 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FW_CTF\00", [25 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED_DISPLAY\00", [20 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FAN_CONTROL\00", [20 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DIDT\00", [27 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GFXOFF\00", [25 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CG\00", [29 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ACG\00", [28 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FEATURES\00", [23 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BITMASK\00", [24 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ENABLEMENT\00", [21 x i8] zeroinitializer }, align 32
@vega12_get_ppfeature_status._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_get_ppfeature_status = private unnamed_addr constant [28 x i8] c"vega12_get_ppfeature_status\00", align 1
@vega12_get_ppfeature_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_get_ppfeature_status, ptr @.str.2, i32 2149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_get_ppfeature_status._entry_ptr = internal global ptr @vega12_get_ppfeature_status._entry, section ".printk_index", align 4
@.str.298 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[EnableAllSmuFeatures] Failed to get enabled smc features!\00", [37 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Current ppfeatures: 0x%016llx\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%-19s %-22s %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%-19s 0x%016llx %6s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"Y\00", [30 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"N\00", [30 x i8] zeroinitializer }, align 32
@vega12_set_ppfeature_status.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.304, ptr @.str.305, ptr @.str.2, ptr @.str.306, i8 2, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.304 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vega12_set_ppfeature_status\00", [36 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"features_to_disable 0x%llx\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"amdgpu: [powerplay] features_to_disable 0x%llx\0A\00", [48 x i8] zeroinitializer }, align 32
@vega12_set_ppfeature_status.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.304, ptr @.str.305, ptr @.str.2, ptr @.str.308, i8 2, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.308 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"features_to_enable 0x%llx\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"amdgpu: [powerplay] features_to_enable 0x%llx\0A\00", [49 x i8] zeroinitializer }, align 32
@vega12_set_mp1_state._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_set_mp1_state = private unnamed_addr constant [21 x i8] c"vega12_set_mp1_state\00", align 1
@vega12_set_mp1_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_set_mp1_state, ptr @.str.2, i32 2825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_set_mp1_state._entry_ptr = internal global ptr @vega12_set_mp1_state._entry, section ".printk_index", align 4
@.str.310 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[PrepareMp1] Failed!\00", [43 x i8] zeroinitializer }, align 32
@link_width = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 1, i32 2, i32 4, i32 8, i32 12, i32 16], [36 x i8] zeroinitializer }, align 32
@link_speed = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 25, i32 50, i32 80, i32 160], [16 x i8] zeroinitializer }, align 32
@switch.table.vega12_display_clock_voltage_request = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 458752, i32 393216, i32 393216, i32 393216, i32 393216, i32 524288, i32 589824], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.311 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.312 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.313 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.314 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.315 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.316 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 20]
@__sancov_gen_cov_switch_values.317 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1297, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant [19 x i8] c"vega12_hwmgr_funcs\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2893, i32 35 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 463, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1642, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1646, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1111, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1136, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1146, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1154, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1165, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1174, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1185, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1196, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1207, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1228, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1239, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1250, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1258, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1269, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1280, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1671, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1675, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1685, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1689, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1037, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1042, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1047, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1052, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1057, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1062, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1067, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1072, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1077, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 878, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 884, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 844, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 854, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 859, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 916, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 533, i32 4 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 550, i32 4 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 560, i32 3 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1021, i32 3 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 991, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 998, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1005, i32 2 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 648, i32 3 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 661, i32 3 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 674, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 687, i32 3 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 700, i32 3 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 713, i32 3 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 726, i32 3 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 739, i32 3 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 750, i32 3 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 761, i32 3 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 608, i32 2 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 616, i32 3 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 578, i32 2 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 592, i32 2 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2613, i32 2 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 942, i32 2 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2558, i32 3 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1341, i32 3 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1346, i32 3 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1318, i32 3 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1323, i32 3 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1608, i32 5 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1616, i32 4 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2494, i32 3 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2497, i32 3 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2502, i32 3 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2538, i32 3 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1567, i32 4 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2625, i32 2 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2012, i32 3 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2017, i32 3 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2032, i32 3 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2037, i32 3 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2048, i32 4 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2060, i32 3 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2065, i32 3 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2075, i32 4 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2085, i32 3 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2251, i32 3 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2256, i32 3 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2261, i32 32 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2263, i32 58 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2263, i32 64 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2267, i32 3 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2272, i32 3 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2283, i32 3 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2290, i32 3 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2301, i32 3 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2308, i32 3 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1402, i32 2 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1419, i32 2 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1450, i32 3 }
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 1370, i32 4 }
@___asan_gen_.1116 = private unnamed_addr constant [27 x i8] c"SMU7ThermalWithDelayPolicy\00", align 1
@___asan_gen_.1117 = private unnamed_addr constant [53 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/inc/pp_thermal.h\00", align 1
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1117, i32 28, i32 56 }
@___asan_gen_.1119 = private unnamed_addr constant [15 x i8] c"ppfeature_name\00", align 1
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2105, i32 21 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2106, i32 4 }
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2107, i32 4 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2108, i32 4 }
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2109, i32 4 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2110, i32 4 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2111, i32 4 }
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2112, i32 4 }
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2113, i32 4 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2114, i32 4 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2115, i32 4 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2116, i32 4 }
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2117, i32 4 }
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2118, i32 4 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2119, i32 4 }
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2120, i32 4 }
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2121, i32 4 }
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2122, i32 4 }
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2123, i32 4 }
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2124, i32 4 }
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2125, i32 4 }
@___asan_gen_.1184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2126, i32 4 }
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2127, i32 4 }
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2128, i32 4 }
@___asan_gen_.1193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2129, i32 4 }
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2130, i32 4 }
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2131, i32 4 }
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2132, i32 4 }
@___asan_gen_.1205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2133, i32 4 }
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2134, i32 4 }
@___asan_gen_.1211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2136, i32 4 }
@___asan_gen_.1214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2137, i32 4 }
@___asan_gen_.1217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2138, i32 4 }
@___asan_gen_.1226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2147, i32 2 }
@___asan_gen_.1229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2151, i32 35 }
@___asan_gen_.1232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2152, i32 35 }
@___asan_gen_.1235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2157, i32 36 }
@___asan_gen_.1238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2160, i32 40 }
@___asan_gen_.1241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2160, i32 46 }
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2185, i32 2 }
@___asan_gen_.1259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2186, i32 2 }
@___asan_gen_.1260 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.1263 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1266 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 2823, i32 2 }
@___asan_gen_.1269 = private unnamed_addr constant [11 x i8] c"link_width\00", align 1
@___asan_gen_.1271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 55, i32 18 }
@___asan_gen_.1272 = private unnamed_addr constant [11 x i8] c"link_speed\00", align 1
@___asan_gen_.1273 = private constant [67 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c\00", align 1
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1273, i32 56, i32 18 }
@___asan_gen_.1275 = private unnamed_addr constant [50 x i8] c"switch.table.vega12_display_clock_voltage_request\00", align 1
@llvm.compiler.used = appending global [417 x ptr] [ptr @vega12_disable_all_smu_features._entry, ptr @vega12_disable_all_smu_features._entry_ptr, ptr @vega12_disable_dpm_tasks._entry, ptr @vega12_disable_dpm_tasks._entry_ptr, ptr @vega12_display_clock_voltage_request._entry, ptr @vega12_display_clock_voltage_request._entry_ptr, ptr @vega12_display_configuration_changed_task._entry, ptr @vega12_display_configuration_changed_task._entry_ptr, ptr @vega12_dpm_get_mclk._entry, ptr @vega12_dpm_get_mclk._entry.179, ptr @vega12_dpm_get_mclk._entry_ptr, ptr @vega12_dpm_get_mclk._entry_ptr.180, ptr @vega12_dpm_get_sclk._entry, ptr @vega12_dpm_get_sclk._entry.184, ptr @vega12_dpm_get_sclk._entry_ptr, ptr @vega12_dpm_get_sclk._entry_ptr.185, ptr @vega12_enable_all_smu_features._entry, ptr @vega12_enable_all_smu_features._entry_ptr, ptr @vega12_enable_disable_uvd_dpm._entry, ptr @vega12_enable_disable_uvd_dpm._entry_ptr, ptr @vega12_enable_disable_vce_dpm._entry, ptr @vega12_enable_disable_vce_dpm._entry_ptr, ptr @vega12_enable_dpm_tasks._entry, ptr @vega12_enable_dpm_tasks._entry.71, ptr @vega12_enable_dpm_tasks._entry.75, ptr @vega12_enable_dpm_tasks._entry.79, ptr @vega12_enable_dpm_tasks._entry.83, ptr @vega12_enable_dpm_tasks._entry.87, ptr @vega12_enable_dpm_tasks._entry.91, ptr @vega12_enable_dpm_tasks._entry.95, ptr @vega12_enable_dpm_tasks._entry.98, ptr @vega12_enable_dpm_tasks._entry_ptr, ptr @vega12_enable_dpm_tasks._entry_ptr.72, ptr @vega12_enable_dpm_tasks._entry_ptr.76, ptr @vega12_enable_dpm_tasks._entry_ptr.80, ptr @vega12_enable_dpm_tasks._entry_ptr.84, ptr @vega12_enable_dpm_tasks._entry_ptr.88, ptr @vega12_enable_dpm_tasks._entry_ptr.92, ptr @vega12_enable_dpm_tasks._entry_ptr.96, ptr @vega12_enable_dpm_tasks._entry_ptr.99, ptr @vega12_find_highest_dpm_level._entry, ptr @vega12_find_highest_dpm_level._entry_ptr, ptr @vega12_force_clock_level._entry, ptr @vega12_force_clock_level._entry.206, ptr @vega12_force_clock_level._entry.209, ptr @vega12_force_clock_level._entry.212, ptr @vega12_force_clock_level._entry.214, ptr @vega12_force_clock_level._entry.218, ptr @vega12_force_clock_level._entry.221, ptr @vega12_force_clock_level._entry.223, ptr @vega12_force_clock_level._entry.226, ptr @vega12_force_clock_level._entry_ptr, ptr @vega12_force_clock_level._entry_ptr.207, ptr @vega12_force_clock_level._entry_ptr.210, ptr @vega12_force_clock_level._entry_ptr.213, ptr @vega12_force_clock_level._entry_ptr.216, ptr @vega12_force_clock_level._entry_ptr.219, ptr @vega12_force_clock_level._entry_ptr.222, ptr @vega12_force_clock_level._entry_ptr.224, ptr @vega12_force_clock_level._entry_ptr.227, ptr @vega12_force_dpm_highest._entry, ptr @vega12_force_dpm_highest._entry.7, ptr @vega12_force_dpm_highest._entry_ptr, ptr @vega12_force_dpm_highest._entry_ptr.8, ptr @vega12_force_dpm_lowest._entry, ptr @vega12_force_dpm_lowest._entry.62, ptr @vega12_force_dpm_lowest._entry_ptr, ptr @vega12_force_dpm_lowest._entry_ptr.63, ptr @vega12_get_all_clock_ranges._entry, ptr @vega12_get_all_clock_ranges._entry_ptr, ptr @vega12_get_all_clock_ranges_helper._entry, ptr @vega12_get_all_clock_ranges_helper._entry.123, ptr @vega12_get_all_clock_ranges_helper._entry.127, ptr @vega12_get_all_clock_ranges_helper._entry_ptr, ptr @vega12_get_all_clock_ranges_helper._entry_ptr.124, ptr @vega12_get_all_clock_ranges_helper._entry_ptr.128, ptr @vega12_get_current_activity_percent._entry, ptr @vega12_get_current_activity_percent._entry_ptr, ptr @vega12_get_current_gfx_clk_freq._entry, ptr @vega12_get_current_gfx_clk_freq._entry_ptr, ptr @vega12_get_current_mclk_freq._entry, ptr @vega12_get_current_mclk_freq._entry_ptr, ptr @vega12_get_dpm_frequency_by_index._entry, ptr @vega12_get_dpm_frequency_by_index._entry_ptr, ptr @vega12_get_metrics_table._entry, ptr @vega12_get_metrics_table._entry_ptr, ptr @vega12_get_number_of_dpm_level._entry, ptr @vega12_get_number_of_dpm_level._entry_ptr, ptr @vega12_get_ppfeature_status._entry, ptr @vega12_get_ppfeature_status._entry_ptr, ptr @vega12_init_smc_table._entry, ptr @vega12_init_smc_table._entry_ptr, ptr @vega12_notify_smc_display_config_after_ps_adjustment._entry, ptr @vega12_notify_smc_display_config_after_ps_adjustment._entry.188, ptr @vega12_notify_smc_display_config_after_ps_adjustment._entry_ptr, ptr @vega12_notify_smc_display_config_after_ps_adjustment._entry_ptr.190, ptr @vega12_override_pcie_parameters._entry, ptr @vega12_override_pcie_parameters._entry.114, ptr @vega12_override_pcie_parameters._entry.117, ptr @vega12_override_pcie_parameters._entry_ptr, ptr @vega12_override_pcie_parameters._entry_ptr.115, ptr @vega12_override_pcie_parameters._entry_ptr.118, ptr @vega12_power_off_asic._entry, ptr @vega12_power_off_asic._entry_ptr, ptr @vega12_print_clock_levels._entry, ptr @vega12_print_clock_levels._entry.230, ptr @vega12_print_clock_levels._entry.237, ptr @vega12_print_clock_levels._entry.241, ptr @vega12_print_clock_levels._entry.245, ptr @vega12_print_clock_levels._entry.249, ptr @vega12_print_clock_levels._entry.253, ptr @vega12_print_clock_levels._entry.257, ptr @vega12_print_clock_levels._entry_ptr, ptr @vega12_print_clock_levels._entry_ptr.231, ptr @vega12_print_clock_levels._entry_ptr.238, ptr @vega12_print_clock_levels._entry_ptr.242, ptr @vega12_print_clock_levels._entry_ptr.246, ptr @vega12_print_clock_levels._entry_ptr.250, ptr @vega12_print_clock_levels._entry_ptr.254, ptr @vega12_print_clock_levels._entry_ptr.258, ptr @vega12_run_acg_btc._entry, ptr @vega12_run_acg_btc._entry.109, ptr @vega12_run_acg_btc._entry_ptr, ptr @vega12_run_acg_btc._entry_ptr.110, ptr @vega12_set_allowed_featuresmask._entry, ptr @vega12_set_allowed_featuresmask._entry.103, ptr @vega12_set_allowed_featuresmask._entry_ptr, ptr @vega12_set_allowed_featuresmask._entry_ptr.104, ptr @vega12_set_mp1_state._entry, ptr @vega12_set_mp1_state._entry_ptr, ptr @vega12_set_uclk_to_highest_dpm_level._entry, ptr @vega12_set_uclk_to_highest_dpm_level._entry.193, ptr @vega12_set_uclk_to_highest_dpm_level._entry.197, ptr @vega12_set_uclk_to_highest_dpm_level._entry_ptr, ptr @vega12_set_uclk_to_highest_dpm_level._entry_ptr.194, ptr @vega12_set_uclk_to_highest_dpm_level._entry_ptr.198, ptr @vega12_setup_asic_task._entry, ptr @vega12_setup_asic_task._entry_ptr, ptr @vega12_setup_default_dpm_tables._entry, ptr @vega12_setup_default_dpm_tables._entry.132, ptr @vega12_setup_default_dpm_tables._entry.136, ptr @vega12_setup_default_dpm_tables._entry.140, ptr @vega12_setup_default_dpm_tables._entry.144, ptr @vega12_setup_default_dpm_tables._entry.148, ptr @vega12_setup_default_dpm_tables._entry.152, ptr @vega12_setup_default_dpm_tables._entry.156, ptr @vega12_setup_default_dpm_tables._entry.160, ptr @vega12_setup_default_dpm_tables._entry.164, ptr @vega12_setup_default_dpm_tables._entry_ptr, ptr @vega12_setup_default_dpm_tables._entry_ptr.133, ptr @vega12_setup_default_dpm_tables._entry_ptr.137, ptr @vega12_setup_default_dpm_tables._entry_ptr.141, ptr @vega12_setup_default_dpm_tables._entry_ptr.145, ptr @vega12_setup_default_dpm_tables._entry_ptr.149, ptr @vega12_setup_default_dpm_tables._entry_ptr.153, ptr @vega12_setup_default_dpm_tables._entry_ptr.157, ptr @vega12_setup_default_dpm_tables._entry_ptr.161, ptr @vega12_setup_default_dpm_tables._entry_ptr.165, ptr @vega12_setup_single_dpm_table._entry, ptr @vega12_setup_single_dpm_table._entry.169, ptr @vega12_setup_single_dpm_table._entry_ptr, ptr @vega12_setup_single_dpm_table._entry_ptr.170, ptr @vega12_unforce_dpm_levels._entry, ptr @vega12_unforce_dpm_levels._entry.66, ptr @vega12_unforce_dpm_levels._entry_ptr, ptr @vega12_unforce_dpm_levels._entry_ptr.67, ptr @vega12_upload_dpm_max_level._entry, ptr @vega12_upload_dpm_max_level._entry.42, ptr @vega12_upload_dpm_max_level._entry.46, ptr @vega12_upload_dpm_max_level._entry.50, ptr @vega12_upload_dpm_max_level._entry.54, ptr @vega12_upload_dpm_max_level._entry.58, ptr @vega12_upload_dpm_max_level._entry_ptr, ptr @vega12_upload_dpm_max_level._entry_ptr.43, ptr @vega12_upload_dpm_max_level._entry_ptr.47, ptr @vega12_upload_dpm_max_level._entry_ptr.51, ptr @vega12_upload_dpm_max_level._entry_ptr.55, ptr @vega12_upload_dpm_max_level._entry_ptr.59, ptr @vega12_upload_dpm_min_level._entry, ptr @vega12_upload_dpm_min_level._entry.13, ptr @vega12_upload_dpm_min_level._entry.17, ptr @vega12_upload_dpm_min_level._entry.21, ptr @vega12_upload_dpm_min_level._entry.25, ptr @vega12_upload_dpm_min_level._entry.29, ptr @vega12_upload_dpm_min_level._entry.33, ptr @vega12_upload_dpm_min_level._entry.37, ptr @vega12_upload_dpm_min_level._entry_ptr, ptr @vega12_upload_dpm_min_level._entry_ptr.14, ptr @vega12_upload_dpm_min_level._entry_ptr.18, ptr @vega12_upload_dpm_min_level._entry_ptr.22, ptr @vega12_upload_dpm_min_level._entry_ptr.26, ptr @vega12_upload_dpm_min_level._entry_ptr.30, ptr @vega12_upload_dpm_min_level._entry_ptr.34, ptr @vega12_upload_dpm_min_level._entry_ptr.38, ptr @vega12_enable_disable_vce_dpm._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vega12_hwmgr_funcs, ptr @vega12_force_dpm_highest._rs, ptr @.str.5, ptr @vega12_force_dpm_highest._rs.6, ptr @.str.9, ptr @vega12_find_highest_dpm_level._rs, ptr @.str.10, ptr @vega12_upload_dpm_min_level._rs, ptr @.str.11, ptr @vega12_upload_dpm_min_level._rs.12, ptr @.str.15, ptr @vega12_upload_dpm_min_level._rs.16, ptr @.str.19, ptr @vega12_upload_dpm_min_level._rs.20, ptr @.str.23, ptr @vega12_upload_dpm_min_level._rs.24, ptr @.str.27, ptr @vega12_upload_dpm_min_level._rs.28, ptr @.str.31, ptr @vega12_upload_dpm_min_level._rs.32, ptr @.str.35, ptr @vega12_upload_dpm_min_level._rs.36, ptr @.str.39, ptr @vega12_upload_dpm_max_level._rs, ptr @.str.40, ptr @vega12_upload_dpm_max_level._rs.41, ptr @.str.44, ptr @vega12_upload_dpm_max_level._rs.45, ptr @.str.48, ptr @vega12_upload_dpm_max_level._rs.49, ptr @.str.52, ptr @vega12_upload_dpm_max_level._rs.53, ptr @.str.56, ptr @vega12_upload_dpm_max_level._rs.57, ptr @.str.60, ptr @vega12_force_dpm_lowest._rs, ptr @vega12_force_dpm_lowest._rs.61, ptr @vega12_unforce_dpm_levels._rs, ptr @.str.64, ptr @vega12_unforce_dpm_levels._rs.65, ptr @.str.68, ptr @vega12_enable_dpm_tasks._rs, ptr @.str.69, ptr @vega12_enable_dpm_tasks._rs.70, ptr @.str.73, ptr @vega12_enable_dpm_tasks._rs.74, ptr @.str.77, ptr @vega12_enable_dpm_tasks._rs.78, ptr @.str.81, ptr @vega12_enable_dpm_tasks._rs.82, ptr @.str.85, ptr @vega12_enable_dpm_tasks._rs.86, ptr @.str.89, ptr @vega12_enable_dpm_tasks._rs.90, ptr @.str.93, ptr @vega12_enable_dpm_tasks._rs.97, ptr @.str.100, ptr @vega12_set_allowed_featuresmask._rs, ptr @.str.101, ptr @vega12_set_allowed_featuresmask._rs.102, ptr @.str.105, ptr @vega12_init_smc_table._rs, ptr @.str.106, ptr @vega12_run_acg_btc._rs, ptr @.str.107, ptr @vega12_run_acg_btc._rs.108, ptr @vega12_enable_all_smu_features._rs, ptr @.str.111, ptr @vega12_override_pcie_parameters._rs, ptr @.str.112, ptr @vega12_override_pcie_parameters._rs.113, ptr @vega12_override_pcie_parameters._rs.116, ptr @.str.119, ptr @vega12_get_all_clock_ranges._rs, ptr @.str.120, ptr @vega12_get_all_clock_ranges_helper._rs, ptr @.str.121, ptr @vega12_get_all_clock_ranges_helper._rs.122, ptr @.str.125, ptr @vega12_get_all_clock_ranges_helper._rs.126, ptr @.str.129, ptr @vega12_setup_default_dpm_tables._rs, ptr @.str.130, ptr @vega12_setup_default_dpm_tables._rs.131, ptr @.str.134, ptr @vega12_setup_default_dpm_tables._rs.135, ptr @.str.138, ptr @vega12_setup_default_dpm_tables._rs.139, ptr @.str.142, ptr @vega12_setup_default_dpm_tables._rs.143, ptr @.str.146, ptr @vega12_setup_default_dpm_tables._rs.147, ptr @.str.150, ptr @vega12_setup_default_dpm_tables._rs.151, ptr @.str.154, ptr @vega12_setup_default_dpm_tables._rs.155, ptr @.str.158, ptr @vega12_setup_default_dpm_tables._rs.159, ptr @.str.162, ptr @vega12_setup_default_dpm_tables._rs.163, ptr @.str.166, ptr @vega12_setup_single_dpm_table._rs, ptr @.str.167, ptr @vega12_setup_single_dpm_table._rs.168, ptr @.str.171, ptr @vega12_get_number_of_dpm_level._rs, ptr @.str.172, ptr @vega12_get_dpm_frequency_by_index._rs, ptr @.str.173, ptr @vega12_disable_dpm_tasks._rs, ptr @.str.174, ptr @vega12_disable_all_smu_features._rs, ptr @.str.175, ptr @vega12_enable_disable_uvd_dpm._rs, ptr @.str.176, ptr @vega12_notify_smc_display_config_after_ps_adjustment._rs, ptr @.str.187, ptr @.str.189, ptr @vega12_set_uclk_to_highest_dpm_level._rs, ptr @.str.191, ptr @vega12_set_uclk_to_highest_dpm_level._rs.192, ptr @.str.195, ptr @vega12_set_uclk_to_highest_dpm_level._rs.196, ptr @.str.199, ptr @vega12_display_configuration_changed_task._rs, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @vega12_power_off_asic._rs, ptr @.str.203, ptr @vega12_force_clock_level._rs, ptr @.str.204, ptr @vega12_force_clock_level._rs.205, ptr @vega12_force_clock_level._rs.208, ptr @vega12_force_clock_level._rs.211, ptr @.str.215, ptr @vega12_force_clock_level._rs.217, ptr @vega12_force_clock_level._rs.220, ptr @vega12_force_clock_level._rs.225, ptr @vega12_print_clock_levels._rs, ptr @.str.228, ptr @vega12_print_clock_levels._rs.229, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @vega12_print_clock_levels._rs.236, ptr @.str.239, ptr @vega12_print_clock_levels._rs.240, ptr @.str.243, ptr @vega12_print_clock_levels._rs.244, ptr @.str.247, ptr @vega12_print_clock_levels._rs.248, ptr @.str.251, ptr @vega12_print_clock_levels._rs.252, ptr @.str.255, ptr @vega12_print_clock_levels._rs.256, ptr @.str.259, ptr @vega12_get_current_gfx_clk_freq._rs, ptr @.str.260, ptr @vega12_get_current_mclk_freq._rs, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @SMU7ThermalWithDelayPolicy, ptr @vega12_get_ppfeature_status.ppfeature_name, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @vega12_get_ppfeature_status._rs, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @vega12_set_mp1_state._rs, ptr @.str.310, ptr @link_width, ptr @link_speed, ptr @switch.table.vega12_display_clock_voltage_request], section "llvm.metadata"
@0 = internal global [320 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_disable_vce_dpm._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_disable_vce_dpm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_hwmgr_funcs to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_setup_asic_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_force_dpm_highest._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_force_dpm_highest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_force_dpm_highest._rs.6 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_force_dpm_highest._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_find_highest_dpm_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_find_highest_dpm_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_upload_dpm_min_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_upload_dpm_min_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_upload_dpm_min_level._rs.12 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_upload_dpm_min_level._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_upload_dpm_min_level._rs.16 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_upload_dpm_min_level._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_upload_dpm_min_level._rs.20 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_upload_dpm_min_level._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_upload_dpm_min_level._rs.24 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_upload_dpm_min_level._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_upload_dpm_min_level._rs.28 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_upload_dpm_min_level._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_upload_dpm_min_level._rs.32 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_upload_dpm_min_level._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_upload_dpm_min_level._rs.36 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_upload_dpm_min_level._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_upload_dpm_max_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_upload_dpm_max_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_upload_dpm_max_level._rs.41 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_upload_dpm_max_level._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_upload_dpm_max_level._rs.45 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_upload_dpm_max_level._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_upload_dpm_max_level._rs.49 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_upload_dpm_max_level._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_upload_dpm_max_level._rs.53 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_upload_dpm_max_level._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_upload_dpm_max_level._rs.57 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_upload_dpm_max_level._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_force_dpm_lowest._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_force_dpm_lowest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_force_dpm_lowest._rs.61 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_force_dpm_lowest._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_unforce_dpm_levels._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_unforce_dpm_levels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_unforce_dpm_levels._rs.65 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_unforce_dpm_levels._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_dpm_tasks._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_dpm_tasks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_dpm_tasks._rs.70 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_dpm_tasks._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_dpm_tasks._rs.74 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_dpm_tasks._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_dpm_tasks._rs.78 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_dpm_tasks._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_dpm_tasks._rs.82 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_dpm_tasks._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_dpm_tasks._rs.86 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_dpm_tasks._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_dpm_tasks._rs.90 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_dpm_tasks._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_dpm_tasks._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_dpm_tasks._rs.97 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_dpm_tasks._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_set_allowed_featuresmask._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_set_allowed_featuresmask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_set_allowed_featuresmask._rs.102 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_set_allowed_featuresmask._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_init_smc_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_init_smc_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_run_acg_btc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_run_acg_btc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_run_acg_btc._rs.108 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_run_acg_btc._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_all_smu_features._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_all_smu_features._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_override_pcie_parameters._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_override_pcie_parameters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_override_pcie_parameters._rs.113 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_override_pcie_parameters._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_override_pcie_parameters._rs.116 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_override_pcie_parameters._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_get_all_clock_ranges._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_get_all_clock_ranges._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_get_all_clock_ranges_helper._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_get_all_clock_ranges_helper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_get_all_clock_ranges_helper._rs.122 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_get_all_clock_ranges_helper._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_get_all_clock_ranges_helper._rs.126 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_get_all_clock_ranges_helper._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_setup_default_dpm_tables._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_setup_default_dpm_tables._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_setup_default_dpm_tables._rs.131 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_setup_default_dpm_tables._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_setup_default_dpm_tables._rs.135 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_setup_default_dpm_tables._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_setup_default_dpm_tables._rs.139 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_setup_default_dpm_tables._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_setup_default_dpm_tables._rs.143 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_setup_default_dpm_tables._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_setup_default_dpm_tables._rs.147 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_setup_default_dpm_tables._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_setup_default_dpm_tables._rs.151 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_setup_default_dpm_tables._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_setup_default_dpm_tables._rs.155 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_setup_default_dpm_tables._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_setup_default_dpm_tables._rs.159 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_setup_default_dpm_tables._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_setup_default_dpm_tables._rs.163 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_setup_default_dpm_tables._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_setup_single_dpm_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_setup_single_dpm_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_setup_single_dpm_table._rs.168 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_setup_single_dpm_table._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_get_number_of_dpm_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_get_number_of_dpm_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_get_dpm_frequency_by_index._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_get_dpm_frequency_by_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_disable_dpm_tasks._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_disable_dpm_tasks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_disable_all_smu_features._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_disable_all_smu_features._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_disable_uvd_dpm._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_disable_uvd_dpm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_dpm_get_mclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_dpm_get_mclk._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_dpm_get_sclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_dpm_get_sclk._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_notify_smc_display_config_after_ps_adjustment._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_notify_smc_display_config_after_ps_adjustment._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_notify_smc_display_config_after_ps_adjustment._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_set_uclk_to_highest_dpm_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_set_uclk_to_highest_dpm_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_set_uclk_to_highest_dpm_level._rs.192 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_set_uclk_to_highest_dpm_level._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_set_uclk_to_highest_dpm_level._rs.196 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_set_uclk_to_highest_dpm_level._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_display_configuration_changed_task._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_display_configuration_changed_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_display_clock_voltage_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_power_off_asic._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_power_off_asic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_force_clock_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_force_clock_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_force_clock_level._rs.205 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_force_clock_level._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_force_clock_level._rs.208 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_force_clock_level._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_force_clock_level._rs.211 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_force_clock_level._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_force_clock_level._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_force_clock_level._rs.217 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_force_clock_level._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_force_clock_level._rs.220 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_force_clock_level._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_force_clock_level._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_force_clock_level._rs.225 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_force_clock_level._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_print_clock_levels._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_print_clock_levels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_print_clock_levels._rs.229 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_print_clock_levels._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_print_clock_levels._rs.236 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_print_clock_levels._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_print_clock_levels._rs.240 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_print_clock_levels._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_print_clock_levels._rs.244 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_print_clock_levels._entry.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_print_clock_levels._rs.248 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_print_clock_levels._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_print_clock_levels._rs.252 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_print_clock_levels._entry.253 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_print_clock_levels._rs.256 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_print_clock_levels._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_get_current_gfx_clk_freq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_get_current_gfx_clk_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_get_current_mclk_freq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_get_current_mclk_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_get_current_activity_percent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_get_metrics_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SMU7ThermalWithDelayPolicy to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_get_ppfeature_status.ppfeature_name to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_get_ppfeature_status._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_get_ppfeature_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_set_mp1_state._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_set_mp1_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_width to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_speed to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vega12_display_clock_voltage_request to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega12_enable_disable_vce_dpm(ptr noundef %hwmgr, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %arrayidx = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 5
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 8, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %entry
  %smu_feature_bitmap = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 5, i32 4
  %4 = ptrtoint ptr %smu_feature_bitmap to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %smu_feature_bitmap, align 8
  %call = tail call i32 @vega12_enable_smc_features(ptr noundef %hwmgr, i1 noundef zeroext %enable, i64 noundef %5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %do.end13, label %if.then5

if.then5:                                         ; preds = %do.body
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_enable_disable_vce_dpm._rs, ptr noundef nonnull @__func__.vega12_enable_disable_vce_dpm) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.cleanup_crit_edge, label %do.end

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #18
  br label %cleanup

do.end13:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %enabled = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 5, i32 1
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %do.end, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %if.then5.cleanup_crit_edge ], [ 0, %do.end13 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vega12_enable_smc_features(ptr noundef, i1 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @vega12_hwmgr_init(ptr nocapture noundef writeonly %hwmgr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @vega12_hwmgr_funcs, ptr %hwmgr_func, align 4
  %pptable_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 31
  %1 = ptrtoint ptr %pptable_func to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @vega12_pptable_funcs, ptr %pptable_func, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega12_hwmgr_backend_init(ptr noundef %hwmgr) #0 align 64 {
entry:
  %top32.i = alloca i32, align 4
  %bottom32.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 10000, i32 noundef 3520, i32 noundef 2) #19
  %cmp = icmp eq ptr %call1.i.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %2 = ptrtoint ptr %backend to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1.i.i.i, ptr %backend, align 4
  %gfxclk_average_alpha.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 26
  %3 = ptrtoint ptr %gfxclk_average_alpha.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 25, ptr %gfxclk_average_alpha.i, align 4
  %socclk_average_alpha.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 27
  %4 = ptrtoint ptr %socclk_average_alpha.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 25, ptr %socclk_average_alpha.i, align 8
  %uclk_average_alpha.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 28
  %5 = ptrtoint ptr %uclk_average_alpha.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 25, ptr %uclk_average_alpha.i, align 4
  %gfx_activity_average_alpha.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 29
  %6 = ptrtoint ptr %gfx_activity_average_alpha.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 25, ptr %gfx_activity_average_alpha.i, align 16
  %lowest_uclk_reserved_for_ulv.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 25
  %7 = ptrtoint ptr %lowest_uclk_reserved_for_ulv.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %lowest_uclk_reserved_for_ulv.i, align 32
  %display_voltage_mode.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 30
  %registry_data.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2
  %8 = call ptr @memset(ptr %display_voltage_mode.i, i32 255, i32 52)
  %9 = ptrtoint ptr %registry_data.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %registry_data.i, align 16
  %od_state_in_dc_support.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 11
  %10 = ptrtoint ptr %od_state_in_dc_support.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %od_state_in_dc_support.i, align 2
  %thermal_support.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 35
  %11 = ptrtoint ptr %thermal_support.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %thermal_support.i, align 32
  %skip_baco_hardware.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 27
  %12 = ptrtoint ptr %skip_baco_hardware.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %skip_baco_hardware.i, align 8
  %log_avfs_param.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 60
  %13 = ptrtoint ptr %log_avfs_param.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %log_avfs_param.i, align 1
  %sclk_throttle_low_notification.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 26
  %14 = ptrtoint ptr %sclk_throttle_low_notification.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %sclk_throttle_low_notification.i, align 1
  %force_dpm_high.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 8
  %15 = ptrtoint ptr %force_dpm_high.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %force_dpm_high.i, align 1
  %stable_pstate_sclk_dpm_percentage.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 52
  %16 = ptrtoint ptr %stable_pstate_sclk_dpm_percentage.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 75, ptr %stable_pstate_sclk_dpm_percentage.i, align 256
  %didt_support.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 6
  %17 = ptrtoint ptr %didt_support.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %didt_support.i, align 1
  %pcie_lane_override.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 12
  %18 = ptrtoint ptr %pcie_lane_override.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %pcie_lane_override.i, align 1
  %pcie_speed_override.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 13
  %19 = ptrtoint ptr %pcie_speed_override.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %pcie_speed_override.i, align 4
  %pcie_clock_override.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 14
  %20 = ptrtoint ptr %pcie_clock_override.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %pcie_clock_override.i, align 8
  %regulator_hot_gpio_support.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 19
  %21 = ptrtoint ptr %regulator_hot_gpio_support.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %regulator_hot_gpio_support.i, align 16
  %ac_dc_switch_gpio_support.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %ac_dc_switch_gpio_support.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %ac_dc_switch_gpio_support.i, align 8
  %quick_transition_support.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 18
  %23 = ptrtoint ptr %quick_transition_support.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %quick_transition_support.i, align 1
  %zrpm_start_temp.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 51
  %24 = ptrtoint ptr %zrpm_start_temp.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %zrpm_start_temp.i, align 2
  %zrpm_stop_temp.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 50
  %25 = ptrtoint ptr %zrpm_stop_temp.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %zrpm_stop_temp.i, align 4
  %odn_feature_enable.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 40
  %26 = ptrtoint ptr %odn_feature_enable.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %odn_feature_enable.i, align 1
  %disable_water_mark.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 41
  %27 = ptrtoint ptr %disable_water_mark.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %disable_water_mark.i, align 2
  %disable_pp_tuning.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 45
  %28 = ptrtoint ptr %disable_pp_tuning.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %disable_pp_tuning.i, align 1
  %disable_xlpp_tuning.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 46
  %29 = ptrtoint ptr %disable_xlpp_tuning.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %disable_xlpp_tuning.i, align 2
  %disable_workload_policy.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 42
  %30 = ptrtoint ptr %disable_workload_policy.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %disable_workload_policy.i, align 1
  %perf_ui_tuning_profile_turbo.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 47
  %31 = ptrtoint ptr %perf_ui_tuning_profile_turbo.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 421072655, ptr %perf_ui_tuning_profile_turbo.i, align 16
  %perf_ui_tuning_profile_powerSave.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 48
  %32 = ptrtoint ptr %perf_ui_tuning_profile_powerSave.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 421075225, ptr %perf_ui_tuning_profile_powerSave.i, align 4
  %perf_ui_tuning_profile_xl.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 49
  %33 = ptrtoint ptr %perf_ui_tuning_profile_xl.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3850, ptr %perf_ui_tuning_profile_xl.i, align 8
  %force_workload_policy_mask.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 43
  %34 = ptrtoint ptr %force_workload_policy_mask.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %force_workload_policy_mask.i, align 8
  %disable_3d_fs_detection.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 44
  %35 = ptrtoint ptr %disable_3d_fs_detection.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %disable_3d_fs_detection.i, align 4
  %fps_support.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 53
  %36 = ptrtoint ptr %fps_support.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %fps_support.i, align 4
  %disable_auto_wattman.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 56
  %37 = ptrtoint ptr %disable_auto_wattman.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %disable_auto_wattman.i, align 1
  %auto_wattman_debug.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 57
  %38 = ptrtoint ptr %auto_wattman_debug.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %auto_wattman_debug.i, align 8
  %auto_wattman_sample_period.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 58
  %39 = ptrtoint ptr %auto_wattman_sample_period.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 100, ptr %auto_wattman_sample_period.i, align 4
  %auto_wattman_threshold.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 59
  %40 = ptrtoint ptr %auto_wattman_threshold.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 50, ptr %auto_wattman_threshold.i, align 16
  %feature_mask.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 46
  %41 = ptrtoint ptr %feature_mask.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %feature_mask.i, align 4
  %43 = trunc i32 %42 to i8
  %44 = lshr i8 %43, 2
  %45 = and i8 %44, 1
  %46 = xor i8 %45, 1
  %pcie_dpm_key_disabled.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 15
  %47 = ptrtoint ptr %pcie_dpm_key_disabled.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %pcie_dpm_key_disabled.i, align 4
  %disable_dpm_mask = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 49
  %48 = ptrtoint ptr %disable_dpm_mask to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 255, ptr %disable_dpm_mask, align 4
  %workload_mask = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 51
  %49 = ptrtoint ptr %workload_mask to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 255, ptr %workload_mask, align 4
  %vddc_control = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 6
  %50 = ptrtoint ptr %vddc_control to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %vddc_control, align 8
  %mvdd_control = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 8
  %51 = ptrtoint ptr %mvdd_control to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %mvdd_control, align 256
  %vddci_control = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 10
  %52 = ptrtoint ptr %vddci_control to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %vddci_control, align 8
  %water_marks_bitmap = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 13
  %53 = ptrtoint ptr %water_marks_bitmap to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %water_marks_bitmap, align 4
  %avfs_exist = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 20
  %54 = ptrtoint ptr %avfs_exist to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %avfs_exist, align 8
  %55 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hwmgr, align 4
  %arrayidx.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 1
  %57 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i.i, align 4
  %and1.i.i = and i32 %58, -8388609
  store i32 %and1.i.i, ptr %arrayidx.i.i, align 4
  %platform_descriptor2.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23
  %arrayidx.i1.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 5
  %59 = ptrtoint ptr %arrayidx.i1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i1.i, align 4
  %or.i.i = or i32 %60, 4
  store i32 %or.i.i, ptr %arrayidx.i1.i, align 4
  %arrayidx.i2.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 3
  %61 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i2.i, align 4
  %or.i3.i = or i32 %62, 8388608
  store i32 %or.i3.i, ptr %arrayidx.i2.i, align 4
  %pg_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %56, i32 0, i32 100
  %63 = ptrtoint ptr %pg_flags.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pg_flags.i, align 4
  %and.i = and i32 %64, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end15.i_crit_edge, label %if.then8.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i4.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %65 = ptrtoint ptr %arrayidx.i4.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i4.i, align 4
  %or.i7.i = or i32 %66, 805306368
  store i32 %or.i7.i, ptr %arrayidx.i4.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then8.i, %if.end.i.if.end15.i_crit_edge
  %67 = ptrtoint ptr %pg_flags.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pg_flags.i, align 4
  %and17.i = and i32 %68, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end15.i.if.end23.i_crit_edge, label %if.then19.i

if.end15.i.if.end23.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23.i

if.then19.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i8.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %69 = ptrtoint ptr %arrayidx.i8.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i8.i, align 4
  %or.i9.i = or i32 %70, 1073741824
  store i32 %or.i9.i, ptr %arrayidx.i8.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then19.i, %if.end15.i.if.end23.i_crit_edge
  %arrayidx.i10.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 4
  %71 = ptrtoint ptr %arrayidx.i10.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i10.i, align 4
  %or.i11.i = or i32 %72, 1
  store i32 %or.i11.i, ptr %arrayidx.i10.i, align 4
  %73 = ptrtoint ptr %odn_feature_enable.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %odn_feature_enable.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool27.not.i = icmp eq i8 %74, 0
  br i1 %tobool27.not.i, label %if.else.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #17
  %or.i13.i = or i32 %60, 131076
  %75 = ptrtoint ptr %arrayidx.i1.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %or.i13.i, ptr %arrayidx.i1.i, align 4
  br label %if.end38.i

if.else.i:                                        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #17
  %or.i15.i = or i32 %62, 8389632
  %76 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %or.i15.i, ptr %arrayidx.i2.i, align 4
  %or.i17.i = or i32 %72, 65537
  %77 = ptrtoint ptr %arrayidx.i10.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or.i17.i, ptr %arrayidx.i10.i, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.else.i, %if.then28.i
  %78 = ptrtoint ptr %platform_descriptor2.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %platform_descriptor2.i, align 4
  %80 = ptrtoint ptr %arrayidx.i10.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i10.i, align 4
  %or.i20.i = or i32 %81, 33554432
  store i32 %or.i20.i, ptr %arrayidx.i10.i, align 4
  %82 = ptrtoint ptr %od_state_in_dc_support.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %od_state_in_dc_support.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool46.not.i = icmp eq i8 %83, 0
  br i1 %tobool46.not.i, label %if.end38.i.if.end63.i_crit_edge, label %if.then47.i

if.end38.i.if.end63.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63.i

if.then47.i:                                      ; preds = %if.end38.i
  br i1 %tobool27.not.i, label %if.else55.i, label %if.then51.i

if.then51.i:                                      ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #17
  %84 = ptrtoint ptr %arrayidx.i1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx.i1.i, align 4
  %or.i22.i = or i32 %85, 262144
  store i32 %or.i22.i, ptr %arrayidx.i1.i, align 4
  br label %if.end63.i

if.else55.i:                                      ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #17
  %86 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i2.i, align 4
  %or.i24.i = or i32 %87, 2048
  store i32 %or.i24.i, ptr %arrayidx.i2.i, align 4
  %or.i26.i = or i32 %81, 33685504
  %88 = ptrtoint ptr %arrayidx.i10.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %or.i26.i, ptr %arrayidx.i10.i, align 4
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.else55.i, %if.then51.i, %if.end38.i.if.end63.i_crit_edge
  %89 = ptrtoint ptr %thermal_support.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %thermal_support.i, align 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool65.not.i = icmp eq i8 %90, 0
  br i1 %tobool65.not.i, label %if.end63.i.if.end76.i_crit_edge, label %land.lhs.true.i

if.end63.i.if.end76.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end76.i

land.lhs.true.i:                                  ; preds = %if.end63.i
  %fuzzy_fan_control_support.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 9
  %91 = ptrtoint ptr %fuzzy_fan_control_support.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %fuzzy_fan_control_support.i, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool68.not.i = icmp eq i8 %92, 0
  br i1 %tobool68.not.i, label %land.lhs.true.i.if.end76.i_crit_edge, label %land.lhs.true69.i

land.lhs.true.i.if.end76.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end76.i

land.lhs.true69.i:                                ; preds = %land.lhs.true.i
  %usTMax.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 8
  %93 = ptrtoint ptr %usTMax.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %usTMax.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %tobool71.not.i = icmp eq i16 %94, 0
  br i1 %tobool71.not.i, label %land.lhs.true69.i.if.end76.i_crit_edge, label %if.then72.i

land.lhs.true69.i.if.end76.i_crit_edge:           ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end76.i

if.then72.i:                                      ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #17
  %95 = ptrtoint ptr %arrayidx.i10.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.i10.i, align 4
  %or.i28.i = or i32 %96, 1048576
  store i32 %or.i28.i, ptr %arrayidx.i10.i, align 4
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then72.i, %land.lhs.true69.i.if.end76.i_crit_edge, %land.lhs.true.i.if.end76.i_crit_edge, %if.end63.i.if.end76.i_crit_edge
  %or.i30.i = or i32 %79, 1073873408
  %97 = ptrtoint ptr %platform_descriptor2.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %or.i30.i, ptr %platform_descriptor2.i, align 4
  %arrayidx.i31.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 6
  %98 = ptrtoint ptr %arrayidx.i31.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx.i31.i, align 4
  %or.i32.i = or i32 %99, 1
  store i32 %or.i32.i, ptr %arrayidx.i31.i, align 4
  %100 = ptrtoint ptr %force_dpm_high.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %force_dpm_high.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool87.not.i = icmp eq i8 %101, 0
  br i1 %tobool87.not.i, label %if.end76.i.if.end92.i_crit_edge, label %if.then88.i

if.end76.i.if.end92.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end92.i

if.then88.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #17
  %102 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx.i.i, align 4
  %or.i34.i = or i32 %103, 64
  store i32 %or.i34.i, ptr %arrayidx.i.i, align 4
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.then88.i, %if.end76.i.if.end92.i_crit_edge
  %104 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx.i2.i, align 4
  %or.i36.i = or i32 %105, 32
  store i32 %or.i36.i, ptr %arrayidx.i2.i, align 4
  %106 = ptrtoint ptr %sclk_throttle_low_notification.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %sclk_throttle_low_notification.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool97.not.i = icmp eq i8 %107, 0
  br i1 %tobool97.not.i, label %if.end92.i.if.end102.i_crit_edge, label %if.then98.i

if.end92.i.if.end102.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end102.i

if.then98.i:                                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #17
  %or.i38.i = or i32 %105, 67108896
  %108 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %or.i38.i, ptr %arrayidx.i2.i, align 4
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then98.i, %if.end92.i.if.end102.i_crit_edge
  %arrayidx.i39.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %109 = ptrtoint ptr %arrayidx.i39.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx.i39.i, align 4
  %111 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx.i2.i, align 4
  %and1.i44.i = and i32 %110, -12289
  store i32 %and1.i44.i, ptr %arrayidx.i39.i, align 4
  %and1.i58.i = and i32 %112, -8355841
  store i32 %and1.i58.i, ptr %arrayidx.i2.i, align 4
  %113 = ptrtoint ptr %didt_support.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %didt_support.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool134.not.i = icmp eq i8 %114, 0
  br i1 %tobool134.not.i, label %if.end102.i.if.end195.i_crit_edge, label %if.then135.i

if.end102.i.if.end195.i_crit_edge:                ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end195.i

if.then135.i:                                     ; preds = %if.end102.i
  %or.i60.i = or i32 %and1.i58.i, 32768
  %115 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %or.i60.i, ptr %arrayidx.i2.i, align 4
  %sq_ramping_support.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 29
  %116 = ptrtoint ptr %sq_ramping_support.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %sq_ramping_support.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool140.not.i = icmp eq i8 %117, 0
  br i1 %tobool140.not.i, label %if.then135.i.if.end145.i_crit_edge, label %if.then141.i

if.then135.i.if.end145.i_crit_edge:               ; preds = %if.then135.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end145.i

if.then141.i:                                     ; preds = %if.then135.i
  call void @__sanitizer_cov_trace_pc() #17
  %or.i62.i = or i32 %and1.i44.i, 8192
  %118 = ptrtoint ptr %arrayidx.i39.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %or.i62.i, ptr %arrayidx.i39.i, align 4
  br label %if.end145.i

if.end145.i:                                      ; preds = %if.then141.i, %if.then135.i.if.end145.i_crit_edge
  %db_ramping_support.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 4
  %119 = ptrtoint ptr %db_ramping_support.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %db_ramping_support.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool147.not.i = icmp eq i8 %120, 0
  br i1 %tobool147.not.i, label %if.end145.i.if.end152.i_crit_edge, label %if.then148.i

if.end145.i.if.end152.i_crit_edge:                ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end152.i

if.then148.i:                                     ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #17
  %or.i64.i = or i32 %and1.i58.i, 98304
  %121 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %or.i64.i, ptr %arrayidx.i2.i, align 4
  br label %if.end152.i

if.end152.i:                                      ; preds = %if.then148.i, %if.end145.i.if.end152.i_crit_edge
  %td_ramping_support.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 31
  %122 = ptrtoint ptr %td_ramping_support.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %td_ramping_support.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool154.not.i = icmp eq i8 %123, 0
  br i1 %tobool154.not.i, label %if.end152.i.if.end159.i_crit_edge, label %if.then155.i

if.end152.i.if.end159.i_crit_edge:                ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end159.i

if.then155.i:                                     ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #17
  %124 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx.i2.i, align 4
  %or.i66.i = or i32 %125, 131072
  store i32 %or.i66.i, ptr %arrayidx.i2.i, align 4
  br label %if.end159.i

if.end159.i:                                      ; preds = %if.then155.i, %if.end152.i.if.end159.i_crit_edge
  %tcp_ramping_support.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 30
  %126 = ptrtoint ptr %tcp_ramping_support.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %tcp_ramping_support.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool161.not.i = icmp eq i8 %127, 0
  br i1 %tobool161.not.i, label %if.end159.i.if.end166.i_crit_edge, label %if.then162.i

if.end159.i.if.end166.i_crit_edge:                ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end166.i

if.then162.i:                                     ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #17
  %128 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx.i2.i, align 4
  %or.i68.i = or i32 %129, 262144
  store i32 %or.i68.i, ptr %arrayidx.i2.i, align 4
  br label %if.end166.i

if.end166.i:                                      ; preds = %if.then162.i, %if.end159.i.if.end166.i_crit_edge
  %dbr_ramping_support.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 32
  %130 = ptrtoint ptr %dbr_ramping_support.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %dbr_ramping_support.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool168.not.i = icmp eq i8 %131, 0
  br i1 %tobool168.not.i, label %if.end166.i.if.end173.i_crit_edge, label %if.then169.i

if.end166.i.if.end173.i_crit_edge:                ; preds = %if.end166.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end173.i

if.then169.i:                                     ; preds = %if.end166.i
  call void @__sanitizer_cov_trace_pc() #17
  %132 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx.i2.i, align 4
  %or.i70.i = or i32 %133, 524288
  store i32 %or.i70.i, ptr %arrayidx.i2.i, align 4
  br label %if.end173.i

if.end173.i:                                      ; preds = %if.then169.i, %if.end166.i.if.end173.i_crit_edge
  %edc_didt_support.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 7
  %134 = ptrtoint ptr %edc_didt_support.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %edc_didt_support.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool175.not.i = icmp eq i8 %135, 0
  br i1 %tobool175.not.i, label %if.end173.i.if.end180.i_crit_edge, label %if.then176.i

if.end173.i.if.end180.i_crit_edge:                ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end180.i

if.then176.i:                                     ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #17
  %136 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx.i2.i, align 4
  %or.i72.i = or i32 %137, 1048576
  store i32 %or.i72.i, ptr %arrayidx.i2.i, align 4
  br label %if.end180.i

if.end180.i:                                      ; preds = %if.then176.i, %if.end173.i.if.end180.i_crit_edge
  %gc_didt_support.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 33
  %138 = ptrtoint ptr %gc_didt_support.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %gc_didt_support.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool182.not.i = icmp eq i8 %139, 0
  br i1 %tobool182.not.i, label %if.end180.i.if.end187.i_crit_edge, label %if.then183.i

if.end180.i.if.end187.i_crit_edge:                ; preds = %if.end180.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end187.i

if.then183.i:                                     ; preds = %if.end180.i
  call void @__sanitizer_cov_trace_pc() #17
  %140 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx.i2.i, align 4
  %or.i74.i = or i32 %141, 2097152
  store i32 %or.i74.i, ptr %arrayidx.i2.i, align 4
  br label %if.end187.i

if.end187.i:                                      ; preds = %if.then183.i, %if.end180.i.if.end187.i_crit_edge
  %psm_didt_support.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 34
  %142 = ptrtoint ptr %psm_didt_support.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %psm_didt_support.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool189.not.i = icmp eq i8 %143, 0
  br i1 %tobool189.not.i, label %if.end187.i.if.end195.i_crit_edge, label %if.then190.i

if.end187.i.if.end195.i_crit_edge:                ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end195.i

if.then190.i:                                     ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #17
  %144 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx.i2.i, align 4
  %or.i76.i = or i32 %145, 4194304
  store i32 %or.i76.i, ptr %arrayidx.i2.i, align 4
  br label %if.end195.i

if.end195.i:                                      ; preds = %if.then190.i, %if.end187.i.if.end195.i_crit_edge, %if.end102.i.if.end195.i_crit_edge
  %146 = ptrtoint ptr %arrayidx.i39.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx.i39.i, align 4
  %or.i78.i = or i32 %147, 4
  store i32 %or.i78.i, ptr %arrayidx.i39.i, align 4
  %148 = ptrtoint ptr %ac_dc_switch_gpio_support.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %ac_dc_switch_gpio_support.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool200.not.i = icmp eq i8 %149, 0
  br i1 %tobool200.not.i, label %if.end195.i.if.end208.i_crit_edge, label %if.then201.i

if.end195.i.if.end208.i_crit_edge:                ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end208.i

if.then201.i:                                     ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_pc() #17
  %or.i79.i = or i32 %79, 1090650624
  %150 = ptrtoint ptr %platform_descriptor2.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %or.i79.i, ptr %platform_descriptor2.i, align 4
  %151 = ptrtoint ptr %arrayidx.i1.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx.i1.i, align 4
  %or.i81.i = or i32 %152, 2048
  store i32 %or.i81.i, ptr %arrayidx.i1.i, align 4
  br label %if.end208.i

if.end208.i:                                      ; preds = %if.then201.i, %if.end195.i.if.end208.i_crit_edge
  %153 = ptrtoint ptr %quick_transition_support.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %quick_transition_support.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool210.not.i = icmp eq i8 %154, 0
  br i1 %tobool210.not.i, label %if.end208.i.if.end221.i_crit_edge, label %if.then211.i

if.end208.i.if.end221.i_crit_edge:                ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end221.i

if.then211.i:                                     ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_pc() #17
  %155 = ptrtoint ptr %platform_descriptor2.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %platform_descriptor2.i, align 4
  %and1.i82.i = and i32 %156, -16777217
  store i32 %and1.i82.i, ptr %platform_descriptor2.i, align 4
  %157 = ptrtoint ptr %arrayidx.i1.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx.i1.i, align 4
  %and1.i84.i = and i32 %158, -2049
  store i32 %and1.i84.i, ptr %arrayidx.i1.i, align 4
  %159 = ptrtoint ptr %arrayidx.i10.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx.i10.i, align 4
  %or.i86.i = or i32 %160, -2147483648
  store i32 %or.i86.i, ptr %arrayidx.i10.i, align 4
  br label %if.end221.i

if.end221.i:                                      ; preds = %if.then211.i, %if.end208.i.if.end221.i_crit_edge
  %161 = ptrtoint ptr %lowest_uclk_reserved_for_ulv.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %lowest_uclk_reserved_for_ulv.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %162)
  %cmp222.not.i = icmp eq i32 %162, -1
  br i1 %cmp222.not.i, label %if.end221.i.if.end236.i_crit_edge, label %if.then224.i

if.end221.i.if.end236.i_crit_edge:                ; preds = %if.end221.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end236.i

if.then224.i:                                     ; preds = %if.end221.i
  %163 = ptrtoint ptr %arrayidx.i1.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx.i1.i, align 4
  %and1.i88.i = and i32 %164, -536870913
  store i32 %and1.i88.i, ptr %arrayidx.i1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %162)
  %cmp229.i = icmp eq i32 %162, 1
  br i1 %cmp229.i, label %if.then231.i, label %if.then224.i.if.end236.i_crit_edge

if.then224.i.if.end236.i_crit_edge:               ; preds = %if.then224.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end236.i

if.then231.i:                                     ; preds = %if.then224.i
  call void @__sanitizer_cov_trace_pc() #17
  %or.i90.i = or i32 %164, 536870912
  %165 = ptrtoint ptr %arrayidx.i1.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %or.i90.i, ptr %arrayidx.i1.i, align 4
  br label %if.end236.i

if.end236.i:                                      ; preds = %if.then231.i, %if.then224.i.if.end236.i_crit_edge, %if.end221.i.if.end236.i_crit_edge
  %custom_fan_support.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 2, i32 62
  %166 = ptrtoint ptr %custom_fan_support.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %custom_fan_support.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool238.not.i = icmp eq i8 %167, 0
  br i1 %tobool238.not.i, label %if.end236.i.vega12_set_features_platform_caps.exit_crit_edge, label %if.then239.i

if.end236.i.vega12_set_features_platform_caps.exit_crit_edge: ; preds = %if.end236.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vega12_set_features_platform_caps.exit

if.then239.i:                                     ; preds = %if.end236.i
  call void @__sanitizer_cov_trace_pc() #17
  %or.i92.i = or i32 %99, 3
  %168 = ptrtoint ptr %arrayidx.i31.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %or.i92.i, ptr %arrayidx.i31.i, align 4
  br label %vega12_set_features_platform_caps.exit

vega12_set_features_platform_caps.exit:           ; preds = %if.then239.i, %if.end236.i.vega12_set_features_platform_caps.exit_crit_edge
  %169 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %backend, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %top32.i) #15
  %171 = ptrtoint ptr %top32.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 -1, ptr %top32.i, align 4, !annotation !620
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bottom32.i) #15
  %172 = ptrtoint ptr %bottom32.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 -1, ptr %bottom32.i, align 4, !annotation !620
  %smu_feature_id.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 0, i32 3
  %173 = ptrtoint ptr %smu_feature_id.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 0, ptr %smu_feature_id.i, align 4
  %smu_feature_id4.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 1, i32 3
  %174 = ptrtoint ptr %smu_feature_id4.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 1, ptr %smu_feature_id4.i, align 4
  %smu_feature_id7.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 2, i32 3
  %175 = ptrtoint ptr %smu_feature_id7.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 2, ptr %smu_feature_id7.i, align 4
  %smu_feature_id10.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 3, i32 3
  %176 = ptrtoint ptr %smu_feature_id10.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 3, ptr %smu_feature_id10.i, align 4
  %smu_feature_id13.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 4, i32 3
  %177 = ptrtoint ptr %smu_feature_id13.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 4, ptr %smu_feature_id13.i, align 4
  %smu_feature_id16.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 5, i32 3
  %178 = ptrtoint ptr %smu_feature_id16.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 5, ptr %smu_feature_id16.i, align 4
  %smu_feature_id19.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 6, i32 3
  %179 = ptrtoint ptr %smu_feature_id19.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 6, ptr %smu_feature_id19.i, align 4
  %smu_feature_id22.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 7, i32 3
  %180 = ptrtoint ptr %smu_feature_id22.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 7, ptr %smu_feature_id22.i, align 4
  %smu_feature_id25.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 8, i32 3
  %181 = ptrtoint ptr %smu_feature_id25.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 8, ptr %smu_feature_id25.i, align 4
  %smu_feature_id28.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 9, i32 3
  %182 = ptrtoint ptr %smu_feature_id28.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 9, ptr %smu_feature_id28.i, align 4
  %smu_feature_id31.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 10, i32 3
  %183 = ptrtoint ptr %smu_feature_id31.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 10, ptr %smu_feature_id31.i, align 4
  %smu_feature_id34.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 11, i32 3
  %184 = ptrtoint ptr %smu_feature_id34.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 11, ptr %smu_feature_id34.i, align 4
  %smu_feature_id37.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 12, i32 3
  %185 = ptrtoint ptr %smu_feature_id37.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 12, ptr %smu_feature_id37.i, align 4
  %smu_feature_id40.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 13, i32 3
  %186 = ptrtoint ptr %smu_feature_id40.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 13, ptr %smu_feature_id40.i, align 4
  %smu_feature_id43.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 14, i32 3
  %187 = ptrtoint ptr %smu_feature_id43.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 14, ptr %smu_feature_id43.i, align 4
  %smu_feature_id46.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 15, i32 3
  %188 = ptrtoint ptr %smu_feature_id46.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 15, ptr %smu_feature_id46.i, align 4
  %smu_feature_id49.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 16, i32 3
  %189 = ptrtoint ptr %smu_feature_id49.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 16, ptr %smu_feature_id49.i, align 4
  %smu_feature_id52.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 17, i32 3
  %190 = ptrtoint ptr %smu_feature_id52.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 17, ptr %smu_feature_id52.i, align 4
  %smu_feature_id55.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 18, i32 3
  %191 = ptrtoint ptr %smu_feature_id55.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 18, ptr %smu_feature_id55.i, align 4
  %smu_feature_id58.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 19, i32 3
  %192 = ptrtoint ptr %smu_feature_id58.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 19, ptr %smu_feature_id58.i, align 4
  %smu_feature_id61.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 20, i32 3
  %193 = ptrtoint ptr %smu_feature_id61.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 20, ptr %smu_feature_id61.i, align 4
  %smu_feature_id64.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 21, i32 3
  %194 = ptrtoint ptr %smu_feature_id64.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 21, ptr %smu_feature_id64.i, align 4
  %smu_feature_id67.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 22, i32 3
  %195 = ptrtoint ptr %smu_feature_id67.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 22, ptr %smu_feature_id67.i, align 4
  %smu_feature_id70.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 23, i32 3
  %196 = ptrtoint ptr %smu_feature_id70.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 23, ptr %smu_feature_id70.i, align 4
  %smu_feature_id73.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 24, i32 3
  %197 = ptrtoint ptr %smu_feature_id73.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 24, ptr %smu_feature_id73.i, align 4
  %smu_feature_id76.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 25, i32 3
  %198 = ptrtoint ptr %smu_feature_id76.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 25, ptr %smu_feature_id76.i, align 4
  %smu_feature_id79.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 26, i32 3
  %199 = ptrtoint ptr %smu_feature_id79.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 26, ptr %smu_feature_id79.i, align 4
  %smu_feature_id82.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 27, i32 3
  %200 = ptrtoint ptr %smu_feature_id82.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 27, ptr %smu_feature_id82.i, align 4
  %smu_feature_id85.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 28, i32 3
  %201 = ptrtoint ptr %smu_feature_id85.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 28, ptr %smu_feature_id85.i, align 4
  %registry_data.i71 = getelementptr inbounds %struct.vega12_hwmgr, ptr %170, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %vega12_set_features_platform_caps.exit
  %i.0138.i = phi i32 [ 0, %vega12_set_features_platform_caps.exit ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %smu_feature_id88.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 %i.0138.i, i32 3
  %202 = ptrtoint ptr %smu_feature_id88.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %smu_feature_id88.i, align 4
  %sh_prom.i = zext i32 %203 to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %smu_feature_bitmap.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 %i.0138.i, i32 4
  %204 = ptrtoint ptr %smu_feature_bitmap.i to i32
  call void @__asan_store8_noabort(i32 %204)
  store i64 %shl.i, ptr %smu_feature_bitmap.i, align 8
  %205 = ptrtoint ptr %registry_data.i71 to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %registry_data.i71, align 8
  %sh_prom91.i = zext i32 %i.0138.i to i64
  %207 = shl nuw i64 1, %sh_prom91.i
  %208 = and i64 %206, %207
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %208)
  %tobool.not.i72 = icmp eq i64 %208, 0
  %allowed.i = getelementptr %struct.vega12_hwmgr, ptr %170, i32 0, i32 53, i32 %i.0138.i, i32 2
  %frombool.i = zext i1 %tobool.not.i72 to i8
  %209 = ptrtoint ptr %allowed.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %frombool.i, ptr %allowed.i, align 2
  %inc.i = add nuw nsw i32 %i.0138.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 29
  br i1 %exitcond.not.i, label %vega12_init_dpm_defaults.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

vega12_init_dpm_defaults.exit:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 73, ptr noundef nonnull %top32.i) #15
  %call95.i = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 74, ptr noundef nonnull %bottom32.i) #15
  %210 = ptrtoint ptr %bottom32.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %bottom32.i, align 4
  %conv.i = zext i32 %211 to i64
  %shl96.i = shl nuw i64 %conv.i, 32
  %212 = ptrtoint ptr %top32.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %top32.i, align 4
  %conv97.i = zext i32 %213 to i64
  %or.i = or i64 %shl96.i, %conv97.i
  %unique_id.i = getelementptr inbounds %struct.amdgpu_device, ptr %56, i32 0, i32 153
  %214 = ptrtoint ptr %unique_id.i to i32
  call void @__asan_store8_noabort(i32 %214)
  store i64 %or.i, ptr %unique_id.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bottom32.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %top32.i) #15
  %is_tlu_enabled = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 19
  %215 = ptrtoint ptr %is_tlu_enabled to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 0, ptr %is_tlu_enabled, align 1
  %hardwareActivityPerformanceLevels = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 4
  %216 = ptrtoint ptr %hardwareActivityPerformanceLevels to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 2, ptr %hardwareActivityPerformanceLevels, align 4
  %hardwarePerformanceLevels = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 9
  %217 = ptrtoint ptr %hardwarePerformanceLevels to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 2, ptr %hardwarePerformanceLevels, align 4
  %minimumClocksReductionPercentage = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 5
  %218 = ptrtoint ptr %minimumClocksReductionPercentage to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 50, ptr %minimumClocksReductionPercentage, align 4
  %vbiosInterruptId = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 1
  %219 = ptrtoint ptr %vbiosInterruptId to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 536871936, ptr %vbiosInterruptId, align 4
  %clockStep = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 3
  %220 = ptrtoint ptr %clockStep to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 500, ptr %clockStep, align 4
  %memoryClock = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 3, i32 1
  %221 = ptrtoint ptr %memoryClock to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 500, ptr %memoryClock, align 4
  %number = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 48, i32 5
  %222 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %number, align 4
  %total_active_cus = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 22
  %224 = ptrtoint ptr %total_active_cus to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %223, ptr %total_active_cus, align 16
  %usMaxFanRPM = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 21
  %225 = ptrtoint ptr %usMaxFanRPM to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %usMaxFanRPM, align 2
  %conv = zext i16 %226 to i32
  %odn_fan_table = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 15
  %227 = ptrtoint ptr %odn_fan_table to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %conv, ptr %odn_fan_table, align 16
  %ucTargetTemperature = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 27
  %228 = ptrtoint ptr %ucTargetTemperature to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %ucTargetTemperature, align 4
  %conv12 = zext i8 %229 to i32
  %target_temperature = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 15, i32 1
  %230 = ptrtoint ptr %target_temperature to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %conv12, ptr %target_temperature, align 4
  %ulMinFanSCLKAcousticLimit = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 26
  %231 = ptrtoint ptr %ulMinFanSCLKAcousticLimit to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %ulMinFanSCLKAcousticLimit, align 4
  %min_performance_clock = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 15, i32 2
  %233 = ptrtoint ptr %min_performance_clock to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %232, ptr %min_performance_clock, align 8
  %usFanPWMMinLimit = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 10
  %234 = ptrtoint ptr %usFanPWMMinLimit to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %usFanPWMMinLimit, align 4
  %conv19 = zext i16 %235 to i32
  %ulMaxRPM = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4, i32 3
  %236 = ptrtoint ptr %ulMaxRPM to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %ulMaxRPM, align 4
  %mul = mul i32 %237, %conv19
  %div = udiv i32 %mul, 100
  %min_fan_limit = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 15, i32 3
  %238 = ptrtoint ptr %min_fan_limit to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %div, ptr %min_fan_limit, align 4
  %239 = ptrtoint ptr %feature_mask.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %feature_mask.i, align 4
  %gfxoff_controlled_by_driver23 = getelementptr inbounds %struct.vega12_hwmgr, ptr %call1.i.i.i, i32 0, i32 56
  %and = lshr i32 %240, 15
  %241 = trunc i32 %and to i8
  %242 = and i8 %241, 1
  %243 = ptrtoint ptr %gfxoff_controlled_by_driver23 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %242, ptr %gfxoff_controlled_by_driver23, align 32
  br label %cleanup

cleanup:                                          ; preds = %vega12_init_dpm_defaults.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %vega12_init_dpm_defaults.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega12_hwmgr_backend_fini(ptr nocapture noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  tail call void @kfree(ptr noundef %1) #15
  %2 = ptrtoint ptr %backend to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %backend, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vega12_setup_asic_task(ptr nocapture noundef readonly %hwmgr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend.i, align 4
  %low_sclk_interrupt_threshold.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %low_sclk_interrupt_threshold.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %low_sclk_interrupt_threshold.i, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega12_apply_clocks_adjust_rules(ptr nocapture noundef readonly %hwmgr) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %display_config = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 45
  %2 = ptrtoint ptr %display_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %display_config, align 4
  %num_display = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %num_display to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_display, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp ugt i32 %5, 1
  br i1 %cmp, label %land.lhs.true, label %entry.lor.rhs_crit_edge

entry.lor.rhs_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.rhs

land.lhs.true:                                    ; preds = %entry
  %multi_monitor_in_sync = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %multi_monitor_in_sync to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %multi_monitor_in_sync, align 4, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %land.lhs.true.lor.end_crit_edge, label %land.lhs.true.lor.rhs_crit_edge

land.lhs.true.lor.rhs_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.rhs

land.lhs.true.lor.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end

lor.rhs:                                          ; preds = %land.lhs.true.lor.rhs_crit_edge, %entry.lor.rhs_crit_edge
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true.lor.end_crit_edge
  %8 = phi i1 [ true, %land.lhs.true.lor.end_crit_edge ], [ false, %lor.rhs ]
  %dce_tolerable_mclk_in_active_latency = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %3, i32 0, i32 19
  %9 = ptrtoint ptr %dce_tolerable_mclk_in_active_latency to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dce_tolerable_mclk_in_active_latency, align 4
  %gfx_table = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 1
  %value = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 1, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 4
  %dpm_state = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %dpm_state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dpm_state, align 4
  %14 = ptrtoint ptr %gfx_table to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gfx_table, align 4
  %sub = add i32 %15, -1
  %value7 = getelementptr %struct.vega12_dpm_table, ptr %1, i32 0, i32 1, i32 2, i32 %sub, i32 1
  %16 = ptrtoint ptr %value7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value7, align 4
  %soft_max_level = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 1, i32 1, i32 1
  %18 = ptrtoint ptr %soft_max_level to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %soft_max_level, align 4
  %hard_min_level = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 1, i32 1, i32 2
  %19 = ptrtoint ptr %hard_min_level to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %12, ptr %hard_min_level, align 4
  %20 = load i32, ptr %value7, align 4
  %hard_max_level = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 1, i32 1, i32 3
  %21 = ptrtoint ptr %hard_max_level to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %hard_max_level, align 4
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 5
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %23, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %lor.end.if.end63_crit_edge, label %if.then

lor.end.if.end63_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

if.then:                                          ; preds = %lor.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp20 = icmp ugt i32 %15, 3
  br i1 %cmp20, label %if.then21, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %value24 = getelementptr %struct.vega12_dpm_table, ptr %1, i32 0, i32 1, i32 2, i32 3, i32 1
  %24 = ptrtoint ptr %value24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %value24, align 4
  %26 = ptrtoint ptr %dpm_state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %dpm_state, align 4
  %27 = ptrtoint ptr %soft_max_level to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %soft_max_level, align 4
  br label %if.end

if.end:                                           ; preds = %if.then21, %if.then.if.end_crit_edge
  %dpm_level = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 18
  %28 = ptrtoint ptr %dpm_level to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dpm_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %29)
  %cmp32 = icmp eq i32 %29, 32
  br i1 %cmp32, label %if.then33, label %if.end.if.end44_crit_edge

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.then33:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %value, align 4
  %32 = ptrtoint ptr %dpm_state to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %dpm_state, align 4
  %33 = ptrtoint ptr %soft_max_level to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %31, ptr %soft_max_level, align 4
  %34 = ptrtoint ptr %dpm_level to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr = load i32, ptr %dpm_level, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then33, %if.end.if.end44_crit_edge
  %35 = phi i32 [ %.pr, %if.then33 ], [ %29, %if.end.if.end44_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %35)
  %cmp46 = icmp eq i32 %35, 128
  br i1 %cmp46, label %if.then47, label %if.end44.if.end63_crit_edge

if.end44.if.end63_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %gfx_table to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %gfx_table, align 4
  %sub50 = add i32 %37, -1
  %value52 = getelementptr %struct.vega12_dpm_table, ptr %1, i32 0, i32 1, i32 2, i32 %sub50, i32 1
  %38 = ptrtoint ptr %value52 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %value52, align 4
  %40 = ptrtoint ptr %dpm_state to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %dpm_state, align 4
  %41 = load i32, ptr %value52, align 4
  %42 = ptrtoint ptr %soft_max_level to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %soft_max_level, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then47, %if.end44.if.end63_crit_edge, %lor.end.if.end63_crit_edge
  %mem_table = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 2
  %value67 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 2, i32 2, i32 0, i32 1
  %43 = ptrtoint ptr %value67 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %value67, align 4
  %dpm_state68 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %dpm_state68 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %dpm_state68, align 4
  %46 = ptrtoint ptr %mem_table to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mem_table, align 4
  %sub72 = add i32 %47, -1
  %value74 = getelementptr %struct.vega12_dpm_table, ptr %1, i32 0, i32 2, i32 2, i32 %sub72, i32 1
  %48 = ptrtoint ptr %value74 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %value74, align 4
  %soft_max_level76 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 2, i32 1, i32 1
  %50 = ptrtoint ptr %soft_max_level76 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %soft_max_level76, align 4
  %hard_min_level81 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 2, i32 1, i32 2
  %51 = ptrtoint ptr %hard_min_level81 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %44, ptr %hard_min_level81, align 4
  %52 = load i32, ptr %value74, align 4
  %hard_max_level88 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 2, i32 1, i32 3
  %53 = ptrtoint ptr %hard_max_level88 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %hard_max_level88, align 4
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i, align 4
  %and1.i625 = and i32 %55, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i625)
  %cmp.i626.not = icmp eq i32 %and1.i625, 0
  br i1 %cmp.i626.not, label %if.end63.if.end140_crit_edge, label %if.then93

if.end63.if.end140_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end140

if.then93:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp95 = icmp ugt i32 %47, 2
  br i1 %cmp95, label %if.then96, label %if.then93.if.end107_crit_edge

if.then93.if.end107_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end107

if.then96:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #17
  %value99 = getelementptr %struct.vega12_dpm_table, ptr %1, i32 0, i32 2, i32 2, i32 2, i32 1
  %56 = ptrtoint ptr %value99 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %value99, align 4
  %58 = ptrtoint ptr %dpm_state68 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %dpm_state68, align 4
  %59 = ptrtoint ptr %soft_max_level76 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %57, ptr %soft_max_level76, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then96, %if.then93.if.end107_crit_edge
  %dpm_level108 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 18
  %60 = ptrtoint ptr %dpm_level108 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dpm_level108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %61)
  %cmp109 = icmp eq i32 %61, 64
  br i1 %cmp109, label %if.then110, label %if.end107.if.end121_crit_edge

if.end107.if.end121_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end121

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #17
  %62 = ptrtoint ptr %value67 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %value67, align 4
  %64 = ptrtoint ptr %dpm_state68 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %dpm_state68, align 4
  %65 = ptrtoint ptr %soft_max_level76 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %63, ptr %soft_max_level76, align 4
  %66 = ptrtoint ptr %dpm_level108 to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pr639 = load i32, ptr %dpm_level108, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then110, %if.end107.if.end121_crit_edge
  %67 = phi i32 [ %.pr639, %if.then110 ], [ %61, %if.end107.if.end121_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %67)
  %cmp123 = icmp eq i32 %67, 128
  br i1 %cmp123, label %if.then124, label %if.end121.if.end140_crit_edge

if.end121.if.end140_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end140

if.then124:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #17
  %68 = ptrtoint ptr %mem_table to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mem_table, align 4
  %sub127 = add i32 %69, -1
  %value129 = getelementptr %struct.vega12_dpm_table, ptr %1, i32 0, i32 2, i32 2, i32 %sub127, i32 1
  %70 = ptrtoint ptr %value129 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %value129, align 4
  %72 = ptrtoint ptr %dpm_state68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %dpm_state68, align 4
  %73 = load i32, ptr %value129, align 4
  %74 = ptrtoint ptr %soft_max_level76 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %soft_max_level76, align 4
  br label %if.end140

if.end140:                                        ; preds = %if.then124, %if.end121.if.end140_crit_edge, %if.end63.if.end140_crit_edge
  %75 = ptrtoint ptr %hard_min_level81 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %hard_min_level81, align 4
  %77 = ptrtoint ptr %display_config to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %display_config, align 4
  %min_mem_set_clock = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %78, i32 0, i32 7
  %79 = ptrtoint ptr %min_mem_set_clock to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %min_mem_set_clock, align 4
  %div = udiv i32 %80, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %div)
  %cmp144 = icmp ult i32 %76, %div
  br i1 %cmp144, label %if.then145, label %if.end140.if.end151_crit_edge

if.end140.if.end151_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end151

if.then145:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #17
  %81 = ptrtoint ptr %hard_min_level81 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %div, ptr %hard_min_level81, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.then145, %if.end140.if.end151_crit_edge
  br i1 %8, label %if.then153, label %if.end151.if.end184_crit_edge

if.end151.if.end184_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end184

if.then153:                                       ; preds = %if.end151
  %82 = ptrtoint ptr %mem_table to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mem_table, align 4
  %sub156 = add i32 %83, -1
  %value158 = getelementptr %struct.vega12_dpm_table, ptr %1, i32 0, i32 2, i32 2, i32 %sub156, i32 1
  %84 = ptrtoint ptr %value158 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %value158, align 4
  %86 = ptrtoint ptr %hard_min_level81 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %hard_min_level81, align 4
  %mclk_latency_table = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 4
  %87 = ptrtoint ptr %mclk_latency_table to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %mclk_latency_table, align 8
  %sub162 = add i32 %88, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub162)
  %cmp163640.not = icmp eq i32 %sub162, 0
  br i1 %cmp163640.not, label %if.then153.if.end184_crit_edge, label %if.then153.for.body_crit_edge

if.then153.for.body_crit_edge:                    ; preds = %if.then153
  br label %for.body

if.then153.if.end184_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end184

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then153.for.body_crit_edge
  %i.0641 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.then153.for.body_crit_edge ]
  %latency166 = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 4, i32 1, i32 %i.0641, i32 1
  %89 = ptrtoint ptr %latency166 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %latency166, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %10)
  %cmp167.not = icmp ugt i32 %90, %10
  br i1 %cmp167.not, label %for.body.for.inc_crit_edge, label %if.then168

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then168:                                       ; preds = %for.body
  %value171 = getelementptr %struct.vega12_dpm_table, ptr %1, i32 0, i32 2, i32 2, i32 %i.0641, i32 1
  %91 = ptrtoint ptr %value171 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %value171, align 4
  %93 = ptrtoint ptr %display_config to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %display_config, align 4
  %min_mem_set_clock173 = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %94, i32 0, i32 7
  %95 = ptrtoint ptr %min_mem_set_clock173 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %min_mem_set_clock173, align 4
  %div174 = udiv i32 %96, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %div174)
  %cmp175.not = icmp ult i32 %92, %div174
  br i1 %cmp175.not, label %if.then168.for.inc_crit_edge, label %if.then176

if.then168.for.inc_crit_edge:                     ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then176:                                       ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #17
  %97 = ptrtoint ptr %hard_min_level81 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %92, ptr %hard_min_level81, align 4
  br label %if.end184

for.inc:                                          ; preds = %if.then168.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0641, 1
  %exitcond.not = icmp eq i32 %inc, %sub162
  br i1 %exitcond.not, label %for.inc.if.end184_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.if.end184_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end184

if.end184:                                        ; preds = %for.inc.if.end184_crit_edge, %if.then176, %if.then153.if.end184_crit_edge, %if.end151.if.end184_crit_edge
  %98 = ptrtoint ptr %display_config to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %display_config, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %99, align 4, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool186.not = icmp eq i8 %101, 0
  br i1 %tobool186.not, label %if.end184.if.end195_crit_edge, label %if.then187

if.end184.if.end195_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end195

if.then187:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #17
  %102 = ptrtoint ptr %mem_table to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mem_table, align 4
  %sub190 = add i32 %103, -1
  %value192 = getelementptr %struct.vega12_dpm_table, ptr %1, i32 0, i32 2, i32 2, i32 %sub190, i32 1
  %104 = ptrtoint ptr %value192 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %value192, align 4
  %106 = ptrtoint ptr %hard_min_level81 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %hard_min_level81, align 4
  br label %if.end195

if.end195:                                        ; preds = %if.then187, %if.end184.if.end195_crit_edge
  %vclk_table = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 4
  %value199 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 4, i32 2, i32 0, i32 1
  %107 = ptrtoint ptr %value199 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %value199, align 4
  %dpm_state200 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 4, i32 1
  %109 = ptrtoint ptr %dpm_state200 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %dpm_state200, align 4
  %110 = ptrtoint ptr %vclk_table to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %vclk_table, align 4
  %sub204 = add i32 %111, -1
  %value206 = getelementptr %struct.vega12_dpm_table, ptr %1, i32 0, i32 4, i32 2, i32 %sub204, i32 1
  %112 = ptrtoint ptr %value206 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %value206, align 4
  %soft_max_level208 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 4, i32 1, i32 1
  %114 = ptrtoint ptr %soft_max_level208 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %soft_max_level208, align 4
  %hard_min_level213 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 4, i32 1, i32 2
  %115 = ptrtoint ptr %hard_min_level213 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %108, ptr %hard_min_level213, align 4
  %116 = load i32, ptr %value206, align 4
  %hard_max_level220 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 4, i32 1, i32 3
  %117 = ptrtoint ptr %hard_max_level220 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %hard_max_level220, align 4
  %118 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx.i, align 4
  %and1.i628 = and i32 %119, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i628)
  %cmp.i629.not = icmp eq i32 %and1.i628, 0
  br i1 %cmp.i629.not, label %if.end195.if.end258_crit_edge, label %if.then225

if.end195.if.end258_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end258

if.then225:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %111)
  %cmp227 = icmp ugt i32 %111, 3
  br i1 %cmp227, label %if.then228, label %if.then225.if.end239_crit_edge

if.then225.if.end239_crit_edge:                   ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end239

if.then228:                                       ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #17
  %value231 = getelementptr %struct.vega12_dpm_table, ptr %1, i32 0, i32 4, i32 2, i32 3, i32 1
  %120 = ptrtoint ptr %value231 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %value231, align 4
  %122 = ptrtoint ptr %dpm_state200 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %dpm_state200, align 4
  %123 = ptrtoint ptr %soft_max_level208 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %121, ptr %soft_max_level208, align 4
  br label %if.end239

if.end239:                                        ; preds = %if.then228, %if.then225.if.end239_crit_edge
  %dpm_level240 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 18
  %124 = ptrtoint ptr %dpm_level240 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %dpm_level240, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %125)
  %cmp241 = icmp eq i32 %125, 128
  br i1 %cmp241, label %if.then242, label %if.end239.if.end258_crit_edge

if.end239.if.end258_crit_edge:                    ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end258

if.then242:                                       ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #17
  %126 = ptrtoint ptr %vclk_table to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %vclk_table, align 4
  %sub245 = add i32 %127, -1
  %value247 = getelementptr %struct.vega12_dpm_table, ptr %1, i32 0, i32 4, i32 2, i32 %sub245, i32 1
  %128 = ptrtoint ptr %value247 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %value247, align 4
  %130 = ptrtoint ptr %dpm_state200 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %dpm_state200, align 4
  %131 = load i32, ptr %value247, align 4
  %132 = ptrtoint ptr %soft_max_level208 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %soft_max_level208, align 4
  br label %if.end258

if.end258:                                        ; preds = %if.then242, %if.end239.if.end258_crit_edge, %if.end195.if.end258_crit_edge
  %dclk_table = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 5
  %value262 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 5, i32 2, i32 0, i32 1
  %133 = ptrtoint ptr %value262 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %value262, align 4
  %dpm_state263 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 5, i32 1
  %135 = ptrtoint ptr %dpm_state263 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %dpm_state263, align 4
  %136 = ptrtoint ptr %dclk_table to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %dclk_table, align 4
  %sub267 = add i32 %137, -1
  %value269 = getelementptr %struct.vega12_dpm_table, ptr %1, i32 0, i32 5, i32 2, i32 %sub267, i32 1
  %138 = ptrtoint ptr %value269 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %value269, align 4
  %soft_max_level271 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 5, i32 1, i32 1
  %140 = ptrtoint ptr %soft_max_level271 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %soft_max_level271, align 4
  %hard_min_level276 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 5, i32 1, i32 2
  %141 = ptrtoint ptr %hard_min_level276 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %134, ptr %hard_min_level276, align 4
  %142 = load i32, ptr %value269, align 4
  %hard_max_level283 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 5, i32 1, i32 3
  %143 = ptrtoint ptr %hard_max_level283 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %hard_max_level283, align 4
  %144 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx.i, align 4
  %and1.i631 = and i32 %145, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i631)
  %cmp.i632.not = icmp eq i32 %and1.i631, 0
  br i1 %cmp.i632.not, label %if.end258.if.end321_crit_edge, label %if.then288

if.end258.if.end321_crit_edge:                    ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end321

if.then288:                                       ; preds = %if.end258
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %137)
  %cmp290 = icmp ugt i32 %137, 3
  br i1 %cmp290, label %if.then291, label %if.then288.if.end302_crit_edge

if.then288.if.end302_crit_edge:                   ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end302

if.then291:                                       ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #17
  %value294 = getelementptr %struct.vega12_dpm_table, ptr %1, i32 0, i32 5, i32 2, i32 3, i32 1
  %146 = ptrtoint ptr %value294 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %value294, align 4
  %148 = ptrtoint ptr %dpm_state263 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %dpm_state263, align 4
  %149 = ptrtoint ptr %soft_max_level271 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %147, ptr %soft_max_level271, align 4
  br label %if.end302

if.end302:                                        ; preds = %if.then291, %if.then288.if.end302_crit_edge
  %dpm_level303 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 18
  %150 = ptrtoint ptr %dpm_level303 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %dpm_level303, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %151)
  %cmp304 = icmp eq i32 %151, 128
  br i1 %cmp304, label %if.then305, label %if.end302.if.end321_crit_edge

if.end302.if.end321_crit_edge:                    ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end321

if.then305:                                       ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #17
  %152 = ptrtoint ptr %dclk_table to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %dclk_table, align 4
  %sub308 = add i32 %153, -1
  %value310 = getelementptr %struct.vega12_dpm_table, ptr %1, i32 0, i32 5, i32 2, i32 %sub308, i32 1
  %154 = ptrtoint ptr %value310 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %value310, align 4
  %156 = ptrtoint ptr %dpm_state263 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %dpm_state263, align 4
  %157 = load i32, ptr %value310, align 4
  %158 = ptrtoint ptr %soft_max_level271 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %soft_max_level271, align 4
  br label %if.end321

if.end321:                                        ; preds = %if.then305, %if.end302.if.end321_crit_edge, %if.end258.if.end321_crit_edge
  %value325 = getelementptr inbounds %struct.vega12_single_dpm_table, ptr %1, i32 0, i32 2, i32 0, i32 1
  %159 = ptrtoint ptr %value325 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %value325, align 4
  %dpm_state326 = getelementptr inbounds %struct.vega12_single_dpm_table, ptr %1, i32 0, i32 1
  %161 = ptrtoint ptr %dpm_state326 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %dpm_state326, align 4
  %162 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %1, align 4
  %sub330 = add i32 %163, -1
  %value332 = getelementptr %struct.vega12_single_dpm_table, ptr %1, i32 0, i32 2, i32 %sub330, i32 1
  %164 = ptrtoint ptr %value332 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %value332, align 4
  %soft_max_level334 = getelementptr inbounds %struct.vega12_single_dpm_table, ptr %1, i32 0, i32 1, i32 1
  %166 = ptrtoint ptr %soft_max_level334 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %soft_max_level334, align 4
  %hard_min_level339 = getelementptr inbounds %struct.vega12_single_dpm_table, ptr %1, i32 0, i32 1, i32 2
  %167 = ptrtoint ptr %hard_min_level339 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %160, ptr %hard_min_level339, align 4
  %168 = load i32, ptr %value332, align 4
  %hard_max_level346 = getelementptr inbounds %struct.vega12_single_dpm_table, ptr %1, i32 0, i32 1, i32 3
  %169 = ptrtoint ptr %hard_max_level346 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %hard_max_level346, align 4
  %170 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx.i, align 4
  %and1.i634 = and i32 %171, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i634)
  %cmp.i635.not = icmp eq i32 %and1.i634, 0
  br i1 %cmp.i635.not, label %if.end321.if.end384_crit_edge, label %if.then351

if.end321.if.end384_crit_edge:                    ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end384

if.then351:                                       ; preds = %if.end321
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %163)
  %cmp353 = icmp ugt i32 %163, 3
  br i1 %cmp353, label %if.then354, label %if.then351.if.end365_crit_edge

if.then351.if.end365_crit_edge:                   ; preds = %if.then351
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end365

if.then354:                                       ; preds = %if.then351
  call void @__sanitizer_cov_trace_pc() #17
  %value357 = getelementptr %struct.vega12_single_dpm_table, ptr %1, i32 0, i32 2, i32 3, i32 1
  %172 = ptrtoint ptr %value357 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %value357, align 4
  %174 = ptrtoint ptr %dpm_state326 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %dpm_state326, align 4
  %175 = ptrtoint ptr %soft_max_level334 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %173, ptr %soft_max_level334, align 4
  br label %if.end365

if.end365:                                        ; preds = %if.then354, %if.then351.if.end365_crit_edge
  %dpm_level366 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 18
  %176 = ptrtoint ptr %dpm_level366 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %dpm_level366, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %177)
  %cmp367 = icmp eq i32 %177, 128
  br i1 %cmp367, label %if.then368, label %if.end365.if.end384_crit_edge

if.end365.if.end384_crit_edge:                    ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end384

if.then368:                                       ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #17
  %178 = ptrtoint ptr %value332 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %value332, align 4
  %180 = ptrtoint ptr %dpm_state326 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %dpm_state326, align 4
  %181 = load i32, ptr %value332, align 4
  %182 = ptrtoint ptr %soft_max_level334 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %soft_max_level334, align 4
  br label %if.end384

if.end384:                                        ; preds = %if.then368, %if.end365.if.end384_crit_edge, %if.end321.if.end384_crit_edge
  %eclk_table = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 3
  %value388 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 3, i32 2, i32 0, i32 1
  %183 = ptrtoint ptr %value388 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %value388, align 4
  %dpm_state389 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 3, i32 1
  %185 = ptrtoint ptr %dpm_state389 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %dpm_state389, align 4
  %186 = ptrtoint ptr %eclk_table to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %eclk_table, align 4
  %sub393 = add i32 %187, -1
  %value395 = getelementptr %struct.vega12_dpm_table, ptr %1, i32 0, i32 3, i32 2, i32 %sub393, i32 1
  %188 = ptrtoint ptr %value395 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %value395, align 4
  %soft_max_level397 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 3, i32 1, i32 1
  %190 = ptrtoint ptr %soft_max_level397 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %soft_max_level397, align 4
  %hard_min_level402 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 3, i32 1, i32 2
  %191 = ptrtoint ptr %hard_min_level402 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %184, ptr %hard_min_level402, align 4
  %192 = load i32, ptr %value395, align 4
  %hard_max_level409 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 3, i32 1, i32 3
  %193 = ptrtoint ptr %hard_max_level409 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %hard_max_level409, align 4
  %194 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx.i, align 4
  %and1.i637 = and i32 %195, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i637)
  %cmp.i638.not = icmp eq i32 %and1.i637, 0
  br i1 %cmp.i638.not, label %if.end384.if.end447_crit_edge, label %if.then414

if.end384.if.end447_crit_edge:                    ; preds = %if.end384
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end447

if.then414:                                       ; preds = %if.end384
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %187)
  %cmp416 = icmp ugt i32 %187, 3
  br i1 %cmp416, label %if.then417, label %if.then414.if.end428_crit_edge

if.then414.if.end428_crit_edge:                   ; preds = %if.then414
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end428

if.then417:                                       ; preds = %if.then414
  call void @__sanitizer_cov_trace_pc() #17
  %value420 = getelementptr %struct.vega12_dpm_table, ptr %1, i32 0, i32 3, i32 2, i32 3, i32 1
  %196 = ptrtoint ptr %value420 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %value420, align 4
  %198 = ptrtoint ptr %dpm_state389 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %dpm_state389, align 4
  %199 = ptrtoint ptr %soft_max_level397 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %197, ptr %soft_max_level397, align 4
  br label %if.end428

if.end428:                                        ; preds = %if.then417, %if.then414.if.end428_crit_edge
  %dpm_level429 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 18
  %200 = ptrtoint ptr %dpm_level429 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %dpm_level429, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %201)
  %cmp430 = icmp eq i32 %201, 128
  br i1 %cmp430, label %if.then431, label %if.end428.if.end447_crit_edge

if.end428.if.end447_crit_edge:                    ; preds = %if.end428
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end447

if.then431:                                       ; preds = %if.end428
  call void @__sanitizer_cov_trace_pc() #17
  %202 = ptrtoint ptr %eclk_table to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %eclk_table, align 4
  %sub434 = add i32 %203, -1
  %value436 = getelementptr %struct.vega12_dpm_table, ptr %1, i32 0, i32 3, i32 2, i32 %sub434, i32 1
  %204 = ptrtoint ptr %value436 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %value436, align 4
  %206 = ptrtoint ptr %dpm_state389 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %dpm_state389, align 4
  %207 = load i32, ptr %value436, align 4
  %208 = ptrtoint ptr %soft_max_level397 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %207, ptr %soft_max_level397, align 4
  br label %if.end447

if.end447:                                        ; preds = %if.then431, %if.end428.if.end447_crit_edge, %if.end384.if.end447_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega12_dpm_force_dpm_level(ptr noundef %hwmgr, i32 noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %level, label %entry.cleanup_crit_edge [
    i32 8, label %sw.bb
    i32 4, label %sw.bb1
    i32 1, label %sw.bb3
    i32 16, label %entry.sw.bb5_crit_edge
    i32 32, label %entry.sw.bb5_crit_edge70
    i32 64, label %entry.sw.bb5_crit_edge71
    i32 128, label %entry.sw.bb5_crit_edge72
  ]

entry.sw.bb5_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %1 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %backend.i, align 4
  %gfx_table.i = getelementptr inbounds %struct.vega12_dpm_table, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %gfx_table.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gfx_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %4)
  %cmp.i.i = icmp ult i32 %4, 17
  br i1 %cmp.i.i, label %sw.bb.for.cond.i.i_crit_edge, label %if.then.i.i

sw.bb.for.cond.i.i_crit_edge:                     ; preds = %sw.bb
  br label %for.cond.i.i

if.then.i.i:                                      ; preds = %sw.bb
  %call.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_find_highest_dpm_level._rs, ptr noundef nonnull @__func__.vega12_find_highest_dpm_level) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.vega12_find_highest_dpm_level.exit.i_crit_edge, label %do.end.i.i

if.then.i.i.vega12_find_highest_dpm_level.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vega12_find_highest_dpm_level.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10) #18
  br label %vega12_find_highest_dpm_level.exit.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %sw.bb.for.cond.i.i_crit_edge
  %i.0.in.i.i = phi i32 [ %i.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %4, %sw.bb.for.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i.i)
  %cmp8.i.i = icmp sgt i32 %i.0.in.i.i, 0
  br i1 %cmp8.i.i, label %for.body.i.i, label %if.then13.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %i.0.i.i = add nsw i32 %i.0.in.i.i, -1
  %arrayidx.i.i = getelementptr %struct.vega12_dpm_table, ptr %2, i32 0, i32 1, i32 2, i32 %i.0.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i, align 4, !range !619
  %tobool9.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool9.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %for.body.i.i.vega12_find_highest_dpm_level.exit.i_crit_edge

for.body.i.i.vega12_find_highest_dpm_level.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vega12_find_highest_dpm_level.exit.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i

if.then13.i.i:                                    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %dpm_levels14.i.i = getelementptr inbounds %struct.vega12_dpm_table, ptr %2, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %dpm_levels14.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %dpm_levels14.i.i, align 4
  br label %vega12_find_highest_dpm_level.exit.i

vega12_find_highest_dpm_level.exit.i:             ; preds = %if.then13.i.i, %for.body.i.i.vega12_find_highest_dpm_level.exit.i_crit_edge, %do.end.i.i, %if.then.i.i.vega12_find_highest_dpm_level.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 15, %do.end.i.i ], [ 15, %if.then.i.i.vega12_find_highest_dpm_level.exit.i_crit_edge ], [ 0, %if.then13.i.i ], [ %i.0.i.i, %for.body.i.i.vega12_find_highest_dpm_level.exit.i_crit_edge ]
  %value.i = getelementptr %struct.vega12_dpm_table, ptr %2, i32 0, i32 1, i32 2, i32 %retval.0.i.i, i32 1
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value.i, align 4
  %dpm_state.i = getelementptr inbounds %struct.vega12_dpm_table, ptr %2, i32 0, i32 1, i32 1
  %soft_max_level.i = getelementptr inbounds %struct.vega12_dpm_table, ptr %2, i32 0, i32 1, i32 1, i32 1
  %10 = ptrtoint ptr %soft_max_level.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %soft_max_level.i, align 4
  %11 = ptrtoint ptr %dpm_state.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %dpm_state.i, align 4
  %mem_table.i = getelementptr inbounds %struct.vega12_dpm_table, ptr %2, i32 0, i32 2
  %12 = ptrtoint ptr %mem_table.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mem_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %13)
  %cmp.i59.i = icmp ult i32 %13, 17
  br i1 %cmp.i59.i, label %vega12_find_highest_dpm_level.exit.i.for.cond.i67.i_crit_edge, label %if.then.i62.i

vega12_find_highest_dpm_level.exit.i.for.cond.i67.i_crit_edge: ; preds = %vega12_find_highest_dpm_level.exit.i
  br label %for.cond.i67.i

if.then.i62.i:                                    ; preds = %vega12_find_highest_dpm_level.exit.i
  %call.i60.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_find_highest_dpm_level._rs, ptr noundef nonnull @__func__.vega12_find_highest_dpm_level) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60.i)
  %tobool.not.i61.i = icmp eq i32 %call.i60.i, 0
  br i1 %tobool.not.i61.i, label %if.then.i62.i.vega12_find_highest_dpm_level.exit75.i_crit_edge, label %do.end.i64.i

if.then.i62.i.vega12_find_highest_dpm_level.exit75.i_crit_edge: ; preds = %if.then.i62.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vega12_find_highest_dpm_level.exit75.i

do.end.i64.i:                                     ; preds = %if.then.i62.i
  call void @__sanitizer_cov_trace_pc() #17
  %call3.i63.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10) #18
  br label %vega12_find_highest_dpm_level.exit75.i

for.cond.i67.i:                                   ; preds = %for.body.i71.i.for.cond.i67.i_crit_edge, %vega12_find_highest_dpm_level.exit.i.for.cond.i67.i_crit_edge
  %i.0.in.i65.i = phi i32 [ %i.0.i68.i, %for.body.i71.i.for.cond.i67.i_crit_edge ], [ %13, %vega12_find_highest_dpm_level.exit.i.for.cond.i67.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i65.i)
  %cmp8.i66.i = icmp sgt i32 %i.0.in.i65.i, 0
  br i1 %cmp8.i66.i, label %for.body.i71.i, label %if.then13.i73.i

for.body.i71.i:                                   ; preds = %for.cond.i67.i
  %i.0.i68.i = add nsw i32 %i.0.in.i65.i, -1
  %arrayidx.i69.i = getelementptr %struct.vega12_dpm_table, ptr %2, i32 0, i32 2, i32 2, i32 %i.0.i68.i
  %14 = ptrtoint ptr %arrayidx.i69.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i69.i, align 4, !range !619
  %tobool9.not.i70.i = icmp eq i8 %15, 0
  br i1 %tobool9.not.i70.i, label %for.body.i71.i.for.cond.i67.i_crit_edge, label %for.body.i71.i.vega12_find_highest_dpm_level.exit75.i_crit_edge

for.body.i71.i.vega12_find_highest_dpm_level.exit75.i_crit_edge: ; preds = %for.body.i71.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vega12_find_highest_dpm_level.exit75.i

for.body.i71.i.for.cond.i67.i_crit_edge:          ; preds = %for.body.i71.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i67.i

if.then13.i73.i:                                  ; preds = %for.cond.i67.i
  call void @__sanitizer_cov_trace_pc() #17
  %dpm_levels14.i72.i = getelementptr inbounds %struct.vega12_dpm_table, ptr %2, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %dpm_levels14.i72.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %dpm_levels14.i72.i, align 4
  br label %vega12_find_highest_dpm_level.exit75.i

vega12_find_highest_dpm_level.exit75.i:           ; preds = %if.then13.i73.i, %for.body.i71.i.vega12_find_highest_dpm_level.exit75.i_crit_edge, %do.end.i64.i, %if.then.i62.i.vega12_find_highest_dpm_level.exit75.i_crit_edge
  %retval.0.i74.i = phi i32 [ 15, %do.end.i64.i ], [ 15, %if.then.i62.i.vega12_find_highest_dpm_level.exit75.i_crit_edge ], [ 0, %if.then13.i73.i ], [ %i.0.i68.i, %for.body.i71.i.vega12_find_highest_dpm_level.exit75.i_crit_edge ]
  %value14.i = getelementptr %struct.vega12_dpm_table, ptr %2, i32 0, i32 2, i32 2, i32 %retval.0.i74.i, i32 1
  %17 = ptrtoint ptr %value14.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value14.i, align 4
  %dpm_state17.i = getelementptr inbounds %struct.vega12_dpm_table, ptr %2, i32 0, i32 2, i32 1
  %soft_max_level18.i = getelementptr inbounds %struct.vega12_dpm_table, ptr %2, i32 0, i32 2, i32 1, i32 1
  %19 = ptrtoint ptr %soft_max_level18.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %soft_max_level18.i, align 4
  %20 = ptrtoint ptr %dpm_state17.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %dpm_state17.i, align 4
  %call23.i = tail call fastcc i32 @vega12_upload_dpm_min_level(ptr noundef %hwmgr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool.not.i, label %do.body32.i, label %if.then.i

if.then.i:                                        ; preds = %vega12_find_highest_dpm_level.exit75.i
  %call24.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_force_dpm_highest._rs, ptr noundef nonnull @__func__.vega12_force_dpm_highest) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.cleanup.sink.split.i_crit_edge

if.then.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body32.i:                                      ; preds = %vega12_find_highest_dpm_level.exit75.i
  %call33.i = tail call fastcc i32 @vega12_upload_dpm_max_level(ptr noundef %hwmgr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %do.body32.i.cleanup_crit_edge, label %if.then35.i

do.body32.i.cleanup_crit_edge:                    ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then35.i:                                      ; preds = %do.body32.i
  %call36.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_force_dpm_highest._rs.6, ptr noundef nonnull @__func__.vega12_force_dpm_highest) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.then35.i.cleanup_crit_edge, label %if.then35.i.cleanup.sink.split.i_crit_edge

if.then35.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i

if.then35.i.cleanup_crit_edge:                    ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.sink.split.i:                             ; preds = %if.then35.i.cleanup.sink.split.i_crit_edge, %if.then.i.cleanup.sink.split.i_crit_edge
  %.str.9.sink.i = phi ptr [ @.str.5, %if.then.i.cleanup.sink.split.i_crit_edge ], [ @.str.9, %if.then35.i.cleanup.sink.split.i_crit_edge ]
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.9.sink.i) #18
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %backend.i22 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %21 = ptrtoint ptr %backend.i22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %backend.i22, align 4
  %gfx_table.i23 = getelementptr inbounds %struct.vega12_dpm_table, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %gfx_table.i23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gfx_table.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp17.not.i.i = icmp eq i32 %24, 0
  br i1 %cmp17.not.i.i, label %sw.bb1.if.then3.i.i_crit_edge, label %sw.bb1.for.body.i.i26_crit_edge

sw.bb1.for.body.i.i26_crit_edge:                  ; preds = %sw.bb1
  br label %for.body.i.i26

sw.bb1.if.then3.i.i_crit_edge:                    ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then3.i.i

for.body.i.i26:                                   ; preds = %for.inc.i.i.for.body.i.i26_crit_edge, %sw.bb1.for.body.i.i26_crit_edge
  %i.018.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i26_crit_edge ], [ 0, %sw.bb1.for.body.i.i26_crit_edge ]
  %arrayidx.i.i24 = getelementptr %struct.vega12_dpm_table, ptr %22, i32 0, i32 1, i32 2, i32 %i.018.i.i
  %25 = ptrtoint ptr %arrayidx.i.i24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i.i24, align 4, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i25 = icmp eq i8 %26, 0
  br i1 %tobool.not.i.i25, label %for.inc.i.i, label %for.body.i.i26.vega12_find_lowest_dpm_level.exit.i_crit_edge

for.body.i.i26.vega12_find_lowest_dpm_level.exit.i_crit_edge: ; preds = %for.body.i.i26
  call void @__sanitizer_cov_trace_pc() #17
  br label %vega12_find_lowest_dpm_level.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i26
  %inc.i.i = add nuw i32 %i.018.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %24
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.then3.i.i_crit_edge, label %for.inc.i.i.for.body.i.i26_crit_edge

for.inc.i.i.for.body.i.i26_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i26

for.inc.i.i.if.then3.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then3.i.i

if.then3.i.i:                                     ; preds = %for.inc.i.i.if.then3.i.i_crit_edge, %sw.bb1.if.then3.i.i_crit_edge
  %dpm_levels4.i.i = getelementptr inbounds %struct.vega12_dpm_table, ptr %22, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %dpm_levels4.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %dpm_levels4.i.i, align 4
  br label %vega12_find_lowest_dpm_level.exit.i

vega12_find_lowest_dpm_level.exit.i:              ; preds = %if.then3.i.i, %for.body.i.i26.vega12_find_lowest_dpm_level.exit.i_crit_edge
  %i.1.i.i = phi i32 [ 0, %if.then3.i.i ], [ %i.018.i.i, %for.body.i.i26.vega12_find_lowest_dpm_level.exit.i_crit_edge ]
  %value.i27 = getelementptr %struct.vega12_dpm_table, ptr %22, i32 0, i32 1, i32 2, i32 %i.1.i.i, i32 1
  %28 = ptrtoint ptr %value.i27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %value.i27, align 4
  %dpm_state.i28 = getelementptr inbounds %struct.vega12_dpm_table, ptr %22, i32 0, i32 1, i32 1
  %soft_max_level.i29 = getelementptr inbounds %struct.vega12_dpm_table, ptr %22, i32 0, i32 1, i32 1, i32 1
  %30 = ptrtoint ptr %soft_max_level.i29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %soft_max_level.i29, align 4
  %31 = ptrtoint ptr %dpm_state.i28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %29, ptr %dpm_state.i28, align 4
  %mem_table.i30 = getelementptr inbounds %struct.vega12_dpm_table, ptr %22, i32 0, i32 2
  %32 = ptrtoint ptr %mem_table.i30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mem_table.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp17.not.i59.i = icmp eq i32 %33, 0
  br i1 %cmp17.not.i59.i, label %vega12_find_lowest_dpm_level.exit.i.if.then3.i68.i_crit_edge, label %vega12_find_lowest_dpm_level.exit.i.for.body.i63.i_crit_edge

vega12_find_lowest_dpm_level.exit.i.for.body.i63.i_crit_edge: ; preds = %vega12_find_lowest_dpm_level.exit.i
  br label %for.body.i63.i

vega12_find_lowest_dpm_level.exit.i.if.then3.i68.i_crit_edge: ; preds = %vega12_find_lowest_dpm_level.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then3.i68.i

for.body.i63.i:                                   ; preds = %for.inc.i66.i.for.body.i63.i_crit_edge, %vega12_find_lowest_dpm_level.exit.i.for.body.i63.i_crit_edge
  %i.018.i60.i = phi i32 [ %inc.i64.i, %for.inc.i66.i.for.body.i63.i_crit_edge ], [ 0, %vega12_find_lowest_dpm_level.exit.i.for.body.i63.i_crit_edge ]
  %arrayidx.i61.i = getelementptr %struct.vega12_dpm_table, ptr %22, i32 0, i32 2, i32 2, i32 %i.018.i60.i
  %34 = ptrtoint ptr %arrayidx.i61.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i61.i, align 4, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i62.i = icmp eq i8 %35, 0
  br i1 %tobool.not.i62.i, label %for.inc.i66.i, label %for.body.i63.i.vega12_find_lowest_dpm_level.exit70.i_crit_edge

for.body.i63.i.vega12_find_lowest_dpm_level.exit70.i_crit_edge: ; preds = %for.body.i63.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vega12_find_lowest_dpm_level.exit70.i

for.inc.i66.i:                                    ; preds = %for.body.i63.i
  %inc.i64.i = add nuw i32 %i.018.i60.i, 1
  %exitcond.not.i65.i = icmp eq i32 %inc.i64.i, %33
  br i1 %exitcond.not.i65.i, label %for.inc.i66.i.if.then3.i68.i_crit_edge, label %for.inc.i66.i.for.body.i63.i_crit_edge

for.inc.i66.i.for.body.i63.i_crit_edge:           ; preds = %for.inc.i66.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i63.i

for.inc.i66.i.if.then3.i68.i_crit_edge:           ; preds = %for.inc.i66.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then3.i68.i

if.then3.i68.i:                                   ; preds = %for.inc.i66.i.if.then3.i68.i_crit_edge, %vega12_find_lowest_dpm_level.exit.i.if.then3.i68.i_crit_edge
  %dpm_levels4.i67.i = getelementptr inbounds %struct.vega12_dpm_table, ptr %22, i32 0, i32 2, i32 2
  %36 = ptrtoint ptr %dpm_levels4.i67.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %dpm_levels4.i67.i, align 4
  br label %vega12_find_lowest_dpm_level.exit70.i

vega12_find_lowest_dpm_level.exit70.i:            ; preds = %if.then3.i68.i, %for.body.i63.i.vega12_find_lowest_dpm_level.exit70.i_crit_edge
  %i.1.i69.i = phi i32 [ 0, %if.then3.i68.i ], [ %i.018.i60.i, %for.body.i63.i.vega12_find_lowest_dpm_level.exit70.i_crit_edge ]
  %value14.i31 = getelementptr %struct.vega12_dpm_table, ptr %22, i32 0, i32 2, i32 2, i32 %i.1.i69.i, i32 1
  %37 = ptrtoint ptr %value14.i31 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %value14.i31, align 4
  %dpm_state17.i32 = getelementptr inbounds %struct.vega12_dpm_table, ptr %22, i32 0, i32 2, i32 1
  %soft_max_level18.i33 = getelementptr inbounds %struct.vega12_dpm_table, ptr %22, i32 0, i32 2, i32 1, i32 1
  %39 = ptrtoint ptr %soft_max_level18.i33 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %soft_max_level18.i33, align 4
  %40 = ptrtoint ptr %dpm_state17.i32 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %38, ptr %dpm_state17.i32, align 4
  %call23.i34 = tail call fastcc i32 @vega12_upload_dpm_min_level(ptr noundef %hwmgr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i34)
  %tobool.not.i35 = icmp eq i32 %call23.i34, 0
  br i1 %tobool.not.i35, label %do.body32.i41, label %if.then.i38

if.then.i38:                                      ; preds = %vega12_find_lowest_dpm_level.exit70.i
  %call24.i36 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_force_dpm_lowest._rs, ptr noundef nonnull @__func__.vega12_force_dpm_lowest) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i36)
  %tobool25.not.i37 = icmp eq i32 %call24.i36, 0
  br i1 %tobool25.not.i37, label %if.then.i38.cleanup_crit_edge, label %if.then.i38.cleanup.sink.split.i47_crit_edge

if.then.i38.cleanup.sink.split.i47_crit_edge:     ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i47

if.then.i38.cleanup_crit_edge:                    ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body32.i41:                                    ; preds = %vega12_find_lowest_dpm_level.exit70.i
  %call33.i39 = tail call fastcc i32 @vega12_upload_dpm_max_level(ptr noundef %hwmgr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i39)
  %tobool34.not.i40 = icmp eq i32 %call33.i39, 0
  br i1 %tobool34.not.i40, label %do.body32.i41.cleanup_crit_edge, label %if.then35.i44

do.body32.i41.cleanup_crit_edge:                  ; preds = %do.body32.i41
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then35.i44:                                    ; preds = %do.body32.i41
  %call36.i42 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_force_dpm_lowest._rs.61, ptr noundef nonnull @__func__.vega12_force_dpm_lowest) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i42)
  %tobool37.not.i43 = icmp eq i32 %call36.i42, 0
  br i1 %tobool37.not.i43, label %if.then35.i44.cleanup_crit_edge, label %if.then35.i44.cleanup.sink.split.i47_crit_edge

if.then35.i44.cleanup.sink.split.i47_crit_edge:   ; preds = %if.then35.i44
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i47

if.then35.i44.cleanup_crit_edge:                  ; preds = %if.then35.i44
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.sink.split.i47:                           ; preds = %if.then35.i44.cleanup.sink.split.i47_crit_edge, %if.then.i38.cleanup.sink.split.i47_crit_edge
  %.str.9.sink.i45 = phi ptr [ @.str.5, %if.then.i38.cleanup.sink.split.i47_crit_edge ], [ @.str.9, %if.then35.i44.cleanup.sink.split.i47_crit_edge ]
  %call43.i46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.9.sink.i45) #18
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %call.i = tail call fastcc i32 @vega12_upload_dpm_min_level(ptr noundef %hwmgr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i49 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i49, label %do.body8.i, label %if.then.i50

if.then.i50:                                      ; preds = %sw.bb3
  %call1.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_unforce_dpm_levels._rs, ptr noundef nonnull @__func__.vega12_unforce_dpm_levels) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then.i50.cleanup_crit_edge, label %if.then.i50.return.sink.split.i_crit_edge

if.then.i50.return.sink.split.i_crit_edge:        ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split.i

if.then.i50.cleanup_crit_edge:                    ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body8.i:                                       ; preds = %sw.bb3
  %call9.i = tail call fastcc i32 @vega12_upload_dpm_max_level(ptr noundef %hwmgr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %do.body8.i.cleanup_crit_edge, label %if.then11.i

do.body8.i.cleanup_crit_edge:                     ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then11.i:                                      ; preds = %do.body8.i
  %call12.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_unforce_dpm_levels._rs.65, ptr noundef nonnull @__func__.vega12_unforce_dpm_levels) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then11.i.cleanup_crit_edge, label %if.then11.i.return.sink.split.i_crit_edge

if.then11.i.return.sink.split.i_crit_edge:        ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split.i

if.then11.i.cleanup_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

return.sink.split.i:                              ; preds = %if.then11.i.return.sink.split.i_crit_edge, %if.then.i50.return.sink.split.i_crit_edge
  %.str.68.sink.i = phi ptr [ @.str.64, %if.then.i50.return.sink.split.i_crit_edge ], [ @.str.68, %if.then11.i.return.sink.split.i_crit_edge ]
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.68.sink.i) #18
  br label %cleanup

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge70, %entry.sw.bb5_crit_edge71, %entry.sw.bb5_crit_edge72
  %backend.i52 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %41 = ptrtoint ptr %backend.i52 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %backend.i52, align 4
  %gfx_table.i53 = getelementptr inbounds %struct.vega12_dpm_table, ptr %42, i32 0, i32 1
  %mem_table.i54 = getelementptr inbounds %struct.vega12_dpm_table, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %gfx_table.i53 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %gfx_table.i53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %44)
  %cmp.i = icmp ugt i32 %44, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb5.if.end.i_crit_edge

sw.bb5.if.end.i_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.bb5
  %45 = ptrtoint ptr %mem_table.i54 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mem_table.i54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp4.i = icmp ugt i32 %46, 2
  br i1 %cmp4.i, label %land.lhs.true5.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %47 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %cmp7.i = icmp ugt i32 %48, 3
  %spec.select = select i1 %cmp7.i, i32 3, i32 0
  %spec.select57 = select i1 %cmp7.i, i32 2, i32 0
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true5.i, %land.lhs.true.i.if.end.i_crit_edge, %sw.bb5.if.end.i_crit_edge
  %sclk_mask.0 = phi i32 [ 0, %land.lhs.true.i.if.end.i_crit_edge ], [ 0, %sw.bb5.if.end.i_crit_edge ], [ %spec.select, %land.lhs.true5.i ]
  %mclk_mask.0 = phi i32 [ 0, %land.lhs.true.i.if.end.i_crit_edge ], [ 0, %sw.bb5.if.end.i_crit_edge ], [ %spec.select57, %land.lhs.true5.i ]
  %49 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.311)
  switch i32 %level, label %if.end.i.vega12_get_profiling_clk_mask.exit_crit_edge [
    i32 32, label %if.then9.i
    i32 64, label %if.then11.i56
    i32 128, label %if.then14.i
  ]

if.end.i.vega12_get_profiling_clk_mask.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vega12_get_profiling_clk_mask.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vega12_get_profiling_clk_mask.exit

if.then11.i56:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vega12_get_profiling_clk_mask.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i = add i32 %44, -1
  %50 = ptrtoint ptr %mem_table.i54 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mem_table.i54, align 4
  %sub17.i = add i32 %51, -1
  br label %vega12_get_profiling_clk_mask.exit

vega12_get_profiling_clk_mask.exit:               ; preds = %if.then14.i, %if.then11.i56, %if.then9.i, %if.end.i.vega12_get_profiling_clk_mask.exit_crit_edge
  %sclk_mask.1 = phi i32 [ %sclk_mask.0, %if.end.i.vega12_get_profiling_clk_mask.exit_crit_edge ], [ %sub.i, %if.then14.i ], [ %sclk_mask.0, %if.then11.i56 ], [ 0, %if.then9.i ]
  %mclk_mask.1 = phi i32 [ %mclk_mask.0, %if.end.i.vega12_get_profiling_clk_mask.exit_crit_edge ], [ %sub17.i, %if.then14.i ], [ 0, %if.then11.i56 ], [ %mclk_mask.0, %if.then9.i ]
  %shl = shl nuw i32 1, %sclk_mask.1
  %call7 = tail call i32 @vega12_force_clock_level(ptr noundef %hwmgr, i32 noundef 0, i32 noundef %shl)
  %shl8 = shl nuw i32 1, %mclk_mask.1
  %call9 = tail call i32 @vega12_force_clock_level(ptr noundef %hwmgr, i32 noundef 1, i32 noundef %shl8)
  br label %cleanup

cleanup:                                          ; preds = %vega12_get_profiling_clk_mask.exit, %return.sink.split.i, %if.then11.i.cleanup_crit_edge, %do.body8.i.cleanup_crit_edge, %if.then.i50.cleanup_crit_edge, %cleanup.sink.split.i47, %if.then35.i44.cleanup_crit_edge, %do.body32.i41.cleanup_crit_edge, %if.then.i38.cleanup_crit_edge, %cleanup.sink.split.i, %if.then35.i.cleanup_crit_edge, %do.body32.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %ret.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %vega12_get_profiling_clk_mask.exit ], [ -1, %if.then.i.cleanup_crit_edge ], [ -1, %if.then35.i.cleanup_crit_edge ], [ 0, %do.body32.i.cleanup_crit_edge ], [ -1, %cleanup.sink.split.i ], [ -1, %if.then.i38.cleanup_crit_edge ], [ -1, %if.then35.i44.cleanup_crit_edge ], [ 0, %do.body32.i41.cleanup_crit_edge ], [ -1, %cleanup.sink.split.i47 ], [ -1, %if.then.i50.cleanup_crit_edge ], [ -1, %if.then11.i.cleanup_crit_edge ], [ 0, %do.body8.i.cleanup_crit_edge ], [ -1, %return.sink.split.i ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega12_enable_dpm_tasks(ptr noundef %hwmgr) #0 align 64 {
entry:
  %features_enabled.i = alloca i64, align 8
  %result.i = alloca i32, align 4
  %boot_up_values.i = alloca %struct.pp_atomfwctrl_bios_boot_up_values, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 71, i32 noundef 0, ptr noundef null) #15
  %backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %allowed_features_high.062.i = phi i32 [ 0, %entry ], [ %allowed_features_high.1.i, %for.inc.i.for.body.i_crit_edge ]
  %allowed_features_low.061.i = phi i32 [ 0, %entry ], [ %allowed_features_low.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.059.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %allowed.i = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 %i.059.i, i32 2
  %2 = ptrtoint ptr %allowed.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %allowed.i, align 2, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %smu_feature_id.i = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 %i.059.i, i32 3
  %4 = ptrtoint ptr %smu_feature_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %smu_feature_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %5)
  %cmp3.i = icmp ugt i32 %5, 31
  %smu_feature_bitmap.i = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 %i.059.i, i32 4
  %6 = ptrtoint ptr %smu_feature_bitmap.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %smu_feature_bitmap.i, align 8
  br i1 %cmp3.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %shr.i = lshr i64 %7, 32
  %8 = trunc i64 %shr.i to i32
  %conv6.i = or i32 %allowed_features_high.062.i, %8
  br label %for.inc.i

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %9 = trunc i64 %7 to i32
  %conv14.i = or i32 %allowed_features_low.061.i, %9
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.false.i, %cond.true.i, %for.body.i.for.inc.i_crit_edge
  %allowed_features_low.1.i = phi i32 [ %allowed_features_low.061.i, %cond.true.i ], [ %conv14.i, %cond.false.i ], [ %allowed_features_low.061.i, %for.body.i.for.inc.i_crit_edge ]
  %allowed_features_high.1.i = phi i32 [ %conv6.i, %cond.true.i ], [ %allowed_features_high.062.i, %cond.false.i ], [ %allowed_features_high.062.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.059.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 29
  br i1 %exitcond.not.i, label %do.body.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

do.body.i:                                        ; preds = %for.inc.i
  %call.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 5, i32 noundef %allowed_features_high.1.i, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp15.i = icmp eq i32 %call.i, 0
  br i1 %cmp15.i, label %do.body27.i, label %if.then17.i

if.then17.i:                                      ; preds = %do.body.i
  %call18.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_set_allowed_featuresmask._rs, ptr noundef nonnull @__func__.vega12_set_allowed_featuresmask) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.then17.i.if.then_crit_edge, label %if.then17.i.cleanup.sink.split.i_crit_edge

if.then17.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i

if.then17.i.if.then_crit_edge:                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

do.body27.i:                                      ; preds = %do.body.i
  %call28.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 4, i32 noundef %allowed_features_low.1.i, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp eq i32 %call28.i, 0
  br i1 %cmp29.i, label %do.end8, label %if.then31.i

if.then31.i:                                      ; preds = %do.body27.i
  %call32.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_set_allowed_featuresmask._rs.102, ptr noundef nonnull @__func__.vega12_set_allowed_featuresmask) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.then31.i.if.then_crit_edge, label %if.then31.i.cleanup.sink.split.i_crit_edge

if.then31.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i

if.then31.i.if.then_crit_edge:                    ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

cleanup.sink.split.i:                             ; preds = %if.then31.i.cleanup.sink.split.i_crit_edge, %if.then17.i.cleanup.sink.split.i_crit_edge
  %.str.105.sink.i = phi ptr [ @.str.101, %if.then17.i.cleanup.sink.split.i_crit_edge ], [ @.str.105, %if.then31.i.cleanup.sink.split.i_crit_edge ]
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.105.sink.i) #18
  br label %if.then

if.then:                                          ; preds = %cleanup.sink.split.i, %if.then31.i.if.then_crit_edge, %if.then17.i.if.then_crit_edge
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_enable_dpm_tasks._rs, ptr noundef nonnull @__func__.vega12_enable_dpm_tasks) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.69) #18
  br label %cleanup

do.end8:                                          ; preds = %do.body27.i
  %10 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %backend.i, align 4
  %pp_table1.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %11, i32 0, i32 54, i32 13
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %boot_up_values.i) #15
  %12 = call ptr @memset(ptr %boot_up_values.i, i32 255, i32 48)
  %pptable.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %13 = ptrtoint ptr %pptable.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pptable.i, align 4
  %call.i165 = call i32 @pp_atomfwctrl_get_vbios_bootup_values(ptr noundef %hwmgr, ptr noundef nonnull %boot_up_values.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %tobool.not.i166 = icmp eq i32 %call.i165, 0
  br i1 %tobool.not.i166, label %if.then.i167, label %do.end8.if.end.i_crit_edge

do.end8.if.end.i_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i167:                                     ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #17
  %usVddc.i = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_up_values.i, i32 0, i32 9
  %15 = ptrtoint ptr %usVddc.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %usVddc.i, align 4
  %vddc.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %11, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %vddc.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %vddc.i, align 2
  %usVddci.i = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_up_values.i, i32 0, i32 10
  %18 = ptrtoint ptr %usVddci.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %usVddci.i, align 2
  %vddci.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %11, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %vddci.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %vddci.i, align 4
  %usMvddc.i = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_up_values.i, i32 0, i32 11
  %21 = ptrtoint ptr %usMvddc.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %usMvddc.i, align 4
  %mvddc.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %11, i32 0, i32 3, i32 4
  %23 = ptrtoint ptr %mvddc.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %mvddc.i, align 2
  %ulGfxClk.i = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_up_values.i, i32 0, i32 1
  %24 = ptrtoint ptr %ulGfxClk.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ulGfxClk.i, align 4
  %gfx_clock.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %11, i32 0, i32 3, i32 6
  %26 = ptrtoint ptr %gfx_clock.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %gfx_clock.i, align 4
  %ulUClk.i = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_up_values.i, i32 0, i32 2
  %27 = ptrtoint ptr %ulUClk.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ulUClk.i, align 4
  %mem_clock.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %11, i32 0, i32 3, i32 7
  %29 = ptrtoint ptr %mem_clock.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %mem_clock.i, align 8
  %ulSocClk.i = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_up_values.i, i32 0, i32 3
  %30 = ptrtoint ptr %ulSocClk.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ulSocClk.i, align 4
  %soc_clock.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %11, i32 0, i32 3, i32 8
  %32 = ptrtoint ptr %soc_clock.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %soc_clock.i, align 4
  %ulDCEFClk.i = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_up_values.i, i32 0, i32 4
  %33 = ptrtoint ptr %ulDCEFClk.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ulDCEFClk.i, align 4
  %dcef_clock.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %11, i32 0, i32 3, i32 9
  %35 = ptrtoint ptr %dcef_clock.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %dcef_clock.i, align 8
  %ucCoolingID.i = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_up_values.i, i32 0, i32 13
  %36 = ptrtoint ptr %ucCoolingID.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ucCoolingID.i, align 4
  %uc_cooling_id.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %11, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %uc_cooling_id.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %uc_cooling_id.i, align 1
  %ulEClk.i = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_up_values.i, i32 0, i32 5
  %39 = ptrtoint ptr %ulEClk.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ulEClk.i, align 4
  %eclock.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %11, i32 0, i32 3, i32 10
  %41 = ptrtoint ptr %eclock.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %eclock.i, align 4
  %ulDClk.i = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_up_values.i, i32 0, i32 7
  %42 = ptrtoint ptr %ulDClk.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ulDClk.i, align 4
  %dclock.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %11, i32 0, i32 3, i32 11
  %44 = ptrtoint ptr %dclock.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %dclock.i, align 8
  %ulVClk.i = getelementptr inbounds %struct.pp_atomfwctrl_bios_boot_up_values, ptr %boot_up_values.i, i32 0, i32 6
  %45 = ptrtoint ptr %ulVClk.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ulVClk.i, align 4
  %vclock.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %11, i32 0, i32 3, i32 12
  %47 = ptrtoint ptr %vclock.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %vclock.i, align 4
  %div.i = udiv i32 %34, 100
  %call14.i = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 54, i32 noundef %div.i, ptr noundef null) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i167, %do.end8.if.end.i_crit_edge
  %smc_pptable.i = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %14, i32 0, i32 12
  %48 = ptrtoint ptr %smc_pptable.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %smc_pptable.i, align 4
  %50 = call ptr @memcpy(ptr %pp_table1.i, ptr %49, i32 980)
  %call15.i = call i32 @smum_smc_table_manager(ptr noundef %hwmgr, ptr noundef %pp_table1.i, i16 noundef zeroext 0, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %vega12_init_smc_table.exit, label %if.then17.i170

if.then17.i170:                                   ; preds = %if.end.i
  %call18.i168 = call i32 @___ratelimit(ptr noundef nonnull @vega12_init_smc_table._rs, ptr noundef nonnull @__func__.vega12_init_smc_table) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i168)
  %tobool19.not.i169 = icmp eq i32 %call18.i168, 0
  br i1 %tobool19.not.i169, label %if.then17.i170.if.then12_crit_edge, label %do.end.i

if.then17.i170.if.then12_crit_edge:               ; preds = %if.then17.i170
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12

do.end.i:                                         ; preds = %if.then17.i170
  call void @__sanitizer_cov_trace_pc() #17
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.106) #18
  br label %if.then12

vega12_init_smc_table.exit:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %boot_up_values.i) #15
  br label %do.end24

if.then12:                                        ; preds = %do.end.i, %if.then17.i170.if.then12_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %boot_up_values.i) #15
  %call13 = call i32 @___ratelimit(ptr noundef nonnull @vega12_enable_dpm_tasks._rs.70, ptr noundef nonnull @__func__.vega12_enable_dpm_tasks) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.do.end24_crit_edge, label %do.end18

if.then12.do.end24_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end24

do.end18:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.73) #18
  br label %do.end24

do.end24:                                         ; preds = %do.end18, %if.then12.do.end24_crit_edge, %vega12_init_smc_table.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result.i) #15
  %51 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %result.i, align 4, !annotation !620
  %call.i171 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 77, ptr noundef nonnull %result.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171)
  %cmp.i = icmp eq i32 %call.i171, 0
  br i1 %cmp.i, label %do.body8.i, label %if.then.i173

if.then.i173:                                     ; preds = %do.end24
  %call1.i = call i32 @___ratelimit(ptr noundef nonnull @vega12_run_acg_btc._rs, ptr noundef nonnull @__func__.vega12_run_acg_btc) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i172 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i172, label %if.then.i173.if.then28_crit_edge, label %if.then.i173.cleanup.sink.split.i175_crit_edge

if.then.i173.cleanup.sink.split.i175_crit_edge:   ; preds = %if.then.i173
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i175

if.then.i173.if.then28_crit_edge:                 ; preds = %if.then.i173
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then28

do.body8.i:                                       ; preds = %do.end24
  %52 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %result.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp9.i = icmp eq i32 %53, 1
  br i1 %cmp9.i, label %vega12_run_acg_btc.exit, label %if.then10.i

if.then10.i:                                      ; preds = %do.body8.i
  %call11.i = call i32 @___ratelimit(ptr noundef nonnull @vega12_run_acg_btc._rs.108, ptr noundef nonnull @__func__.vega12_run_acg_btc) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.then10.i.if.then28_crit_edge, label %if.then10.i.cleanup.sink.split.i175_crit_edge

if.then10.i.cleanup.sink.split.i175_crit_edge:    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i175

if.then10.i.if.then28_crit_edge:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then28

cleanup.sink.split.i175:                          ; preds = %if.then10.i.cleanup.sink.split.i175_crit_edge, %if.then.i173.cleanup.sink.split.i175_crit_edge
  %.str.77.sink.i = phi ptr [ @.str.107, %if.then.i173.cleanup.sink.split.i175_crit_edge ], [ @.str.77, %if.then10.i.cleanup.sink.split.i175_crit_edge ]
  %call18.i174 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.77.sink.i) #18
  br label %if.then28

vega12_run_acg_btc.exit:                          ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result.i) #15
  br label %do.end40

if.then28:                                        ; preds = %cleanup.sink.split.i175, %if.then10.i.if.then28_crit_edge, %if.then.i173.if.then28_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result.i) #15
  %call29 = call i32 @___ratelimit(ptr noundef nonnull @vega12_enable_dpm_tasks._rs.74, ptr noundef nonnull @__func__.vega12_enable_dpm_tasks) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then28.do.end40_crit_edge, label %do.end34

if.then28.do.end40_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end40

do.end34:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.77) #18
  br label %do.end40

do.end40:                                         ; preds = %do.end34, %if.then28.do.end40_crit_edge, %vega12_run_acg_btc.exit
  %54 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %backend.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %features_enabled.i) #15
  %56 = ptrtoint ptr %features_enabled.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 -1, ptr %features_enabled.i, align 8, !annotation !620
  %call.i178 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 6, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178)
  %cmp.i179 = icmp eq i32 %call.i178, 0
  br i1 %cmp.i179, label %do.end7.i, label %if.then.i182

if.then.i182:                                     ; preds = %do.end40
  %call1.i180 = call i32 @___ratelimit(ptr noundef nonnull @vega12_enable_all_smu_features._rs, ptr noundef nonnull @__func__.vega12_enable_all_smu_features) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i180)
  %tobool.not.i181 = icmp eq i32 %call1.i180, 0
  br i1 %tobool.not.i181, label %if.then.i182.if.then44_crit_edge, label %do.end.i183

if.then.i182.if.then44_crit_edge:                 ; preds = %if.then.i182
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then44

do.end.i183:                                      ; preds = %if.then.i182
  call void @__sanitizer_cov_trace_pc() #17
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.111) #18
  br label %if.then44

do.end7.i:                                        ; preds = %do.end40
  %call8.i = call i32 @vega12_get_enabled_smc_features(ptr noundef %hwmgr, ptr noundef nonnull %features_enabled.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i184 = icmp eq i32 %call8.i, 0
  br i1 %cmp9.i184, label %do.end7.i.for.body.i188_crit_edge, label %do.end7.i.if.end23.i_crit_edge

do.end7.i.if.end23.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23.i

do.end7.i.for.body.i188_crit_edge:                ; preds = %do.end7.i
  br label %for.body.i188

for.body.i188:                                    ; preds = %for.body.i188.for.body.i188_crit_edge, %do.end7.i.for.body.i188_crit_edge
  %i.037.i = phi i32 [ %inc.i186, %for.body.i188.for.body.i188_crit_edge ], [ 0, %do.end7.i.for.body.i188_crit_edge ]
  %57 = ptrtoint ptr %features_enabled.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %features_enabled.i, align 8
  %arrayidx.i = getelementptr %struct.vega12_hwmgr, ptr %55, i32 0, i32 53, i32 %i.037.i
  %smu_feature_bitmap.i185 = getelementptr %struct.vega12_hwmgr, ptr %55, i32 0, i32 53, i32 %i.037.i, i32 4
  %59 = ptrtoint ptr %smu_feature_bitmap.i185 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %smu_feature_bitmap.i185, align 8
  %and.i = and i64 %60, %58
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool12.i = icmp ne i64 %and.i, 0
  %frombool.i = zext i1 %tobool12.i to i8
  %enabled17.i = getelementptr %struct.vega12_hwmgr, ptr %55, i32 0, i32 53, i32 %i.037.i, i32 1
  %61 = ptrtoint ptr %enabled17.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %frombool.i, ptr %enabled17.i, align 1
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %frombool.i, ptr %arrayidx.i, align 8
  %inc.i186 = add nuw nsw i32 %i.037.i, 1
  %exitcond.not.i187 = icmp eq i32 %inc.i186, 29
  br i1 %exitcond.not.i187, label %for.body.i188.if.end23.i_crit_edge, label %for.body.i188.for.body.i188_crit_edge

for.body.i188.for.body.i188_crit_edge:            ; preds = %for.body.i188
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i188

for.body.i188.if.end23.i_crit_edge:               ; preds = %for.body.i188
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23.i

if.end23.i:                                       ; preds = %for.body.i188.if.end23.i_crit_edge, %do.end7.i.if.end23.i_crit_edge
  %63 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %backend.i, align 4
  %uvd_power_gated.i.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %64, i32 0, i32 44
  %65 = ptrtoint ptr %uvd_power_gated.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %uvd_power_gated.i.i, align 4
  %vce_power_gated.i.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %64, i32 0, i32 45
  %66 = ptrtoint ptr %vce_power_gated.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %vce_power_gated.i.i, align 1
  %enabled.i.i = getelementptr %struct.vega12_hwmgr, ptr %64, i32 0, i32 53, i32 4, i32 1
  %67 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %enabled.i.i, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i.i = icmp eq i8 %68, 0
  br i1 %tobool.not.i.i, label %if.end23.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end23.i.if.end.i.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #17
  %69 = ptrtoint ptr %uvd_power_gated.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %uvd_power_gated.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end23.i.if.end.i.i_crit_edge
  %enabled4.i.i = getelementptr %struct.vega12_hwmgr, ptr %64, i32 0, i32 53, i32 5, i32 1
  %70 = ptrtoint ptr %enabled4.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %enabled4.i.i, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool5.not.i.i = icmp eq i8 %71, 0
  br i1 %tobool5.not.i.i, label %if.end.i.i.do.end56_crit_edge, label %if.then6.i.i

if.end.i.i.do.end56_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end56

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %72 = ptrtoint ptr %vce_power_gated.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %vce_power_gated.i.i, align 1
  br label %do.end56

if.then44:                                        ; preds = %do.end.i183, %if.then.i182.if.then44_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %features_enabled.i) #15
  %call45 = call i32 @___ratelimit(ptr noundef nonnull @vega12_enable_dpm_tasks._rs.78, ptr noundef nonnull @__func__.vega12_enable_dpm_tasks) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then44.cleanup_crit_edge, label %do.end50

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end50:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #17
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.81) #18
  br label %cleanup

do.end56:                                         ; preds = %if.then6.i.i, %if.end.i.i.do.end56_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %features_enabled.i) #15
  %73 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hwmgr, align 4
  %75 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %backend.i, align 4
  %pcie_gen_mask.i = getelementptr inbounds %struct.amdgpu_device, ptr %74, i32 0, i32 98, i32 18
  %77 = ptrtoint ptr %pcie_gen_mask.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pcie_gen_mask.i, align 8
  %and.i191 = and i32 %78, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i191)
  %tobool.not.i192 = icmp eq i32 %and.i191, 0
  br i1 %tobool.not.i192, label %if.else.i, label %do.end56.if.end22.i_crit_edge

do.end56.if.end22.i_crit_edge:                    ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22.i

if.else.i:                                        ; preds = %do.end56
  %and5.i = and i32 %78, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.else8.i, label %if.else.i.if.end22.i_crit_edge

if.else.i.if.end22.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22.i

if.else8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %and11.i = lshr i32 %78, 17
  %and11.lobit.i = and i32 %and11.i, 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else8.i, %if.else.i.if.end22.i_crit_edge, %do.end56.if.end22.i_crit_edge
  %pcie_gen.0.i = phi i32 [ 3, %do.end56.if.end22.i_crit_edge ], [ 2, %if.else.i.if.end22.i_crit_edge ], [ %and11.lobit.i, %if.else8.i ]
  %pcie_mlw_mask.i = getelementptr inbounds %struct.amdgpu_device, ptr %74, i32 0, i32 98, i32 19
  %79 = ptrtoint ptr %pcie_mlw_mask.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pcie_mlw_mask.i, align 4
  %and24.i = and i32 %80, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.else27.i, label %if.end22.i.if.end62.i_crit_edge

if.end22.i.if.end62.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62.i

if.else27.i:                                      ; preds = %if.end22.i
  %and30.i = and i32 %80, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.else33.i, label %if.else27.i.if.end62.i_crit_edge

if.else27.i.if.end62.i_crit_edge:                 ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62.i

if.else33.i:                                      ; preds = %if.else27.i
  %and36.i = and i32 %80, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.else39.i, label %if.else33.i.if.end62.i_crit_edge

if.else33.i.if.end62.i_crit_edge:                 ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62.i

if.else39.i:                                      ; preds = %if.else33.i
  %and42.i = and i32 %80, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %if.else45.i, label %if.else39.i.if.end62.i_crit_edge

if.else39.i.if.end62.i_crit_edge:                 ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62.i

if.else45.i:                                      ; preds = %if.else39.i
  %and48.i = and i32 %80, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %if.else51.i, label %if.else45.i.if.end62.i_crit_edge

if.else45.i.if.end62.i_crit_edge:                 ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62.i

if.else51.i:                                      ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #17
  %and54.i = lshr i32 %80, 16
  %and54.lobit.i = and i32 %and54.i, 1
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.else51.i, %if.else45.i.if.end62.i_crit_edge, %if.else39.i.if.end62.i_crit_edge, %if.else33.i.if.end62.i_crit_edge, %if.else27.i.if.end62.i_crit_edge, %if.end22.i.if.end62.i_crit_edge
  %pcie_width.0.i = phi i32 [ 6, %if.end22.i.if.end62.i_crit_edge ], [ 5, %if.else27.i.if.end62.i_crit_edge ], [ 4, %if.else33.i.if.end62.i_crit_edge ], [ 3, %if.else39.i.if.end62.i_crit_edge ], [ 2, %if.else45.i.if.end62.i_crit_edge ], [ %and54.lobit.i, %if.else51.i ]
  %arrayidx.i193 = getelementptr %struct.vega12_hwmgr, ptr %76, i32 0, i32 54, i32 13, i32 66, i32 0
  %81 = ptrtoint ptr %arrayidx.i193 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx.i193, align 1
  %conv.i = zext i8 %82 to i32
  %83 = call i32 @llvm.umin.i32(i32 %pcie_gen.0.i, i32 %conv.i) #15
  %arrayidx68.i = getelementptr %struct.vega12_hwmgr, ptr %76, i32 0, i32 54, i32 13, i32 67, i32 0
  %84 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx68.i, align 1
  %conv69.i = zext i8 %85 to i32
  %86 = call i32 @llvm.umin.i32(i32 %pcie_width.0.i, i32 %conv69.i) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %pcie_gen.0.i, i32 %conv.i)
  %cmp82.not.i = icmp uge i32 %pcie_gen.0.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %pcie_width.0.i, i32 %conv69.i)
  %cmp87.not.i = icmp uge i32 %pcie_width.0.i, %conv69.i
  %or.cond.i = select i1 %cmp82.not.i, i1 %cmp87.not.i, i1 false
  br i1 %or.cond.i, label %if.end62.i.if.end103.i_crit_edge, label %if.then89.i

if.end62.i.if.end103.i_crit_edge:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end103.i

if.then89.i:                                      ; preds = %if.end62.i
  %shl90.i = shl nuw nsw i32 %83, 8
  %or91.i = or i32 %shl90.i, %86
  %call.i194 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 52, i32 noundef %or91.i, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %tobool92.not.i = icmp eq i32 %call.i194, 0
  br i1 %tobool92.not.i, label %if.then89.i.if.end103.i_crit_edge, label %if.then89.i.if.then93.i_crit_edge

if.then89.i.if.then93.i_crit_edge:                ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then93.i

if.then89.i.if.end103.i_crit_edge:                ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end103.i

if.then93.i:                                      ; preds = %if.then89.1.i.if.then93.i_crit_edge, %if.then89.i.if.then93.i_crit_edge
  %call.lcssa.i = phi i32 [ %call.i194, %if.then89.i.if.then93.i_crit_edge ], [ %call.1.i, %if.then89.1.i.if.then93.i_crit_edge ]
  %call94.i = call i32 @___ratelimit(ptr noundef nonnull @vega12_override_pcie_parameters._rs, ptr noundef nonnull @__func__.vega12_override_pcie_parameters) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i)
  %tobool95.not.i = icmp eq i32 %call94.i, 0
  br i1 %tobool95.not.i, label %if.then93.i.if.then60_crit_edge, label %if.then93.i.if.then60.sink.split_crit_edge

if.then93.i.if.then60.sink.split_crit_edge:       ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then60.sink.split

if.then93.i.if.then60_crit_edge:                  ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then60

if.end103.i:                                      ; preds = %if.then89.i.if.end103.i_crit_edge, %if.end62.i.if.end103.i_crit_edge
  %conv104.i = trunc i32 %83 to i8
  %87 = ptrtoint ptr %arrayidx.i193 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv104.i, ptr %arrayidx.i193, align 1
  %conv107.i = trunc i32 %86 to i8
  %88 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv107.i, ptr %arrayidx68.i, align 1
  %arrayidx.1.i = getelementptr %struct.vega12_hwmgr, ptr %76, i32 0, i32 54, i32 13, i32 66, i32 1
  %89 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %90 to i32
  %91 = call i32 @llvm.umin.i32(i32 %pcie_gen.0.i, i32 %conv.1.i) #15
  %arrayidx68.1.i = getelementptr %struct.vega12_hwmgr, ptr %76, i32 0, i32 54, i32 13, i32 67, i32 1
  %92 = ptrtoint ptr %arrayidx68.1.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx68.1.i, align 1
  %conv69.1.i = zext i8 %93 to i32
  %94 = call i32 @llvm.umin.i32(i32 %pcie_width.0.i, i32 %conv69.1.i) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %pcie_gen.0.i, i32 %conv.1.i)
  %cmp82.not.1.i = icmp uge i32 %pcie_gen.0.i, %conv.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %pcie_width.0.i, i32 %conv69.1.i)
  %cmp87.not.1.i = icmp uge i32 %pcie_width.0.i, %conv69.1.i
  %or.cond.1.i = select i1 %cmp82.not.1.i, i1 %cmp87.not.1.i, i1 false
  br i1 %or.cond.1.i, label %if.end103.i.if.end103.1.i_crit_edge, label %if.then89.1.i

if.end103.i.if.end103.1.i_crit_edge:              ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end103.1.i

if.then89.1.i:                                    ; preds = %if.end103.i
  %shl90.1.i = shl nuw nsw i32 %91, 8
  %or.1.i = or i32 %shl90.1.i, %94
  %or91.1.i = or i32 %or.1.i, 65536
  %call.1.i = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 52, i32 noundef %or91.1.i, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool92.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool92.not.1.i, label %if.then89.1.i.if.end103.1.i_crit_edge, label %if.then89.1.i.if.then93.i_crit_edge

if.then89.1.i.if.then93.i_crit_edge:              ; preds = %if.then89.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then93.i

if.then89.1.i.if.end103.1.i_crit_edge:            ; preds = %if.then89.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end103.1.i

if.end103.1.i:                                    ; preds = %if.then89.1.i.if.end103.1.i_crit_edge, %if.end103.i.if.end103.1.i_crit_edge
  %conv104.1.i = trunc i32 %91 to i8
  %95 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv104.1.i, ptr %arrayidx.1.i, align 1
  %conv107.1.i = trunc i32 %94 to i8
  %96 = ptrtoint ptr %arrayidx68.1.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv107.1.i, ptr %arrayidx68.1.i, align 1
  %pcie_dpm_key_disabled.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %76, i32 0, i32 2, i32 15
  %97 = ptrtoint ptr %pcie_dpm_key_disabled.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %pcie_dpm_key_disabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool110.not.i = icmp eq i8 %98, 0
  br i1 %tobool110.not.i, label %if.end103.1.i.do.end72_crit_edge, label %for.cond112.preheader.i

if.end103.1.i.do.end72_crit_edge:                 ; preds = %if.end103.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end72

for.cond112.preheader.i:                          ; preds = %if.end103.1.i
  %shl117.i = shl nuw nsw i32 %pcie_gen.0.i, 8
  %conv136.i = trunc i32 %pcie_gen.0.i to i8
  %conv139.i = trunc i32 %pcie_width.0.i to i8
  %or119.i = or i32 %pcie_width.0.i, %shl117.i
  %call120.i = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 52, i32 noundef %or119.i, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120.i)
  %tobool122.not.i = icmp eq i32 %call120.i, 0
  br i1 %tobool122.not.i, label %do.end135.i, label %for.cond112.preheader.i.if.then123.i_crit_edge

for.cond112.preheader.i.if.then123.i_crit_edge:   ; preds = %for.cond112.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then123.i

if.then123.i:                                     ; preds = %do.end135.i.if.then123.i_crit_edge, %for.cond112.preheader.i.if.then123.i_crit_edge
  %call120.lcssa.i = phi i32 [ %call120.i, %for.cond112.preheader.i.if.then123.i_crit_edge ], [ %call120.1.i, %do.end135.i.if.then123.i_crit_edge ]
  %call124.i = call i32 @___ratelimit(ptr noundef nonnull @vega12_override_pcie_parameters._rs.113, ptr noundef nonnull @__func__.vega12_override_pcie_parameters) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124.i)
  %tobool125.not.i = icmp eq i32 %call124.i, 0
  br i1 %tobool125.not.i, label %if.then123.i.if.then60_crit_edge, label %if.then123.i.if.then60.sink.split_crit_edge

if.then123.i.if.then60.sink.split_crit_edge:      ; preds = %if.then123.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then60.sink.split

if.then123.i.if.then60_crit_edge:                 ; preds = %if.then123.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then60

do.end135.i:                                      ; preds = %for.cond112.preheader.i
  %99 = ptrtoint ptr %arrayidx.i193 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv136.i, ptr %arrayidx.i193, align 1
  %100 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv139.i, ptr %arrayidx68.i, align 1
  %or119.1.i = or i32 %or119.i, 65536
  %call120.1.i = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 52, i32 noundef %or119.1.i, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120.1.i)
  %tobool122.not.1.i = icmp eq i32 %call120.1.i, 0
  br i1 %tobool122.not.1.i, label %do.end135.1.i, label %do.end135.i.if.then123.i_crit_edge

do.end135.i.if.then123.i_crit_edge:               ; preds = %do.end135.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then123.i

do.end135.1.i:                                    ; preds = %do.end135.i
  %101 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv136.i, ptr %arrayidx.1.i, align 1
  %102 = ptrtoint ptr %arrayidx68.1.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv139.i, ptr %arrayidx68.1.i, align 1
  %smu_feature_bitmap.i196 = getelementptr %struct.vega12_hwmgr, ptr %76, i32 0, i32 53, i32 8, i32 4
  %103 = ptrtoint ptr %smu_feature_bitmap.i196 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %smu_feature_bitmap.i196, align 8
  %call146.i = call i32 @vega12_enable_smc_features(ptr noundef %hwmgr, i1 noundef zeroext false, i64 noundef %104) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i)
  %tobool148.not.i = icmp eq i32 %call146.i, 0
  br i1 %tobool148.not.i, label %do.end161.i, label %if.then149.i

if.then149.i:                                     ; preds = %do.end135.1.i
  %call150.i = call i32 @___ratelimit(ptr noundef nonnull @vega12_override_pcie_parameters._rs.116, ptr noundef nonnull @__func__.vega12_override_pcie_parameters) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150.i)
  %tobool151.not.i = icmp eq i32 %call150.i, 0
  br i1 %tobool151.not.i, label %if.then149.i.if.then60_crit_edge, label %if.then149.i.if.then60.sink.split_crit_edge

if.then149.i.if.then60.sink.split_crit_edge:      ; preds = %if.then149.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then60.sink.split

if.then149.i.if.then60_crit_edge:                 ; preds = %if.then149.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then60

do.end161.i:                                      ; preds = %do.end135.1.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx145.i = getelementptr %struct.vega12_hwmgr, ptr %76, i32 0, i32 53, i32 8
  %enabled.i = getelementptr %struct.vega12_hwmgr, ptr %76, i32 0, i32 53, i32 8, i32 1
  %105 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %enabled.i, align 1
  %106 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %arrayidx145.i, align 8
  br label %do.end72

if.then60.sink.split:                             ; preds = %if.then149.i.if.then60.sink.split_crit_edge, %if.then123.i.if.then60.sink.split_crit_edge, %if.then93.i.if.then60.sink.split_crit_edge
  %.str.112.sink = phi ptr [ @.str.112, %if.then93.i.if.then60.sink.split_crit_edge ], [ @.str.112, %if.then123.i.if.then60.sink.split_crit_edge ], [ @.str.119, %if.then149.i.if.then60.sink.split_crit_edge ]
  %retval.0.i197.ph.ph = phi i32 [ %call.lcssa.i, %if.then93.i.if.then60.sink.split_crit_edge ], [ %call120.lcssa.i, %if.then123.i.if.then60.sink.split_crit_edge ], [ %call146.i, %if.then149.i.if.then60.sink.split_crit_edge ]
  %call98.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.112.sink) #18
  br label %if.then60

if.then60:                                        ; preds = %if.then60.sink.split, %if.then149.i.if.then60_crit_edge, %if.then123.i.if.then60_crit_edge, %if.then93.i.if.then60_crit_edge
  %retval.0.i197.ph = phi i32 [ %call146.i, %if.then149.i.if.then60_crit_edge ], [ %call120.lcssa.i, %if.then123.i.if.then60_crit_edge ], [ %call.lcssa.i, %if.then93.i.if.then60_crit_edge ], [ %retval.0.i197.ph.ph, %if.then60.sink.split ]
  %call61 = call i32 @___ratelimit(ptr noundef nonnull @vega12_enable_dpm_tasks._rs.82, ptr noundef nonnull @__func__.vega12_enable_dpm_tasks) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then60.cleanup_crit_edge, label %do.end66

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end66:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #17
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.85) #18
  br label %cleanup

do.end72:                                         ; preds = %do.end161.i, %if.end103.1.i.do.end72_crit_edge
  %arrayidx.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %107 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx.i.i, align 4
  %and1.i.i = and i32 %108, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.i.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %cmp.i.not.i, label %do.end72.do.end88_crit_edge, label %vega12_power_control_set_level.exit

do.end72.do.end88_crit_edge:                      ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end88

vega12_power_control_set_level.exit:              ; preds = %do.end72
  %TDPAdjustmentPolarity.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 18
  %109 = ptrtoint ptr %TDPAdjustmentPolarity.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %TDPAdjustmentPolarity.i, align 4, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i198 = icmp eq i8 %110, 0
  %TDPAdjustment4.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 17
  %111 = ptrtoint ptr %TDPAdjustment4.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %TDPAdjustment4.i, align 4
  %mul.i = sub i32 0, %112
  %cond.i = select i1 %tobool.not.i198, i32 %mul.i, i32 %112
  %call.i.i = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 53, i32 noundef %cond.i, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool75.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool75.not, label %vega12_power_control_set_level.exit.do.end88_crit_edge, label %if.then76

vega12_power_control_set_level.exit.do.end88_crit_edge: ; preds = %vega12_power_control_set_level.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end88

if.then76:                                        ; preds = %vega12_power_control_set_level.exit
  %call77 = call i32 @___ratelimit(ptr noundef nonnull @vega12_enable_dpm_tasks._rs.86, ptr noundef nonnull @__func__.vega12_enable_dpm_tasks) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.then76.do.end88_crit_edge, label %do.end82

if.then76.do.end88_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end88

do.end82:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #17
  %call84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.89) #18
  br label %do.end88

do.end88:                                         ; preds = %do.end82, %if.then76.do.end88_crit_edge, %vega12_power_control_set_level.exit.do.end88_crit_edge, %do.end72.do.end88_crit_edge
  %113 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %backend.i, align 4
  br label %do.body.i206

for.cond.i:                                       ; preds = %do.body22.i.i
  %inc.i202 = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i203 = icmp eq i32 %inc.i202, 10
  br i1 %exitcond.not.i203, label %do.end104, label %for.cond.i.do.body.i206_crit_edge

for.cond.i.do.body.i206_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i206

do.body.i206:                                     ; preds = %for.cond.i.do.body.i206_crit_edge, %do.end88
  %i.016.i = phi i32 [ 0, %do.end88 ], [ %inc.i202, %for.cond.i.do.body.i206_crit_edge ]
  %arrayidx.i204 = getelementptr %struct.vega12_hwmgr, ptr %114, i32 0, i32 55, i32 %i.016.i
  %shl.i.i = shl nuw nsw i32 %i.016.i, 16
  %call.i.i205 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 43, i32 noundef %shl.i.i, ptr noundef %arrayidx.i204) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i205)
  %cmp.i.i = icmp eq i32 %call.i.i205, 0
  br i1 %cmp.i.i, label %do.body7.i.i, label %if.then.i.i208

if.then.i.i208:                                   ; preds = %do.body.i206
  %call1.i.i = call i32 @___ratelimit(ptr noundef nonnull @vega12_get_all_clock_ranges_helper._rs, ptr noundef nonnull @__func__.vega12_get_all_clock_ranges_helper) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i207 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i207, label %if.then.i.i208.if.then.i210_crit_edge, label %if.then.i.i208.return.sink.split.i.i_crit_edge

if.then.i.i208.return.sink.split.i.i_crit_edge:   ; preds = %if.then.i.i208
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split.i.i

if.then.i.i208.if.then.i210_crit_edge:            ; preds = %if.then.i.i208
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i210

do.body7.i.i:                                     ; preds = %do.body.i206
  %ACMin.i.i = getelementptr %struct.vega12_hwmgr, ptr %114, i32 0, i32 55, i32 %i.016.i, i32 1
  %call9.i.i = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 42, i32 noundef %shl.i.i, ptr noundef %ACMin.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %cmp10.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %cmp10.i.i, label %do.body22.i.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %do.body7.i.i
  %call12.i.i = call i32 @___ratelimit(ptr noundef nonnull @vega12_get_all_clock_ranges_helper._rs.122, ptr noundef nonnull @__func__.vega12_get_all_clock_ranges_helper) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.then11.i.i.if.then.i210_crit_edge, label %if.then11.i.i.return.sink.split.i.i_crit_edge

if.then11.i.i.return.sink.split.i.i_crit_edge:    ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split.i.i

if.then11.i.i.if.then.i210_crit_edge:             ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i210

do.body22.i.i:                                    ; preds = %do.body7.i.i
  %DCMax.i.i = getelementptr %struct.vega12_hwmgr, ptr %114, i32 0, i32 55, i32 %i.016.i, i32 2
  %call24.i.i = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 84, i32 noundef %shl.i.i, ptr noundef %DCMax.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %cmp25.i.i = icmp eq i32 %call24.i.i, 0
  br i1 %cmp25.i.i, label %for.cond.i, label %if.then26.i.i

if.then26.i.i:                                    ; preds = %do.body22.i.i
  %call27.i.i = call i32 @___ratelimit(ptr noundef nonnull @vega12_get_all_clock_ranges_helper._rs.126, ptr noundef nonnull @__func__.vega12_get_all_clock_ranges_helper) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %tobool28.not.i.i = icmp eq i32 %call27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.then26.i.i.if.then.i210_crit_edge, label %if.then26.i.i.return.sink.split.i.i_crit_edge

if.then26.i.i.return.sink.split.i.i_crit_edge:    ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split.i.i

if.then26.i.i.if.then.i210_crit_edge:             ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i210

return.sink.split.i.i:                            ; preds = %if.then26.i.i.return.sink.split.i.i_crit_edge, %if.then11.i.i.return.sink.split.i.i_crit_edge, %if.then.i.i208.return.sink.split.i.i_crit_edge
  %.str.129.sink.i.i = phi ptr [ @.str.121, %if.then.i.i208.return.sink.split.i.i_crit_edge ], [ @.str.125, %if.then11.i.i.return.sink.split.i.i_crit_edge ], [ @.str.129, %if.then26.i.i.return.sink.split.i.i_crit_edge ]
  %call33.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.129.sink.i.i) #18
  br label %if.then.i210

if.then.i210:                                     ; preds = %return.sink.split.i.i, %if.then26.i.i.if.then.i210_crit_edge, %if.then11.i.i.if.then.i210_crit_edge, %if.then.i.i208.if.then.i210_crit_edge
  %call1.i209 = call i32 @___ratelimit(ptr noundef nonnull @vega12_get_all_clock_ranges._rs, ptr noundef nonnull @__func__.vega12_get_all_clock_ranges) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i209)
  %tobool2.not.i = icmp eq i32 %call1.i209, 0
  br i1 %tobool2.not.i, label %if.then.i210.if.then92_crit_edge, label %do.end.i211

if.then.i210.if.then92_crit_edge:                 ; preds = %if.then.i210
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then92

do.end.i211:                                      ; preds = %if.then.i210
  call void @__sanitizer_cov_trace_pc() #17
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.120) #18
  br label %if.then92

if.then92:                                        ; preds = %do.end.i211, %if.then.i210.if.then92_crit_edge
  %call93 = call i32 @___ratelimit(ptr noundef nonnull @vega12_enable_dpm_tasks._rs.90, ptr noundef nonnull @__func__.vega12_enable_dpm_tasks) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.then92.cleanup_crit_edge, label %do.end98

if.then92.cleanup_crit_edge:                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end98:                                         ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #17
  %call100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.93) #18
  br label %cleanup

do.end104:                                        ; preds = %for.cond.i
  %call121 = call fastcc i32 @vega12_setup_default_dpm_tables(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool123.not = icmp eq i32 %call121, 0
  br i1 %tobool123.not, label %do.end104.cleanup_crit_edge, label %if.then124

do.end104.cleanup_crit_edge:                      ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then124:                                       ; preds = %do.end104
  %call125 = call i32 @___ratelimit(ptr noundef nonnull @vega12_enable_dpm_tasks._rs.97, ptr noundef nonnull @__func__.vega12_enable_dpm_tasks) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.then124.cleanup_crit_edge, label %do.end130

if.then124.cleanup_crit_edge:                     ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end130:                                        ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #17
  %call132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.100) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end130, %if.then124.cleanup_crit_edge, %do.end104.cleanup_crit_edge, %do.end98, %if.then92.cleanup_crit_edge, %do.end66, %if.then60.cleanup_crit_edge, %do.end50, %if.then44.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %if.then.cleanup_crit_edge ], [ -1, %do.end50 ], [ -1, %if.then44.cleanup_crit_edge ], [ %retval.0.i197.ph, %do.end66 ], [ %retval.0.i197.ph, %if.then60.cleanup_crit_edge ], [ -22, %do.end98 ], [ -22, %if.then92.cleanup_crit_edge ], [ %call121, %do.end130 ], [ %call121, %if.then124.cleanup_crit_edge ], [ 0, %do.end104.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega12_disable_dpm_tasks(ptr noundef %hwmgr) #0 align 64 {
entry:
  %features_enabled.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %features_enabled.i) #15
  %2 = ptrtoint ptr %features_enabled.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %features_enabled.i, align 8, !annotation !620
  %call.i = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 7, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %do.end7.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call1.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_disable_all_smu_features._rs, ptr noundef nonnull @__func__.vega12_disable_all_smu_features) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.then_crit_edge, label %do.end.i

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.175) #18
  br label %if.then

do.end7.i:                                        ; preds = %entry
  %call8.i = call i32 @vega12_get_enabled_smc_features(ptr noundef %hwmgr, ptr noundef nonnull %features_enabled.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp eq i32 %call8.i, 0
  br i1 %cmp9.i, label %do.end7.i.for.body.i_crit_edge, label %do.end7.i.vega12_disable_all_smu_features.exit.thread_crit_edge

do.end7.i.vega12_disable_all_smu_features.exit.thread_crit_edge: ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vega12_disable_all_smu_features.exit.thread

do.end7.i.for.body.i_crit_edge:                   ; preds = %do.end7.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end7.i.for.body.i_crit_edge
  %i.036.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end7.i.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %features_enabled.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %features_enabled.i, align 8
  %arrayidx.i = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 %i.036.i
  %smu_feature_bitmap.i = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 %i.036.i, i32 4
  %5 = ptrtoint ptr %smu_feature_bitmap.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %smu_feature_bitmap.i, align 8
  %and.i = and i64 %6, %4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool12.i = icmp ne i64 %and.i, 0
  %frombool.i = zext i1 %tobool12.i to i8
  %enabled17.i = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 %i.036.i, i32 1
  %7 = ptrtoint ptr %enabled17.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool.i, ptr %enabled17.i, align 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool.i, ptr %arrayidx.i, align 8
  %inc.i = add nuw nsw i32 %i.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 29
  br i1 %exitcond.not.i, label %for.body.i.vega12_disable_all_smu_features.exit.thread_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.vega12_disable_all_smu_features.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vega12_disable_all_smu_features.exit.thread

vega12_disable_all_smu_features.exit.thread:      ; preds = %for.body.i.vega12_disable_all_smu_features.exit.thread_crit_edge, %do.end7.i.vega12_disable_all_smu_features.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %features_enabled.i) #15
  br label %do.end7

if.then:                                          ; preds = %do.end.i, %if.then.i.if.then_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %features_enabled.i) #15
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_disable_dpm_tasks._rs, ptr noundef nonnull @__func__.vega12_disable_dpm_tasks) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.do.end7_crit_edge, label %do.end

if.then.do.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.174) #18
  br label %do.end7

do.end7:                                          ; preds = %do.end, %if.then.do.end7_crit_edge, %vega12_disable_all_smu_features.exit.thread
  %result.0 = phi i32 [ -1, %do.end ], [ -1, %if.then.do.end7_crit_edge ], [ 0, %vega12_disable_all_smu_features.exit.thread ]
  ret i32 %result.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vega12_patch_boot_state(ptr nocapture noundef readnone %hwmgr, ptr nocapture noundef readnone %hw_ps) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vega12_power_gate_vce(ptr noundef %hwmgr, i1 noundef zeroext %bgate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %vce_power_gated = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %vce_power_gated to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vce_power_gated, align 1, !range !619
  %4 = zext i1 %bgate to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %4)
  %cmp = icmp eq i8 %3, %4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %vce_power_gated to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %vce_power_gated, align 1
  %lnot = xor i1 %bgate, true
  %frombool.i = zext i1 %lnot to i8
  %6 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %backend, align 4
  %arrayidx.i = getelementptr %struct.vega12_hwmgr, ptr %7, i32 0, i32 53, i32 5
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 8, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %do.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body.i:                                        ; preds = %if.end
  %smu_feature_bitmap.i = getelementptr %struct.vega12_hwmgr, ptr %7, i32 0, i32 53, i32 5, i32 4
  %10 = ptrtoint ptr %smu_feature_bitmap.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %smu_feature_bitmap.i, align 8
  %call.i = tail call i32 @vega12_enable_smc_features(ptr noundef %hwmgr, i1 noundef zeroext %lnot, i64 noundef %11) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %do.end13.i, label %if.then5.i

if.then5.i:                                       ; preds = %do.body.i
  %call6.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_enable_disable_vce_dpm._rs, ptr noundef nonnull @__func__.vega12_enable_disable_vce_dpm) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then5.i.cleanup_crit_edge, label %do.end.i

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end.i:                                         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #17
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #18
  br label %cleanup

do.end13.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %enabled.i = getelementptr %struct.vega12_hwmgr, ptr %7, i32 0, i32 53, i32 5, i32 1
  %12 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool.i, ptr %enabled.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end13.i, %do.end.i, %if.then5.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vega12_power_gate_uvd(ptr noundef %hwmgr, i1 noundef zeroext %bgate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %uvd_power_gated = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %uvd_power_gated to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %uvd_power_gated, align 4, !range !619
  %4 = zext i1 %bgate to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %4)
  %cmp = icmp eq i8 %3, %4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %uvd_power_gated to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %uvd_power_gated, align 4
  %lnot = xor i1 %bgate, true
  %frombool.i = zext i1 %lnot to i8
  %6 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %backend, align 4
  %arrayidx.i = getelementptr %struct.vega12_hwmgr, ptr %7, i32 0, i32 53, i32 4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 8, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %do.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body.i:                                        ; preds = %if.end
  %smu_feature_bitmap.i = getelementptr %struct.vega12_hwmgr, ptr %7, i32 0, i32 53, i32 4, i32 4
  %10 = ptrtoint ptr %smu_feature_bitmap.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %smu_feature_bitmap.i, align 8
  %call.i = tail call i32 @vega12_enable_smc_features(ptr noundef %hwmgr, i1 noundef zeroext %lnot, i64 noundef %11) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %do.end13.i, label %if.then5.i

if.then5.i:                                       ; preds = %do.body.i
  %call6.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_enable_disable_uvd_dpm._rs, ptr noundef nonnull @__func__.vega12_enable_disable_uvd_dpm) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then5.i.cleanup_crit_edge, label %do.end.i

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end.i:                                         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #17
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.176) #18
  br label %cleanup

do.end13.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %enabled.i = getelementptr %struct.vega12_hwmgr, ptr %7, i32 0, i32 53, i32 4, i32 1
  %12 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool.i, ptr %enabled.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end13.i, %do.end.i, %if.then5.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vega12_dpm_get_mclk(ptr nocapture noundef readonly %hwmgr, i1 noundef zeroext %low) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %enabled = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 2, i32 1
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %ACMin.i = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 55, i32 5, i32 1
  %arrayidx.i35 = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 55, i32 5
  %mem_clk.0.in = select i1 %low, ptr %ACMin.i, ptr %arrayidx.i35
  %4 = ptrtoint ptr %mem_clk.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %mem_clk.0 = load i32, ptr %mem_clk.0.in, align 4
  %mul = mul i32 %mem_clk.0, 100
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vega12_dpm_get_sclk(ptr nocapture noundef readonly %hwmgr, i1 noundef zeroext %low) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %enabled = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 1, i32 1
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %ACMin.i = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 55, i32 0, i32 1
  %arrayidx.i35 = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 55, i32 0
  %gfx_clk.0.in = select i1 %low, ptr %ACMin.i, ptr %arrayidx.i35
  %4 = ptrtoint ptr %gfx_clk.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %gfx_clk.0 = load i32, ptr %gfx_clk.0.in, align 4
  %mul = mul i32 %gfx_clk.0, 100
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega12_notify_smc_display_config_after_ps_adjustment(ptr noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %display_config = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 45
  %2 = ptrtoint ptr %display_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %display_config, align 4
  %num_display = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %num_display to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_display, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp ugt i32 %5, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %multi_monitor_in_sync = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %multi_monitor_in_sync to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %multi_monitor_in_sync, align 4, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %land.lhs.true2, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true2:                                   ; preds = %land.lhs.true
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %3, align 4, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true2.if.else_crit_edge

land.lhs.true2.if.else_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then:                                          ; preds = %land.lhs.true2
  %enabled.i = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 2, i32 1
  %10 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enabled.i, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.if.end.sink.split_crit_edge

if.then.if.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.sink.split

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.else:                                          ; preds = %land.lhs.true2.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %enabled.i58 = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 2, i32 1
  %12 = ptrtoint ptr %enabled.i58 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enabled.i58, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i59 = icmp eq i8 %13, 0
  br i1 %tobool.not.i59, label %if.else.if.end_crit_edge, label %if.else.if.end.sink.split_crit_edge

if.else.if.end.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.sink.split

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.sink.split:                                ; preds = %if.else.if.end.sink.split_crit_edge, %if.then.if.end.sink.split_crit_edge
  %.sink = phi i32 [ 0, %if.then.if.end.sink.split_crit_edge ], [ 1, %if.else.if.end.sink.split_crit_edge ]
  %call.i60 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 57, i32 noundef %.sink, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  %14 = ptrtoint ptr %display_config to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %display_config, align 4
  %min_dcef_deep_sleep_set_clk = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %15, i32 0, i32 21
  %16 = ptrtoint ptr %min_dcef_deep_sleep_set_clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %min_dcef_deep_sleep_set_clk, align 4
  %arrayidx = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 9
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 8, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool9.not = icmp eq i8 %19, 0
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.then10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10:                                        ; preds = %if.end
  %20 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %backend, align 4
  %enabled.i64 = getelementptr %struct.vega12_hwmgr, ptr %21, i32 0, i32 53, i32 9, i32 1
  %22 = ptrtoint ptr %enabled.i64 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %enabled.i64, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i65 = icmp eq i8 %23, 0
  br i1 %tobool.not.i65, label %if.then10.if.then14_crit_edge, label %vega12_display_clock_voltage_request.exit

if.then10.if.then14_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then14

vega12_display_clock_voltage_request.exit:        ; preds = %if.then10
  %min_dcef_set_clk = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %15, i32 0, i32 20
  %24 = ptrtoint ptr %min_dcef_set_clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %min_dcef_set_clk, align 4
  %div.i = udiv i32 %25, 10000
  %or.i = or i32 %div.i, 393216
  %call6.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 40, i32 noundef %or.i, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool13.not = icmp eq i32 %call6.i, 0
  br i1 %tobool13.not, label %vega12_display_clock_voltage_request.exit.if.then14_crit_edge, label %do.end38

vega12_display_clock_voltage_request.exit.if.then14_crit_edge: ; preds = %vega12_display_clock_voltage_request.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then14

if.then14:                                        ; preds = %vega12_display_clock_voltage_request.exit.if.then14_crit_edge, %if.then10.if.then14_crit_edge
  %arrayidx16 = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 18
  %26 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx16, align 8, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool18.not = icmp eq i8 %27, 0
  br i1 %tobool18.not, label %if.then14.cleanup_crit_edge, label %do.body

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %if.then14
  %div21 = udiv i32 %17, 100
  %call22 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 54, i32 noundef %div21, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %do.body.cleanup_crit_edge, label %if.then24

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then24:                                        ; preds = %do.body
  %call25 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_notify_smc_display_config_after_ps_adjustment._rs, ptr noundef nonnull @__func__.vega12_notify_smc_display_config_after_ps_adjustment) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then24.cleanup_crit_edge, label %do.end

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.187) #18
  br label %cleanup

do.end38:                                         ; preds = %vega12_display_clock_voltage_request.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %do.end, %if.then24.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %if.then24.cleanup_crit_edge ], [ 0, %do.end38 ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %if.then14.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega12_pre_display_configuration_changed_task(ptr noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %call = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 71, i32 noundef 0, ptr noundef null) #15
  %2 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backend, align 4
  %enabled.i = getelementptr %struct.vega12_hwmgr, ptr %3, i32 0, i32 53, i32 2, i32 1
  %4 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled.i, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.vega12_set_uclk_to_highest_dpm_level.exit_crit_edge, label %do.body.i

entry.vega12_set_uclk_to_highest_dpm_level.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %vega12_set_uclk_to_highest_dpm_level.exit

do.body.i:                                        ; preds = %entry
  %mem_table = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %mem_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mem_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %if.then1.i, label %do.body9.i

if.then1.i:                                       ; preds = %do.body.i
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_set_uclk_to_highest_dpm_level._rs, ptr noundef nonnull @__func__.vega12_set_uclk_to_highest_dpm_level) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then1.i.vega12_set_uclk_to_highest_dpm_level.exit_crit_edge, label %if.then1.i.cleanup.sink.split.i_crit_edge

if.then1.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i

if.then1.i.vega12_set_uclk_to_highest_dpm_level.exit_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vega12_set_uclk_to_highest_dpm_level.exit

do.body9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp11.i = icmp ult i32 %7, 5
  br i1 %cmp11.i, label %do.end24.i, label %if.then12.i

if.then12.i:                                      ; preds = %do.body9.i
  %call13.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_set_uclk_to_highest_dpm_level._rs.192, ptr noundef nonnull @__func__.vega12_set_uclk_to_highest_dpm_level) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.then12.i.vega12_set_uclk_to_highest_dpm_level.exit_crit_edge, label %if.then12.i.cleanup.sink.split.i_crit_edge

if.then12.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i

if.then12.i.vega12_set_uclk_to_highest_dpm_level.exit_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vega12_set_uclk_to_highest_dpm_level.exit

do.end24.i:                                       ; preds = %do.body9.i
  %sub.i = add nsw i32 %7, -1
  %value.i = getelementptr %struct.vega12_dpm_table, ptr %1, i32 0, i32 2, i32 2, i32 %sub.i, i32 1
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value.i, align 4
  %hard_min_level.i = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 2, i32 1, i32 2
  %10 = ptrtoint ptr %hard_min_level.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %hard_min_level.i, align 4
  %or.i = or i32 %9, 327680
  %call30.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 40, i32 noundef %or.i, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %do.end24.i.vega12_set_uclk_to_highest_dpm_level.exit_crit_edge, label %if.then32.i

do.end24.i.vega12_set_uclk_to_highest_dpm_level.exit_crit_edge: ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vega12_set_uclk_to_highest_dpm_level.exit

if.then32.i:                                      ; preds = %do.end24.i
  %call33.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_set_uclk_to_highest_dpm_level._rs.196, ptr noundef nonnull @__func__.vega12_set_uclk_to_highest_dpm_level) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.then32.i.vega12_set_uclk_to_highest_dpm_level.exit_crit_edge, label %if.then32.i.cleanup.sink.split.i_crit_edge

if.then32.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i

if.then32.i.vega12_set_uclk_to_highest_dpm_level.exit_crit_edge: ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vega12_set_uclk_to_highest_dpm_level.exit

cleanup.sink.split.i:                             ; preds = %if.then32.i.cleanup.sink.split.i_crit_edge, %if.then12.i.cleanup.sink.split.i_crit_edge, %if.then1.i.cleanup.sink.split.i_crit_edge
  %.str.199.sink.i = phi ptr [ @.str.191, %if.then1.i.cleanup.sink.split.i_crit_edge ], [ @.str.195, %if.then12.i.cleanup.sink.split.i_crit_edge ], [ @.str.199, %if.then32.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ -22, %if.then1.i.cleanup.sink.split.i_crit_edge ], [ -22, %if.then12.i.cleanup.sink.split.i_crit_edge ], [ %call30.i, %if.then32.i.cleanup.sink.split.i_crit_edge ]
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.199.sink.i) #18
  br label %vega12_set_uclk_to_highest_dpm_level.exit

vega12_set_uclk_to_highest_dpm_level.exit:        ; preds = %cleanup.sink.split.i, %if.then32.i.vega12_set_uclk_to_highest_dpm_level.exit_crit_edge, %do.end24.i.vega12_set_uclk_to_highest_dpm_level.exit_crit_edge, %if.then12.i.vega12_set_uclk_to_highest_dpm_level.exit_crit_edge, %if.then1.i.vega12_set_uclk_to_highest_dpm_level.exit_crit_edge, %entry.vega12_set_uclk_to_highest_dpm_level.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.then1.i.vega12_set_uclk_to_highest_dpm_level.exit_crit_edge ], [ -22, %if.then12.i.vega12_set_uclk_to_highest_dpm_level.exit_crit_edge ], [ %call30.i, %if.then32.i.vega12_set_uclk_to_highest_dpm_level.exit_crit_edge ], [ 0, %do.end24.i.vega12_set_uclk_to_highest_dpm_level.exit_crit_edge ], [ 0, %entry.vega12_set_uclk_to_highest_dpm_level.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega12_display_configuration_changed_task(ptr noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %water_marks_bitmap = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %water_marks_bitmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %water_marks_bitmap, align 4
  %4 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %if.then, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then:                                          ; preds = %entry
  %water_marks_table = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 54, i32 14
  %call = tail call i32 @smum_smc_table_manager(ptr noundef %hwmgr, ptr noundef %water_marks_table, i16 noundef zeroext 1, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then5, label %do.end13

if.then5:                                         ; preds = %if.then
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_display_configuration_changed_task._rs, ptr noundef nonnull @__func__.vega12_display_configuration_changed_task) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.cleanup_crit_edge, label %do.end

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.200) #18
  br label %cleanup

do.end13:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %water_marks_bitmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %water_marks_bitmap, align 4
  %or = or i32 %7, 2
  store i32 %or, ptr %water_marks_bitmap, align 4
  br label %if.end15

if.end15:                                         ; preds = %do.end13, %entry.if.end15_crit_edge
  %result.0 = phi i32 [ %call, %do.end13 ], [ 0, %entry.if.end15_crit_edge ]
  %8 = ptrtoint ptr %water_marks_bitmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %water_marks_bitmap, align 4
  %and17 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.cleanup_crit_edge, label %land.lhs.true19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true19:                                  ; preds = %if.end15
  %arrayidx = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 8, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool20.not = icmp eq i8 %11, 0
  br i1 %tobool20.not, label %land.lhs.true19.cleanup_crit_edge, label %land.lhs.true21

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true21:                                  ; preds = %land.lhs.true19
  %arrayidx23 = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 3
  %12 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx23, align 8, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool25.not = icmp eq i8 %13, 0
  br i1 %tobool25.not, label %land.lhs.true21.cleanup_crit_edge, label %if.then26

land.lhs.true21.cleanup_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then26:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #17
  %display_config = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 45
  %14 = ptrtoint ptr %display_config to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %display_config, align 4
  %num_display = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %num_display to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_display, align 4
  %call27 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 71, i32 noundef %17, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %land.lhs.true21.cleanup_crit_edge, %land.lhs.true19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %do.end, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then5.cleanup_crit_edge ], [ %result.0, %if.then26 ], [ %result.0, %land.lhs.true21.cleanup_crit_edge ], [ %result.0, %land.lhs.true19.cleanup_crit_edge ], [ %result.0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vega12_thermal_stop_thermal_controller(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vega12_fan_ctrl_get_fan_speed_info(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vega12_set_fan_control_mode(ptr noundef %hwmgr, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.312)
  switch i32 %mode, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb2
    i32 1, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 1
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %2, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 @vega12_fan_ctrl_stop_smc_fan_control(ptr noundef %hwmgr) #15
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %arrayidx.i13 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i13, align 4
  %and1.i14 = and i32 %4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i14)
  %cmp.i15.not = icmp eq i32 %and1.i14, 0
  br i1 %cmp.i15.not, label %sw.bb2.sw.epilog_crit_edge, label %if.then7

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then7:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #17
  %call8 = tail call i32 @vega12_fan_ctrl_start_smc_fan_control(ptr noundef %hwmgr) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then7, %sw.bb2.sw.epilog_crit_edge, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vega12_get_fan_control_mode(ptr nocapture noundef readonly %hwmgr) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %enabled = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 24, i32 1
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  %. = select i1 %cmp, i32 1, i32 2
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vega12_fan_ctrl_get_fan_speed_rpm(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vega12_fan_ctrl_reset_fan_speed_to_default(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu9_register_irq_handlers(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @vega12_check_smc_update_required_for_display_configuration(ptr nocapture noundef readonly %hwmgr) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %num_existing_displays = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 23, i32 1
  %2 = ptrtoint ptr %num_existing_displays to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_existing_displays, align 4
  %display_config = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 45
  %4 = ptrtoint ptr %display_config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %display_config, align 4
  %num_display = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %num_display to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_display, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp.not = icmp ne i32 %3, %7
  %gfx_clk_deep_sleep_support = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 2, i32 21
  %8 = ptrtoint ptr %gfx_clk_deep_sleep_support to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %gfx_clk_deep_sleep_support, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then1

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %display_timing = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 23
  %10 = ptrtoint ptr %display_timing to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %display_timing, align 4
  %min_core_set_clock_in_sr = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %5, i32 0, i32 10
  %12 = ptrtoint ptr %min_core_set_clock_in_sr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %min_core_set_clock_in_sr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp4.not = icmp ne i32 %11, %13
  %spec.select = select i1 %cmp4.not, i1 true, i1 %cmp.not
  br label %if.end7

if.end7:                                          ; preds = %if.then1, %entry.if.end7_crit_edge
  %is_update_required.1.off0 = phi i1 [ %cmp.not, %entry.if.end7_crit_edge ], [ %spec.select, %if.then1 ]
  ret i1 %is_update_required.1.off0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vega12_get_dal_power_level(ptr nocapture noundef readnone %hwmgr, ptr nocapture noundef readnone %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vega12_get_performance_level(ptr nocapture noundef readnone %hwmgr, ptr nocapture noundef readnone %state, i32 noundef %designation, i32 noundef %index, ptr nocapture noundef readnone %level) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega12_get_clock_by_type_with_latency(ptr nocapture noundef readonly %hwmgr, i32 noundef %type, ptr nocapture noundef writeonly %clocks) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.313)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
    i32 4, label %sw.bb3
    i32 5, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %1 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %backend.i, align 4
  %enabled.i = getelementptr %struct.vega12_hwmgr, ptr %2, i32 0, i32 53, i32 1, i32 1
  %3 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled.i, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %gfx_table.i = getelementptr inbounds %struct.vega12_dpm_table, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %gfx_table.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gfx_table.i, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp322.not.i = icmp eq i32 %7, 0
  br i1 %cmp322.not.i, label %if.end.i.cleanup.sink.split_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %value.i = getelementptr %struct.vega12_dpm_table, ptr %2, i32 0, i32 1, i32 2, i32 %i.023.i, i32 1
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value.i, align 4
  %mul.i = mul i32 %9, 1000
  %arrayidx6.i = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.023.i
  %10 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul.i, ptr %arrayidx6.i, align 4
  %latency_in_us.i = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.023.i, i32 1
  %11 = ptrtoint ptr %latency_in_us.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %latency_in_us.i, align 4
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.body.i.cleanup.sink.split_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.cleanup.sink.split_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

sw.bb1:                                           ; preds = %entry
  %backend.i13 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %12 = ptrtoint ptr %backend.i13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %backend.i13, align 4
  %enabled.i14 = getelementptr %struct.vega12_hwmgr, ptr %13, i32 0, i32 53, i32 2, i32 1
  %14 = ptrtoint ptr %enabled.i14 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enabled.i14, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i15 = icmp eq i8 %15, 0
  br i1 %tobool.not.i15, label %sw.bb1.cleanup_crit_edge, label %if.end.i16

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i16:                                       ; preds = %sw.bb1
  %mem_table.i = getelementptr inbounds %struct.vega12_dpm_table, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %mem_table.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mem_table.i, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp345.not.i = icmp eq i32 %18, 0
  br i1 %cmp345.not.i, label %if.end.i16.for.end.i24_crit_edge, label %if.end.i16.for.body.i23_crit_edge

if.end.i16.for.body.i23_crit_edge:                ; preds = %if.end.i16
  br label %for.body.i23

if.end.i16.for.end.i24_crit_edge:                 ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i24

for.body.i23:                                     ; preds = %for.body.i23.for.body.i23_crit_edge, %if.end.i16.for.body.i23_crit_edge
  %i.046.i = phi i32 [ %inc.i21, %for.body.i23.for.body.i23_crit_edge ], [ 0, %if.end.i16.for.body.i23_crit_edge ]
  %value.i17 = getelementptr %struct.vega12_dpm_table, ptr %13, i32 0, i32 2, i32 2, i32 %i.046.i, i32 1
  %19 = ptrtoint ptr %value.i17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value.i17, align 4
  %mul.i18 = mul i32 %20, 1000
  %arrayidx6.i19 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.046.i
  %21 = ptrtoint ptr %arrayidx6.i19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul.i18, ptr %arrayidx6.i19, align 4
  %22 = load i32, ptr %value.i17, align 4
  %mul10.i = mul i32 %22, 100
  %arrayidx11.i = getelementptr %struct.vega12_hwmgr, ptr %13, i32 0, i32 4, i32 1, i32 %i.046.i
  %23 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul10.i, ptr %arrayidx11.i, align 4
  %latency.i = getelementptr %struct.vega12_hwmgr, ptr %13, i32 0, i32 4, i32 1, i32 %i.046.i, i32 1
  %24 = ptrtoint ptr %latency.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 25, ptr %latency.i, align 4
  %latency_in_us.i20 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.046.i, i32 1
  %25 = ptrtoint ptr %latency_in_us.i20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 25, ptr %latency_in_us.i20, align 4
  %inc.i21 = add nuw nsw i32 %i.046.i, 1
  %exitcond.not.i22 = icmp eq i32 %inc.i21, %18
  br i1 %exitcond.not.i22, label %for.body.i23.for.end.i24_crit_edge, label %for.body.i23.for.body.i23_crit_edge

for.body.i23.for.body.i23_crit_edge:              ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i23

for.body.i23.for.end.i24_crit_edge:               ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i24

for.end.i24:                                      ; preds = %for.body.i23.for.end.i24_crit_edge, %if.end.i16.for.end.i24_crit_edge
  %mclk_latency_table20.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %13, i32 0, i32 4
  %26 = ptrtoint ptr %mclk_latency_table20.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %18, ptr %mclk_latency_table20.i, align 8
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry
  %backend.i26 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %27 = ptrtoint ptr %backend.i26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %backend.i26, align 4
  %enabled.i27 = getelementptr %struct.vega12_hwmgr, ptr %28, i32 0, i32 53, i32 9, i32 1
  %29 = ptrtoint ptr %enabled.i27 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %enabled.i27, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i28 = icmp eq i8 %30, 0
  br i1 %tobool.not.i28, label %sw.bb3.cleanup_crit_edge, label %if.end.i30

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i30:                                       ; preds = %sw.bb3
  %dcef_table.i = getelementptr inbounds %struct.vega12_dpm_table, ptr %28, i32 0, i32 6
  %31 = ptrtoint ptr %dcef_table.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dcef_table.i, align 4
  %33 = tail call i32 @llvm.umin.i32(i32 %32, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp322.not.i29 = icmp eq i32 %33, 0
  br i1 %cmp322.not.i29, label %if.end.i30.cleanup.sink.split_crit_edge, label %if.end.i30.for.body.i38_crit_edge

if.end.i30.for.body.i38_crit_edge:                ; preds = %if.end.i30
  br label %for.body.i38

if.end.i30.cleanup.sink.split_crit_edge:          ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

for.body.i38:                                     ; preds = %for.body.i38.for.body.i38_crit_edge, %if.end.i30.for.body.i38_crit_edge
  %i.023.i31 = phi i32 [ %inc.i36, %for.body.i38.for.body.i38_crit_edge ], [ 0, %if.end.i30.for.body.i38_crit_edge ]
  %value.i32 = getelementptr %struct.vega12_dpm_table, ptr %28, i32 0, i32 6, i32 2, i32 %i.023.i31, i32 1
  %34 = ptrtoint ptr %value.i32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %value.i32, align 4
  %mul.i33 = mul i32 %35, 1000
  %arrayidx6.i34 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.023.i31
  %36 = ptrtoint ptr %arrayidx6.i34 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul.i33, ptr %arrayidx6.i34, align 4
  %latency_in_us.i35 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.023.i31, i32 1
  %37 = ptrtoint ptr %latency_in_us.i35 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %latency_in_us.i35, align 4
  %inc.i36 = add nuw nsw i32 %i.023.i31, 1
  %exitcond.not.i37 = icmp eq i32 %inc.i36, %33
  br i1 %exitcond.not.i37, label %for.body.i38.cleanup.sink.split_crit_edge, label %for.body.i38.for.body.i38_crit_edge

for.body.i38.for.body.i38_crit_edge:              ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i38

for.body.i38.cleanup.sink.split_crit_edge:        ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

sw.bb5:                                           ; preds = %entry
  %backend.i41 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %38 = ptrtoint ptr %backend.i41 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %backend.i41, align 4
  %enabled.i42 = getelementptr %struct.vega12_hwmgr, ptr %39, i32 0, i32 53, i32 3, i32 1
  %40 = ptrtoint ptr %enabled.i42 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %enabled.i42, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i43 = icmp eq i8 %41, 0
  br i1 %tobool.not.i43, label %sw.bb5.cleanup_crit_edge, label %if.end.i45

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i45:                                       ; preds = %sw.bb5
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %39, align 4
  %44 = tail call i32 @llvm.umin.i32(i32 %43, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp322.not.i44 = icmp eq i32 %44, 0
  br i1 %cmp322.not.i44, label %if.end.i45.cleanup.sink.split_crit_edge, label %if.end.i45.for.body.i53_crit_edge

if.end.i45.for.body.i53_crit_edge:                ; preds = %if.end.i45
  br label %for.body.i53

if.end.i45.cleanup.sink.split_crit_edge:          ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

for.body.i53:                                     ; preds = %for.body.i53.for.body.i53_crit_edge, %if.end.i45.for.body.i53_crit_edge
  %i.023.i46 = phi i32 [ %inc.i51, %for.body.i53.for.body.i53_crit_edge ], [ 0, %if.end.i45.for.body.i53_crit_edge ]
  %value.i47 = getelementptr %struct.vega12_single_dpm_table, ptr %39, i32 0, i32 2, i32 %i.023.i46, i32 1
  %45 = ptrtoint ptr %value.i47 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %value.i47, align 4
  %mul.i48 = mul i32 %46, 1000
  %arrayidx6.i49 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.023.i46
  %47 = ptrtoint ptr %arrayidx6.i49 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul.i48, ptr %arrayidx6.i49, align 4
  %latency_in_us.i50 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.023.i46, i32 1
  %48 = ptrtoint ptr %latency_in_us.i50 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %latency_in_us.i50, align 4
  %inc.i51 = add nuw nsw i32 %i.023.i46, 1
  %exitcond.not.i52 = icmp eq i32 %inc.i51, %44
  br i1 %exitcond.not.i52, label %for.body.i53.cleanup.sink.split_crit_edge, label %for.body.i53.for.body.i53_crit_edge

for.body.i53.for.body.i53_crit_edge:              ; preds = %for.body.i53
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i53

for.body.i53.cleanup.sink.split_crit_edge:        ; preds = %for.body.i53
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.body.i53.cleanup.sink.split_crit_edge, %if.end.i45.cleanup.sink.split_crit_edge, %for.body.i38.cleanup.sink.split_crit_edge, %if.end.i30.cleanup.sink.split_crit_edge, %for.end.i24, %for.body.i.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %18, %for.end.i24 ], [ %7, %if.end.i.cleanup.sink.split_crit_edge ], [ %33, %if.end.i30.cleanup.sink.split_crit_edge ], [ %44, %if.end.i45.cleanup.sink.split_crit_edge ], [ %7, %for.body.i.cleanup.sink.split_crit_edge ], [ %33, %for.body.i38.cleanup.sink.split_crit_edge ], [ %44, %for.body.i53.cleanup.sink.split_crit_edge ]
  %49 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %.sink, ptr %clocks, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb5.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -1, %sw.bb.cleanup_crit_edge ], [ -1, %sw.bb1.cleanup_crit_edge ], [ -1, %sw.bb3.cleanup_crit_edge ], [ -1, %sw.bb5.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @vega12_get_clock_by_type_with_voltage(ptr nocapture noundef readnone %hwmgr, i32 noundef %type, ptr nocapture noundef writeonly %clocks) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %clocks, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega12_set_watermarks_for_clocks_ranges(ptr nocapture noundef readonly %hwmgr, ptr noundef %clock_ranges) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %water_marks_table = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 54, i32 14
  %disable_water_mark = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 2, i32 41
  %2 = ptrtoint ptr %disable_water_mark to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disable_water_mark, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 9
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 8, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %arrayidx4 = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 3
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4, align 8, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %land.lhs.true2.if.end_crit_edge, label %if.then

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @smu_set_watermarks_for_clocks_ranges(ptr noundef %water_marks_table, ptr noundef %clock_ranges) #15
  %water_marks_bitmap = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %water_marks_bitmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %water_marks_bitmap, align 4
  %or = and i32 %9, -4
  %and = or i32 %or, 1
  store i32 %and, ptr %water_marks_bitmap, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega12_display_clock_voltage_request(ptr noundef %hwmgr, ptr nocapture noundef readonly %clock_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %clock_freq_in_khz = getelementptr inbounds %struct.pp_display_clock_request, ptr %clock_req, i32 0, i32 1
  %2 = ptrtoint ptr %clock_freq_in_khz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clock_freq_in_khz, align 4
  %div = udiv i32 %3, 1000
  %enabled = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 9, i32 1
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %clock_req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clock_req, align 4
  %switch.tableidx = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 7
  br i1 %8, label %switch.hole_check, label %if.then.sw.epilog_crit_edge

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.hole_check.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201) #18
  br label %if.end7

switch.hole_check:                                ; preds = %if.then
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 105, %switch.maskindex
  %9 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %switch.lobit.not = icmp eq i8 %9, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.vega12_display_clock_voltage_request, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  %or = or i32 %switch.load, %div
  %call6 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 40, i32 noundef %or, ptr noundef null) #15
  br label %if.end7

if.end7:                                          ; preds = %switch.lookup, %sw.epilog, %entry.if.end7_crit_edge
  %result.1 = phi i32 [ -1, %sw.epilog ], [ %call6, %switch.lookup ], [ 0, %entry.if.end7_crit_edge ]
  ret i32 %result.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega12_power_off_asic(ptr noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %call = tail call i32 @vega12_disable_dpm_tasks(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.do.end7_crit_edge, label %if.then

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_power_off_asic._rs, ptr noundef nonnull @__func__.vega12_power_off_asic) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.do.end7_crit_edge, label %do.end

if.then.do.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.203) #18
  br label %do.end7

do.end7:                                          ; preds = %do.end, %if.then.do.end7_crit_edge, %entry.do.end7_crit_edge
  %water_marks_bitmap = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %water_marks_bitmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %water_marks_bitmap, align 4
  %and = and i32 %3, -3
  store i32 %and, ptr %water_marks_bitmap, align 4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega12_force_clock_level(ptr noundef %hwmgr, i32 noundef %type, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.314)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb45
    i32 3, label %sw.bb110
    i32 5, label %sw.bb188
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %tobool.not = icmp eq i32 %mask, 0
  %3 = tail call i32 @llvm.cttz.i32(i32 %mask, i1 true), !range !621
  %spec.select = select i1 %tobool.not, i32 0, i32 %3
  %4 = tail call i32 @llvm.ctlz.i32(i32 %mask, i1 false) #15, !range !621
  %sub3 = sub nsw i32 31, %4
  %cond6 = select i1 %tobool.not, i32 0, i32 %sub3
  %value = getelementptr %struct.vega12_dpm_table, ptr %1, i32 0, i32 1, i32 2, i32 %spec.select, i32 1
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  %dpm_state = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %dpm_state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dpm_state, align 4
  %value14 = getelementptr %struct.vega12_dpm_table, ptr %1, i32 0, i32 1, i32 2, i32 %cond6, i32 1
  %8 = ptrtoint ptr %value14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value14, align 4
  %soft_max_level18 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 1, i32 1, i32 1
  %10 = ptrtoint ptr %soft_max_level18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %soft_max_level18, align 4
  %call19 = tail call fastcc i32 @vega12_upload_dpm_min_level(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.end28, label %if.then

if.then:                                          ; preds = %sw.bb
  %call21 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_force_clock_level._rs, ptr noundef nonnull @__func__.vega12_force_clock_level) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.204) #18
  br label %cleanup

do.end28:                                         ; preds = %sw.bb
  %call29 = tail call fastcc i32 @vega12_upload_dpm_max_level(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool31.not = icmp eq i32 %call29, 0
  br i1 %tobool31.not, label %do.end28.cleanup_crit_edge, label %if.then32

do.end28.cleanup_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then32:                                        ; preds = %do.end28
  %call33 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_force_clock_level._rs.205, ptr noundef nonnull @__func__.vega12_force_clock_level) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then32.cleanup_crit_edge, label %do.end38

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end38:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #17
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9) #18
  br label %cleanup

sw.bb45:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %tobool46.not = icmp eq i32 %mask, 0
  %11 = tail call i32 @llvm.cttz.i32(i32 %mask, i1 true), !range !621
  %spec.select299 = select i1 %tobool46.not, i32 0, i32 %11
  %12 = tail call i32 @llvm.ctlz.i32(i32 %mask, i1 false) #15, !range !621
  %sub57 = sub nsw i32 31, %12
  %cond60 = select i1 %tobool46.not, i32 0, i32 %sub57
  %value64 = getelementptr %struct.vega12_dpm_table, ptr %1, i32 0, i32 2, i32 2, i32 %spec.select299, i32 1
  %13 = ptrtoint ptr %value64 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value64, align 4
  %dpm_state67 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %dpm_state67 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %dpm_state67, align 4
  %value73 = getelementptr %struct.vega12_dpm_table, ptr %1, i32 0, i32 2, i32 2, i32 %cond60, i32 1
  %16 = ptrtoint ptr %value73 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value73, align 4
  %soft_max_level77 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 2, i32 1, i32 1
  %18 = ptrtoint ptr %soft_max_level77 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %soft_max_level77, align 4
  %call78 = tail call fastcc i32 @vega12_upload_dpm_min_level(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool80.not = icmp eq i32 %call78, 0
  br i1 %tobool80.not, label %do.end93, label %if.then81

if.then81:                                        ; preds = %sw.bb45
  %call82 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_force_clock_level._rs.208, ptr noundef nonnull @__func__.vega12_force_clock_level) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.then81.cleanup_crit_edge, label %do.end87

if.then81.cleanup_crit_edge:                      ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end87:                                         ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #17
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.204) #18
  br label %cleanup

do.end93:                                         ; preds = %sw.bb45
  %call94 = tail call fastcc i32 @vega12_upload_dpm_max_level(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool96.not = icmp eq i32 %call94, 0
  br i1 %tobool96.not, label %do.end93.cleanup_crit_edge, label %if.then97

do.end93.cleanup_crit_edge:                       ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then97:                                        ; preds = %do.end93
  %call98 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_force_clock_level._rs.211, ptr noundef nonnull @__func__.vega12_force_clock_level) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.then97.cleanup_crit_edge, label %do.end103

if.then97.cleanup_crit_edge:                      ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end103:                                        ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #17
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9) #18
  br label %cleanup

sw.bb110:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %tobool111.not = icmp eq i32 %mask, 0
  %19 = tail call i32 @llvm.ctlz.i32(i32 %mask, i1 false) #15, !range !621
  %sub122 = sub nsw i32 31, %19
  %cond125 = select i1 %tobool111.not, i32 0, i32 %sub122
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cond125, i32 %21)
  %cmp.not = icmp ult i32 %cond125, %21
  br i1 %cmp.not, label %if.end137, label %do.end130

do.end130:                                        ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #17
  %sub135 = add i32 %21, -1
  %call136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, i32 noundef %cond125, i32 noundef %sub135) #18
  br label %cleanup

if.end137:                                        ; preds = %sw.bb110
  %22 = tail call i32 @llvm.cttz.i32(i32 %mask, i1 true), !range !621
  %spec.select300 = select i1 %tobool111.not, i32 0, i32 %22
  %value142 = getelementptr %struct.vega12_single_dpm_table, ptr %1, i32 0, i32 2, i32 %spec.select300, i32 1
  %23 = ptrtoint ptr %value142 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %value142, align 4
  %dpm_state145 = getelementptr inbounds %struct.vega12_single_dpm_table, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %dpm_state145 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %dpm_state145, align 4
  %value151 = getelementptr %struct.vega12_single_dpm_table, ptr %1, i32 0, i32 2, i32 %cond125, i32 1
  %26 = ptrtoint ptr %value151 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value151, align 4
  %soft_max_level155 = getelementptr inbounds %struct.vega12_single_dpm_table, ptr %1, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %soft_max_level155 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %soft_max_level155, align 4
  %call156 = tail call fastcc i32 @vega12_upload_dpm_min_level(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool158.not = icmp eq i32 %call156, 0
  br i1 %tobool158.not, label %do.end171, label %if.then159

if.then159:                                       ; preds = %if.end137
  %call160 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_force_clock_level._rs.217, ptr noundef nonnull @__func__.vega12_force_clock_level) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.then159.cleanup_crit_edge, label %do.end165

if.then159.cleanup_crit_edge:                     ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end165:                                        ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #17
  %call167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.204) #18
  br label %cleanup

do.end171:                                        ; preds = %if.end137
  %call172 = tail call fastcc i32 @vega12_upload_dpm_max_level(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool174.not = icmp eq i32 %call172, 0
  br i1 %tobool174.not, label %do.end171.cleanup_crit_edge, label %if.then175

do.end171.cleanup_crit_edge:                      ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then175:                                       ; preds = %do.end171
  %call176 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_force_clock_level._rs.220, ptr noundef nonnull @__func__.vega12_force_clock_level) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.then175.cleanup_crit_edge, label %do.end181

if.then175.cleanup_crit_edge:                     ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end181:                                        ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #17
  %call183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9) #18
  br label %cleanup

sw.bb188:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %tobool189.not = icmp eq i32 %mask, 0
  %29 = tail call i32 @llvm.cttz.i32(i32 %mask, i1 true), !range !621
  %spec.select301 = select i1 %tobool189.not, i32 0, i32 %29
  %dcef_table = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %dcef_table to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dcef_table, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select301, i32 %31)
  %cmp199.not = icmp ult i32 %spec.select301, %31
  br i1 %cmp199.not, label %if.end210, label %do.end203

do.end203:                                        ; preds = %sw.bb188
  call void @__sanitizer_cov_trace_pc() #17
  %sub208 = add i32 %31, -1
  %call209 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, i32 noundef %spec.select301, i32 noundef %sub208) #18
  br label %cleanup

if.end210:                                        ; preds = %sw.bb188
  %value215 = getelementptr %struct.vega12_dpm_table, ptr %1, i32 0, i32 6, i32 2, i32 %spec.select301, i32 1
  %32 = ptrtoint ptr %value215 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %value215, align 4
  %hard_min_level219 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 6, i32 1, i32 2
  %34 = ptrtoint ptr %hard_min_level219 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %hard_min_level219, align 4
  %call220 = tail call fastcc i32 @vega12_upload_dpm_min_level(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220)
  %tobool222.not = icmp eq i32 %call220, 0
  br i1 %tobool222.not, label %if.end210.cleanup_crit_edge, label %if.then223

if.end210.cleanup_crit_edge:                      ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then223:                                       ; preds = %if.end210
  %call224 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_force_clock_level._rs.225, ptr noundef nonnull @__func__.vega12_force_clock_level) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %if.then223.cleanup_crit_edge, label %do.end229

if.then223.cleanup_crit_edge:                     ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end229:                                        ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #17
  %call231 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.204) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end229, %if.then223.cleanup_crit_edge, %if.end210.cleanup_crit_edge, %do.end203, %do.end181, %if.then175.cleanup_crit_edge, %do.end171.cleanup_crit_edge, %do.end165, %if.then159.cleanup_crit_edge, %do.end130, %do.end103, %if.then97.cleanup_crit_edge, %do.end93.cleanup_crit_edge, %do.end87, %if.then81.cleanup_crit_edge, %do.end38, %if.then32.cleanup_crit_edge, %do.end28.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end203 ], [ -22, %do.end130 ], [ %call19, %do.end ], [ %call19, %if.then.cleanup_crit_edge ], [ %call29, %do.end38 ], [ %call29, %if.then32.cleanup_crit_edge ], [ %call78, %do.end87 ], [ %call78, %if.then81.cleanup_crit_edge ], [ %call94, %do.end103 ], [ %call94, %if.then97.cleanup_crit_edge ], [ %call156, %do.end165 ], [ %call156, %if.then159.cleanup_crit_edge ], [ %call172, %do.end181 ], [ %call172, %if.then175.cleanup_crit_edge ], [ %call220, %do.end229 ], [ %call220, %if.then223.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end210.cleanup_crit_edge ], [ 0, %do.end171.cleanup_crit_edge ], [ 0, %do.end93.cleanup_crit_edge ], [ 0, %do.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega12_print_clock_levels(ptr noundef %hwmgr, i32 noundef %type, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %mem_clk.i = alloca i32, align 4
  %gfx_clk.i = alloca i32, align 4
  %now = alloca i32, align 4
  %clocks = alloca %struct.pp_clock_levels_with_latency, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %now) #15
  %0 = ptrtoint ptr %now to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %now, align 4, !annotation !620
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %clocks) #15
  %1 = call ptr @memset(ptr %clocks, i32 255, i32 132)
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.315)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body33
    i32 3, label %do.body87
    i32 5, label %do.body140
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gfx_clk.i) #15
  %3 = ptrtoint ptr %gfx_clk.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %gfx_clk.i, align 4
  %4 = ptrtoint ptr %now to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %now, align 4
  %call.i = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 45, i32 noundef 0, ptr noundef nonnull %gfx_clk.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %do.body8, label %if.then.i

if.then.i:                                        ; preds = %do.body
  %call1.i = call i32 @___ratelimit(ptr noundef nonnull @vega12_get_current_gfx_clk_freq._rs, ptr noundef nonnull @__func__.vega12_get_current_gfx_clk_freq) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.then_crit_edge, label %do.end.i

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.260) #18
  br label %if.then

if.then:                                          ; preds = %do.end.i, %if.then.i.if.then_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gfx_clk.i) #15
  %call1 = call i32 @___ratelimit(ptr noundef nonnull @vega12_print_clock_levels._rs, ptr noundef nonnull @__func__.vega12_print_clock_levels) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.228) #18
  br label %cleanup

do.body8:                                         ; preds = %do.body
  %5 = ptrtoint ptr %gfx_clk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gfx_clk.i, align 4
  %mul.i = mul i32 %6, 100
  %7 = ptrtoint ptr %now to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul.i, ptr %now, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gfx_clk.i) #15
  %backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %8 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %backend.i, align 4
  %enabled.i = getelementptr %struct.vega12_hwmgr, ptr %9, i32 0, i32 53, i32 1, i32 1
  %10 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enabled.i, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i232 = icmp eq i8 %11, 0
  br i1 %tobool.not.i232, label %if.then11, label %if.end.i

if.end.i:                                         ; preds = %do.body8
  %gfx_table.i = getelementptr inbounds %struct.vega12_dpm_table, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %gfx_table.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gfx_table.i, align 4
  %14 = call i32 @llvm.umin.i32(i32 %13, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp322.not.i = icmp eq i32 %14, 0
  br i1 %cmp322.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %value.i = getelementptr %struct.vega12_dpm_table, ptr %9, i32 0, i32 1, i32 2, i32 %i.023.i, i32 1
  %15 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value.i, align 4
  %mul.i233 = mul i32 %16, 1000
  %arrayidx6.i = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.023.i
  %17 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul.i233, ptr %arrayidx6.i, align 4
  %latency_in_us.i = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.023.i, i32 1
  %18 = ptrtoint ptr %latency_in_us.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %latency_in_us.i, align 4
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %14
  br i1 %exitcond.not.i, label %vega12_get_sclks.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

vega12_get_sclks.exit:                            ; preds = %for.body.i
  %19 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %14, ptr %clocks, align 4
  br i1 %cmp322.not.i, label %vega12_get_sclks.exit.cleanup_crit_edge, label %vega12_get_sclks.exit.for.body_crit_edge

vega12_get_sclks.exit.for.body_crit_edge:         ; preds = %vega12_get_sclks.exit
  br label %for.body

vega12_get_sclks.exit.cleanup_crit_edge:          ; preds = %vega12_get_sclks.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then11:                                        ; preds = %do.body8
  %call12 = call i32 @___ratelimit(ptr noundef nonnull @vega12_print_clock_levels._rs.229, ptr noundef nonnull @__func__.vega12_print_clock_levels) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.cleanup_crit_edge, label %do.end17

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end17:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.232) #18
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %vega12_get_sclks.exit.for.body_crit_edge
  %i.0316 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %vega12_get_sclks.exit.for.body_crit_edge ]
  %size.0315 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %vega12_get_sclks.exit.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %size.0315
  %arrayidx = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.0316
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %div = udiv i32 %21, 1000
  %22 = ptrtoint ptr %now to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %now, align 4
  %div29 = sdiv i32 %23, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div29)
  %cmp30 = icmp eq i32 %div, %div29
  %cond = select i1 %cmp30, ptr @.str.234, ptr @.str.235
  %call31 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.233, i32 noundef %i.0316, i32 noundef %div, ptr noundef nonnull %cond)
  %add = add i32 %call31, %size.0315
  %inc = add nuw i32 %i.0316, 1
  %24 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %clocks, align 4
  %cmp24 = icmp ult i32 %inc, %25
  br i1 %cmp24, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

do.body33:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mem_clk.i) #15
  %26 = ptrtoint ptr %mem_clk.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %mem_clk.i, align 4
  %27 = ptrtoint ptr %now to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %now, align 4
  %call.i235 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 45, i32 noundef 327680, ptr noundef nonnull %mem_clk.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i235)
  %cmp.i236 = icmp eq i32 %call.i235, 0
  br i1 %cmp.i236, label %do.body49, label %if.then.i239

if.then.i239:                                     ; preds = %do.body33
  %call1.i237 = call i32 @___ratelimit(ptr noundef nonnull @vega12_get_current_mclk_freq._rs, ptr noundef nonnull @__func__.vega12_get_current_mclk_freq) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i237)
  %tobool.not.i238 = icmp eq i32 %call1.i237, 0
  br i1 %tobool.not.i238, label %if.then.i239.if.then36_crit_edge, label %do.end.i241

if.then.i239.if.then36_crit_edge:                 ; preds = %if.then.i239
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then36

do.end.i241:                                      ; preds = %if.then.i239
  call void @__sanitizer_cov_trace_pc() #17
  %call4.i240 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.261) #18
  br label %if.then36

if.then36:                                        ; preds = %do.end.i241, %if.then.i239.if.then36_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem_clk.i) #15
  %call37 = call i32 @___ratelimit(ptr noundef nonnull @vega12_print_clock_levels._rs.236, ptr noundef nonnull @__func__.vega12_print_clock_levels) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then36.cleanup_crit_edge, label %do.end42

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end42:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.239) #18
  br label %cleanup

do.body49:                                        ; preds = %do.body33
  %28 = ptrtoint ptr %mem_clk.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mem_clk.i, align 4
  %mul.i242 = mul i32 %29, 100
  %30 = ptrtoint ptr %now to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul.i242, ptr %now, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem_clk.i) #15
  %backend.i245 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %31 = ptrtoint ptr %backend.i245 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %backend.i245, align 4
  %enabled.i246 = getelementptr %struct.vega12_hwmgr, ptr %32, i32 0, i32 53, i32 2, i32 1
  %33 = ptrtoint ptr %enabled.i246 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %enabled.i246, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i247 = icmp eq i8 %34, 0
  br i1 %tobool.not.i247, label %if.then52, label %if.end.i248

if.end.i248:                                      ; preds = %do.body49
  %mem_table.i = getelementptr inbounds %struct.vega12_dpm_table, ptr %32, i32 0, i32 2
  %35 = ptrtoint ptr %mem_table.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mem_table.i, align 4
  %37 = call i32 @llvm.umin.i32(i32 %36, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp345.not.i = icmp eq i32 %37, 0
  br i1 %cmp345.not.i, label %vega12_get_memclocks.exit.thread, label %if.end.i248.for.body.i255_crit_edge

if.end.i248.for.body.i255_crit_edge:              ; preds = %if.end.i248
  br label %for.body.i255

vega12_get_memclocks.exit.thread:                 ; preds = %if.end.i248
  call void @__sanitizer_cov_trace_pc() #17
  %mclk_latency_table20.i321 = getelementptr inbounds %struct.vega12_hwmgr, ptr %32, i32 0, i32 4
  %38 = ptrtoint ptr %mclk_latency_table20.i321 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %mclk_latency_table20.i321, align 8
  br label %cleanup

for.body.i255:                                    ; preds = %for.body.i255.for.body.i255_crit_edge, %if.end.i248.for.body.i255_crit_edge
  %i.046.i = phi i32 [ %inc.i253, %for.body.i255.for.body.i255_crit_edge ], [ 0, %if.end.i248.for.body.i255_crit_edge ]
  %value.i249 = getelementptr %struct.vega12_dpm_table, ptr %32, i32 0, i32 2, i32 2, i32 %i.046.i, i32 1
  %39 = ptrtoint ptr %value.i249 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %value.i249, align 4
  %mul.i250 = mul i32 %40, 1000
  %arrayidx6.i251 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.046.i
  %41 = ptrtoint ptr %arrayidx6.i251 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %mul.i250, ptr %arrayidx6.i251, align 4
  %42 = load i32, ptr %value.i249, align 4
  %mul10.i = mul i32 %42, 100
  %arrayidx11.i = getelementptr %struct.vega12_hwmgr, ptr %32, i32 0, i32 4, i32 1, i32 %i.046.i
  %43 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %mul10.i, ptr %arrayidx11.i, align 4
  %latency.i = getelementptr %struct.vega12_hwmgr, ptr %32, i32 0, i32 4, i32 1, i32 %i.046.i, i32 1
  %44 = ptrtoint ptr %latency.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 25, ptr %latency.i, align 4
  %latency_in_us.i252 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.046.i, i32 1
  %45 = ptrtoint ptr %latency_in_us.i252 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 25, ptr %latency_in_us.i252, align 4
  %inc.i253 = add nuw nsw i32 %i.046.i, 1
  %exitcond.not.i254 = icmp eq i32 %inc.i253, %37
  br i1 %exitcond.not.i254, label %vega12_get_memclocks.exit, label %for.body.i255.for.body.i255_crit_edge

for.body.i255.for.body.i255_crit_edge:            ; preds = %for.body.i255
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i255

vega12_get_memclocks.exit:                        ; preds = %for.body.i255
  %mclk_latency_table20.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %32, i32 0, i32 4
  %46 = ptrtoint ptr %mclk_latency_table20.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %37, ptr %mclk_latency_table20.i, align 8
  %47 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %37, ptr %clocks, align 4
  br i1 %cmp345.not.i, label %vega12_get_memclocks.exit.cleanup_crit_edge, label %vega12_get_memclocks.exit.for.body68_crit_edge

vega12_get_memclocks.exit.for.body68_crit_edge:   ; preds = %vega12_get_memclocks.exit
  br label %for.body68

vega12_get_memclocks.exit.cleanup_crit_edge:      ; preds = %vega12_get_memclocks.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then52:                                        ; preds = %do.body49
  %call53 = call i32 @___ratelimit(ptr noundef nonnull @vega12_print_clock_levels._rs.240, ptr noundef nonnull @__func__.vega12_print_clock_levels) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then52.cleanup_crit_edge, label %do.end58

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end58:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.243) #18
  br label %cleanup

for.body68:                                       ; preds = %for.body68.for.body68_crit_edge, %vega12_get_memclocks.exit.for.body68_crit_edge
  %i.1312 = phi i32 [ %inc84, %for.body68.for.body68_crit_edge ], [ 0, %vega12_get_memclocks.exit.for.body68_crit_edge ]
  %size.1311 = phi i32 [ %add82, %for.body68.for.body68_crit_edge ], [ 0, %vega12_get_memclocks.exit.for.body68_crit_edge ]
  %add.ptr69 = getelementptr i8, ptr %buf, i32 %size.1311
  %arrayidx71 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.1312
  %48 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx71, align 4
  %div73 = udiv i32 %49, 1000
  %50 = ptrtoint ptr %now to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %now, align 4
  %div78 = sdiv i32 %51, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %div73, i32 %div78)
  %cmp79 = icmp eq i32 %div73, %div78
  %cond80 = select i1 %cmp79, ptr @.str.234, ptr @.str.235
  %call81 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr69, ptr noundef nonnull @.str.233, i32 noundef %i.1312, i32 noundef %div73, ptr noundef nonnull %cond80)
  %add82 = add i32 %call81, %size.1311
  %inc84 = add nuw i32 %i.1312, 1
  %52 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %clocks, align 4
  %cmp67 = icmp ult i32 %inc84, %53
  br i1 %cmp67, label %for.body68.for.body68_crit_edge, label %for.body68.cleanup_crit_edge

for.body68.cleanup_crit_edge:                     ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body68.for.body68_crit_edge:                  ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body68

do.body87:                                        ; preds = %entry
  %call88 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 45, i32 noundef 262144, ptr noundef nonnull %now) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp eq i32 %call88, 0
  br i1 %cmp89, label %do.body103, label %if.then90

if.then90:                                        ; preds = %do.body87
  %call91 = call i32 @___ratelimit(ptr noundef nonnull @vega12_print_clock_levels._rs.244, ptr noundef nonnull @__func__.vega12_print_clock_levels) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then90.cleanup_crit_edge, label %do.end96

if.then90.cleanup_crit_edge:                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end96:                                         ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #17
  %call98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.247) #18
  br label %cleanup

do.body103:                                       ; preds = %do.body87
  %backend.i258 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %54 = ptrtoint ptr %backend.i258 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %backend.i258, align 4
  %enabled.i259 = getelementptr %struct.vega12_hwmgr, ptr %55, i32 0, i32 53, i32 3, i32 1
  %56 = ptrtoint ptr %enabled.i259 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %enabled.i259, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i260 = icmp eq i8 %57, 0
  br i1 %tobool.not.i260, label %if.then106, label %if.end.i262

if.end.i262:                                      ; preds = %do.body103
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %55, align 4
  %60 = call i32 @llvm.umin.i32(i32 %59, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp322.not.i261 = icmp eq i32 %60, 0
  br i1 %cmp322.not.i261, label %vega12_get_socclocks.exit.thread, label %if.end.i262.for.body.i270_crit_edge

if.end.i262.for.body.i270_crit_edge:              ; preds = %if.end.i262
  br label %for.body.i270

vega12_get_socclocks.exit.thread:                 ; preds = %if.end.i262
  call void @__sanitizer_cov_trace_pc() #17
  %61 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %clocks, align 4
  br label %cleanup

for.body.i270:                                    ; preds = %for.body.i270.for.body.i270_crit_edge, %if.end.i262.for.body.i270_crit_edge
  %i.023.i263 = phi i32 [ %inc.i268, %for.body.i270.for.body.i270_crit_edge ], [ 0, %if.end.i262.for.body.i270_crit_edge ]
  %value.i264 = getelementptr %struct.vega12_single_dpm_table, ptr %55, i32 0, i32 2, i32 %i.023.i263, i32 1
  %62 = ptrtoint ptr %value.i264 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %value.i264, align 4
  %mul.i265 = mul i32 %63, 1000
  %arrayidx6.i266 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.023.i263
  %64 = ptrtoint ptr %arrayidx6.i266 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %mul.i265, ptr %arrayidx6.i266, align 4
  %latency_in_us.i267 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.023.i263, i32 1
  %65 = ptrtoint ptr %latency_in_us.i267 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %latency_in_us.i267, align 4
  %inc.i268 = add nuw nsw i32 %i.023.i263, 1
  %exitcond.not.i269 = icmp eq i32 %inc.i268, %60
  br i1 %exitcond.not.i269, label %vega12_get_socclocks.exit, label %for.body.i270.for.body.i270_crit_edge

for.body.i270.for.body.i270_crit_edge:            ; preds = %for.body.i270
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i270

vega12_get_socclocks.exit:                        ; preds = %for.body.i270
  %66 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %60, ptr %clocks, align 4
  br i1 %cmp322.not.i261, label %vega12_get_socclocks.exit.cleanup_crit_edge, label %vega12_get_socclocks.exit.for.body122_crit_edge

vega12_get_socclocks.exit.for.body122_crit_edge:  ; preds = %vega12_get_socclocks.exit
  br label %for.body122

vega12_get_socclocks.exit.cleanup_crit_edge:      ; preds = %vega12_get_socclocks.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then106:                                       ; preds = %do.body103
  %call107 = call i32 @___ratelimit(ptr noundef nonnull @vega12_print_clock_levels._rs.248, ptr noundef nonnull @__func__.vega12_print_clock_levels) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.then106.cleanup_crit_edge, label %do.end112

if.then106.cleanup_crit_edge:                     ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end112:                                        ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #17
  %call114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.251) #18
  br label %cleanup

for.body122:                                      ; preds = %for.body122.for.body122_crit_edge, %vega12_get_socclocks.exit.for.body122_crit_edge
  %i.2308 = phi i32 [ %inc137, %for.body122.for.body122_crit_edge ], [ 0, %vega12_get_socclocks.exit.for.body122_crit_edge ]
  %size.2307 = phi i32 [ %add135, %for.body122.for.body122_crit_edge ], [ 0, %vega12_get_socclocks.exit.for.body122_crit_edge ]
  %add.ptr123 = getelementptr i8, ptr %buf, i32 %size.2307
  %arrayidx125 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.2308
  %67 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx125, align 4
  %div127 = udiv i32 %68, 1000
  %69 = ptrtoint ptr %now to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %now, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div127, i32 %70)
  %cmp132 = icmp eq i32 %div127, %70
  %cond133 = select i1 %cmp132, ptr @.str.234, ptr @.str.235
  %call134 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr123, ptr noundef nonnull @.str.233, i32 noundef %i.2308, i32 noundef %div127, ptr noundef nonnull %cond133)
  %add135 = add i32 %call134, %size.2307
  %inc137 = add nuw i32 %i.2308, 1
  %71 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %clocks, align 4
  %cmp121 = icmp ult i32 %inc137, %72
  br i1 %cmp121, label %for.body122.for.body122_crit_edge, label %for.body122.cleanup_crit_edge

for.body122.cleanup_crit_edge:                    ; preds = %for.body122
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body122.for.body122_crit_edge:                ; preds = %for.body122
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body122

do.body140:                                       ; preds = %entry
  %call141 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 45, i32 noundef 393216, ptr noundef nonnull %now) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %cmp142 = icmp eq i32 %call141, 0
  br i1 %cmp142, label %do.body156, label %if.then143

if.then143:                                       ; preds = %do.body140
  %call144 = call i32 @___ratelimit(ptr noundef nonnull @vega12_print_clock_levels._rs.252, ptr noundef nonnull @__func__.vega12_print_clock_levels) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.then143.cleanup_crit_edge, label %do.end149

if.then143.cleanup_crit_edge:                     ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end149:                                        ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #17
  %call151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.255) #18
  br label %cleanup

do.body156:                                       ; preds = %do.body140
  %backend.i273 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %73 = ptrtoint ptr %backend.i273 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %backend.i273, align 4
  %enabled.i274 = getelementptr %struct.vega12_hwmgr, ptr %74, i32 0, i32 53, i32 9, i32 1
  %75 = ptrtoint ptr %enabled.i274 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %enabled.i274, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i275 = icmp eq i8 %76, 0
  br i1 %tobool.not.i275, label %if.then159, label %if.end.i277

if.end.i277:                                      ; preds = %do.body156
  %dcef_table.i = getelementptr inbounds %struct.vega12_dpm_table, ptr %74, i32 0, i32 6
  %77 = ptrtoint ptr %dcef_table.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dcef_table.i, align 4
  %79 = call i32 @llvm.umin.i32(i32 %78, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp322.not.i276 = icmp eq i32 %79, 0
  br i1 %cmp322.not.i276, label %vega12_get_dcefclocks.exit.thread, label %if.end.i277.for.body.i285_crit_edge

if.end.i277.for.body.i285_crit_edge:              ; preds = %if.end.i277
  br label %for.body.i285

vega12_get_dcefclocks.exit.thread:                ; preds = %if.end.i277
  call void @__sanitizer_cov_trace_pc() #17
  %80 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %clocks, align 4
  br label %cleanup

for.body.i285:                                    ; preds = %for.body.i285.for.body.i285_crit_edge, %if.end.i277.for.body.i285_crit_edge
  %i.023.i278 = phi i32 [ %inc.i283, %for.body.i285.for.body.i285_crit_edge ], [ 0, %if.end.i277.for.body.i285_crit_edge ]
  %value.i279 = getelementptr %struct.vega12_dpm_table, ptr %74, i32 0, i32 6, i32 2, i32 %i.023.i278, i32 1
  %81 = ptrtoint ptr %value.i279 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %value.i279, align 4
  %mul.i280 = mul i32 %82, 1000
  %arrayidx6.i281 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.023.i278
  %83 = ptrtoint ptr %arrayidx6.i281 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %mul.i280, ptr %arrayidx6.i281, align 4
  %latency_in_us.i282 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.023.i278, i32 1
  %84 = ptrtoint ptr %latency_in_us.i282 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %latency_in_us.i282, align 4
  %inc.i283 = add nuw nsw i32 %i.023.i278, 1
  %exitcond.not.i284 = icmp eq i32 %inc.i283, %79
  br i1 %exitcond.not.i284, label %vega12_get_dcefclocks.exit, label %for.body.i285.for.body.i285_crit_edge

for.body.i285.for.body.i285_crit_edge:            ; preds = %for.body.i285
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i285

vega12_get_dcefclocks.exit:                       ; preds = %for.body.i285
  %85 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %79, ptr %clocks, align 4
  br i1 %cmp322.not.i276, label %vega12_get_dcefclocks.exit.cleanup_crit_edge, label %vega12_get_dcefclocks.exit.for.body175_crit_edge

vega12_get_dcefclocks.exit.for.body175_crit_edge: ; preds = %vega12_get_dcefclocks.exit
  br label %for.body175

vega12_get_dcefclocks.exit.cleanup_crit_edge:     ; preds = %vega12_get_dcefclocks.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then159:                                       ; preds = %do.body156
  %call160 = call i32 @___ratelimit(ptr noundef nonnull @vega12_print_clock_levels._rs.256, ptr noundef nonnull @__func__.vega12_print_clock_levels) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.then159.cleanup_crit_edge, label %do.end165

if.then159.cleanup_crit_edge:                     ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end165:                                        ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #17
  %call167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.259) #18
  br label %cleanup

for.body175:                                      ; preds = %for.body175.for.body175_crit_edge, %vega12_get_dcefclocks.exit.for.body175_crit_edge
  %i.3305 = phi i32 [ %inc190, %for.body175.for.body175_crit_edge ], [ 0, %vega12_get_dcefclocks.exit.for.body175_crit_edge ]
  %size.3304 = phi i32 [ %add188, %for.body175.for.body175_crit_edge ], [ 0, %vega12_get_dcefclocks.exit.for.body175_crit_edge ]
  %add.ptr176 = getelementptr i8, ptr %buf, i32 %size.3304
  %arrayidx178 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.3305
  %86 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx178, align 4
  %div180 = udiv i32 %87, 1000
  %88 = ptrtoint ptr %now to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %now, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div180, i32 %89)
  %cmp185 = icmp eq i32 %div180, %89
  %cond186 = select i1 %cmp185, ptr @.str.234, ptr @.str.235
  %call187 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr176, ptr noundef nonnull @.str.233, i32 noundef %i.3305, i32 noundef %div180, ptr noundef nonnull %cond186)
  %add188 = add i32 %call187, %size.3304
  %inc190 = add nuw i32 %i.3305, 1
  %90 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %clocks, align 4
  %cmp174 = icmp ult i32 %inc190, %91
  br i1 %cmp174, label %for.body175.for.body175_crit_edge, label %for.body175.cleanup_crit_edge

for.body175.cleanup_crit_edge:                    ; preds = %for.body175
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body175.for.body175_crit_edge:                ; preds = %for.body175
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body175

cleanup:                                          ; preds = %for.body175.cleanup_crit_edge, %do.end165, %if.then159.cleanup_crit_edge, %vega12_get_dcefclocks.exit.cleanup_crit_edge, %vega12_get_dcefclocks.exit.thread, %do.end149, %if.then143.cleanup_crit_edge, %for.body122.cleanup_crit_edge, %do.end112, %if.then106.cleanup_crit_edge, %vega12_get_socclocks.exit.cleanup_crit_edge, %vega12_get_socclocks.exit.thread, %do.end96, %if.then90.cleanup_crit_edge, %for.body68.cleanup_crit_edge, %do.end58, %if.then52.cleanup_crit_edge, %vega12_get_memclocks.exit.cleanup_crit_edge, %vega12_get_memclocks.exit.thread, %do.end42, %if.then36.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end17, %if.then11.cleanup_crit_edge, %vega12_get_sclks.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %if.then.cleanup_crit_edge ], [ -1, %do.end17 ], [ -1, %if.then11.cleanup_crit_edge ], [ -1, %do.end42 ], [ -1, %if.then36.cleanup_crit_edge ], [ -1, %do.end58 ], [ -1, %if.then52.cleanup_crit_edge ], [ -22, %do.end96 ], [ -22, %if.then90.cleanup_crit_edge ], [ -1, %do.end112 ], [ -1, %if.then106.cleanup_crit_edge ], [ -22, %do.end149 ], [ -22, %if.then143.cleanup_crit_edge ], [ -1, %do.end165 ], [ -1, %if.then159.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %vega12_get_sclks.exit.cleanup_crit_edge ], [ 0, %vega12_get_memclocks.exit.cleanup_crit_edge ], [ 0, %vega12_get_socclocks.exit.cleanup_crit_edge ], [ 0, %vega12_get_dcefclocks.exit.cleanup_crit_edge ], [ 0, %vega12_get_memclocks.exit.thread ], [ 0, %vega12_get_socclocks.exit.thread ], [ 0, %vega12_get_dcefclocks.exit.thread ], [ 0, %if.end.i.cleanup_crit_edge ], [ %add, %for.body.cleanup_crit_edge ], [ %add82, %for.body68.cleanup_crit_edge ], [ %add135, %for.body122.cleanup_crit_edge ], [ %add188, %for.body175.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %clocks) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %now) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega12_gfx_off_control(ptr noundef %hwmgr, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend.i, align 4
  %gfxoff_controlled_by_driver.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 56
  %2 = ptrtoint ptr %gfxoff_controlled_by_driver.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gfxoff_controlled_by_driver.i, align 8, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

return.sink.split:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %. = select i1 %enable, i16 81, i16 82
  %call.i6 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext %., ptr noundef null) #15
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i6, %return.sink.split ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega12_read_sensor(ptr noundef %hwmgr, i32 noundef %idx, ptr noundef %value, ptr nocapture noundef writeonly %size) #0 align 64 {
entry:
  %mem_clk.i = alloca i32, align 4
  %gfx_clk.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %2 = zext i32 %idx to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.316)
  switch i32 %idx, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 9, label %sw.bb1
    i32 7, label %entry.sw.bb6_crit_edge
    i32 8, label %entry.sw.bb6_crit_edge154
    i32 10, label %sw.bb11
    i32 11, label %sw.bb13
    i32 12, label %sw.bb18
    i32 14, label %sw.bb25
    i32 13, label %sw.bb28
    i32 15, label %sw.bb32
    i32 20, label %sw.bb37
  ]

entry.sw.bb6_crit_edge154:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gfx_clk.i) #15
  %3 = ptrtoint ptr %gfx_clk.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %gfx_clk.i, align 4
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %value, align 4
  %call.i = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 45, i32 noundef 0, ptr noundef nonnull %gfx_clk.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  %call1.i = call i32 @___ratelimit(ptr noundef nonnull @vega12_get_current_gfx_clk_freq._rs, ptr noundef nonnull @__func__.vega12_get_current_gfx_clk_freq) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i.vega12_get_current_gfx_clk_freq.exit.thread_crit_edge, label %do.end.i

if.then.i.vega12_get_current_gfx_clk_freq.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vega12_get_current_gfx_clk_freq.exit.thread

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.260) #18
  br label %vega12_get_current_gfx_clk_freq.exit.thread

vega12_get_current_gfx_clk_freq.exit.thread:      ; preds = %do.end.i, %if.then.i.vega12_get_current_gfx_clk_freq.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gfx_clk.i) #15
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %gfx_clk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gfx_clk.i, align 4
  %mul.i = mul i32 %6, 100
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul.i, ptr %value, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gfx_clk.i) #15
  %8 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %size, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mem_clk.i) #15
  %9 = ptrtoint ptr %mem_clk.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %mem_clk.i, align 4
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %value, align 4
  %call.i81 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 45, i32 noundef 327680, ptr noundef nonnull %mem_clk.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %cmp.i82 = icmp eq i32 %call.i81, 0
  br i1 %cmp.i82, label %if.then4, label %if.then.i85

if.then.i85:                                      ; preds = %sw.bb1
  %call1.i83 = call i32 @___ratelimit(ptr noundef nonnull @vega12_get_current_mclk_freq._rs, ptr noundef nonnull @__func__.vega12_get_current_mclk_freq) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i83)
  %tobool.not.i84 = icmp eq i32 %call1.i83, 0
  br i1 %tobool.not.i84, label %if.then.i85.vega12_get_current_mclk_freq.exit.thread_crit_edge, label %do.end.i87

if.then.i85.vega12_get_current_mclk_freq.exit.thread_crit_edge: ; preds = %if.then.i85
  call void @__sanitizer_cov_trace_pc() #17
  br label %vega12_get_current_mclk_freq.exit.thread

do.end.i87:                                       ; preds = %if.then.i85
  call void @__sanitizer_cov_trace_pc() #17
  %call4.i86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.261) #18
  br label %vega12_get_current_mclk_freq.exit.thread

vega12_get_current_mclk_freq.exit.thread:         ; preds = %do.end.i87, %if.then.i85.vega12_get_current_mclk_freq.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem_clk.i) #15
  br label %cleanup

if.then4:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %mem_clk.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mem_clk.i, align 4
  %mul.i88 = mul i32 %12, 100
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul.i88, ptr %value, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem_clk.i) #15
  %14 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %size, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge154
  %metrics_time.i.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 57
  %15 = ptrtoint ptr %metrics_time.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %metrics_time.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool1.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool1.not.i.i, label %sw.bb6.if.then.i.i_crit_edge, label %lor.lhs.false2.i.i

sw.bb6.if.then.i.i_crit_edge:                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

lor.lhs.false2.i.i:                               ; preds = %sw.bb6
  %add.i.i = add i32 %16, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %lor.lhs.false2.i.i.if.then.i.i_crit_edge, label %lor.lhs.false2.i.i.if.end.i_crit_edge

lor.lhs.false2.i.i.if.end.i_crit_edge:            ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

lor.lhs.false2.i.i.if.then.i.i_crit_edge:         ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false2.i.i.if.then.i.i_crit_edge, %sw.bb6.if.then.i.i_crit_edge
  %metrics_table4.i.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 58
  %call5.i.i = tail call i32 @smum_smc_table_manager(ptr noundef %hwmgr, ptr noundef %metrics_table4.i.i, i16 noundef zeroext 6, i1 noundef zeroext true) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end.i.i, label %vega12_get_metrics_table.exit.i

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %19 = ptrtoint ptr %metrics_time.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %metrics_time.i.i, align 4
  br label %if.end.i

vega12_get_metrics_table.exit.i:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call8.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.264) #18
  br label %cleanup

if.end.i:                                         ; preds = %if.end.i.i, %lor.lhs.false2.i.i.if.end.i_crit_edge
  %metrics_table.sroa.4.0.metrics_table13.i.sroa_idx.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 58, i32 4
  %20 = zext i32 %idx to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.317)
  switch i32 %idx, label %do.end.i91 [
    i32 7, label %if.end.i.if.then9_crit_edge
    i32 8, label %sw.bb1.i
  ]

if.end.i.if.then9_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then9

sw.bb1.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %metrics_table.sroa.5.0.metrics_table13.i.sroa_idx.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 58, i32 5
  br label %if.then9

do.end.i91:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.262) #18
  br label %cleanup

if.then9:                                         ; preds = %sw.bb1.i, %if.end.i.if.then9_crit_edge
  %storemerge.in.in.i = phi ptr [ %metrics_table.sroa.5.0.metrics_table13.i.sroa_idx.i, %sw.bb1.i ], [ %metrics_table.sroa.4.0.metrics_table13.i.sroa_idx.i, %if.end.i.if.then9_crit_edge ]
  %21 = ptrtoint ptr %storemerge.in.in.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %storemerge.in.i = load i16, ptr %storemerge.in.in.i, align 2
  %storemerge.i = zext i16 %storemerge.in.i to i32
  %22 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %storemerge.i, ptr %value, align 4
  %23 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %size, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call12 = tail call i32 @vega12_thermal_get_temperature(ptr noundef %hwmgr) #15
  %24 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call12, ptr %value, align 4
  %25 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %size, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %metrics_time.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 57
  %26 = ptrtoint ptr %metrics_time.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %metrics_time.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool1.not.i = icmp eq i32 %27, 0
  br i1 %tobool1.not.i, label %sw.bb13.if.then.i94_crit_edge, label %lor.lhs.false2.i

sw.bb13.if.then.i94_crit_edge:                    ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i94

lor.lhs.false2.i:                                 ; preds = %sw.bb13
  %add.i = add i32 %27, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i93 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i93, label %lor.lhs.false2.i.if.then.i94_crit_edge, label %lor.lhs.false2.i.if.end17_crit_edge

lor.lhs.false2.i.if.end17_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

lor.lhs.false2.i.if.then.i94_crit_edge:           ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i94

if.then.i94:                                      ; preds = %lor.lhs.false2.i.if.then.i94_crit_edge, %sw.bb13.if.then.i94_crit_edge
  %metrics_table4.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 58
  %call5.i = tail call i32 @smum_smc_table_manager(ptr noundef %hwmgr, ptr noundef %metrics_table4.i, i16 noundef zeroext 6, i1 noundef zeroext true) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i96, label %vega12_get_metrics_table.exit

if.end.i96:                                       ; preds = %if.then.i94
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %30 = ptrtoint ptr %metrics_time.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %metrics_time.i, align 4
  br label %if.end17

vega12_get_metrics_table.exit:                    ; preds = %if.then.i94
  call void @__sanitizer_cov_trace_pc() #17
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.264) #18
  br label %cleanup

if.end17:                                         ; preds = %if.end.i96, %lor.lhs.false2.i.if.end17_crit_edge
  %metrics_table.sroa.5.0.metrics_table13.i.sroa_idx = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 58, i32 12
  %31 = ptrtoint ptr %metrics_table.sroa.5.0.metrics_table13.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %31)
  %metrics_table.sroa.5.0.copyload = load i16, ptr %metrics_table.sroa.5.0.metrics_table13.i.sroa_idx, align 2
  %conv = zext i16 %metrics_table.sroa.5.0.copyload to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %32 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul, ptr %value, align 4
  %33 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4, ptr %size, align 4
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  %metrics_time.i99 = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 57
  %34 = ptrtoint ptr %metrics_time.i99 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %metrics_time.i99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool1.not.i100 = icmp eq i32 %35, 0
  br i1 %tobool1.not.i100, label %sw.bb18.if.then.i108_crit_edge, label %lor.lhs.false2.i104

sw.bb18.if.then.i108_crit_edge:                   ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i108

lor.lhs.false2.i104:                              ; preds = %sw.bb18
  %add.i101 = add i32 %35, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %sub.i102 = sub i32 %add.i101, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i102)
  %cmp.i103 = icmp slt i32 %sub.i102, 0
  br i1 %cmp.i103, label %lor.lhs.false2.i104.if.then.i108_crit_edge, label %lor.lhs.false2.i104.if.end22_crit_edge

lor.lhs.false2.i104.if.end22_crit_edge:           ; preds = %lor.lhs.false2.i104
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

lor.lhs.false2.i104.if.then.i108_crit_edge:       ; preds = %lor.lhs.false2.i104
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i108

if.then.i108:                                     ; preds = %lor.lhs.false2.i104.if.then.i108_crit_edge, %sw.bb18.if.then.i108_crit_edge
  %metrics_table4.i105 = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 58
  %call5.i106 = tail call i32 @smum_smc_table_manager(ptr noundef %hwmgr, ptr noundef %metrics_table4.i105, i16 noundef zeroext 6, i1 noundef zeroext true) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i106)
  %tobool6.not.i107 = icmp eq i32 %call5.i106, 0
  br i1 %tobool6.not.i107, label %if.end.i112, label %vega12_get_metrics_table.exit116

if.end.i112:                                      ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %38 = ptrtoint ptr %metrics_time.i99 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %metrics_time.i99, align 4
  br label %if.end22

vega12_get_metrics_table.exit116:                 ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #17
  %call8.i109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.264) #18
  br label %cleanup

if.end22:                                         ; preds = %if.end.i112, %lor.lhs.false2.i104.if.end22_crit_edge
  %metrics_table.sroa.6.0.metrics_table13.i114.sroa_idx = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 58, i32 13
  %39 = ptrtoint ptr %metrics_table.sroa.6.0.metrics_table13.i114.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %39)
  %metrics_table.sroa.6.0.copyload134 = load i16, ptr %metrics_table.sroa.6.0.metrics_table13.i114.sroa_idx, align 8
  %conv23 = zext i16 %metrics_table.sroa.6.0.copyload134 to i32
  %mul24 = mul nuw nsw i32 %conv23, 1000
  %40 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul24, ptr %value, align 4
  %41 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4, ptr %size, align 4
  br label %cleanup

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %uvd_power_gated = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 44
  %42 = ptrtoint ptr %uvd_power_gated to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %uvd_power_gated, align 4, !range !619
  %44 = xor i8 %43, 1
  %45 = zext i8 %44 to i32
  %46 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %value, align 4
  %47 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 4, ptr %size, align 4
  br label %cleanup

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %vce_power_gated = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 45
  %48 = ptrtoint ptr %vce_power_gated to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %vce_power_gated, align 1, !range !619
  %50 = xor i8 %49, 1
  %51 = zext i8 %50 to i32
  %52 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %value, align 4
  %53 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 4, ptr %size, align 4
  br label %cleanup

sw.bb32:                                          ; preds = %entry
  %metrics_time.i.i118 = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 57
  %54 = ptrtoint ptr %metrics_time.i.i118 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %metrics_time.i.i118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool1.not.i.i119 = icmp eq i32 %55, 0
  br i1 %tobool1.not.i.i119, label %sw.bb32.if.then.i.i127_crit_edge, label %lor.lhs.false2.i.i123

sw.bb32.if.then.i.i127_crit_edge:                 ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i127

lor.lhs.false2.i.i123:                            ; preds = %sw.bb32
  %add.i.i120 = add i32 %55, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i121 = sub i32 %add.i.i120, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i121)
  %cmp.i.i122 = icmp slt i32 %sub.i.i121, 0
  br i1 %cmp.i.i122, label %lor.lhs.false2.i.i123.if.then.i.i127_crit_edge, label %lor.lhs.false2.i.i123.if.then35_crit_edge

lor.lhs.false2.i.i123.if.then35_crit_edge:        ; preds = %lor.lhs.false2.i.i123
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then35

lor.lhs.false2.i.i123.if.then.i.i127_crit_edge:   ; preds = %lor.lhs.false2.i.i123
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i127

if.then.i.i127:                                   ; preds = %lor.lhs.false2.i.i123.if.then.i.i127_crit_edge, %sw.bb32.if.then.i.i127_crit_edge
  %metrics_table4.i.i124 = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 58
  %call5.i.i125 = tail call i32 @smum_smc_table_manager(ptr noundef %hwmgr, ptr noundef %metrics_table4.i.i124, i16 noundef zeroext 6, i1 noundef zeroext true) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i125)
  %tobool6.not.i.i126 = icmp eq i32 %call5.i.i125, 0
  br i1 %tobool6.not.i.i126, label %if.end.i.i128, label %vega12_get_gpu_power.exit

if.end.i.i128:                                    ; preds = %if.then.i.i127
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %58 = ptrtoint ptr %metrics_time.i.i118 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %metrics_time.i.i118, align 4
  br label %if.then35

vega12_get_gpu_power.exit:                        ; preds = %if.then.i.i127
  call void @__sanitizer_cov_trace_pc() #17
  %call8.i.i129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.264) #18
  br label %cleanup

if.then35:                                        ; preds = %if.end.i.i128, %lor.lhs.false2.i.i123.if.then35_crit_edge
  %metrics_table.sroa.4.0.metrics_table13.i.sroa_idx.i131 = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 58, i32 10
  %59 = ptrtoint ptr %metrics_table.sroa.4.0.metrics_table13.i.sroa_idx.i131 to i32
  call void @__asan_load2_noabort(i32 %59)
  %metrics_table.sroa.4.0.copyload.i = load i16, ptr %metrics_table.sroa.4.0.metrics_table13.i.sroa_idx.i131, align 2
  %conv.i = zext i16 %metrics_table.sroa.4.0.copyload.i to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %60 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %shl.i, ptr %value, align 4
  %61 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 4, ptr %size, align 4
  br label %cleanup

sw.bb37:                                          ; preds = %entry
  %call38 = tail call i32 @vega12_get_enabled_smc_features(ptr noundef %hwmgr, ptr noundef %value) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %sw.bb37.cleanup_crit_edge

sw.bb37.cleanup_crit_edge:                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then40:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #17
  %62 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 8, ptr %size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %sw.bb37.cleanup_crit_edge, %if.then35, %vega12_get_gpu_power.exit, %sw.bb28, %sw.bb25, %if.end22, %vega12_get_metrics_table.exit116, %if.end17, %vega12_get_metrics_table.exit, %sw.bb11, %if.then9, %do.end.i91, %vega12_get_metrics_table.exit.i, %if.then4, %vega12_get_current_mclk_freq.exit.thread, %if.then, %vega12_get_current_gfx_clk_freq.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5.i, %vega12_get_metrics_table.exit ], [ %call5.i106, %vega12_get_metrics_table.exit116 ], [ %call38, %sw.bb37.cleanup_crit_edge ], [ 0, %if.then40 ], [ %call5.i.i125, %vega12_get_gpu_power.exit ], [ 0, %if.then35 ], [ 0, %sw.bb28 ], [ 0, %sw.bb25 ], [ 0, %if.end22 ], [ 0, %if.end17 ], [ 0, %sw.bb11 ], [ 0, %if.then9 ], [ 0, %if.then4 ], [ 0, %if.then ], [ -95, %entry.cleanup_crit_edge ], [ -22, %vega12_get_current_gfx_clk_freq.exit.thread ], [ -22, %vega12_get_current_mclk_freq.exit.thread ], [ %call5.i.i, %vega12_get_metrics_table.exit.i ], [ -22, %do.end.i91 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vega12_thermal_disable_alert(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vega12_start_thermal_controller(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega12_notify_cac_buffer_info(ptr noundef %hwmgr, i32 noundef %virtual_addr_low, i32 noundef %virtual_addr_hi, i32 noundef %mc_addr_low, i32 noundef %mc_addr_hi, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 75, i32 noundef %virtual_addr_hi, ptr noundef null) #15
  %call1 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 76, i32 noundef %virtual_addr_low, ptr noundef null) #15
  %call2 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 65, i32 noundef %mc_addr_hi, ptr noundef null) #15
  %call3 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 66, i32 noundef %mc_addr_low, ptr noundef null) #15
  %call4 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 67, i32 noundef %size, ptr noundef null) #15
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vega12_get_thermal_temperature_range(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef writeonly %thermal_data) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %2 = call ptr @memcpy(ptr %thermal_data, ptr @SMU7ThermalWithDelayPolicy, i32 36)
  %TedgeLimit = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 54, i32 13, i32 16
  %3 = ptrtoint ptr %TedgeLimit to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %TedgeLimit, align 4
  %conv = zext i16 %4 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %max = getelementptr inbounds %struct.PP_TemperatureRange, ptr %thermal_data, i32 0, i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mul, ptr %max, align 4
  %6 = load i16, ptr %TedgeLimit, align 4
  %conv3 = zext i16 %6 to i32
  %7 = mul nuw nsw i32 %conv3, 1000
  %mul4 = add nuw nsw i32 %7, 5000
  %edge_emergency_max = getelementptr inbounds %struct.PP_TemperatureRange, ptr %thermal_data, i32 0, i32 2
  %8 = ptrtoint ptr %edge_emergency_max to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul4, ptr %edge_emergency_max, align 4
  %ThotspotLimit = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 54, i32 13, i32 17
  %9 = ptrtoint ptr %ThotspotLimit to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ThotspotLimit, align 2
  %conv5 = zext i16 %10 to i32
  %mul6 = mul nuw nsw i32 %conv5, 1000
  %hotspot_crit_max = getelementptr inbounds %struct.PP_TemperatureRange, ptr %thermal_data, i32 0, i32 4
  %11 = ptrtoint ptr %hotspot_crit_max to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul6, ptr %hotspot_crit_max, align 4
  %12 = load i16, ptr %ThotspotLimit, align 2
  %conv8 = zext i16 %12 to i32
  %13 = mul nuw nsw i32 %conv8, 1000
  %mul10 = add nuw nsw i32 %13, 5000
  %hotspot_emergency_max = getelementptr inbounds %struct.PP_TemperatureRange, ptr %thermal_data, i32 0, i32 5
  %14 = ptrtoint ptr %hotspot_emergency_max to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul10, ptr %hotspot_emergency_max, align 4
  %ThbmLimit = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 54, i32 13, i32 18
  %15 = ptrtoint ptr %ThbmLimit to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ThbmLimit, align 4
  %conv11 = zext i16 %16 to i32
  %mul12 = mul nuw nsw i32 %conv11, 1000
  %mem_crit_max = getelementptr inbounds %struct.PP_TemperatureRange, ptr %thermal_data, i32 0, i32 7
  %17 = ptrtoint ptr %mem_crit_max to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul12, ptr %mem_crit_max, align 4
  %18 = load i16, ptr %ThbmLimit, align 4
  %conv14 = zext i16 %18 to i32
  %19 = mul nuw nsw i32 %conv14, 1000
  %mul16 = add nuw nsw i32 %19, 5000
  %mem_emergency_max = getelementptr inbounds %struct.PP_TemperatureRange, ptr %thermal_data, i32 0, i32 8
  %20 = ptrtoint ptr %mem_emergency_max to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul16, ptr %mem_emergency_max, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu9_baco_get_capability(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu9_baco_get_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vega12_baco_set_state(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega12_get_ppfeature_status(ptr noundef %hwmgr, ptr noundef %buf) #0 align 64 {
entry:
  %features_enabled = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %features_enabled) #15
  %0 = ptrtoint ptr %features_enabled to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %features_enabled, align 8, !annotation !620
  %tobool.not.i = icmp eq ptr %buf, null
  %1 = ptrtoint ptr %buf to i32
  %and.i = and i32 %1, 4095
  %idx.neg.i = sub nsw i32 0, %and.i
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %idx.neg.i
  %buf.addr.0 = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %call = call i32 @vega12_get_enabled_smc_features(ptr noundef %hwmgr, ptr noundef nonnull %features_enabled) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end8, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 @___ratelimit(ptr noundef nonnull @vega12_get_ppfeature_status._rs, ptr noundef nonnull @__func__.vega12_get_ppfeature_status) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.298) #18
  br label %cleanup

do.end8:                                          ; preds = %entry
  %size.0 = select i1 %tobool.not.i, i32 0, i32 %and.i
  %2 = ptrtoint ptr %features_enabled to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %features_enabled, align 8
  %call9 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.0, ptr noundef nonnull @.str.299, i64 noundef %3) #15
  %add = add i32 %call9, %size.0
  %call10 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add, ptr noundef nonnull @.str.300, ptr noundef nonnull @.str.295, ptr noundef nonnull @.str.296, ptr noundef nonnull @.str.297) #15
  %add11 = add i32 %add, %call10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end8
  %i.035 = phi i32 [ 0, %do.end8 ], [ %inc, %for.body.for.body_crit_edge ]
  %size.134 = phi i32 [ %add11, %do.end8 ], [ %add16, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [29 x ptr], ptr @vega12_get_ppfeature_status.ppfeature_name, i32 0, i32 %i.035
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %sh_prom = zext i32 %i.035 to i64
  %shl = shl nuw i64 1, %sh_prom
  %6 = ptrtoint ptr %features_enabled to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %features_enabled, align 8
  %and = and i64 %7, %shl
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool14.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool14.not, ptr @.str.303, ptr @.str.302
  %call15 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.134, ptr noundef nonnull @.str.301, ptr noundef %5, i64 noundef %shl, ptr noundef nonnull %cond) #15
  %add16 = add i32 %call15, %size.134
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, 29
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ %call, %if.then.cleanup_crit_edge ], [ %add16, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %features_enabled) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega12_set_ppfeature_status(ptr noundef %hwmgr, i64 noundef %new_ppfeature_masks) #0 align 64 {
entry:
  %features_enabled = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %features_enabled) #15
  %0 = ptrtoint ptr %features_enabled to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %features_enabled, align 8, !annotation !620
  call void @__sanitizer_cov_trace_const_cmp8(i64 536870911, i64 %new_ppfeature_masks)
  %cmp = icmp ugt i64 %new_ppfeature_masks, 536870911
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @vega12_get_enabled_smc_features(ptr noundef %hwmgr, ptr noundef nonnull %features_enabled) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %1 = ptrtoint ptr %features_enabled to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %features_enabled, align 8
  %neg = xor i64 %new_ppfeature_masks, -1
  %and = and i64 %2, %neg
  %neg3 = xor i64 %2, -1
  %and4 = and i64 %neg3, %new_ppfeature_masks
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vega12_set_ppfeature_status.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vega12_set_ppfeature_status, %if.then9)) #15
          to label %do.body11 [label %if.then9], !srcloc !622

if.then9:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vega12_set_ppfeature_status.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.307, i64 noundef %and) #15
  br label %do.body11

do.body11:                                        ; preds = %if.then9, %if.end2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vega12_set_ppfeature_status.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vega12_set_ppfeature_status, %if.then23)) #15
          to label %do.end26 [label %if.then23], !srcloc !622

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vega12_set_ppfeature_status.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.309, i64 noundef %and4) #15
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %do.body11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool27.not = icmp eq i64 %and, 0
  br i1 %tobool27.not, label %do.end26.if.end33_crit_edge, label %if.then28

do.end26.if.end33_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then28:                                        ; preds = %do.end26
  %call29 = call i32 @vega12_enable_smc_features(ptr noundef %hwmgr, i1 noundef zeroext false, i64 noundef %and) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then28.if.end33_crit_edge, label %if.then28.cleanup_crit_edge

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then28.if.end33_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.end33:                                         ; preds = %if.then28.if.end33_crit_edge, %do.end26.if.end33_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and4)
  %tobool34.not = icmp eq i64 %and4, 0
  br i1 %tobool34.not, label %if.end33.if.end40_crit_edge, label %if.then35

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

if.then35:                                        ; preds = %if.end33
  %call36 = call i32 @vega12_enable_smc_features(ptr noundef %hwmgr, i1 noundef zeroext true, i64 noundef %and4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then35.if.end40_crit_edge, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then35.if.end40_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

if.end40:                                         ; preds = %if.then35.if.end40_crit_edge, %if.end33.if.end40_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then35.cleanup_crit_edge, %if.then28.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end40 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call29, %if.then28.cleanup_crit_edge ], [ %call36, %if.then35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %features_enabled) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega12_set_mp1_state(ptr noundef %hwmgr, i32 noundef %mp1_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mp1_state)
  %cond = icmp eq i32 %mp1_state, 2
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 64, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.then

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_set_mp1_state._rs, ptr noundef nonnull @__func__.vega12_set_mp1_state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.310) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %do.end ], [ %call, %if.then.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega12_get_gpu_metrics(ptr noundef %hwmgr, ptr nocapture noundef writeonly %table) #0 align 64 {
entry:
  %fan_speed_rpm = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fan_speed_rpm) #15
  %2 = ptrtoint ptr %fan_speed_rpm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %fan_speed_rpm, align 4, !annotation !620
  %metrics_table4.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 58
  %call5.i = tail call i32 @smum_smc_table_manager(ptr noundef %hwmgr, ptr noundef %metrics_table4.i, i16 noundef zeroext 6, i1 noundef zeroext true) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end, label %vega12_get_metrics_table.exit

vega12_get_metrics_table.exit:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.264) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %metrics_time9.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 57
  %4 = ptrtoint ptr %metrics_time9.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %metrics_time9.i, align 4
  %5 = ptrtoint ptr %metrics_table4.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %metrics.sroa.0.0.copyload = load i16, ptr %metrics_table4.i, align 8
  %metrics.sroa.5.0.metrics_table13.i.sroa_idx = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 58, i32 0, i32 1
  %6 = ptrtoint ptr %metrics.sroa.5.0.metrics_table13.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %6)
  %metrics.sroa.5.0.copyload = load i16, ptr %metrics.sroa.5.0.metrics_table13.i.sroa_idx, align 2
  %metrics.sroa.6.0.metrics_table13.i.sroa_idx = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 58, i32 0, i32 2
  %7 = ptrtoint ptr %metrics.sroa.6.0.metrics_table13.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %7)
  %metrics.sroa.6.0.copyload = load i16, ptr %metrics.sroa.6.0.metrics_table13.i.sroa_idx, align 4
  %metrics.sroa.748.0.metrics_table13.i.sroa_idx = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 58, i32 0, i32 4
  %8 = ptrtoint ptr %metrics.sroa.748.0.metrics_table13.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %8)
  %metrics.sroa.748.0.copyload = load i16, ptr %metrics.sroa.748.0.metrics_table13.i.sroa_idx, align 8
  %metrics.sroa.8.0.metrics_table13.i.sroa_idx = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 58, i32 0, i32 5
  %9 = ptrtoint ptr %metrics.sroa.8.0.metrics_table13.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %9)
  %metrics.sroa.8.0.copyload = load i16, ptr %metrics.sroa.8.0.metrics_table13.i.sroa_idx, align 2
  %metrics.sroa.949.0.metrics_table13.i.sroa_idx = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 58, i32 1
  %10 = ptrtoint ptr %metrics.sroa.949.0.metrics_table13.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %10)
  %metrics.sroa.949.0.copyload = load i16, ptr %metrics.sroa.949.0.metrics_table13.i.sroa_idx, align 4
  %metrics.sroa.10.0.metrics_table13.i.sroa_idx = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 58, i32 2
  %11 = ptrtoint ptr %metrics.sroa.10.0.metrics_table13.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %11)
  %metrics.sroa.10.0.copyload = load i16, ptr %metrics.sroa.10.0.metrics_table13.i.sroa_idx, align 2
  %metrics.sroa.11.0.metrics_table13.i.sroa_idx = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 58, i32 3
  %12 = ptrtoint ptr %metrics.sroa.11.0.metrics_table13.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %12)
  %metrics.sroa.11.0.copyload = load i16, ptr %metrics.sroa.11.0.metrics_table13.i.sroa_idx, align 8
  %metrics.sroa.12.0.metrics_table13.i.sroa_idx = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 58, i32 4
  %13 = ptrtoint ptr %metrics.sroa.12.0.metrics_table13.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %13)
  %metrics.sroa.12.0.copyload = load i16, ptr %metrics.sroa.12.0.metrics_table13.i.sroa_idx, align 2
  %metrics.sroa.13.0.metrics_table13.i.sroa_idx = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 58, i32 5
  %14 = ptrtoint ptr %metrics.sroa.13.0.metrics_table13.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %14)
  %metrics.sroa.13.0.copyload = load i16, ptr %metrics.sroa.13.0.metrics_table13.i.sroa_idx, align 4
  %metrics.sroa.1450.0.metrics_table13.i.sroa_idx = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 58, i32 11
  %15 = ptrtoint ptr %metrics.sroa.1450.0.metrics_table13.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %15)
  %metrics.sroa.1450.0.copyload = load i16, ptr %metrics.sroa.1450.0.metrics_table13.i.sroa_idx, align 4
  %metrics.sroa.15.0.metrics_table13.i.sroa_idx = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 58, i32 12
  %16 = ptrtoint ptr %metrics.sroa.15.0.metrics_table13.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %16)
  %metrics.sroa.15.0.copyload = load i16, ptr %metrics.sroa.15.0.metrics_table13.i.sroa_idx, align 2
  %metrics.sroa.16.0.metrics_table13.i.sroa_idx = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 58, i32 13
  %17 = ptrtoint ptr %metrics.sroa.16.0.metrics_table13.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %17)
  %metrics.sroa.16.0.copyload = load i16, ptr %metrics.sroa.16.0.metrics_table13.i.sroa_idx, align 8
  %metrics.sroa.17.0.metrics_table13.i.sroa_idx = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 58, i32 14
  %18 = ptrtoint ptr %metrics.sroa.17.0.metrics_table13.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %18)
  %metrics.sroa.17.0.copyload = load i16, ptr %metrics.sroa.17.0.metrics_table13.i.sroa_idx, align 2
  %metrics.sroa.18.0.metrics_table13.i.sroa_idx = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 58, i32 15
  %19 = ptrtoint ptr %metrics.sroa.18.0.metrics_table13.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %19)
  %metrics.sroa.18.0.copyload = load i16, ptr %metrics.sroa.18.0.metrics_table13.i.sroa_idx, align 4
  %metrics.sroa.1951.0.metrics_table13.i.sroa_idx = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 58, i32 18
  %20 = ptrtoint ptr %metrics.sroa.1951.0.metrics_table13.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %metrics.sroa.1951.0.copyload = load i32, ptr %metrics.sroa.1951.0.metrics_table13.i.sroa_idx, align 4
  %gpu_metrics_table = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 59
  %21 = call ptr @memset(ptr %gpu_metrics_table, i32 255, i32 80)
  %22 = ptrtoint ptr %gpu_metrics_table to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 80, ptr %gpu_metrics_table, align 8
  %format_revision.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 59, i32 0, i32 1
  %23 = ptrtoint ptr %format_revision.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %format_revision.i, align 2
  %content_revision.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 59, i32 0, i32 2
  %24 = ptrtoint ptr %content_revision.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %content_revision.i, align 1
  %call.i.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #15
  %system_clock_counter.i = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 59, i32 1
  %25 = ptrtoint ptr %system_clock_counter.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %call.i.i.i, ptr %system_clock_counter.i, align 8
  %temperature_edge = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 59, i32 2
  %26 = ptrtoint ptr %temperature_edge to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %metrics.sroa.1450.0.copyload, ptr %temperature_edge, align 8
  %temperature_hotspot = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 59, i32 3
  %27 = ptrtoint ptr %temperature_hotspot to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %metrics.sroa.15.0.copyload, ptr %temperature_hotspot, align 2
  %temperature_mem = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 59, i32 4
  %28 = ptrtoint ptr %temperature_mem to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %metrics.sroa.16.0.copyload, ptr %temperature_mem, align 4
  %temperature_vrgfx = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 59, i32 5
  %29 = ptrtoint ptr %temperature_vrgfx to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %metrics.sroa.17.0.copyload, ptr %temperature_vrgfx, align 2
  %temperature_vrmem = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 59, i32 7
  %30 = ptrtoint ptr %temperature_vrmem to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %metrics.sroa.18.0.copyload, ptr %temperature_vrmem, align 2
  %average_gfx_activity = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 59, i32 8
  %31 = ptrtoint ptr %average_gfx_activity to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %metrics.sroa.12.0.copyload, ptr %average_gfx_activity, align 4
  %average_umc_activity = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 59, i32 9
  %32 = ptrtoint ptr %average_umc_activity to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %metrics.sroa.13.0.copyload, ptr %average_umc_activity, align 2
  %average_gfxclk_frequency = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 59, i32 13
  %33 = ptrtoint ptr %average_gfxclk_frequency to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %metrics.sroa.949.0.copyload, ptr %average_gfxclk_frequency, align 8
  %average_socclk_frequency = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 59, i32 14
  %34 = ptrtoint ptr %average_socclk_frequency to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %metrics.sroa.10.0.copyload, ptr %average_socclk_frequency, align 2
  %average_uclk_frequency = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 59, i32 15
  %35 = ptrtoint ptr %average_uclk_frequency to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %metrics.sroa.11.0.copyload, ptr %average_uclk_frequency, align 4
  %current_gfxclk = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 59, i32 20
  %36 = ptrtoint ptr %current_gfxclk to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %metrics.sroa.0.0.copyload, ptr %current_gfxclk, align 2
  %current_socclk = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 59, i32 21
  %37 = ptrtoint ptr %current_socclk to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %metrics.sroa.748.0.copyload, ptr %current_socclk, align 8
  %current_uclk = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 59, i32 22
  %38 = ptrtoint ptr %current_uclk to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %metrics.sroa.8.0.copyload, ptr %current_uclk, align 2
  %current_vclk0 = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 59, i32 23
  %39 = ptrtoint ptr %current_vclk0 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %metrics.sroa.5.0.copyload, ptr %current_vclk0, align 4
  %current_dclk0 = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 59, i32 24
  %40 = ptrtoint ptr %current_dclk0 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %metrics.sroa.6.0.copyload, ptr %current_dclk0, align 2
  %throttle_status = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 59, i32 27
  %41 = ptrtoint ptr %throttle_status to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %metrics.sroa.1951.0.copyload, ptr %throttle_status, align 4
  %call9 = call i32 @vega12_fan_ctrl_get_fan_speed_rpm(ptr noundef %hwmgr, ptr noundef nonnull %fan_speed_rpm) #15
  %42 = ptrtoint ptr %fan_speed_rpm to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fan_speed_rpm, align 4
  %conv = trunc i32 %43 to i16
  %current_fan_speed = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 59, i32 28
  %44 = ptrtoint ptr %current_fan_speed to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv, ptr %current_fan_speed, align 8
  %45 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hwmgr, align 4
  %pcie_rreg.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %46, i32 0, i32 39
  %47 = ptrtoint ptr %pcie_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pcie_rreg.i.i, align 8
  %call.i.i = call i32 %48(ptr noundef %46, i32 noundef 286524040) #15
  %and.i.i = lshr i32 %call.i.i, 4
  %shr.i.i = and i32 %and.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr.i.i)
  %cmp.i = icmp eq i32 %shr.i.i, 7
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %shr.i.i
  %arrayidx.i = getelementptr [7 x i32], ptr @link_width, i32 0, i32 %spec.store.select.i
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i, align 4
  %conv11 = trunc i32 %50 to i8
  %pcie_link_width = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 59, i32 29
  %51 = ptrtoint ptr %pcie_link_width to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv11, ptr %pcie_link_width, align 2
  %52 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hwmgr, align 4
  %pcie_rreg.i.i43 = getelementptr inbounds %struct.amdgpu_device, ptr %53, i32 0, i32 39
  %54 = ptrtoint ptr %pcie_rreg.i.i43 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pcie_rreg.i.i43, align 8
  %call.i.i44 = call i32 %55(ptr noundef %53, i32 noundef 286524048) #15
  %and.i.i45 = lshr i32 %call.i.i44, 13
  %shr.i.i46 = and i32 %and.i.i45, 3
  %arrayidx.i47 = getelementptr [4 x i32], ptr @link_speed, i32 0, i32 %shr.i.i46
  %56 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i47, align 4
  %conv13 = trunc i32 %57 to i8
  %pcie_link_speed = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 59, i32 30
  %58 = ptrtoint ptr %pcie_link_speed to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv13, ptr %pcie_link_speed, align 1
  %59 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %gpu_metrics_table, ptr %table, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %vega12_get_metrics_table.exit
  %retval.0 = phi i32 [ 80, %if.end ], [ %call5.i, %vega12_get_metrics_table.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fan_speed_rpm) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vega12_upload_dpm_min_level(ptr noundef %hwmgr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %enabled = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 1, i32 1
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then:                                          ; preds = %entry
  %dpm_state = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %dpm_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dpm_state, align 4
  %and = and i32 %5, 65535
  %call = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 38, i32 noundef %and, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end11_crit_edge, label %if.then2

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then2:                                         ; preds = %if.then
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_upload_dpm_min_level._rs, ptr noundef nonnull @__func__.vega12_upload_dpm_min_level) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.cleanup_crit_edge, label %if.then2.cleanup.sink.split_crit_edge

if.then2.cleanup.sink.split_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end11:                                         ; preds = %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  %enabled14 = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 2, i32 1
  %6 = ptrtoint ptr %enabled14 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled14, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool15.not = icmp eq i8 %7, 0
  br i1 %tobool15.not, label %if.end11.if.end59_crit_edge, label %if.then16

if.end11.if.end59_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

if.then16:                                        ; preds = %if.end11
  %dpm_state18 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %dpm_state18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dpm_state18, align 4
  %and21 = and i32 %9, 65535
  %or22 = or i32 %and21, 327680
  %call23 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 38, i32 noundef %or22, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.end37, label %if.then25

if.then25:                                        ; preds = %if.then16
  %call26 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_upload_dpm_min_level._rs.12, ptr noundef nonnull @__func__.vega12_upload_dpm_min_level) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then25.cleanup_crit_edge, label %if.then25.cleanup.sink.split_crit_edge

if.then25.cleanup.sink.split_crit_edge:           ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end37:                                         ; preds = %if.then16
  %hard_min_level = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 2, i32 1, i32 2
  %10 = ptrtoint ptr %hard_min_level to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hard_min_level, align 4
  %and42 = and i32 %11, 65535
  %or43 = or i32 %and42, 327680
  %call44 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 40, i32 noundef %or43, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %do.end37.if.end59_crit_edge, label %if.then46

do.end37.if.end59_crit_edge:                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

if.then46:                                        ; preds = %do.end37
  %call47 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_upload_dpm_min_level._rs.16, ptr noundef nonnull @__func__.vega12_upload_dpm_min_level) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then46.cleanup_crit_edge, label %if.then46.cleanup.sink.split_crit_edge

if.then46.cleanup.sink.split_crit_edge:           ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end59:                                         ; preds = %do.end37.if.end59_crit_edge, %if.end11.if.end59_crit_edge
  %enabled62 = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 4, i32 1
  %12 = ptrtoint ptr %enabled62 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enabled62, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool63.not = icmp eq i8 %13, 0
  br i1 %tobool63.not, label %if.end59.if.end107_crit_edge, label %if.then64

if.end59.if.end107_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end107

if.then64:                                        ; preds = %if.end59
  %dpm_state66 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %dpm_state66 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dpm_state66, align 4
  %and69 = and i32 %15, 65535
  %or70 = or i32 %and69, 65536
  %call71 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 38, i32 noundef %or70, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %do.end85, label %if.then73

if.then73:                                        ; preds = %if.then64
  %call74 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_upload_dpm_min_level._rs.20, ptr noundef nonnull @__func__.vega12_upload_dpm_min_level) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then73.cleanup_crit_edge, label %if.then73.cleanup.sink.split_crit_edge

if.then73.cleanup.sink.split_crit_edge:           ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.then73.cleanup_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end85:                                         ; preds = %if.then64
  %dpm_state87 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %dpm_state87 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dpm_state87, align 4
  %and90 = and i32 %17, 65535
  %or91 = or i32 %and90, 131072
  %call92 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 38, i32 noundef %or91, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %do.end85.if.end107_crit_edge, label %if.then94

do.end85.if.end107_crit_edge:                     ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end107

if.then94:                                        ; preds = %do.end85
  %call95 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_upload_dpm_min_level._rs.24, ptr noundef nonnull @__func__.vega12_upload_dpm_min_level) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.then94.cleanup_crit_edge, label %if.then94.cleanup.sink.split_crit_edge

if.then94.cleanup.sink.split_crit_edge:           ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.then94.cleanup_crit_edge:                      ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end107:                                        ; preds = %do.end85.if.end107_crit_edge, %if.end59.if.end107_crit_edge
  %enabled110 = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 5, i32 1
  %18 = ptrtoint ptr %enabled110 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %enabled110, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool111.not = icmp eq i8 %19, 0
  br i1 %tobool111.not, label %if.end107.if.end134_crit_edge, label %if.then112

if.end107.if.end134_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end134

if.then112:                                       ; preds = %if.end107
  %dpm_state114 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %dpm_state114 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dpm_state114, align 4
  %and117 = and i32 %21, 65535
  %or118 = or i32 %and117, 196608
  %call119 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 38, i32 noundef %or118, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.then112.if.end134_crit_edge, label %if.then121

if.then112.if.end134_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end134

if.then121:                                       ; preds = %if.then112
  %call122 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_upload_dpm_min_level._rs.28, ptr noundef nonnull @__func__.vega12_upload_dpm_min_level) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.then121.cleanup_crit_edge, label %if.then121.cleanup.sink.split_crit_edge

if.then121.cleanup.sink.split_crit_edge:          ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.then121.cleanup_crit_edge:                     ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end134:                                        ; preds = %if.then112.if.end134_crit_edge, %if.end107.if.end134_crit_edge
  %enabled137 = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 3, i32 1
  %22 = ptrtoint ptr %enabled137 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %enabled137, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool138.not = icmp eq i8 %23, 0
  br i1 %tobool138.not, label %if.end134.if.end161_crit_edge, label %if.then139

if.end134.if.end161_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end161

if.then139:                                       ; preds = %if.end134
  %dpm_state141 = getelementptr inbounds %struct.vega12_single_dpm_table, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %dpm_state141 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dpm_state141, align 4
  %and144 = and i32 %25, 65535
  %or145 = or i32 %and144, 262144
  %call146 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 38, i32 noundef %or145, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.then139.if.end161_crit_edge, label %if.then148

if.then139.if.end161_crit_edge:                   ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end161

if.then148:                                       ; preds = %if.then139
  %call149 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_upload_dpm_min_level._rs.32, ptr noundef nonnull @__func__.vega12_upload_dpm_min_level) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.then148.cleanup_crit_edge, label %if.then148.cleanup.sink.split_crit_edge

if.then148.cleanup.sink.split_crit_edge:          ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.then148.cleanup_crit_edge:                     ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end161:                                        ; preds = %if.then139.if.end161_crit_edge, %if.end134.if.end161_crit_edge
  %enabled164 = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 9, i32 1
  %26 = ptrtoint ptr %enabled164 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enabled164, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool165.not = icmp eq i8 %27, 0
  br i1 %tobool165.not, label %if.end161.cleanup_crit_edge, label %if.then166

if.end161.cleanup_crit_edge:                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then166:                                       ; preds = %if.end161
  %hard_min_level169 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 6, i32 1, i32 2
  %28 = ptrtoint ptr %hard_min_level169 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hard_min_level169, align 4
  %and171 = and i32 %29, 65535
  %or172 = or i32 %and171, 393216
  %call173 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 40, i32 noundef %or172, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.then166.cleanup_crit_edge, label %if.then175

if.then166.cleanup_crit_edge:                     ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then175:                                       ; preds = %if.then166
  %call176 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_upload_dpm_min_level._rs.36, ptr noundef nonnull @__func__.vega12_upload_dpm_min_level) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.then175.cleanup_crit_edge, label %if.then175.cleanup.sink.split_crit_edge

if.then175.cleanup.sink.split_crit_edge:          ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.then175.cleanup_crit_edge:                     ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then175.cleanup.sink.split_crit_edge, %if.then148.cleanup.sink.split_crit_edge, %if.then121.cleanup.sink.split_crit_edge, %if.then94.cleanup.sink.split_crit_edge, %if.then73.cleanup.sink.split_crit_edge, %if.then46.cleanup.sink.split_crit_edge, %if.then25.cleanup.sink.split_crit_edge, %if.then2.cleanup.sink.split_crit_edge
  %.str.39.sink = phi ptr [ @.str.11, %if.then2.cleanup.sink.split_crit_edge ], [ @.str.15, %if.then25.cleanup.sink.split_crit_edge ], [ @.str.19, %if.then46.cleanup.sink.split_crit_edge ], [ @.str.23, %if.then73.cleanup.sink.split_crit_edge ], [ @.str.27, %if.then94.cleanup.sink.split_crit_edge ], [ @.str.31, %if.then121.cleanup.sink.split_crit_edge ], [ @.str.35, %if.then148.cleanup.sink.split_crit_edge ], [ @.str.39, %if.then175.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %if.then2.cleanup.sink.split_crit_edge ], [ %call23, %if.then25.cleanup.sink.split_crit_edge ], [ %call44, %if.then46.cleanup.sink.split_crit_edge ], [ %call71, %if.then73.cleanup.sink.split_crit_edge ], [ %call92, %if.then94.cleanup.sink.split_crit_edge ], [ %call119, %if.then121.cleanup.sink.split_crit_edge ], [ %call146, %if.then148.cleanup.sink.split_crit_edge ], [ %call173, %if.then175.cleanup.sink.split_crit_edge ]
  %call183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.39.sink) #18
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then175.cleanup_crit_edge, %if.then166.cleanup_crit_edge, %if.end161.cleanup_crit_edge, %if.then148.cleanup_crit_edge, %if.then121.cleanup_crit_edge, %if.then94.cleanup_crit_edge, %if.then73.cleanup_crit_edge, %if.then46.cleanup_crit_edge, %if.then25.cleanup_crit_edge, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then2.cleanup_crit_edge ], [ %call23, %if.then25.cleanup_crit_edge ], [ %call44, %if.then46.cleanup_crit_edge ], [ %call71, %if.then73.cleanup_crit_edge ], [ %call92, %if.then94.cleanup_crit_edge ], [ %call119, %if.then121.cleanup_crit_edge ], [ %call146, %if.then148.cleanup_crit_edge ], [ %call173, %if.then175.cleanup_crit_edge ], [ 0, %if.then166.cleanup_crit_edge ], [ 0, %if.end161.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vega12_upload_dpm_max_level(ptr noundef %hwmgr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %enabled = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 1, i32 1
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then:                                          ; preds = %entry
  %soft_max_level = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %soft_max_level to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %soft_max_level, align 4
  %and = and i32 %5, 65535
  %call = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 39, i32 noundef %and, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end11_crit_edge, label %if.then2

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then2:                                         ; preds = %if.then
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_upload_dpm_max_level._rs, ptr noundef nonnull @__func__.vega12_upload_dpm_max_level) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.cleanup_crit_edge, label %if.then2.cleanup.sink.split_crit_edge

if.then2.cleanup.sink.split_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end11:                                         ; preds = %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  %enabled14 = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 2, i32 1
  %6 = ptrtoint ptr %enabled14 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled14, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool15.not = icmp eq i8 %7, 0
  br i1 %tobool15.not, label %if.end11.if.end38_crit_edge, label %if.then16

if.end11.if.end38_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then16:                                        ; preds = %if.end11
  %soft_max_level19 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 2, i32 1, i32 1
  %8 = ptrtoint ptr %soft_max_level19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %soft_max_level19, align 4
  %and21 = and i32 %9, 65535
  %or22 = or i32 %and21, 327680
  %call23 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 39, i32 noundef %or22, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then16.if.end38_crit_edge, label %if.then25

if.then16.if.end38_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then25:                                        ; preds = %if.then16
  %call26 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_upload_dpm_max_level._rs.41, ptr noundef nonnull @__func__.vega12_upload_dpm_max_level) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then25.cleanup_crit_edge, label %if.then25.cleanup.sink.split_crit_edge

if.then25.cleanup.sink.split_crit_edge:           ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end38:                                         ; preds = %if.then16.if.end38_crit_edge, %if.end11.if.end38_crit_edge
  %enabled41 = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 4, i32 1
  %10 = ptrtoint ptr %enabled41 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enabled41, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool42.not = icmp eq i8 %11, 0
  br i1 %tobool42.not, label %if.end38.if.end86_crit_edge, label %if.then43

if.end38.if.end86_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end86

if.then43:                                        ; preds = %if.end38
  %soft_max_level46 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 4, i32 1, i32 1
  %12 = ptrtoint ptr %soft_max_level46 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %soft_max_level46, align 4
  %and48 = and i32 %13, 65535
  %or49 = or i32 %and48, 65536
  %call50 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 39, i32 noundef %or49, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %do.end64, label %if.then52

if.then52:                                        ; preds = %if.then43
  %call53 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_upload_dpm_max_level._rs.45, ptr noundef nonnull @__func__.vega12_upload_dpm_max_level) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then52.cleanup_crit_edge, label %if.then52.cleanup.sink.split_crit_edge

if.then52.cleanup.sink.split_crit_edge:           ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end64:                                         ; preds = %if.then43
  %soft_max_level67 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 5, i32 1, i32 1
  %14 = ptrtoint ptr %soft_max_level67 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %soft_max_level67, align 4
  %and69 = and i32 %15, 65535
  %or70 = or i32 %and69, 131072
  %call71 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 39, i32 noundef %or70, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %do.end64.if.end86_crit_edge, label %if.then73

do.end64.if.end86_crit_edge:                      ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end86

if.then73:                                        ; preds = %do.end64
  %call74 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_upload_dpm_max_level._rs.49, ptr noundef nonnull @__func__.vega12_upload_dpm_max_level) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then73.cleanup_crit_edge, label %if.then73.cleanup.sink.split_crit_edge

if.then73.cleanup.sink.split_crit_edge:           ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.then73.cleanup_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end86:                                         ; preds = %do.end64.if.end86_crit_edge, %if.end38.if.end86_crit_edge
  %enabled89 = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 5, i32 1
  %16 = ptrtoint ptr %enabled89 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %enabled89, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool90.not = icmp eq i8 %17, 0
  br i1 %tobool90.not, label %if.end86.if.end113_crit_edge, label %if.then91

if.end86.if.end113_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end113

if.then91:                                        ; preds = %if.end86
  %soft_max_level94 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 3, i32 1, i32 1
  %18 = ptrtoint ptr %soft_max_level94 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %soft_max_level94, align 4
  %and96 = and i32 %19, 65535
  %or97 = or i32 %and96, 196608
  %call98 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 39, i32 noundef %or97, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.then91.if.end113_crit_edge, label %if.then100

if.then91.if.end113_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end113

if.then100:                                       ; preds = %if.then91
  %call101 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_upload_dpm_max_level._rs.53, ptr noundef nonnull @__func__.vega12_upload_dpm_max_level) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.then100.cleanup_crit_edge, label %if.then100.cleanup.sink.split_crit_edge

if.then100.cleanup.sink.split_crit_edge:          ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.then100.cleanup_crit_edge:                     ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end113:                                        ; preds = %if.then91.if.end113_crit_edge, %if.end86.if.end113_crit_edge
  %enabled116 = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 3, i32 1
  %20 = ptrtoint ptr %enabled116 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %enabled116, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool117.not = icmp eq i8 %21, 0
  br i1 %tobool117.not, label %if.end113.cleanup_crit_edge, label %if.then118

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then118:                                       ; preds = %if.end113
  %soft_max_level121 = getelementptr inbounds %struct.vega12_single_dpm_table, ptr %1, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %soft_max_level121 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %soft_max_level121, align 4
  %and123 = and i32 %23, 65535
  %or124 = or i32 %and123, 262144
  %call125 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 39, i32 noundef %or124, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.then118.cleanup_crit_edge, label %if.then127

if.then118.cleanup_crit_edge:                     ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then127:                                       ; preds = %if.then118
  %call128 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_upload_dpm_max_level._rs.57, ptr noundef nonnull @__func__.vega12_upload_dpm_max_level) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.then127.cleanup_crit_edge, label %if.then127.cleanup.sink.split_crit_edge

if.then127.cleanup.sink.split_crit_edge:          ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.then127.cleanup_crit_edge:                     ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then127.cleanup.sink.split_crit_edge, %if.then100.cleanup.sink.split_crit_edge, %if.then73.cleanup.sink.split_crit_edge, %if.then52.cleanup.sink.split_crit_edge, %if.then25.cleanup.sink.split_crit_edge, %if.then2.cleanup.sink.split_crit_edge
  %.str.60.sink = phi ptr [ @.str.40, %if.then2.cleanup.sink.split_crit_edge ], [ @.str.44, %if.then25.cleanup.sink.split_crit_edge ], [ @.str.48, %if.then52.cleanup.sink.split_crit_edge ], [ @.str.52, %if.then73.cleanup.sink.split_crit_edge ], [ @.str.56, %if.then100.cleanup.sink.split_crit_edge ], [ @.str.60, %if.then127.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %if.then2.cleanup.sink.split_crit_edge ], [ %call23, %if.then25.cleanup.sink.split_crit_edge ], [ %call50, %if.then52.cleanup.sink.split_crit_edge ], [ %call71, %if.then73.cleanup.sink.split_crit_edge ], [ %call98, %if.then100.cleanup.sink.split_crit_edge ], [ %call125, %if.then127.cleanup.sink.split_crit_edge ]
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.60.sink) #18
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then127.cleanup_crit_edge, %if.then118.cleanup_crit_edge, %if.end113.cleanup_crit_edge, %if.then100.cleanup_crit_edge, %if.then73.cleanup_crit_edge, %if.then52.cleanup_crit_edge, %if.then25.cleanup_crit_edge, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then2.cleanup_crit_edge ], [ %call23, %if.then25.cleanup_crit_edge ], [ %call50, %if.then52.cleanup_crit_edge ], [ %call71, %if.then73.cleanup_crit_edge ], [ %call98, %if.then100.cleanup_crit_edge ], [ %call125, %if.then127.cleanup_crit_edge ], [ 0, %if.then118.cleanup_crit_edge ], [ 0, %if.end113.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc_with_parameter(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vega12_setup_default_dpm_tables(ptr noundef %hwmgr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 2136)
  %enabled = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 3, i32 1
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @vega12_setup_single_dpm_table(ptr noundef %hwmgr, ptr noundef %1, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.if.end14_crit_edge, label %if.then4

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then4:                                         ; preds = %if.then
  %call5 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_setup_default_dpm_tables._rs, ptr noundef nonnull @__func__.vega12_setup_default_dpm_tables) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then4.cleanup_crit_edge, label %do.end

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.130) #18
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %1, align 4
  %soc_clock = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %soc_clock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %soc_clock, align 4
  %div = udiv i32 %7, 100
  %value = getelementptr inbounds %struct.vega12_single_dpm_table, ptr %1, i32 0, i32 2, i32 0, i32 1
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div, ptr %value, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then.if.end14_crit_edge
  %dpm_state = getelementptr inbounds %struct.vega12_single_dpm_table, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %dpm_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %dpm_state, align 4
  %soft_max_level.i = getelementptr inbounds %struct.vega12_single_dpm_table, ptr %1, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %soft_max_level.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 65535, ptr %soft_max_level.i, align 4
  %hard_min_level.i = getelementptr inbounds %struct.vega12_single_dpm_table, ptr %1, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %hard_min_level.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %hard_min_level.i, align 4
  %hard_max_level.i = getelementptr inbounds %struct.vega12_single_dpm_table, ptr %1, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %hard_max_level.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 65535, ptr %hard_max_level.i, align 4
  %gfx_table = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 1
  %enabled18 = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 1, i32 1
  %13 = ptrtoint ptr %enabled18 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %enabled18, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool19.not = icmp eq i8 %14, 0
  br i1 %tobool19.not, label %if.else37, label %if.then20

if.then20:                                        ; preds = %if.end14
  %call21 = tail call fastcc i32 @vega12_setup_single_dpm_table(ptr noundef %hwmgr, ptr noundef %gfx_table, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool23.not = icmp eq i32 %call21, 0
  br i1 %tobool23.not, label %if.then20.if.end44_crit_edge, label %if.then24

if.then20.if.end44_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.then24:                                        ; preds = %if.then20
  %call25 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_setup_default_dpm_tables._rs.131, ptr noundef nonnull @__func__.vega12_setup_default_dpm_tables) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then24.cleanup_crit_edge, label %do.end30

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end30:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.134) #18
  br label %cleanup

if.else37:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %gfx_table to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %gfx_table, align 4
  %gfx_clock = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 3, i32 6
  %16 = ptrtoint ptr %gfx_clock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gfx_clock, align 4
  %div40 = udiv i32 %17, 100
  %value43 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 1, i32 2, i32 0, i32 1
  %18 = ptrtoint ptr %value43 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div40, ptr %value43, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.else37, %if.then20.if.end44_crit_edge
  %dpm_state45 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %dpm_state45 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %dpm_state45, align 4
  %soft_max_level.i376 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 1, i32 1, i32 1
  %20 = ptrtoint ptr %soft_max_level.i376 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 65535, ptr %soft_max_level.i376, align 4
  %hard_min_level.i377 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 1, i32 1, i32 2
  %21 = ptrtoint ptr %hard_min_level.i377 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %hard_min_level.i377, align 4
  %hard_max_level.i378 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 1, i32 1, i32 3
  %22 = ptrtoint ptr %hard_max_level.i378 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 65535, ptr %hard_max_level.i378, align 4
  %mem_table = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 2
  %enabled49 = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 2, i32 1
  %23 = ptrtoint ptr %enabled49 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %enabled49, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool50.not = icmp eq i8 %24, 0
  br i1 %tobool50.not, label %if.else68, label %if.then51

if.then51:                                        ; preds = %if.end44
  %call52 = tail call fastcc i32 @vega12_setup_single_dpm_table(ptr noundef %hwmgr, ptr noundef %mem_table, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool54.not = icmp eq i32 %call52, 0
  br i1 %tobool54.not, label %if.then51.if.end75_crit_edge, label %if.then55

if.then51.if.end75_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

if.then55:                                        ; preds = %if.then51
  %call56 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_setup_default_dpm_tables._rs.135, ptr noundef nonnull @__func__.vega12_setup_default_dpm_tables) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then55.cleanup_crit_edge, label %do.end61

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end61:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #17
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.138) #18
  br label %cleanup

if.else68:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %mem_table to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %mem_table, align 4
  %mem_clock = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 3, i32 7
  %26 = ptrtoint ptr %mem_clock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mem_clock, align 8
  %div71 = udiv i32 %27, 100
  %value74 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 2, i32 2, i32 0, i32 1
  %28 = ptrtoint ptr %value74 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div71, ptr %value74, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.else68, %if.then51.if.end75_crit_edge
  %dpm_state76 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %dpm_state76 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %dpm_state76, align 4
  %soft_max_level.i379 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 2, i32 1, i32 1
  %30 = ptrtoint ptr %soft_max_level.i379 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 65535, ptr %soft_max_level.i379, align 4
  %hard_min_level.i380 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 2, i32 1, i32 2
  %31 = ptrtoint ptr %hard_min_level.i380 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %hard_min_level.i380, align 4
  %hard_max_level.i381 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 2, i32 1, i32 3
  %32 = ptrtoint ptr %hard_max_level.i381 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 65535, ptr %hard_max_level.i381, align 4
  %eclk_table = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 3
  %enabled80 = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 5, i32 1
  %33 = ptrtoint ptr %enabled80 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %enabled80, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool81.not = icmp eq i8 %34, 0
  br i1 %tobool81.not, label %if.else99, label %if.then82

if.then82:                                        ; preds = %if.end75
  %call83 = tail call fastcc i32 @vega12_setup_single_dpm_table(ptr noundef %hwmgr, ptr noundef %eclk_table, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool85.not = icmp eq i32 %call83, 0
  br i1 %tobool85.not, label %if.then82.if.end106_crit_edge, label %if.then86

if.then82.if.end106_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end106

if.then86:                                        ; preds = %if.then82
  %call87 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_setup_default_dpm_tables._rs.139, ptr noundef nonnull @__func__.vega12_setup_default_dpm_tables) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then86.cleanup_crit_edge, label %do.end92

if.then86.cleanup_crit_edge:                      ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end92:                                         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #17
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.142) #18
  br label %cleanup

if.else99:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %eclk_table to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %eclk_table, align 4
  %eclock = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 3, i32 10
  %36 = ptrtoint ptr %eclock to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %eclock, align 4
  %div102 = udiv i32 %37, 100
  %value105 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 3, i32 2, i32 0, i32 1
  %38 = ptrtoint ptr %value105 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %div102, ptr %value105, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.else99, %if.then82.if.end106_crit_edge
  %dpm_state107 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %dpm_state107 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %dpm_state107, align 4
  %soft_max_level.i382 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 3, i32 1, i32 1
  %40 = ptrtoint ptr %soft_max_level.i382 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 65535, ptr %soft_max_level.i382, align 4
  %hard_min_level.i383 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 3, i32 1, i32 2
  %41 = ptrtoint ptr %hard_min_level.i383 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %hard_min_level.i383, align 4
  %hard_max_level.i384 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 3, i32 1, i32 3
  %42 = ptrtoint ptr %hard_max_level.i384 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 65535, ptr %hard_max_level.i384, align 4
  %vclk_table = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 4
  %enabled111 = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 4, i32 1
  %43 = ptrtoint ptr %enabled111 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %enabled111, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool112.not = icmp eq i8 %44, 0
  br i1 %tobool112.not, label %if.else130, label %if.then113

if.then113:                                       ; preds = %if.end106
  %call114 = tail call fastcc i32 @vega12_setup_single_dpm_table(ptr noundef %hwmgr, ptr noundef %vclk_table, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool116.not = icmp eq i32 %call114, 0
  br i1 %tobool116.not, label %if.then113.if.end137_crit_edge, label %if.then117

if.then113.if.end137_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end137

if.then117:                                       ; preds = %if.then113
  %call118 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_setup_default_dpm_tables._rs.143, ptr noundef nonnull @__func__.vega12_setup_default_dpm_tables) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.then117.cleanup_crit_edge, label %do.end123

if.then117.cleanup_crit_edge:                     ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end123:                                        ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #17
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.146) #18
  br label %cleanup

if.else130:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #17
  %45 = ptrtoint ptr %vclk_table to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %vclk_table, align 4
  %vclock = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 3, i32 12
  %46 = ptrtoint ptr %vclock to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vclock, align 4
  %div133 = udiv i32 %47, 100
  %value136 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 4, i32 2, i32 0, i32 1
  %48 = ptrtoint ptr %value136 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div133, ptr %value136, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.else130, %if.then113.if.end137_crit_edge
  %dpm_state138 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %dpm_state138 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %dpm_state138, align 4
  %soft_max_level.i385 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 4, i32 1, i32 1
  %50 = ptrtoint ptr %soft_max_level.i385 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 65535, ptr %soft_max_level.i385, align 4
  %hard_min_level.i386 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 4, i32 1, i32 2
  %51 = ptrtoint ptr %hard_min_level.i386 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %hard_min_level.i386, align 4
  %hard_max_level.i387 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 4, i32 1, i32 3
  %52 = ptrtoint ptr %hard_max_level.i387 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 65535, ptr %hard_max_level.i387, align 4
  %dclk_table = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 5
  %53 = ptrtoint ptr %enabled111 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %enabled111, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool143.not = icmp eq i8 %54, 0
  br i1 %tobool143.not, label %if.else161, label %if.then144

if.then144:                                       ; preds = %if.end137
  %call145 = tail call fastcc i32 @vega12_setup_single_dpm_table(ptr noundef %hwmgr, ptr noundef %dclk_table, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool147.not = icmp eq i32 %call145, 0
  br i1 %tobool147.not, label %if.then144.if.end168_crit_edge, label %if.then148

if.then144.if.end168_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end168

if.then148:                                       ; preds = %if.then144
  %call149 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_setup_default_dpm_tables._rs.147, ptr noundef nonnull @__func__.vega12_setup_default_dpm_tables) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.then148.cleanup_crit_edge, label %do.end154

if.then148.cleanup_crit_edge:                     ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end154:                                        ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #17
  %call156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.150) #18
  br label %cleanup

if.else161:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #17
  %55 = ptrtoint ptr %dclk_table to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %dclk_table, align 4
  %dclock = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 3, i32 11
  %56 = ptrtoint ptr %dclock to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dclock, align 8
  %div164 = udiv i32 %57, 100
  %value167 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 5, i32 2, i32 0, i32 1
  %58 = ptrtoint ptr %value167 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %div164, ptr %value167, align 4
  br label %if.end168

if.end168:                                        ; preds = %if.else161, %if.then144.if.end168_crit_edge
  %dpm_state169 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 5, i32 1
  %59 = ptrtoint ptr %dpm_state169 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %dpm_state169, align 4
  %soft_max_level.i388 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 5, i32 1, i32 1
  %60 = ptrtoint ptr %soft_max_level.i388 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 65535, ptr %soft_max_level.i388, align 4
  %hard_min_level.i389 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 5, i32 1, i32 2
  %61 = ptrtoint ptr %hard_min_level.i389 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %hard_min_level.i389, align 4
  %hard_max_level.i390 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 5, i32 1, i32 3
  %62 = ptrtoint ptr %hard_max_level.i390 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 65535, ptr %hard_max_level.i390, align 4
  %dcef_table = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 6
  %enabled173 = getelementptr %struct.vega12_hwmgr, ptr %1, i32 0, i32 53, i32 9, i32 1
  %63 = ptrtoint ptr %enabled173 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %enabled173, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool174.not = icmp eq i8 %64, 0
  br i1 %tobool174.not, label %if.else192, label %if.then175

if.then175:                                       ; preds = %if.end168
  %call176 = tail call fastcc i32 @vega12_setup_single_dpm_table(ptr noundef %hwmgr, ptr noundef %dcef_table, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool178.not = icmp eq i32 %call176, 0
  br i1 %tobool178.not, label %if.then175.if.end199_crit_edge, label %if.then179

if.then175.if.end199_crit_edge:                   ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end199

if.then179:                                       ; preds = %if.then175
  %call180 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_setup_default_dpm_tables._rs.151, ptr noundef nonnull @__func__.vega12_setup_default_dpm_tables) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.then179.cleanup_crit_edge, label %do.end185

if.then179.cleanup_crit_edge:                     ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end185:                                        ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #17
  %call187 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.154) #18
  br label %cleanup

if.else192:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #17
  %65 = ptrtoint ptr %dcef_table to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %dcef_table, align 4
  %dcef_clock = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 3, i32 9
  %66 = ptrtoint ptr %dcef_clock to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dcef_clock, align 8
  %div195 = udiv i32 %67, 100
  %value198 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 6, i32 2, i32 0, i32 1
  %68 = ptrtoint ptr %value198 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %div195, ptr %value198, align 4
  br label %if.end199

if.end199:                                        ; preds = %if.else192, %if.then175.if.end199_crit_edge
  %dpm_state200 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 6, i32 1
  %69 = ptrtoint ptr %dpm_state200 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %dpm_state200, align 4
  %soft_max_level.i391 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 6, i32 1, i32 1
  %70 = ptrtoint ptr %soft_max_level.i391 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 65535, ptr %soft_max_level.i391, align 4
  %hard_min_level.i392 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 6, i32 1, i32 2
  %71 = ptrtoint ptr %hard_min_level.i392 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %hard_min_level.i392, align 4
  %hard_max_level.i393 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 6, i32 1, i32 3
  %72 = ptrtoint ptr %hard_max_level.i393 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 65535, ptr %hard_max_level.i393, align 4
  %pixel_table = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 7
  %73 = ptrtoint ptr %enabled173 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %enabled173, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool205.not = icmp eq i8 %74, 0
  br i1 %tobool205.not, label %if.else223, label %if.then206

if.then206:                                       ; preds = %if.end199
  %call207 = tail call fastcc i32 @vega12_setup_single_dpm_table(ptr noundef %hwmgr, ptr noundef %pixel_table, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool209.not = icmp eq i32 %call207, 0
  br i1 %tobool209.not, label %if.then206.if.end225_crit_edge, label %if.then210

if.then206.if.end225_crit_edge:                   ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end225

if.then210:                                       ; preds = %if.then206
  %call211 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_setup_default_dpm_tables._rs.155, ptr noundef nonnull @__func__.vega12_setup_default_dpm_tables) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %if.then210.cleanup_crit_edge, label %do.end216

if.then210.cleanup_crit_edge:                     ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end216:                                        ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #17
  %call218 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.158) #18
  br label %cleanup

if.else223:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #17
  %75 = ptrtoint ptr %pixel_table to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %pixel_table, align 4
  br label %if.end225

if.end225:                                        ; preds = %if.else223, %if.then206.if.end225_crit_edge
  %dpm_state226 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 7, i32 1
  %76 = ptrtoint ptr %dpm_state226 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %dpm_state226, align 4
  %soft_max_level.i394 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 7, i32 1, i32 1
  %77 = ptrtoint ptr %soft_max_level.i394 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 65535, ptr %soft_max_level.i394, align 4
  %hard_min_level.i395 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 7, i32 1, i32 2
  %78 = ptrtoint ptr %hard_min_level.i395 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %hard_min_level.i395, align 4
  %hard_max_level.i396 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 7, i32 1, i32 3
  %79 = ptrtoint ptr %hard_max_level.i396 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 65535, ptr %hard_max_level.i396, align 4
  %display_table = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 8
  %80 = ptrtoint ptr %enabled173 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %enabled173, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool231.not = icmp eq i8 %81, 0
  br i1 %tobool231.not, label %if.else249, label %if.then232

if.then232:                                       ; preds = %if.end225
  %call233 = tail call fastcc i32 @vega12_setup_single_dpm_table(ptr noundef %hwmgr, ptr noundef %display_table, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %tobool235.not = icmp eq i32 %call233, 0
  br i1 %tobool235.not, label %if.then232.if.end251_crit_edge, label %if.then236

if.then232.if.end251_crit_edge:                   ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end251

if.then236:                                       ; preds = %if.then232
  %call237 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_setup_default_dpm_tables._rs.159, ptr noundef nonnull @__func__.vega12_setup_default_dpm_tables) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call237)
  %tobool238.not = icmp eq i32 %call237, 0
  br i1 %tobool238.not, label %if.then236.cleanup_crit_edge, label %do.end242

if.then236.cleanup_crit_edge:                     ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end242:                                        ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #17
  %call244 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.162) #18
  br label %cleanup

if.else249:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #17
  %82 = ptrtoint ptr %display_table to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %display_table, align 4
  br label %if.end251

if.end251:                                        ; preds = %if.else249, %if.then232.if.end251_crit_edge
  %dpm_state252 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 8, i32 1
  %83 = ptrtoint ptr %dpm_state252 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %dpm_state252, align 4
  %soft_max_level.i397 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 8, i32 1, i32 1
  %84 = ptrtoint ptr %soft_max_level.i397 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 65535, ptr %soft_max_level.i397, align 4
  %hard_min_level.i398 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 8, i32 1, i32 2
  %85 = ptrtoint ptr %hard_min_level.i398 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %hard_min_level.i398, align 4
  %hard_max_level.i399 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 8, i32 1, i32 3
  %86 = ptrtoint ptr %hard_max_level.i399 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 65535, ptr %hard_max_level.i399, align 4
  %phy_table = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 9
  %87 = ptrtoint ptr %enabled173 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %enabled173, align 1, !range !619
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool257.not = icmp eq i8 %88, 0
  br i1 %tobool257.not, label %if.else275, label %if.then258

if.then258:                                       ; preds = %if.end251
  %call259 = tail call fastcc i32 @vega12_setup_single_dpm_table(ptr noundef %hwmgr, ptr noundef %phy_table, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call259)
  %tobool261.not = icmp eq i32 %call259, 0
  br i1 %tobool261.not, label %if.then258.if.end277_crit_edge, label %if.then262

if.then258.if.end277_crit_edge:                   ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end277

if.then262:                                       ; preds = %if.then258
  %call263 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_setup_default_dpm_tables._rs.163, ptr noundef nonnull @__func__.vega12_setup_default_dpm_tables) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call263)
  %tobool264.not = icmp eq i32 %call263, 0
  br i1 %tobool264.not, label %if.then262.cleanup_crit_edge, label %do.end268

if.then262.cleanup_crit_edge:                     ; preds = %if.then262
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end268:                                        ; preds = %if.then262
  call void @__sanitizer_cov_trace_pc() #17
  %call270 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.166) #18
  br label %cleanup

if.else275:                                       ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #17
  %89 = ptrtoint ptr %phy_table to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %phy_table, align 4
  br label %if.end277

if.end277:                                        ; preds = %if.else275, %if.then258.if.end277_crit_edge
  %dpm_state278 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 9, i32 1
  %90 = ptrtoint ptr %dpm_state278 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %dpm_state278, align 4
  %soft_max_level.i400 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 9, i32 1, i32 1
  %91 = ptrtoint ptr %soft_max_level.i400 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 65535, ptr %soft_max_level.i400, align 4
  %hard_min_level.i401 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 9, i32 1, i32 2
  %92 = ptrtoint ptr %hard_min_level.i401 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %hard_min_level.i401, align 4
  %hard_max_level.i402 = getelementptr inbounds %struct.vega12_dpm_table, ptr %1, i32 0, i32 9, i32 1, i32 3
  %93 = ptrtoint ptr %hard_max_level.i402 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 65535, ptr %hard_max_level.i402, align 4
  %golden_dpm_table = getelementptr inbounds %struct.vega12_hwmgr, ptr %1, i32 0, i32 1
  %94 = call ptr @memcpy(ptr %golden_dpm_table, ptr %1, i32 2136)
  br label %cleanup

cleanup:                                          ; preds = %if.end277, %do.end268, %if.then262.cleanup_crit_edge, %do.end242, %if.then236.cleanup_crit_edge, %do.end216, %if.then210.cleanup_crit_edge, %do.end185, %if.then179.cleanup_crit_edge, %do.end154, %if.then148.cleanup_crit_edge, %do.end123, %if.then117.cleanup_crit_edge, %do.end92, %if.then86.cleanup_crit_edge, %do.end61, %if.then55.cleanup_crit_edge, %do.end30, %if.then24.cleanup_crit_edge, %do.end, %if.then4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end277 ], [ %call, %do.end ], [ %call, %if.then4.cleanup_crit_edge ], [ %call21, %do.end30 ], [ %call21, %if.then24.cleanup_crit_edge ], [ %call52, %do.end61 ], [ %call52, %if.then55.cleanup_crit_edge ], [ %call83, %do.end92 ], [ %call83, %if.then86.cleanup_crit_edge ], [ %call114, %do.end123 ], [ %call114, %if.then117.cleanup_crit_edge ], [ %call145, %do.end154 ], [ %call145, %if.then148.cleanup_crit_edge ], [ %call176, %do.end185 ], [ %call176, %if.then179.cleanup_crit_edge ], [ %call207, %do.end216 ], [ %call207, %if.then210.cleanup_crit_edge ], [ %call233, %do.end242 ], [ %call233, %if.then236.cleanup_crit_edge ], [ %call259, %do.end268 ], [ %call259, %if.then262.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pp_atomfwctrl_get_vbios_bootup_values(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_smc_table_manager(ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vega12_get_enabled_smc_features(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vega12_setup_single_dpm_table(ptr noundef %hwmgr, ptr nocapture noundef writeonly %dpm_table, i32 noundef %clk_id) unnamed_addr #0 align 64 {
entry:
  %num_of_levels = alloca i32, align 4
  %clk = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_of_levels) #15
  %0 = ptrtoint ptr %num_of_levels to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num_of_levels, align 4, !annotation !620
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk) #15
  %1 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %clk, align 4, !annotation !620
  %shl.i = shl i32 %clk_id, 16
  %or.i = or i32 %shl.i, 255
  %call.i = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 44, i32 noundef %or.i, ptr noundef nonnull %num_of_levels) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end8, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call1.i = call i32 @___ratelimit(ptr noundef nonnull @vega12_get_number_of_dpm_level._rs, ptr noundef nonnull @__func__.vega12_get_number_of_dpm_level) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.then_crit_edge, label %do.end.i

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.172) #18
  br label %if.then

if.then:                                          ; preds = %do.end.i, %if.then.i.if.then_crit_edge
  %call1 = call i32 @___ratelimit(ptr noundef nonnull @vega12_setup_single_dpm_table._rs, ptr noundef nonnull @__func__.vega12_setup_single_dpm_table) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end8:                                          ; preds = %entry
  %2 = ptrtoint ptr %num_of_levels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_of_levels, align 4
  %4 = ptrtoint ptr %dpm_table to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %dpm_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp52.not = icmp eq i32 %3, 0
  br i1 %cmp52.not, label %do.end8.cleanup_crit_edge, label %do.end8.for.body_crit_edge

do.end8.for.body_crit_edge:                       ; preds = %do.end8
  br label %for.body

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %do.end24.for.body_crit_edge, %do.end8.for.body_crit_edge
  %i.053 = phi i32 [ %inc, %do.end24.for.body_crit_edge ], [ 0, %do.end8.for.body_crit_edge ]
  %or.i43 = or i32 %i.053, %shl.i
  %call.i44 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 44, i32 noundef %or.i43, ptr noundef nonnull %clk) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %cmp.i = icmp eq i32 %call.i44, 0
  br i1 %cmp.i, label %do.end24, label %if.then.i47

if.then.i47:                                      ; preds = %for.body
  %call1.i45 = call i32 @___ratelimit(ptr noundef nonnull @vega12_get_dpm_frequency_by_index._rs, ptr noundef nonnull @__func__.vega12_get_dpm_frequency_by_index) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45)
  %tobool.not.i46 = icmp eq i32 %call1.i45, 0
  br i1 %tobool.not.i46, label %if.then.i47.if.then12_crit_edge, label %do.end.i48

if.then.i47.if.then12_crit_edge:                  ; preds = %if.then.i47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12

do.end.i48:                                       ; preds = %if.then.i47
  call void @__sanitizer_cov_trace_pc() #17
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.173) #18
  br label %if.then12

if.then12:                                        ; preds = %do.end.i48, %if.then.i47.if.then12_crit_edge
  %call13 = call i32 @___ratelimit(ptr noundef nonnull @vega12_setup_single_dpm_table._rs.168, ptr noundef nonnull @__func__.vega12_setup_single_dpm_table) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.cleanup_crit_edge, label %if.then12.cleanup.sink.split_crit_edge

if.then12.cleanup.sink.split_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end24:                                         ; preds = %for.body
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %clk, align 4
  %arrayidx = getelementptr %struct.vega12_single_dpm_table, ptr %dpm_table, i32 0, i32 2, i32 %i.053
  %value = getelementptr %struct.vega12_single_dpm_table, ptr %dpm_table, i32 0, i32 2, i32 %i.053, i32 1
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %value, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.053, 1
  %9 = ptrtoint ptr %num_of_levels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_of_levels, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %do.end24.for.body_crit_edge, label %do.end24.cleanup_crit_edge

do.end24.cleanup_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end24.for.body_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cleanup.sink.split:                               ; preds = %if.then12.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.str.171.sink = phi ptr [ @.str.167, %if.then.cleanup.sink.split_crit_edge ], [ @.str.171, %if.then12.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i, %if.then.cleanup.sink.split_crit_edge ], [ -22, %if.then12.cleanup.sink.split_crit_edge ]
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.171.sink) #18
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end24.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %do.end8.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.cleanup_crit_edge ], [ -22, %if.then12.cleanup_crit_edge ], [ 0, %do.end8.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %do.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_of_levels) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vega12_fan_ctrl_stop_smc_fan_control(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vega12_fan_ctrl_start_smc_fan_control(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_set_watermarks_for_clocks_ranges(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #13

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vega12_thermal_get_temperature(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 320)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 320)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !34, !36, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !168, !169, !170, !171, !173, !174, !175, !176, !177, !179, !180, !181, !182, !184, !185, !186, !187, !188, !190, !191, !192, !193, !194, !196, !197, !198, !200, !201, !202, !203, !204, !206, !207, !208, !209, !210, !212, !213, !214, !216, !217, !218, !219, !221, !222, !223, !224, !225, !227, !228, !229, !230, !231, !233, !234, !235, !236, !238, !239, !240, !241, !243, !244, !245, !246, !247, !249, !250, !251, !252, !254, !255, !256, !257, !259, !260, !261, !262, !264, !265, !266, !267, !269, !270, !271, !272, !274, !275, !276, !277, !279, !280, !281, !282, !284, !285, !286, !287, !289, !290, !291, !292, !294, !295, !296, !297, !298, !300, !301, !302, !303, !305, !306, !307, !308, !309, !311, !312, !313, !314, !315, !317, !318, !319, !320, !321, !323, !324, !325, !326, !327, !329, !330, !331, !332, !333, !335, !336, !337, !338, !339, !341, !342, !343, !344, !346, !347, !348, !349, !350, !352, !353, !354, !355, !357, !358, !359, !360, !361, !363, !364, !365, !367, !368, !369, !370, !371, !373, !374, !375, !376, !378, !379, !380, !381, !383, !384, !385, !386, !387, !389, !390, !391, !392, !394, !395, !396, !397, !398, !400, !401, !402, !403, !404, !406, !407, !408, !410, !411, !412, !414, !415, !416, !418, !419, !420, !422, !423, !424, !426, !427, !428, !430, !431, !433, !434, !435, !437, !438, !439, !440, !441, !443, !444, !445, !446, !448, !450, !452, !454, !455, !456, !457, !459, !460, !461, !462, !464, !465, !466, !467, !469, !470, !471, !472, !474, !475, !476, !477, !479, !480, !481, !482, !484, !485, !486, !487, !488, !490, !491, !492, !493, !494, !496, !497, !498, !499, !501, !502, !503, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !577, !578, !579, !580, !582, !584, !586, !588, !590, !592, !593, !594, !595, !596, !598, !599, !600, !602, !603, !604, !605, !606, !608}
!llvm.module.flags = !{!610, !611, !612, !613, !614, !615, !616, !617}
!llvm.ident = !{!618}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1297, i32 3}
!2 = !{ptr @vega12_enable_disable_vce_dpm._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.vega12_enable_disable_vce_dpm, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vega12_enable_disable_vce_dpm._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @vega12_enable_disable_vce_dpm._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @vega12_hwmgr_funcs, !10, !"vega12_hwmgr_funcs", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2893, i32 35}
!11 = distinct !{null, !12, !"_rs", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 463, i32 2}
!13 = !{ptr @__func__.vega12_setup_asic_task, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @vega12_setup_asic_task._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @vega12_setup_asic_task._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = distinct !{null, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @vega12_force_dpm_highest._rs, !18, !"_rs", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1642, i32 2}
!19 = !{ptr @__func__.vega12_force_dpm_highest, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @vega12_force_dpm_highest._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @vega12_force_dpm_highest._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @vega12_force_dpm_highest._rs.6, !24, !"_rs", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1646, i32 2}
!25 = !{ptr @vega12_force_dpm_highest._entry.7, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @vega12_force_dpm_highest._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @vega12_find_highest_dpm_level._rs, !29, !"_rs", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1111, i32 2}
!30 = !{ptr @__func__.vega12_find_highest_dpm_level, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @vega12_find_highest_dpm_level._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @vega12_find_highest_dpm_level._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @vega12_upload_dpm_min_level._rs, !35, !"_rs", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1136, i32 3}
!36 = !{ptr @__func__.vega12_upload_dpm_min_level, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @vega12_upload_dpm_min_level._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @vega12_upload_dpm_min_level._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @vega12_upload_dpm_min_level._rs.12, !41, !"_rs", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1146, i32 3}
!42 = !{ptr @vega12_upload_dpm_min_level._entry.13, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @vega12_upload_dpm_min_level._entry_ptr.14, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @vega12_upload_dpm_min_level._rs.16, !46, !"_rs", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1154, i32 3}
!47 = !{ptr @vega12_upload_dpm_min_level._entry.17, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @vega12_upload_dpm_min_level._entry_ptr.18, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @vega12_upload_dpm_min_level._rs.20, !51, !"_rs", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1165, i32 3}
!52 = !{ptr @vega12_upload_dpm_min_level._entry.21, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @vega12_upload_dpm_min_level._entry_ptr.22, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @vega12_upload_dpm_min_level._rs.24, !56, !"_rs", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1174, i32 3}
!57 = !{ptr @vega12_upload_dpm_min_level._entry.25, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @vega12_upload_dpm_min_level._entry_ptr.26, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @vega12_upload_dpm_min_level._rs.28, !61, !"_rs", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1185, i32 3}
!62 = !{ptr @vega12_upload_dpm_min_level._entry.29, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @vega12_upload_dpm_min_level._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @vega12_upload_dpm_min_level._rs.32, !66, !"_rs", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1196, i32 3}
!67 = !{ptr @vega12_upload_dpm_min_level._entry.33, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @vega12_upload_dpm_min_level._entry_ptr.34, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @vega12_upload_dpm_min_level._rs.36, !71, !"_rs", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1207, i32 3}
!72 = !{ptr @vega12_upload_dpm_min_level._entry.37, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @vega12_upload_dpm_min_level._entry_ptr.38, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @vega12_upload_dpm_max_level._rs, !76, !"_rs", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1228, i32 3}
!77 = !{ptr @__func__.vega12_upload_dpm_max_level, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @vega12_upload_dpm_max_level._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @vega12_upload_dpm_max_level._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @vega12_upload_dpm_max_level._rs.41, !82, !"_rs", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1239, i32 3}
!83 = !{ptr @vega12_upload_dpm_max_level._entry.42, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @vega12_upload_dpm_max_level._entry_ptr.43, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @vega12_upload_dpm_max_level._rs.45, !87, !"_rs", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1250, i32 3}
!88 = !{ptr @vega12_upload_dpm_max_level._entry.46, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @vega12_upload_dpm_max_level._entry_ptr.47, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @vega12_upload_dpm_max_level._rs.49, !92, !"_rs", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1258, i32 3}
!93 = !{ptr @vega12_upload_dpm_max_level._entry.50, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @vega12_upload_dpm_max_level._entry_ptr.51, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.52, !92, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @vega12_upload_dpm_max_level._rs.53, !97, !"_rs", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1269, i32 3}
!98 = !{ptr @vega12_upload_dpm_max_level._entry.54, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @vega12_upload_dpm_max_level._entry_ptr.55, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.56, !97, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @vega12_upload_dpm_max_level._rs.57, !102, !"_rs", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1280, i32 3}
!103 = !{ptr @vega12_upload_dpm_max_level._entry.58, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @vega12_upload_dpm_max_level._entry_ptr.59, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.60, !102, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @vega12_force_dpm_lowest._rs, !107, !"_rs", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1671, i32 2}
!108 = !{ptr @__func__.vega12_force_dpm_lowest, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @vega12_force_dpm_lowest._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @vega12_force_dpm_lowest._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @vega12_force_dpm_lowest._rs.61, !112, !"_rs", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1675, i32 2}
!113 = !{ptr @vega12_force_dpm_lowest._entry.62, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @vega12_force_dpm_lowest._entry_ptr.63, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @vega12_unforce_dpm_levels._rs, !116, !"_rs", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1685, i32 2}
!117 = !{ptr @__func__.vega12_unforce_dpm_levels, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @vega12_unforce_dpm_levels._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @vega12_unforce_dpm_levels._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.64, !116, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @vega12_unforce_dpm_levels._rs.65, !122, !"_rs", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1689, i32 2}
!123 = !{ptr @vega12_unforce_dpm_levels._entry.66, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @vega12_unforce_dpm_levels._entry_ptr.67, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.68, !122, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @vega12_enable_dpm_tasks._rs, !127, !"_rs", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1037, i32 2}
!128 = !{ptr @__func__.vega12_enable_dpm_tasks, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @vega12_enable_dpm_tasks._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @vega12_enable_dpm_tasks._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.69, !127, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @vega12_enable_dpm_tasks._rs.70, !133, !"_rs", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1042, i32 2}
!134 = !{ptr @vega12_enable_dpm_tasks._entry.71, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @vega12_enable_dpm_tasks._entry_ptr.72, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.73, !133, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @vega12_enable_dpm_tasks._rs.74, !138, !"_rs", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1047, i32 2}
!139 = !{ptr @vega12_enable_dpm_tasks._entry.75, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @vega12_enable_dpm_tasks._entry_ptr.76, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.77, !138, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @vega12_enable_dpm_tasks._rs.78, !143, !"_rs", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1052, i32 2}
!144 = !{ptr @vega12_enable_dpm_tasks._entry.79, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @vega12_enable_dpm_tasks._entry_ptr.80, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.81, !143, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @vega12_enable_dpm_tasks._rs.82, !148, !"_rs", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1057, i32 2}
!149 = !{ptr @vega12_enable_dpm_tasks._entry.83, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @vega12_enable_dpm_tasks._entry_ptr.84, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.85, !148, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @vega12_enable_dpm_tasks._rs.86, !153, !"_rs", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1062, i32 2}
!154 = !{ptr @vega12_enable_dpm_tasks._entry.87, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @vega12_enable_dpm_tasks._entry_ptr.88, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.89, !153, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @vega12_enable_dpm_tasks._rs.90, !158, !"_rs", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1067, i32 2}
!159 = !{ptr @vega12_enable_dpm_tasks._entry.91, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @vega12_enable_dpm_tasks._entry_ptr.92, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.93, !158, !"<string literal>", i1 false, i1 false}
!162 = distinct !{null, !163, !"_rs", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1072, i32 2}
!164 = !{ptr @vega12_enable_dpm_tasks._entry.95, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @vega12_enable_dpm_tasks._entry_ptr.96, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @vega12_enable_dpm_tasks._rs.97, !167, !"_rs", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1077, i32 2}
!168 = !{ptr @vega12_enable_dpm_tasks._entry.98, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @vega12_enable_dpm_tasks._entry_ptr.99, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.100, !167, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @vega12_set_allowed_featuresmask._rs, !172, !"_rs", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 878, i32 2}
!173 = !{ptr @__func__.vega12_set_allowed_featuresmask, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @vega12_set_allowed_featuresmask._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @vega12_set_allowed_featuresmask._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.101, !172, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @vega12_set_allowed_featuresmask._rs.102, !178, !"_rs", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 884, i32 2}
!179 = !{ptr @vega12_set_allowed_featuresmask._entry.103, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @vega12_set_allowed_featuresmask._entry_ptr.104, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.105, !178, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @vega12_init_smc_table._rs, !183, !"_rs", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 844, i32 2}
!184 = !{ptr @__func__.vega12_init_smc_table, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @vega12_init_smc_table._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @vega12_init_smc_table._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.106, !183, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @vega12_run_acg_btc._rs, !189, !"_rs", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 854, i32 2}
!190 = !{ptr @__func__.vega12_run_acg_btc, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @vega12_run_acg_btc._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @vega12_run_acg_btc._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.107, !189, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @vega12_run_acg_btc._rs.108, !195, !"_rs", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 859, i32 2}
!196 = !{ptr @vega12_run_acg_btc._entry.109, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @vega12_run_acg_btc._entry_ptr.110, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @vega12_enable_all_smu_features._rs, !199, !"_rs", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 916, i32 2}
!200 = !{ptr @__func__.vega12_enable_all_smu_features, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @vega12_enable_all_smu_features._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @vega12_enable_all_smu_features._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.111, !199, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @vega12_override_pcie_parameters._rs, !205, !"_rs", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 533, i32 4}
!206 = !{ptr @__func__.vega12_override_pcie_parameters, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @vega12_override_pcie_parameters._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @vega12_override_pcie_parameters._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.112, !205, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @vega12_override_pcie_parameters._rs.113, !211, !"_rs", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 550, i32 4}
!212 = !{ptr @vega12_override_pcie_parameters._entry.114, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @vega12_override_pcie_parameters._entry_ptr.115, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @vega12_override_pcie_parameters._rs.116, !215, !"_rs", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 560, i32 3}
!216 = !{ptr @vega12_override_pcie_parameters._entry.117, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @vega12_override_pcie_parameters._entry_ptr.118, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.119, !215, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @vega12_get_all_clock_ranges._rs, !220, !"_rs", i1 false, i1 false}
!220 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1021, i32 3}
!221 = !{ptr @__func__.vega12_get_all_clock_ranges, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @vega12_get_all_clock_ranges._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @vega12_get_all_clock_ranges._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.120, !220, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @vega12_get_all_clock_ranges_helper._rs, !226, !"_rs", i1 false, i1 false}
!226 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 991, i32 2}
!227 = !{ptr @__func__.vega12_get_all_clock_ranges_helper, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @vega12_get_all_clock_ranges_helper._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @vega12_get_all_clock_ranges_helper._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.121, !226, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @vega12_get_all_clock_ranges_helper._rs.122, !232, !"_rs", i1 false, i1 false}
!232 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 998, i32 2}
!233 = !{ptr @vega12_get_all_clock_ranges_helper._entry.123, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @vega12_get_all_clock_ranges_helper._entry_ptr.124, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.125, !232, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @vega12_get_all_clock_ranges_helper._rs.126, !237, !"_rs", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1005, i32 2}
!238 = !{ptr @vega12_get_all_clock_ranges_helper._entry.127, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @vega12_get_all_clock_ranges_helper._entry_ptr.128, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.129, !237, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @vega12_setup_default_dpm_tables._rs, !242, !"_rs", i1 false, i1 false}
!242 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 648, i32 3}
!243 = !{ptr @__func__.vega12_setup_default_dpm_tables, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @vega12_setup_default_dpm_tables._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @vega12_setup_default_dpm_tables._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.130, !242, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @vega12_setup_default_dpm_tables._rs.131, !248, !"_rs", i1 false, i1 false}
!248 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 661, i32 3}
!249 = !{ptr @vega12_setup_default_dpm_tables._entry.132, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @vega12_setup_default_dpm_tables._entry_ptr.133, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.134, !248, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @vega12_setup_default_dpm_tables._rs.135, !253, !"_rs", i1 false, i1 false}
!253 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 674, i32 3}
!254 = !{ptr @vega12_setup_default_dpm_tables._entry.136, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @vega12_setup_default_dpm_tables._entry_ptr.137, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.138, !253, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @vega12_setup_default_dpm_tables._rs.139, !258, !"_rs", i1 false, i1 false}
!258 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 687, i32 3}
!259 = !{ptr @vega12_setup_default_dpm_tables._entry.140, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @vega12_setup_default_dpm_tables._entry_ptr.141, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.142, !258, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @vega12_setup_default_dpm_tables._rs.143, !263, !"_rs", i1 false, i1 false}
!263 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 700, i32 3}
!264 = !{ptr @vega12_setup_default_dpm_tables._entry.144, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @vega12_setup_default_dpm_tables._entry_ptr.145, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.146, !263, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @vega12_setup_default_dpm_tables._rs.147, !268, !"_rs", i1 false, i1 false}
!268 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 713, i32 3}
!269 = !{ptr @vega12_setup_default_dpm_tables._entry.148, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @vega12_setup_default_dpm_tables._entry_ptr.149, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.150, !268, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @vega12_setup_default_dpm_tables._rs.151, !273, !"_rs", i1 false, i1 false}
!273 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 726, i32 3}
!274 = !{ptr @vega12_setup_default_dpm_tables._entry.152, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @vega12_setup_default_dpm_tables._entry_ptr.153, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.154, !273, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @vega12_setup_default_dpm_tables._rs.155, !278, !"_rs", i1 false, i1 false}
!278 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 739, i32 3}
!279 = !{ptr @vega12_setup_default_dpm_tables._entry.156, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @vega12_setup_default_dpm_tables._entry_ptr.157, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.158, !278, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @vega12_setup_default_dpm_tables._rs.159, !283, !"_rs", i1 false, i1 false}
!283 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 750, i32 3}
!284 = !{ptr @vega12_setup_default_dpm_tables._entry.160, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @vega12_setup_default_dpm_tables._entry_ptr.161, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.162, !283, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @vega12_setup_default_dpm_tables._rs.163, !288, !"_rs", i1 false, i1 false}
!288 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 761, i32 3}
!289 = !{ptr @vega12_setup_default_dpm_tables._entry.164, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @vega12_setup_default_dpm_tables._entry_ptr.165, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.166, !288, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @vega12_setup_single_dpm_table._rs, !293, !"_rs", i1 false, i1 false}
!293 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 608, i32 2}
!294 = !{ptr @__func__.vega12_setup_single_dpm_table, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @vega12_setup_single_dpm_table._entry, !293, !"_entry", i1 false, i1 false}
!296 = !{ptr @vega12_setup_single_dpm_table._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.167, !293, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @vega12_setup_single_dpm_table._rs.168, !299, !"_rs", i1 false, i1 false}
!299 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 616, i32 3}
!300 = !{ptr @vega12_setup_single_dpm_table._entry.169, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @vega12_setup_single_dpm_table._entry_ptr.170, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.171, !299, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @vega12_get_number_of_dpm_level._rs, !304, !"_rs", i1 false, i1 false}
!304 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 578, i32 2}
!305 = !{ptr @__func__.vega12_get_number_of_dpm_level, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @vega12_get_number_of_dpm_level._entry, !304, !"_entry", i1 false, i1 false}
!307 = !{ptr @vega12_get_number_of_dpm_level._entry_ptr, !304, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.172, !304, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @vega12_get_dpm_frequency_by_index._rs, !310, !"_rs", i1 false, i1 false}
!310 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 592, i32 2}
!311 = !{ptr @__func__.vega12_get_dpm_frequency_by_index, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @vega12_get_dpm_frequency_by_index._entry, !310, !"_entry", i1 false, i1 false}
!313 = !{ptr @vega12_get_dpm_frequency_by_index._entry_ptr, !310, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.173, !310, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @vega12_disable_dpm_tasks._rs, !316, !"_rs", i1 false, i1 false}
!316 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2613, i32 2}
!317 = !{ptr @__func__.vega12_disable_dpm_tasks, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @vega12_disable_dpm_tasks._entry, !316, !"_entry", i1 false, i1 false}
!319 = !{ptr @vega12_disable_dpm_tasks._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.174, !316, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @vega12_disable_all_smu_features._rs, !322, !"_rs", i1 false, i1 false}
!322 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 942, i32 2}
!323 = !{ptr @__func__.vega12_disable_all_smu_features, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @vega12_disable_all_smu_features._entry, !322, !"_entry", i1 false, i1 false}
!325 = !{ptr @vega12_disable_all_smu_features._entry_ptr, !322, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.175, !322, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @vega12_enable_disable_uvd_dpm._rs, !328, !"_rs", i1 false, i1 false}
!328 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2558, i32 3}
!329 = !{ptr @__func__.vega12_enable_disable_uvd_dpm, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @vega12_enable_disable_uvd_dpm._entry, !328, !"_entry", i1 false, i1 false}
!331 = !{ptr @vega12_enable_disable_uvd_dpm._entry_ptr, !328, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.176, !328, !"<string literal>", i1 false, i1 false}
!333 = distinct !{null, !334, !"_rs", i1 false, i1 false}
!334 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1341, i32 3}
!335 = !{ptr @__func__.vega12_dpm_get_mclk, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @vega12_dpm_get_mclk._entry, !334, !"_entry", i1 false, i1 false}
!337 = !{ptr @vega12_dpm_get_mclk._entry_ptr, !334, !"_entry_ptr", i1 false, i1 false}
!338 = distinct !{null, !334, !"<string literal>", i1 false, i1 false}
!339 = distinct !{null, !340, !"_rs", i1 false, i1 false}
!340 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1346, i32 3}
!341 = !{ptr @vega12_dpm_get_mclk._entry.179, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @vega12_dpm_get_mclk._entry_ptr.180, !340, !"_entry_ptr", i1 false, i1 false}
!343 = distinct !{null, !340, !"<string literal>", i1 false, i1 false}
!344 = distinct !{null, !345, !"_rs", i1 false, i1 false}
!345 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1318, i32 3}
!346 = !{ptr @__func__.vega12_dpm_get_sclk, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @vega12_dpm_get_sclk._entry, !345, !"_entry", i1 false, i1 false}
!348 = !{ptr @vega12_dpm_get_sclk._entry_ptr, !345, !"_entry_ptr", i1 false, i1 false}
!349 = distinct !{null, !345, !"<string literal>", i1 false, i1 false}
!350 = distinct !{null, !351, !"_rs", i1 false, i1 false}
!351 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1323, i32 3}
!352 = !{ptr @vega12_dpm_get_sclk._entry.184, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @vega12_dpm_get_sclk._entry_ptr.185, !351, !"_entry_ptr", i1 false, i1 false}
!354 = distinct !{null, !351, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @vega12_notify_smc_display_config_after_ps_adjustment._rs, !356, !"_rs", i1 false, i1 false}
!356 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1608, i32 5}
!357 = !{ptr @__func__.vega12_notify_smc_display_config_after_ps_adjustment, !356, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @vega12_notify_smc_display_config_after_ps_adjustment._entry, !356, !"_entry", i1 false, i1 false}
!359 = !{ptr @vega12_notify_smc_display_config_after_ps_adjustment._entry_ptr, !356, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.187, !356, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @.str.189, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1616, i32 4}
!363 = !{ptr @vega12_notify_smc_display_config_after_ps_adjustment._entry.188, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @vega12_notify_smc_display_config_after_ps_adjustment._entry_ptr.190, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @vega12_set_uclk_to_highest_dpm_level._rs, !366, !"_rs", i1 false, i1 false}
!366 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2494, i32 3}
!367 = !{ptr @__func__.vega12_set_uclk_to_highest_dpm_level, !366, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @vega12_set_uclk_to_highest_dpm_level._entry, !366, !"_entry", i1 false, i1 false}
!369 = !{ptr @vega12_set_uclk_to_highest_dpm_level._entry_ptr, !366, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @.str.191, !366, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @vega12_set_uclk_to_highest_dpm_level._rs.192, !372, !"_rs", i1 false, i1 false}
!372 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2497, i32 3}
!373 = !{ptr @vega12_set_uclk_to_highest_dpm_level._entry.193, !372, !"_entry", i1 false, i1 false}
!374 = !{ptr @vega12_set_uclk_to_highest_dpm_level._entry_ptr.194, !372, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.195, !372, !"<string literal>", i1 false, i1 false}
!376 = !{ptr @vega12_set_uclk_to_highest_dpm_level._rs.196, !377, !"_rs", i1 false, i1 false}
!377 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2502, i32 3}
!378 = !{ptr @vega12_set_uclk_to_highest_dpm_level._entry.197, !377, !"_entry", i1 false, i1 false}
!379 = !{ptr @vega12_set_uclk_to_highest_dpm_level._entry_ptr.198, !377, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.199, !377, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @vega12_display_configuration_changed_task._rs, !382, !"_rs", i1 false, i1 false}
!382 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2538, i32 3}
!383 = !{ptr @__func__.vega12_display_configuration_changed_task, !382, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @vega12_display_configuration_changed_task._entry, !382, !"_entry", i1 false, i1 false}
!385 = !{ptr @vega12_display_configuration_changed_task._entry_ptr, !382, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.200, !382, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @.str.201, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1567, i32 4}
!389 = !{ptr @.str.202, !388, !"<string literal>", i1 false, i1 false}
!390 = !{ptr @vega12_display_clock_voltage_request._entry, !388, !"_entry", i1 false, i1 false}
!391 = !{ptr @vega12_display_clock_voltage_request._entry_ptr, !388, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @vega12_power_off_asic._rs, !393, !"_rs", i1 false, i1 false}
!393 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2625, i32 2}
!394 = !{ptr @__func__.vega12_power_off_asic, !393, !"<string literal>", i1 false, i1 false}
!395 = !{ptr @vega12_power_off_asic._entry, !393, !"_entry", i1 false, i1 false}
!396 = !{ptr @vega12_power_off_asic._entry_ptr, !393, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @.str.203, !393, !"<string literal>", i1 false, i1 false}
!398 = !{ptr @vega12_force_clock_level._rs, !399, !"_rs", i1 false, i1 false}
!399 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2012, i32 3}
!400 = !{ptr @__func__.vega12_force_clock_level, !399, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @vega12_force_clock_level._entry, !399, !"_entry", i1 false, i1 false}
!402 = !{ptr @vega12_force_clock_level._entry_ptr, !399, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @.str.204, !399, !"<string literal>", i1 false, i1 false}
!404 = !{ptr @vega12_force_clock_level._rs.205, !405, !"_rs", i1 false, i1 false}
!405 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2017, i32 3}
!406 = !{ptr @vega12_force_clock_level._entry.206, !405, !"_entry", i1 false, i1 false}
!407 = !{ptr @vega12_force_clock_level._entry_ptr.207, !405, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @vega12_force_clock_level._rs.208, !409, !"_rs", i1 false, i1 false}
!409 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2032, i32 3}
!410 = !{ptr @vega12_force_clock_level._entry.209, !409, !"_entry", i1 false, i1 false}
!411 = !{ptr @vega12_force_clock_level._entry_ptr.210, !409, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @vega12_force_clock_level._rs.211, !413, !"_rs", i1 false, i1 false}
!413 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2037, i32 3}
!414 = !{ptr @vega12_force_clock_level._entry.212, !413, !"_entry", i1 false, i1 false}
!415 = !{ptr @vega12_force_clock_level._entry_ptr.213, !413, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @.str.215, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2048, i32 4}
!418 = !{ptr @vega12_force_clock_level._entry.214, !417, !"_entry", i1 false, i1 false}
!419 = !{ptr @vega12_force_clock_level._entry_ptr.216, !417, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @vega12_force_clock_level._rs.217, !421, !"_rs", i1 false, i1 false}
!421 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2060, i32 3}
!422 = !{ptr @vega12_force_clock_level._entry.218, !421, !"_entry", i1 false, i1 false}
!423 = !{ptr @vega12_force_clock_level._entry_ptr.219, !421, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @vega12_force_clock_level._rs.220, !425, !"_rs", i1 false, i1 false}
!425 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2065, i32 3}
!426 = !{ptr @vega12_force_clock_level._entry.221, !425, !"_entry", i1 false, i1 false}
!427 = !{ptr @vega12_force_clock_level._entry_ptr.222, !425, !"_entry_ptr", i1 false, i1 false}
!428 = !{ptr @vega12_force_clock_level._entry.223, !429, !"_entry", i1 false, i1 false}
!429 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2075, i32 4}
!430 = !{ptr @vega12_force_clock_level._entry_ptr.224, !429, !"_entry_ptr", i1 false, i1 false}
!431 = !{ptr @vega12_force_clock_level._rs.225, !432, !"_rs", i1 false, i1 false}
!432 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2085, i32 3}
!433 = !{ptr @vega12_force_clock_level._entry.226, !432, !"_entry", i1 false, i1 false}
!434 = !{ptr @vega12_force_clock_level._entry_ptr.227, !432, !"_entry_ptr", i1 false, i1 false}
!435 = !{ptr @vega12_print_clock_levels._rs, !436, !"_rs", i1 false, i1 false}
!436 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2251, i32 3}
!437 = !{ptr @__func__.vega12_print_clock_levels, !436, !"<string literal>", i1 false, i1 false}
!438 = !{ptr @vega12_print_clock_levels._entry, !436, !"_entry", i1 false, i1 false}
!439 = !{ptr @vega12_print_clock_levels._entry_ptr, !436, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @.str.228, !436, !"<string literal>", i1 false, i1 false}
!441 = !{ptr @vega12_print_clock_levels._rs.229, !442, !"_rs", i1 false, i1 false}
!442 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2256, i32 3}
!443 = !{ptr @vega12_print_clock_levels._entry.230, !442, !"_entry", i1 false, i1 false}
!444 = !{ptr @vega12_print_clock_levels._entry_ptr.231, !442, !"_entry_ptr", i1 false, i1 false}
!445 = !{ptr @.str.232, !442, !"<string literal>", i1 false, i1 false}
!446 = !{ptr @.str.233, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2261, i32 32}
!448 = !{ptr @.str.234, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2263, i32 58}
!450 = !{ptr @.str.235, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2263, i32 64}
!452 = !{ptr @vega12_print_clock_levels._rs.236, !453, !"_rs", i1 false, i1 false}
!453 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2267, i32 3}
!454 = !{ptr @vega12_print_clock_levels._entry.237, !453, !"_entry", i1 false, i1 false}
!455 = !{ptr @vega12_print_clock_levels._entry_ptr.238, !453, !"_entry_ptr", i1 false, i1 false}
!456 = !{ptr @.str.239, !453, !"<string literal>", i1 false, i1 false}
!457 = !{ptr @vega12_print_clock_levels._rs.240, !458, !"_rs", i1 false, i1 false}
!458 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2272, i32 3}
!459 = !{ptr @vega12_print_clock_levels._entry.241, !458, !"_entry", i1 false, i1 false}
!460 = !{ptr @vega12_print_clock_levels._entry_ptr.242, !458, !"_entry_ptr", i1 false, i1 false}
!461 = !{ptr @.str.243, !458, !"<string literal>", i1 false, i1 false}
!462 = !{ptr @vega12_print_clock_levels._rs.244, !463, !"_rs", i1 false, i1 false}
!463 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2283, i32 3}
!464 = !{ptr @vega12_print_clock_levels._entry.245, !463, !"_entry", i1 false, i1 false}
!465 = !{ptr @vega12_print_clock_levels._entry_ptr.246, !463, !"_entry_ptr", i1 false, i1 false}
!466 = !{ptr @.str.247, !463, !"<string literal>", i1 false, i1 false}
!467 = !{ptr @vega12_print_clock_levels._rs.248, !468, !"_rs", i1 false, i1 false}
!468 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2290, i32 3}
!469 = !{ptr @vega12_print_clock_levels._entry.249, !468, !"_entry", i1 false, i1 false}
!470 = !{ptr @vega12_print_clock_levels._entry_ptr.250, !468, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @.str.251, !468, !"<string literal>", i1 false, i1 false}
!472 = !{ptr @vega12_print_clock_levels._rs.252, !473, !"_rs", i1 false, i1 false}
!473 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2301, i32 3}
!474 = !{ptr @vega12_print_clock_levels._entry.253, !473, !"_entry", i1 false, i1 false}
!475 = !{ptr @vega12_print_clock_levels._entry_ptr.254, !473, !"_entry_ptr", i1 false, i1 false}
!476 = !{ptr @.str.255, !473, !"<string literal>", i1 false, i1 false}
!477 = !{ptr @vega12_print_clock_levels._rs.256, !478, !"_rs", i1 false, i1 false}
!478 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2308, i32 3}
!479 = !{ptr @vega12_print_clock_levels._entry.257, !478, !"_entry", i1 false, i1 false}
!480 = !{ptr @vega12_print_clock_levels._entry_ptr.258, !478, !"_entry_ptr", i1 false, i1 false}
!481 = !{ptr @.str.259, !478, !"<string literal>", i1 false, i1 false}
!482 = !{ptr @vega12_get_current_gfx_clk_freq._rs, !483, !"_rs", i1 false, i1 false}
!483 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1402, i32 2}
!484 = !{ptr @__func__.vega12_get_current_gfx_clk_freq, !483, !"<string literal>", i1 false, i1 false}
!485 = !{ptr @vega12_get_current_gfx_clk_freq._entry, !483, !"_entry", i1 false, i1 false}
!486 = !{ptr @vega12_get_current_gfx_clk_freq._entry_ptr, !483, !"_entry_ptr", i1 false, i1 false}
!487 = !{ptr @.str.260, !483, !"<string literal>", i1 false, i1 false}
!488 = !{ptr @vega12_get_current_mclk_freq._rs, !489, !"_rs", i1 false, i1 false}
!489 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1419, i32 2}
!490 = !{ptr @__func__.vega12_get_current_mclk_freq, !489, !"<string literal>", i1 false, i1 false}
!491 = !{ptr @vega12_get_current_mclk_freq._entry, !489, !"_entry", i1 false, i1 false}
!492 = !{ptr @vega12_get_current_mclk_freq._entry_ptr, !489, !"_entry_ptr", i1 false, i1 false}
!493 = !{ptr @.str.261, !489, !"<string literal>", i1 false, i1 false}
!494 = !{ptr @.str.262, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1450, i32 3}
!496 = !{ptr @.str.263, !495, !"<string literal>", i1 false, i1 false}
!497 = !{ptr @vega12_get_current_activity_percent._entry, !495, !"_entry", i1 false, i1 false}
!498 = !{ptr @vega12_get_current_activity_percent._entry_ptr, !495, !"_entry_ptr", i1 false, i1 false}
!499 = !{ptr @.str.264, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 1370, i32 4}
!501 = !{ptr @.str.265, !500, !"<string literal>", i1 false, i1 false}
!502 = !{ptr @vega12_get_metrics_table._entry, !500, !"_entry", i1 false, i1 false}
!503 = !{ptr @vega12_get_metrics_table._entry_ptr, !500, !"_entry_ptr", i1 false, i1 false}
!504 = !{ptr @SMU7ThermalWithDelayPolicy, !505, !"SMU7ThermalWithDelayPolicy", i1 false, i1 false}
!505 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/inc/pp_thermal.h", i32 28, i32 56}
!506 = !{ptr @.str.266, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2106, i32 4}
!508 = !{ptr @.str.267, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2107, i32 4}
!510 = !{ptr @.str.268, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2108, i32 4}
!512 = !{ptr @.str.269, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2109, i32 4}
!514 = !{ptr @.str.270, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2110, i32 4}
!516 = !{ptr @.str.271, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2111, i32 4}
!518 = !{ptr @.str.272, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2112, i32 4}
!520 = !{ptr @.str.273, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2113, i32 4}
!522 = !{ptr @.str.274, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2114, i32 4}
!524 = !{ptr @.str.275, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2115, i32 4}
!526 = !{ptr @.str.276, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2116, i32 4}
!528 = !{ptr @.str.277, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2117, i32 4}
!530 = !{ptr @.str.278, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2118, i32 4}
!532 = !{ptr @.str.279, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2119, i32 4}
!534 = !{ptr @.str.280, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2120, i32 4}
!536 = !{ptr @.str.281, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2121, i32 4}
!538 = !{ptr @.str.282, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2122, i32 4}
!540 = !{ptr @.str.283, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2123, i32 4}
!542 = !{ptr @.str.284, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2124, i32 4}
!544 = !{ptr @.str.285, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2125, i32 4}
!546 = !{ptr @.str.286, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2126, i32 4}
!548 = !{ptr @.str.287, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2127, i32 4}
!550 = !{ptr @.str.288, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2128, i32 4}
!552 = !{ptr @.str.289, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2129, i32 4}
!554 = !{ptr @.str.290, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2130, i32 4}
!556 = !{ptr @.str.291, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2131, i32 4}
!558 = !{ptr @.str.292, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2132, i32 4}
!560 = !{ptr @.str.293, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2133, i32 4}
!562 = !{ptr @.str.294, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2134, i32 4}
!564 = !{ptr @vega12_get_ppfeature_status.ppfeature_name, !565, !"ppfeature_name", i1 false, i1 false}
!565 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2105, i32 21}
!566 = !{ptr @.str.295, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2136, i32 4}
!568 = !{ptr @.str.296, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2137, i32 4}
!570 = !{ptr @.str.297, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2138, i32 4}
!572 = distinct !{null, !573, !"output_title", i1 false, i1 false}
!573 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2135, i32 21}
!574 = !{ptr @vega12_get_ppfeature_status._rs, !575, !"_rs", i1 false, i1 false}
!575 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2147, i32 2}
!576 = !{ptr @__func__.vega12_get_ppfeature_status, !575, !"<string literal>", i1 false, i1 false}
!577 = !{ptr @vega12_get_ppfeature_status._entry, !575, !"_entry", i1 false, i1 false}
!578 = !{ptr @vega12_get_ppfeature_status._entry_ptr, !575, !"_entry_ptr", i1 false, i1 false}
!579 = !{ptr @.str.298, !575, !"<string literal>", i1 false, i1 false}
!580 = !{ptr @.str.299, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2151, i32 35}
!582 = !{ptr @.str.300, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2152, i32 35}
!584 = !{ptr @.str.301, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2157, i32 36}
!586 = !{ptr @.str.302, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2160, i32 40}
!588 = !{ptr @.str.303, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2160, i32 46}
!590 = !{ptr @.str.304, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2185, i32 2}
!592 = !{ptr @.str.305, !591, !"<string literal>", i1 false, i1 false}
!593 = !{ptr @.str.306, !591, !"<string literal>", i1 false, i1 false}
!594 = !{ptr @vega12_set_ppfeature_status.__UNIQUE_ID_ddebug343, !591, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!595 = !{ptr @.str.307, !591, !"<string literal>", i1 false, i1 false}
!596 = !{ptr @.str.308, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2186, i32 2}
!598 = !{ptr @vega12_set_ppfeature_status.__UNIQUE_ID_ddebug344, !597, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!599 = !{ptr @.str.309, !597, !"<string literal>", i1 false, i1 false}
!600 = !{ptr @vega12_set_mp1_state._rs, !601, !"_rs", i1 false, i1 false}
!601 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 2823, i32 2}
!602 = !{ptr @__func__.vega12_set_mp1_state, !601, !"<string literal>", i1 false, i1 false}
!603 = !{ptr @vega12_set_mp1_state._entry, !601, !"_entry", i1 false, i1 false}
!604 = !{ptr @vega12_set_mp1_state._entry_ptr, !601, !"_entry_ptr", i1 false, i1 false}
!605 = !{ptr @.str.310, !601, !"<string literal>", i1 false, i1 false}
!606 = !{ptr @link_width, !607, !"link_width", i1 false, i1 false}
!607 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 55, i32 18}
!608 = !{ptr @link_speed, !609, !"link_speed", i1 false, i1 false}
!609 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_hwmgr.c", i32 56, i32 18}
!610 = !{i32 1, !"wchar_size", i32 2}
!611 = !{i32 1, !"min_enum_size", i32 4}
!612 = !{i32 8, !"branch-target-enforcement", i32 0}
!613 = !{i32 8, !"sign-return-address", i32 0}
!614 = !{i32 8, !"sign-return-address-all", i32 0}
!615 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!616 = !{i32 7, !"uwtable", i32 1}
!617 = !{i32 7, !"frame-pointer", i32 2}
!618 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!619 = !{i8 0, i8 2}
!620 = !{!"auto-init"}
!621 = !{i32 0, i32 33}
!622 = !{i64 2148846773, i64 2148846778, i64 2148846791, i64 2148846835, i64 2148846869, i64 2148846890}
