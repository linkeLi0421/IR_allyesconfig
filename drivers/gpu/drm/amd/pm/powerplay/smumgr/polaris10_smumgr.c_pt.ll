; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/smumgr/polaris10_smumgr.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pp_smumgr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.SMU74_Discrete_GraphicsLevel = type { i32, i8, i8, i16, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, %struct.SMU_SclkSetting }
%struct.SMU_SclkSetting = type { i32, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, i16 }
%struct.SMU74_Discrete_MemoryLevel = type { i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8 }
%struct.polaris10_pt_defaults = type { i8, i8, i8, i8, i8, i8, i32, i32, [15 x i16], [15 x i16] }
%struct.sclkFcwRange_t = type { i8, i8, i16, i16, i16 }
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
%struct.cgs_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.polaris10_smumgr = type <{ %struct.smu7_smumgr, i8, %struct.SMU74_Discrete_DpmTable, %struct.SMU74_Discrete_Ulv, %struct.SMU74_Discrete_PmFuses, [3 x i8], [8 x %struct.polaris10_range_table], ptr, [8 x i32], %struct.pp_atomctrl_mc_reg_table }>
%struct.smu7_smumgr = type { %struct.smu7_buffer_entry, %struct.smu7_buffer_entry, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32 }
%struct.smu7_buffer_entry = type { i32, i64, ptr, ptr }
%struct.SMU74_Discrete_DpmTable = type { %struct.SMU74_PIDController, %struct.SMU74_PIDController, %struct.SMU74_PIDController, i32, i32, i32, i32, %struct.SMIO_Table, %struct.SMIO_Table, i32, [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, [1 x i32], [8 x %struct.SMU74_Discrete_GraphicsLevel], %struct.SMU74_Discrete_MemoryLevel, [4 x %struct.SMU74_Discrete_MemoryLevel], [8 x %struct.SMU74_Discrete_LinkLevel], %struct.SMU74_Discrete_ACPILevel, [8 x %struct.SMU74_Discrete_UvdLevel], [8 x %struct.SMU74_Discrete_ExtClkLevel], [8 x %struct.SMU74_Discrete_ExtClkLevel], [8 x %struct.SMU74_Discrete_ExtClkLevel], %struct.SMU74_Discrete_Ulv, [4 x [8 x i8]], i32, [32 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i16, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, [5 x [3 x [1 x i16]]], [5 x [3 x [1 x i16]]], i16, i16, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, [8 x i8], %struct.SMU_ClockStretcherDataTable, %struct.SMU_CKS_LOOKUPTable, i32, [8 x %struct.sclkFcwRange_t], [2 x %struct.GB_VDROOP_TABLE_t], [2 x %struct.SMU_QuadraticCoeffs] }
%struct.SMU74_PIDController = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SMIO_Table = type { [4 x %struct.SMIO_Pattern] }
%struct.SMIO_Pattern = type { i16, i8, i8 }
%struct.SMU74_Discrete_LinkLevel = type { i8, i8, i8, i8, i32, i32, i16, i16 }
%struct.SMU74_Discrete_ACPILevel = type { i32, i32, i32, i8, i8, i8, i8, i32, i32, %struct.SMU_SclkSetting }
%struct.SMU74_Discrete_UvdLevel = type { i32, i32, i32, i8, i8, [2 x i8] }
%struct.SMU74_Discrete_ExtClkLevel = type { i32, i32, i8, [3 x i8] }
%struct.SMU_ClockStretcherDataTable = type { [4 x %struct.SMU_ClockStretcherDataTableEntry] }
%struct.SMU_ClockStretcherDataTableEntry = type { i8, i8, i16 }
%struct.SMU_CKS_LOOKUPTable = type { [4 x %struct.SMU_CKS_LOOKUPTableEntry] }
%struct.SMU_CKS_LOOKUPTableEntry = type { i16, i16, i8, [3 x i8] }
%struct.GB_VDROOP_TABLE_t = type { i32, i32, i32, i32 }
%struct.SMU_QuadraticCoeffs = type { i32, i32, i16, i8, i8 }
%struct.SMU74_Discrete_Ulv = type { i32, i32, i16, i8, i8, i16, i16 }
%struct.SMU74_Discrete_PmFuses = type { [8 x i8], [8 x i8], [8 x i8], i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, [16 x i8], i16, i16, i16, i16, [16 x i8], i8, i8, [2 x i8], i16, i16, [3 x i16], i16, [3 x %struct.SMU_QuadraticCoeffs], %struct.SMU_QuadraticCoeffs, %struct.SMU_QuadraticCoeffs, %struct.SMU_QuadraticCoeffs, i32, i16, i16, i32 }
%struct.polaris10_range_table = type { i32, i32 }
%struct.pp_atomctrl_mc_reg_table = type { i8, i8, [20 x %struct.pp_atomctrl_mc_reg_entry], [32 x %struct.pp_atomctrl_mc_register_address] }
%struct.pp_atomctrl_mc_reg_entry = type { i32, [32 x i32] }
%struct.pp_atomctrl_mc_register_address = type { i16, i8 }
%struct.phm_ppt_v1_information = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16, i16, i16 }
%struct.phm_ppt_v1_pcie_table = type { i32, [0 x %struct.phm_ppt_v1_pcie_record] }
%struct.phm_ppt_v1_pcie_record = type { i8, i8, i16, i16, i32 }
%struct.smu7_hwmgr = type { %struct.smu7_dpm_table, %struct.smu7_dpm_table, %struct.smu7_odn_dpm_table, %struct.smu7_mclk_latency_table, [8 x i32], i32, i32, i32, i32, i32, i32, %struct.smu7_clock_registers, i8, i16, i8, i16, i16, i32, i32, i32, %struct.smu7_leakage_voltage, %struct.smu7_leakage_voltage, %struct.smu7_leakage_voltage, i32, i32, i32, i16, i16, i16, i16, i8, %struct.smu7_vbios_boot_state, i8, i8, i8, i8, i8, i8, i8, i32, i32, %struct.pp_atomctrl_voltage_table, %struct.pp_atomctrl_voltage_table, %struct.pp_atomctrl_voltage_table, %struct.pp_atomctrl_voltage_table, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, %struct.smu7_display_timing, %struct.smu7_thermal_temperature_setting, %struct.smu7_dpmlevel_enable_mask, i32, i32, i32, i32, i32, %struct.smu7_pcie_perf_range, %struct.smu7_pcie_perf_range, %struct.smu7_pcie_perf_range, %struct.smu7_pcie_perf_range, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i32, i8, i32, i32, i16, i16, i32, %struct.profile_mode_setting, i32, i32, i8, %struct._AtomCtrl_HiLoLeakageOffsetTable, %struct._AtomCtrl_EDCLeakgeTable }
%struct.smu7_dpm_table = type { %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table }
%struct.smu7_single_dpm_table = type { i32, [8 x %struct.smu7_dpm_level] }
%struct.smu7_dpm_level = type { i8, i32, i32 }
%struct.smu7_odn_dpm_table = type { %struct.phm_odn_clock_levels, %struct.phm_odn_clock_levels, %struct.smu7_odn_clock_voltage_dependency_table, %struct.smu7_odn_clock_voltage_dependency_table, i32, i32, i32 }
%struct.phm_odn_clock_levels = type { i32, i32, i32, i32, [8 x %struct.phm_odn_performance_level] }
%struct.phm_odn_performance_level = type { i32, i32, i8 }
%struct.smu7_odn_clock_voltage_dependency_table = type { i32, [8 x %struct.phm_ppt_v1_clock_voltage_dependency_record] }
%struct.phm_ppt_v1_clock_voltage_dependency_record = type { i32, i8, i8, i8, i16, i16, i16, i16, i16, i8, i8, i8, i32 }
%struct.smu7_mclk_latency_table = type { i32, [8 x %struct.smu7_mclk_latency_entries] }
%struct.smu7_mclk_latency_entries = type { i32, i32 }
%struct.smu7_clock_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.smu7_leakage_voltage = type { i16, [8 x i16], [8 x i16] }
%struct.smu7_vbios_boot_state = type { i16, i16, i16, i16, i32, i32, i16, i16 }
%struct.pp_atomctrl_voltage_table = type { i32, i32, i32, [32 x %struct.pp_atomctrl_voltage_table_entry] }
%struct.pp_atomctrl_voltage_table_entry = type { i16, i32 }
%struct.smu7_display_timing = type { i32, i32, i32 }
%struct.smu7_thermal_temperature_setting = type { i32, i32, i32 }
%struct.smu7_dpmlevel_enable_mask = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.smu7_pcie_perf_range = type { i16, i16 }
%struct.profile_mode_setting = type { i8, i8, i8, i16, i8, i8, i8, i16 }
%struct._AtomCtrl_HiLoLeakageOffsetTable = type { i16, i16, i16 }
%struct._AtomCtrl_EDCLeakgeTable = type { [24 x i32] }
%struct.SMU74_Discrete_FanTable = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i8, i8 }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.97, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.80, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.80 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.amdgpu_gmc = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, ptr, i32, %struct.amdgpu_irq_src, i32, i8, i32, i8, i32, i64, i64, i64, i64, %struct.spinlock, i8, ptr, %struct.atomic_t, [256 x %struct.amdgpu_gmc_fault], [256 x %struct.anon.96], i8, i8, ptr, %struct.amdgpu_xgmi, %struct.amdgpu_irq_src, i32, i32, i32, ptr, ptr }
%struct.amdgpu_gmc_fault = type { i56, %struct.atomic64_t }
%struct.anon.96 = type { i8, [7 x i8] }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.92] }
%struct.anon.92 = type { [12 x %struct.ttm_pool_type] }
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
%struct.anon.97 = type { %struct.spinlock, i64, i64, i64, i32 }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.108, i32, i32, i32, i32 }
%union.anon.108 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.amdgpu_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pp_atomctrl_clock_dividers_vi = type { i32, i32, %union.pp_atomctrl_tcipll_fb_divider, i8, i8, i8 }
%union.pp_atomctrl_tcipll_fb_divider = type { %struct.anon.115 }
%struct.anon.115 = type { i32 }
%struct.pp_atomctrl_gpio_pin_assignment = type { i16, i8 }
%struct.phm_ppt_v1_voltage_lookup_table = type { i32, [0 x %struct.phm_ppt_v1_voltage_lookup_record] }
%struct.phm_ppt_v1_voltage_lookup_record = type { i16, i16, i16, i16, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.90, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.90 = type { ptr }
%struct.phm_ppt_v1_clock_voltage_dependency_table = type { i32, [0 x %struct.phm_ppt_v1_clock_voltage_dependency_record] }
%struct.phm_ppt_v1_mm_clock_voltage_dependency_table = type { i32, [0 x %struct.phm_ppt_v1_mm_clock_voltage_dependency_record] }
%struct.phm_ppt_v1_mm_clock_voltage_dependency_record = type { i32, i32, i32, i32, i32, i8, i16, i16, i16, i8 }
%struct.phm_cac_tdp_table = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8 }
%struct.pp_atom_ctrl_sclk_range_table = type { [8 x %struct.pp_atom_ctrl_sclk_range_table_entry] }
%struct.pp_atom_ctrl_sclk_range_table_entry = type { i8, i8, i16, i16, i16 }
%struct.SMU74_Discrete_MCArbDramTimingTable = type { [8 x [4 x %struct.SMU74_Discrete_MCArbDramTimingTableEntry]] }
%struct.SMU74_Discrete_MCArbDramTimingTableEntry = type { i32, i32, i8, [3 x i8] }
%struct.pp_atom_ctrl__avfs_parameters = type { i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i16, i32, i16, i8, i8, i8, i8, i16, i8, i8 }
%struct.AVFS_meanNsigma_t = type { [3 x i32], i16, i16, i16, i16, [8 x i8] }
%struct.AVFS_Sclk_Offset_t = type { [8 x i16] }
%struct.pp_atomctrl_clock_dividers_ai = type { i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16 }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"polaris10_smu\00", [18 x i8] zeroinitializer }, align 32
@polaris10_smu_funcs = dso_local constant { %struct.pp_smumgr_func, [48 x i8] } { %struct.pp_smumgr_func { ptr @.str, ptr @polaris10_smu_init, ptr @smu7_smu_fini, ptr @polaris10_start_smu, ptr @smu7_check_fw_load_finish, ptr @smu7_reload_firmware, ptr null, ptr @smu7_get_argument, ptr @smu7_send_msg_to_smc, ptr @smu7_send_msg_to_smc_with_parameter, ptr null, ptr null, ptr @polaris10_update_smc_table, ptr @polaris10_process_firmware_header, ptr @polaris10_update_sclk_threshold, ptr @polaris10_thermal_setup_fan_table, ptr @polaris10_thermal_avfs_enable, ptr @polaris10_init_smc_table, ptr @polaris10_populate_all_graphic_levels, ptr @polaris10_populate_all_memory_levels, ptr @polaris10_initialize_mc_reg_table, ptr @polaris10_get_offsetof, ptr @polaris10_get_mac_definition, ptr @polaris10_is_dpm_running, ptr @polaris10_is_hw_avfs_present, ptr @polaris10_update_dpm_settings, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@polaris10_start_smu._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.polaris10_start_smu = private unnamed_addr constant [20 x i8] c"polaris10_start_smu\00", align 1
@polaris10_start_smu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_start_smu, ptr @.str.3, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\014amdgpu: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c\00", [59 x i8] zeroinitializer }, align 32
@polaris10_start_smu._entry_ptr = internal global ptr @polaris10_start_smu._entry, section ".printk_index", align 4
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to load SMU ucode.\00", [38 x i8] zeroinitializer }, align 32
@polaris10_start_smu_in_protection_mode._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.polaris10_start_smu_in_protection_mode = private unnamed_addr constant [39 x i8] c"polaris10_start_smu_in_protection_mode\00", align 1
@polaris10_start_smu_in_protection_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_start_smu_in_protection_mode, ptr @.str.3, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_start_smu_in_protection_mode._entry_ptr = internal global ptr @polaris10_start_smu_in_protection_mode._entry, section ".printk_index", align 4
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SMU Firmware start failed!\00", [37 x i8] zeroinitializer }, align 32
@polaris10_avfs_event_mgr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.polaris10_avfs_event_mgr = private unnamed_addr constant [25 x i8] c"polaris10_avfs_event_mgr\00", align 1
@polaris10_avfs_event_mgr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_avfs_event_mgr, ptr @.str.3, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_avfs_event_mgr._entry_ptr = internal global ptr @polaris10_avfs_event_mgr._entry, section ".printk_index", align 4
@.str.6 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"[AVFS][Polaris10_AVFSEventMgr] Could not Copy Graphics Level table over to SMU\00", [49 x i8] zeroinitializer }, align 32
@polaris10_avfs_event_mgr._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.polaris10_avfs_event_mgr, ptr @.str.3, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [122 x i8], [38 x i8] } { [122 x i8] c"\016amdgpu: [AVFS][Polaris10_AVFSEventMgr] AC BTC has not been successfully verified on Fiji. There may be in this setting.\00", [38 x i8] zeroinitializer }, align 32
@polaris10_avfs_event_mgr._entry_ptr.9 = internal global ptr @polaris10_avfs_event_mgr._entry.7, section ".printk_index", align 4
@polaris10_avfs_event_mgr._rs.10 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@polaris10_avfs_event_mgr._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_avfs_event_mgr, ptr @.str.3, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_avfs_event_mgr._entry_ptr.12 = internal global ptr @polaris10_avfs_event_mgr._entry.11, section ".printk_index", align 4
@.str.13 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"[AVFS][Polaris10_AVFSEventMgr] Could not setup Pwr Virus for AVFS \00", [61 x i8] zeroinitializer }, align 32
@polaris10_avfs_event_mgr._rs.14 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@polaris10_avfs_event_mgr._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_avfs_event_mgr, ptr @.str.3, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_avfs_event_mgr._entry_ptr.16 = internal global ptr @polaris10_avfs_event_mgr._entry.15, section ".printk_index", align 4
@.str.17 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"[AVFS][Polaris10_AVFSEventMgr] Failure at SmuPolaris10_PerformBTC. AVFS Disabled\00", [47 x i8] zeroinitializer }, align 32
@polaris10_setup_graphics_level_structure._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.polaris10_setup_graphics_level_structure = private unnamed_addr constant [41 x i8] c"polaris10_setup_graphics_level_structure\00", align 1
@polaris10_setup_graphics_level_structure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_setup_graphics_level_structure, ptr @.str.3, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_setup_graphics_level_structure._entry_ptr = internal global ptr @polaris10_setup_graphics_level_structure._entry, section ".printk_index", align 4
@.str.18 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"[AVFS][Polaris10_SetupGfxLvlStruct] SMU could not communicate starting address of DPM table\00", [36 x i8] zeroinitializer }, align 32
@polaris10_setup_graphics_level_structure._rs.19 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@polaris10_setup_graphics_level_structure._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_setup_graphics_level_structure, ptr @.str.3, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_setup_graphics_level_structure._entry_ptr.21 = internal global ptr @polaris10_setup_graphics_level_structure._entry.20, section ".printk_index", align 4
@.str.22 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"[AVFS][Polaris10_SetupGfxLvlStruct] Problems copying VRConfig value over to SMC\00", [48 x i8] zeroinitializer }, align 32
@avfs_graphics_level_polaris10 = internal constant { [8 x %struct.SMU74_Discrete_GraphicsLevel], [96 x i8] } { [8 x %struct.SMU74_Discrete_GraphicsLevel] [%struct.SMU74_Discrete_GraphicsLevel { i32 269395014, i8 0, i8 3, i16 12800, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 1, i8 10, i8 0, i8 0, i8 0, %struct.SMU_SclkSetting { i32 812974080, i16 12288, i16 0, i16 9728, i8 0, i8 0, i16 4, i16 -28926, i16 -1, i16 12032, i16 12302, i16 9984 } }, %struct.SMU74_Discrete_GraphicsLevel { i32 1074701382, i8 1, i8 4, i16 12800, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 1, i8 10, i8 0, i8 0, i8 0, %struct.SMU_SclkSetting { i32 1083965440, i16 8192, i16 0, i16 7680, i8 1, i8 1, i16 4, i16 -32000, i16 -1, i16 7936, i16 -13474, i16 6656 } }, %struct.SMU74_Discrete_GraphicsLevel { i32 1947116614, i8 1, i8 0, i16 12800, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 1, i8 10, i8 0, i8 0, i8 0, %struct.SMU_SclkSetting { i32 1354956800, i16 10240, i16 0, i16 8192, i8 1, i8 1, i16 4, i16 3074, i16 -1, i16 9984, i16 25651, i16 8448 } }, %struct.SMU74_Discrete_GraphicsLevel { i32 -1542544314, i8 1, i8 0, i16 12800, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 1, i8 10, i8 0, i8 0, i8 0, %struct.SMU_SclkSetting { i32 1625948160, i16 12288, i16 0, i16 9728, i8 1, i8 1, i16 4, i16 -28926, i16 -1, i16 12032, i16 12302, i16 9984 } }, %struct.SMU74_Discrete_GraphicsLevel { i32 -670129082, i8 1, i8 0, i16 12800, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 1, i8 10, i8 0, i8 0, i8 0, %struct.SMU_SclkSetting { i32 1880162560, i16 14336, i16 0, i16 11264, i8 1, i8 1, i16 4, i16 4611, i16 -1, i16 13824, i16 -13854, i16 11776 } }, %struct.SMU74_Discrete_GraphicsLevel { i32 1007658054, i8 1, i8 0, i16 12800, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 1, i8 10, i8 0, i8 0, i8 0, %struct.SMU_SclkSetting { i32 -2143813376, i16 8192, i16 0, i16 7680, i8 2, i8 1, i16 4, i16 -32000, i16 -1, i16 7936, i16 -13474, i16 6656 } }, %struct.SMU74_Discrete_GraphicsLevel { i32 1812964422, i8 1, i8 0, i16 12800, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 1, i8 10, i8 0, i8 0, i8 0, %struct.SMU_SclkSetting { i32 -1872822016, i16 9216, i16 0, i16 7680, i8 2, i8 1, i16 4, i16 -30463, i16 -1, i16 8960, i16 12620, i16 7424 } }, %struct.SMU74_Discrete_GraphicsLevel { i32 -1609587642, i8 1, i8 0, i16 12800, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 1, i8 10, i8 0, i8 0, i8 0, %struct.SMU_SclkSetting { i32 -1601830656, i16 10240, i16 0, i16 8192, i8 2, i8 1, i16 4, i16 3074, i16 -1, i16 9984, i16 25651, i16 8448 } }], [96 x i8] zeroinitializer }, align 32
@polaris10_setup_graphics_level_structure._rs.23 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@polaris10_setup_graphics_level_structure._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_setup_graphics_level_structure, ptr @.str.3, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_setup_graphics_level_structure._entry_ptr.25 = internal global ptr @polaris10_setup_graphics_level_structure._entry.24, section ".printk_index", align 4
@.str.26 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"[AVFS][Polaris10_SetupGfxLvlStruct] Copying of SCLK DPM table failed!\00", [58 x i8] zeroinitializer }, align 32
@avfs_memory_level_polaris10 = internal constant { %struct.SMU74_Discrete_MemoryLevel, [40 x i8] } { %struct.SMU74_Discrete_MemoryLevel { i32 269395014, i32 0, i32 812974080, i8 1, i8 1, i8 1, i8 0, i8 0, i8 100, i8 0, i8 0, i16 7936, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@polaris10_setup_graphics_level_structure._rs.27 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@polaris10_setup_graphics_level_structure._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_setup_graphics_level_structure, ptr @.str.3, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_setup_graphics_level_structure._entry_ptr.29 = internal global ptr @polaris10_setup_graphics_level_structure._entry.28, section ".printk_index", align 4
@.str.30 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"[AVFS][Polaris10_SetupGfxLvlStruct] Copying of MCLK DPM table failed!\00", [58 x i8] zeroinitializer }, align 32
@polaris10_setup_graphics_level_structure._rs.31 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@polaris10_setup_graphics_level_structure._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_setup_graphics_level_structure, ptr @.str.3, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_setup_graphics_level_structure._entry_ptr.33 = internal global ptr @polaris10_setup_graphics_level_structure._entry.32, section ".printk_index", align 4
@.str.34 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"[AVFS][Polaris10_SetupGfxLvlStruct] Copying of DPM table failed!\00", [63 x i8] zeroinitializer }, align 32
@polaris10_perform_btc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016amdgpu: [AVFS][SmuPolaris10_PerformBtc] PerformBTC SMU msg failed\00", [60 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"polaris10_perform_btc\00", [42 x i8] zeroinitializer }, align 32
@polaris10_perform_btc._entry_ptr = internal global ptr @polaris10_perform_btc._entry, section ".printk_index", align 4
@polaris10_update_sclk_threshold._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.polaris10_update_sclk_threshold = private unnamed_addr constant [32 x i8] c"polaris10_update_sclk_threshold\00", align 1
@polaris10_update_sclk_threshold._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_update_sclk_threshold, ptr @.str.3, i32 2408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_update_sclk_threshold._entry_ptr = internal global ptr @polaris10_update_sclk_threshold._entry, section ".printk_index", align 4
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to update SCLK threshold!\00", [63 x i8] zeroinitializer }, align 32
@polaris10_update_sclk_threshold._rs.38 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@polaris10_update_sclk_threshold._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_update_sclk_threshold, ptr @.str.3, i32 2413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_update_sclk_threshold._entry_ptr.40 = internal global ptr @polaris10_update_sclk_threshold._entry.39, section ".printk_index", align 4
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to program memory timing parameters!\00", [52 x i8] zeroinitializer }, align 32
@polaris10_populate_memory_timing_parameters._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.polaris10_populate_memory_timing_parameters = private unnamed_addr constant [44 x i8] c"polaris10_populate_memory_timing_parameters\00", align 1
@polaris10_populate_memory_timing_parameters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_populate_memory_timing_parameters, ptr @.str.3, i32 1476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_populate_memory_timing_parameters._entry_ptr = internal global ptr @polaris10_populate_memory_timing_parameters._entry, section ".printk_index", align 4
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error calling VBIOS to set DRAM_TIMING.\00", [56 x i8] zeroinitializer }, align 32
@__func__.polaris10_init_smc_table = private unnamed_addr constant [25 x i8] c"polaris10_init_smc_table\00", align 1
@polaris10_init_smc_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_init_smc_table, ptr @.str.3, i32 1947, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry_ptr = internal global ptr @polaris10_init_smc_table._entry, section ".printk_index", align 4
@polaris10_init_smc_table._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_init_smc_table, ptr @.str.3, i32 1954, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry_ptr.46 = internal global ptr @polaris10_init_smc_table._entry.45, section ".printk_index", align 4
@polaris10_init_smc_table._rs.48 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_init_smc_table, ptr @.str.3, i32 1958, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry_ptr.50 = internal global ptr @polaris10_init_smc_table._entry.49, section ".printk_index", align 4
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to initialize Graphics Level!\00", [59 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._rs.52 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_init_smc_table, ptr @.str.3, i32 1962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry_ptr.54 = internal global ptr @polaris10_init_smc_table._entry.53, section ".printk_index", align 4
@.str.55 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to initialize Memory Level!\00", [61 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._rs.56 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_init_smc_table, ptr @.str.3, i32 1966, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry_ptr.58 = internal global ptr @polaris10_init_smc_table._entry.57, section ".printk_index", align 4
@.str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialize ACPI Level!\00", [63 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._rs.60 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_init_smc_table, ptr @.str.3, i32 1970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry_ptr.62 = internal global ptr @polaris10_init_smc_table._entry.61, section ".printk_index", align 4
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize VCE Level!\00", [32 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._rs.64 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_init_smc_table, ptr @.str.3, i32 1974, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry_ptr.66 = internal global ptr @polaris10_init_smc_table._entry.65, section ".printk_index", align 4
@.str.67 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialize SAMU Level!\00", [63 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._rs.68 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_init_smc_table, ptr @.str.3, i32 1982, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry_ptr.70 = internal global ptr @polaris10_init_smc_table._entry.69, section ".printk_index", align 4
@.str.71 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to Write ARB settings for the initial state.\00", [44 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._rs.72 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_init_smc_table, ptr @.str.3, i32 1986, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry_ptr.74 = internal global ptr @polaris10_init_smc_table._entry.73, section ".printk_index", align 4
@.str.75 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize UVD Level!\00", [32 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_init_smc_table, ptr @.str.3, i32 1990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry_ptr.78 = internal global ptr @polaris10_init_smc_table._entry.77, section ".printk_index", align 4
@polaris10_init_smc_table._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_init_smc_table, ptr @.str.3, i32 1994, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry_ptr.82 = internal global ptr @polaris10_init_smc_table._entry.81, section ".printk_index", align 4
@polaris10_init_smc_table._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_init_smc_table, ptr @.str.3, i32 1998, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry_ptr.86 = internal global ptr @polaris10_init_smc_table._entry.85, section ".printk_index", align 4
@polaris10_init_smc_table._rs.88 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_init_smc_table, ptr @.str.3, i32 2007, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry_ptr.90 = internal global ptr @polaris10_init_smc_table._entry.89, section ".printk_index", align 4
@.str.91 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to populate Clock Stretcher Data Table!\00", [49 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._rs.92 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_init_smc_table, ptr @.str.3, i32 2011, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry_ptr.94 = internal global ptr @polaris10_init_smc_table._entry.93, section ".printk_index", align 4
@.str.95 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to populate AVFS Parameters!\00", [60 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_init_smc_table, ptr @.str.3, i32 2036, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry_ptr.98 = internal global ptr @polaris10_init_smc_table._entry.97, section ".printk_index", align 4
@polaris10_init_smc_table._rs.100 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_init_smc_table, ptr @.str.3, i32 2095, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry_ptr.102 = internal global ptr @polaris10_init_smc_table._entry.101, section ".printk_index", align 4
@.str.103 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Can not find DFS divide id for Sclk\00", [60 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._rs.104 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_init_smc_table, ptr @.str.3, i32 2125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry_ptr.106 = internal global ptr @polaris10_init_smc_table._entry.105, section ".printk_index", align 4
@.str.107 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to upload dpm data to SMC memory!\00", [55 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._rs.108 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_init_smc_table, ptr @.str.3, i32 2129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_init_smc_table._entry_ptr.110 = internal global ptr @polaris10_init_smc_table._entry.109, section ".printk_index", align 4
@.str.111 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to  populate PM fuses to SMC memory!\00", [52 x i8] zeroinitializer }, align 32
@polaris10_power_tune_data_set_array = internal constant { [1 x %struct.polaris10_pt_defaults], [52 x i8] } { [1 x %struct.polaris10_pt_defaults] [%struct.polaris10_pt_defaults { i8 1, i8 15, i8 -3, i8 25, i8 5, i8 45, i32 0, i32 720896, [15 x i16] [i16 121, i16 595, i16 605, i16 174, i16 114, i16 128, i16 131, i16 134, i16 111, i16 200, i16 201, i16 201, i16 47, i16 77, i16 97], [15 x i16] [i16 380, i16 370, i16 384, i16 444, i16 435, i16 445, i16 518, i16 512, i16 515, i16 605, i16 602, i16 597, i16 707, i16 709, i16 692] }], [52 x i8] zeroinitializer }, align 32
@polaris10_populate_smc_acpi_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.polaris10_populate_smc_acpi_level = private unnamed_addr constant [34 x i8] c"polaris10_populate_smc_acpi_level\00", align 1
@polaris10_populate_smc_acpi_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_populate_smc_acpi_level, ptr @.str.3, i32 1300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_populate_smc_acpi_level._entry_ptr = internal global ptr @polaris10_populate_smc_acpi_level._entry, section ".printk_index", align 4
@.str.112 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Cannot find ACPI VDDC voltage value in Clock Dependency Table\00", [34 x i8] zeroinitializer }, align 32
@polaris10_populate_smc_acpi_level._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_populate_smc_acpi_level, ptr @.str.3, i32 1303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_populate_smc_acpi_level._entry_ptr.115 = internal global ptr @polaris10_populate_smc_acpi_level._entry.114, section ".printk_index", align 4
@polaris10_populate_smc_acpi_level._rs.117 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@polaris10_populate_smc_acpi_level._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_populate_smc_acpi_level, ptr @.str.3, i32 1335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_populate_smc_acpi_level._entry_ptr.119 = internal global ptr @polaris10_populate_smc_acpi_level._entry.118, section ".printk_index", align 4
@.str.120 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Cannot find ACPI VDDCI voltage value in Clock Dependency Table\00", [33 x i8] zeroinitializer }, align 32
@polaris10_populate_mvdd_value._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.polaris10_populate_mvdd_value = private unnamed_addr constant [30 x i8] c"polaris10_populate_mvdd_value\00", align 1
@polaris10_populate_mvdd_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_populate_mvdd_value, ptr @.str.3, i32 1270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_populate_mvdd_value._entry_ptr = internal global ptr @polaris10_populate_mvdd_value._entry, section ".printk_index", align 4
@.str.121 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MVDD Voltage is outside the supported range.\00", [51 x i8] zeroinitializer }, align 32
@polaris10_populate_smc_vce_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.polaris10_populate_smc_vce_level = private unnamed_addr constant [33 x i8] c"polaris10_populate_smc_vce_level\00", align 1
@polaris10_populate_smc_vce_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_populate_smc_vce_level, ptr @.str.3, i32 1405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_populate_smc_vce_level._entry_ptr = internal global ptr @polaris10_populate_smc_vce_level._entry, section ".printk_index", align 4
@.str.122 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"can not find divide id for VCE engine clock\00", [52 x i8] zeroinitializer }, align 32
@polaris10_populate_smc_samu_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.polaris10_populate_smc_samu_level = private unnamed_addr constant [34 x i8] c"polaris10_populate_smc_samu_level\00", align 1
@polaris10_populate_smc_samu_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_populate_smc_samu_level, ptr @.str.3, i32 1454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_populate_smc_samu_level._entry_ptr = internal global ptr @polaris10_populate_smc_samu_level._entry, section ".printk_index", align 4
@polaris10_populate_smc_uvd_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.polaris10_populate_smc_uvd_level = private unnamed_addr constant [33 x i8] c"polaris10_populate_smc_uvd_level\00", align 1
@polaris10_populate_smc_uvd_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_populate_smc_uvd_level, ptr @.str.3, i32 1558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_populate_smc_uvd_level._entry_ptr = internal global ptr @polaris10_populate_smc_uvd_level._entry, section ".printk_index", align 4
@.str.123 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"can not find divide id for Vclk clock\00", [58 x i8] zeroinitializer }, align 32
@polaris10_populate_smc_uvd_level._rs.124 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@polaris10_populate_smc_uvd_level._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_populate_smc_uvd_level, ptr @.str.3, i32 1565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_populate_smc_uvd_level._entry_ptr.126 = internal global ptr @polaris10_populate_smc_uvd_level._entry.125, section ".printk_index", align 4
@.str.127 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"can not find divide id for Dclk clock\00", [58 x i8] zeroinitializer }, align 32
@polaris10_populate_bapm_parameters_in_dpm_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.polaris10_populate_bapm_parameters_in_dpm_table = private unnamed_addr constant [48 x i8] c"polaris10_populate_bapm_parameters_in_dpm_table\00", align 1
@polaris10_populate_bapm_parameters_in_dpm_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_populate_bapm_parameters_in_dpm_table, ptr @.str.3, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_populate_bapm_parameters_in_dpm_table._entry_ptr = internal global ptr @polaris10_populate_bapm_parameters_in_dpm_table._entry, section ".printk_index", align 4
@.str.128 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Target Operating Temp is out of Range!\00", [57 x i8] zeroinitializer }, align 32
@polaris10_populate_clock_stretcher_data_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.polaris10_populate_clock_stretcher_data_table = private unnamed_addr constant [46 x i8] c"polaris10_populate_clock_stretcher_data_table\00", align 1
@polaris10_populate_clock_stretcher_data_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_populate_clock_stretcher_data_table, ptr @.str.3, i32 1701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_populate_clock_stretcher_data_table._entry_ptr = internal global ptr @polaris10_populate_clock_stretcher_data_table._entry, section ".printk_index", align 4
@.str.129 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Stretch Amount in PPTable not supported\00", [56 x i8] zeroinitializer }, align 32
@polaris10_populate_vr_config._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.polaris10_populate_vr_config = private unnamed_addr constant [29 x i8] c"polaris10_populate_vr_config\00", align 1
@polaris10_populate_vr_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_populate_vr_config, ptr @.str.3, i32 1731, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_populate_vr_config._entry_ptr = internal global ptr @polaris10_populate_vr_config._entry, section ".printk_index", align 4
@.str.130 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"VDDC should be on SVI2 control in merged mode!\00", [49 x i8] zeroinitializer }, align 32
@polaris10_populate_pm_fuses._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.polaris10_populate_pm_fuses = private unnamed_addr constant [28 x i8] c"polaris10_populate_pm_fuses\00", align 1
@polaris10_populate_pm_fuses._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_populate_pm_fuses, ptr @.str.3, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_populate_pm_fuses._entry_ptr = internal global ptr @polaris10_populate_pm_fuses._entry, section ".printk_index", align 4
@.str.131 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Attempt to get pm_fuse_table_offset Failed!\00", [52 x i8] zeroinitializer }, align 32
@polaris10_populate_pm_fuses._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_populate_pm_fuses, ptr @.str.3, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_populate_pm_fuses._entry_ptr.134 = internal global ptr @polaris10_populate_pm_fuses._entry.133, section ".printk_index", align 4
@polaris10_populate_pm_fuses._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_populate_pm_fuses, ptr @.str.3, i32 626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_populate_pm_fuses._entry_ptr.138 = internal global ptr @polaris10_populate_pm_fuses._entry.137, section ".printk_index", align 4
@polaris10_populate_pm_fuses._rs.140 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@polaris10_populate_pm_fuses._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_populate_pm_fuses, ptr @.str.3, i32 632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_populate_pm_fuses._entry_ptr.142 = internal global ptr @polaris10_populate_pm_fuses._entry.141, section ".printk_index", align 4
@.str.143 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Attempt to populate TdcWaterfallCtl, LPMLTemperature Min and Max Failed!\00", [55 x i8] zeroinitializer }, align 32
@polaris10_populate_pm_fuses._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_populate_pm_fuses, ptr @.str.3, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_populate_pm_fuses._entry_ptr.146 = internal global ptr @polaris10_populate_pm_fuses._entry.145, section ".printk_index", align 4
@polaris10_populate_pm_fuses._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_populate_pm_fuses, ptr @.str.3, i32 642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_populate_pm_fuses._entry_ptr.150 = internal global ptr @polaris10_populate_pm_fuses._entry.149, section ".printk_index", align 4
@polaris10_populate_pm_fuses._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_populate_pm_fuses, ptr @.str.3, i32 647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_populate_pm_fuses._entry_ptr.154 = internal global ptr @polaris10_populate_pm_fuses._entry.153, section ".printk_index", align 4
@polaris10_populate_pm_fuses._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_populate_pm_fuses, ptr @.str.3, i32 652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_populate_pm_fuses._entry_ptr.158 = internal global ptr @polaris10_populate_pm_fuses._entry.157, section ".printk_index", align 4
@polaris10_populate_pm_fuses._rs.160 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@polaris10_populate_pm_fuses._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_populate_pm_fuses, ptr @.str.3, i32 659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_populate_pm_fuses._entry_ptr.162 = internal global ptr @polaris10_populate_pm_fuses._entry.161, section ".printk_index", align 4
@.str.163 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Attempt to download PmFuseTable Failed!\00", [56 x i8] zeroinitializer }, align 32
@polaris10_populate_dw8._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.polaris10_populate_dw8 = private unnamed_addr constant [23 x i8] c"polaris10_populate_dw8\00", align 1
@polaris10_populate_dw8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_populate_dw8, ptr @.str.3, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_populate_dw8._entry_ptr = internal global ptr @polaris10_populate_dw8._entry, section ".printk_index", align 4
@.str.164 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Attempt to read PmFuses.DW6 (SviLoadLineEn) from SMC Failed!\00", [35 x i8] zeroinitializer }, align 32
@polaris10_populate_all_graphic_levels._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.polaris10_populate_all_graphic_levels = private unnamed_addr constant [38 x i8] c"polaris10_populate_all_graphic_levels\00", align 1
@polaris10_populate_all_graphic_levels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_populate_all_graphic_levels, ptr @.str.3, i32 1088, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_populate_all_graphic_levels._entry_ptr = internal global ptr @polaris10_populate_all_graphic_levels._entry, section ".printk_index", align 4
@.str.165 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"can not find divide id for sclk\00", [32 x i8] zeroinitializer }, align 32
@polaris10_populate_all_graphic_levels._rs.166 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@polaris10_populate_all_graphic_levels._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_populate_all_graphic_levels, ptr @.str.3, i32 1109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_populate_all_graphic_levels._entry_ptr.168 = internal global ptr @polaris10_populate_all_graphic_levels._entry.167, section ".printk_index", align 4
@.str.169 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"There must be 1 or more PCIE levels defined in PPTable.\00", [40 x i8] zeroinitializer }, align 32
@Range_Table = internal constant { [8 x %struct.sclkFcwRange_t], [32 x i8] } { [8 x %struct.sclkFcwRange_t] [%struct.sclkFcwRange_t { i8 3, i8 4, i16 75, i16 160, i16 112 }, %struct.sclkFcwRange_t { i8 1, i8 4, i16 112, i16 224, i16 160 }, %struct.sclkFcwRange_t { i8 3, i8 3, i16 75, i16 160, i16 112 }, %struct.sclkFcwRange_t { i8 1, i8 3, i16 112, i16 224, i16 160 }, %struct.sclkFcwRange_t { i8 3, i8 2, i16 75, i16 160, i16 112 }, %struct.sclkFcwRange_t { i8 1, i8 2, i16 112, i16 216, i16 160 }, %struct.sclkFcwRange_t { i8 3, i8 1, i16 75, i16 160, i16 108 }, %struct.sclkFcwRange_t { i8 1, i8 1, i16 112, i16 216, i16 160 }], [32 x i8] zeroinitializer }, align 32
@polaris10_populate_single_graphic_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.polaris10_populate_single_graphic_level = private unnamed_addr constant [40 x i8] c"polaris10_populate_single_graphic_level\00", align 1
@polaris10_populate_single_graphic_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_populate_single_graphic_level, ptr @.str.3, i32 982, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_populate_single_graphic_level._entry_ptr = internal global ptr @polaris10_populate_single_graphic_level._entry, section ".printk_index", align 4
@.str.170 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"can not find VDDC voltage value for VDDC engine clock dependency table\00", [57 x i8] zeroinitializer }, align 32
@polaris10_populate_all_memory_levels._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.polaris10_populate_all_memory_levels = private unnamed_addr constant [37 x i8] c"polaris10_populate_all_memory_levels\00", align 1
@polaris10_populate_all_memory_levels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_populate_all_memory_levels, ptr @.str.3, i32 1226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_populate_all_memory_levels._entry_ptr = internal global ptr @polaris10_populate_all_memory_levels._entry, section ".printk_index", align 4
@.str.171 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"can not populate memory level as memory clock is zero\00", [42 x i8] zeroinitializer }, align 32
@polaris10_populate_single_memory_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.polaris10_populate_single_memory_level = private unnamed_addr constant [39 x i8] c"polaris10_populate_single_memory_level\00", align 1
@polaris10_populate_single_memory_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.polaris10_populate_single_memory_level, ptr @.str.3, i32 1175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@polaris10_populate_single_memory_level._entry_ptr = internal global ptr @polaris10_populate_single_memory_level._entry, section ".printk_index", align 4
@.str.172 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"can not find MinVddc voltage value from memory VDDC voltage dependency table\00", [51 x i8] zeroinitializer }, align 32
@polaris10_get_offsetof._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.174, ptr @.str.3, i32 2460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014amdgpu: can't get the offset of type %x member %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"polaris10_get_offsetof\00", [41 x i8] zeroinitializer }, align 32
@polaris10_get_offsetof._entry_ptr = internal global ptr @polaris10_get_offsetof._entry, section ".printk_index", align 4
@polaris10_get_mac_definition._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.176, ptr @.str.3, i32 2488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014amdgpu: can't get the mac of %x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"polaris10_get_mac_definition\00", [35 x i8] zeroinitializer }, align 32
@polaris10_get_mac_definition._entry_ptr = internal global ptr @polaris10_get_mac_definition._entry, section ".printk_index", align 4
@switch.table.polaris10_get_offsetof = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 48, i32 44, i32 60, i32 64, i32 12, i32 16, i32 108, i32 48, i32 48, i32 48, i32 80, i32 84, i32 88, i32 92, i32 96], [36 x i8] zeroinitializer }, align 32
@switch.table.polaris10_get_offsetof.177 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1576, i32 1577, i32 1692], [20 x i8] zeroinitializer }, align 32
@switch.table.polaris10_get_mac_definition = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 8, i32 4, i32 8, i32 32, i32 16, i32 16, i32 8, i32 4, i32 65792], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.178 = internal global [6 x i64] [i64 4, i64 16, i64 26591, i64 26607, i64 26623, i64 28639]
@__sancov_gen_cov_switch_values.179 = internal global [9 x i64] [i64 7, i64 8, i64 225, i64 227, i64 228, i64 229, i64 231, i64 239, i64 247]
@__sancov_gen_cov_switch_values.180 = internal global [5 x i64] [i64 3, i64 8, i64 231, i64 239, i64 255]
@__sancov_gen_cov_switch_values.181 = internal global [5 x i64] [i64 3, i64 8, i64 224, i64 226, i64 229]
@__sancov_gen_cov_switch_values.182 = internal global [5 x i64] [i64 3, i64 8, i64 207, i64 239, i64 255]
@__sancov_gen_cov_switch_values.183 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.184 = internal global [4 x i64] [i64 2, i64 16, i64 26591, i64 28639]
@__sancov_gen_cov_switch_values.185 = internal global [7 x i64] [i64 5, i64 8, i64 227, i64 228, i64 229, i64 231, i64 239]
@__sancov_gen_cov_switch_values.186 = internal global [5 x i64] [i64 3, i64 8, i64 231, i64 239, i64 255]
@__sancov_gen_cov_switch_values.187 = internal global [4 x i64] [i64 2, i64 8, i64 225, i64 247]
@__sancov_gen_cov_switch_values.188 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.189 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.190 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.191 = internal global [4 x i64] [i64 2, i64 16, i64 26591, i64 28639]
@__sancov_gen_cov_switch_values.192 = internal global [7 x i64] [i64 5, i64 8, i64 227, i64 228, i64 229, i64 231, i64 239]
@__sancov_gen_cov_switch_values.193 = internal global [5 x i64] [i64 3, i64 8, i64 231, i64 239, i64 255]
@__sancov_gen_cov_switch_values.194 = internal global [4 x i64] [i64 2, i64 16, i64 27009, i64 27015]
@__sancov_gen_cov_switch_values.195 = internal global [6 x i64] [i64 4, i64 8, i64 192, i64 193, i64 195, i64 199]
@__sancov_gen_cov_switch_values.196 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 16]
@__sancov_gen_cov_switch_values.197 = internal global [4 x i64] [i64 2, i64 16, i64 26607, i64 26623]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 8, i64 224, i64 229]
@__sancov_gen_cov_switch_values.199 = internal global [5 x i64] [i64 3, i64 8, i64 207, i64 239, i64 255]
@__sancov_gen_cov_switch_values.200 = internal global [4 x i64] [i64 2, i64 16, i64 26607, i64 26623]
@__sancov_gen_cov_switch_values.201 = internal global [4 x i64] [i64 2, i64 16, i64 27009, i64 27015]
@__sancov_gen_cov_switch_values.202 = internal global [6 x i64] [i64 4, i64 8, i64 192, i64 193, i64 195, i64 199]
@__sancov_gen_cov_switch_values.203 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 16]
@__sancov_gen_cov_switch_values.204 = internal global [4 x i64] [i64 2, i64 16, i64 26591, i64 28639]
@__sancov_gen_cov_switch_values.205 = internal global [7 x i64] [i64 5, i64 8, i64 227, i64 228, i64 229, i64 231, i64 239]
@__sancov_gen_cov_switch_values.206 = internal global [5 x i64] [i64 3, i64 8, i64 231, i64 239, i64 255]
@__sancov_gen_cov_switch_values.207 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.208 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2685, i32 10 }
@___asan_gen_.212 = private unnamed_addr constant [20 x i8] c"polaris10_smu_funcs\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2684, i32 29 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 309, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 239, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 182, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 187, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 188, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 193, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 131, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 142, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant [30 x i8] c"avfs_graphics_level_polaris10\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 80, i32 43 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 149, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant [28 x i8] c"avfs_memory_level_polaris10\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 93, i32 41 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 157, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 166, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 104, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2407, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2411, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1475, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1946, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1953, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1957, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1961, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1965, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1969, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1973, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1981, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1985, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1989, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1993, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1997, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2005, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2011, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2035, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2095, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2124, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2128, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant [36 x i8] c"polaris10_power_tune_data_set_array\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 60, i32 43 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1297, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1303, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1332, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1268, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1403, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1452, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1557, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1564, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 445, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1699, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1729, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 615, i32 4 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 620, i32 4 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 625, i32 4 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 629, i32 4 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 635, i32 4 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 640, i32 4 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 645, i32 4 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 650, i32 4 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 657, i32 4 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 531, i32 3 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1086, i32 4 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1107, i32 3 }
@___asan_gen_.653 = private unnamed_addr constant [12 x i8] c"Range_Table\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 68, i32 29 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 979, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1224, i32 3 }
@___asan_gen_.674 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1173, i32 3 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2460, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.698 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.699 = private constant [72 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c\00", align 1
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2488, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant [36 x i8] c"switch.table.polaris10_get_offsetof\00", align 1
@___asan_gen_.702 = private unnamed_addr constant [40 x i8] c"switch.table.polaris10_get_offsetof.177\00", align 1
@___asan_gen_.703 = private unnamed_addr constant [42 x i8] c"switch.table.polaris10_get_mac_definition\00", align 1
@llvm.compiler.used = appending global [228 x ptr] [ptr @polaris10_avfs_event_mgr._entry, ptr @polaris10_avfs_event_mgr._entry.11, ptr @polaris10_avfs_event_mgr._entry.15, ptr @polaris10_avfs_event_mgr._entry.7, ptr @polaris10_avfs_event_mgr._entry_ptr, ptr @polaris10_avfs_event_mgr._entry_ptr.12, ptr @polaris10_avfs_event_mgr._entry_ptr.16, ptr @polaris10_avfs_event_mgr._entry_ptr.9, ptr @polaris10_get_mac_definition._entry, ptr @polaris10_get_mac_definition._entry_ptr, ptr @polaris10_get_offsetof._entry, ptr @polaris10_get_offsetof._entry_ptr, ptr @polaris10_init_smc_table._entry, ptr @polaris10_init_smc_table._entry.101, ptr @polaris10_init_smc_table._entry.105, ptr @polaris10_init_smc_table._entry.109, ptr @polaris10_init_smc_table._entry.45, ptr @polaris10_init_smc_table._entry.49, ptr @polaris10_init_smc_table._entry.53, ptr @polaris10_init_smc_table._entry.57, ptr @polaris10_init_smc_table._entry.61, ptr @polaris10_init_smc_table._entry.65, ptr @polaris10_init_smc_table._entry.69, ptr @polaris10_init_smc_table._entry.73, ptr @polaris10_init_smc_table._entry.77, ptr @polaris10_init_smc_table._entry.81, ptr @polaris10_init_smc_table._entry.85, ptr @polaris10_init_smc_table._entry.89, ptr @polaris10_init_smc_table._entry.93, ptr @polaris10_init_smc_table._entry.97, ptr @polaris10_init_smc_table._entry_ptr, ptr @polaris10_init_smc_table._entry_ptr.102, ptr @polaris10_init_smc_table._entry_ptr.106, ptr @polaris10_init_smc_table._entry_ptr.110, ptr @polaris10_init_smc_table._entry_ptr.46, ptr @polaris10_init_smc_table._entry_ptr.50, ptr @polaris10_init_smc_table._entry_ptr.54, ptr @polaris10_init_smc_table._entry_ptr.58, ptr @polaris10_init_smc_table._entry_ptr.62, ptr @polaris10_init_smc_table._entry_ptr.66, ptr @polaris10_init_smc_table._entry_ptr.70, ptr @polaris10_init_smc_table._entry_ptr.74, ptr @polaris10_init_smc_table._entry_ptr.78, ptr @polaris10_init_smc_table._entry_ptr.82, ptr @polaris10_init_smc_table._entry_ptr.86, ptr @polaris10_init_smc_table._entry_ptr.90, ptr @polaris10_init_smc_table._entry_ptr.94, ptr @polaris10_init_smc_table._entry_ptr.98, ptr @polaris10_perform_btc._entry, ptr @polaris10_perform_btc._entry_ptr, ptr @polaris10_populate_all_graphic_levels._entry, ptr @polaris10_populate_all_graphic_levels._entry.167, ptr @polaris10_populate_all_graphic_levels._entry_ptr, ptr @polaris10_populate_all_graphic_levels._entry_ptr.168, ptr @polaris10_populate_all_memory_levels._entry, ptr @polaris10_populate_all_memory_levels._entry_ptr, ptr @polaris10_populate_bapm_parameters_in_dpm_table._entry, ptr @polaris10_populate_bapm_parameters_in_dpm_table._entry_ptr, ptr @polaris10_populate_clock_stretcher_data_table._entry, ptr @polaris10_populate_clock_stretcher_data_table._entry_ptr, ptr @polaris10_populate_dw8._entry, ptr @polaris10_populate_dw8._entry_ptr, ptr @polaris10_populate_memory_timing_parameters._entry, ptr @polaris10_populate_memory_timing_parameters._entry_ptr, ptr @polaris10_populate_mvdd_value._entry, ptr @polaris10_populate_mvdd_value._entry_ptr, ptr @polaris10_populate_pm_fuses._entry, ptr @polaris10_populate_pm_fuses._entry.133, ptr @polaris10_populate_pm_fuses._entry.137, ptr @polaris10_populate_pm_fuses._entry.141, ptr @polaris10_populate_pm_fuses._entry.145, ptr @polaris10_populate_pm_fuses._entry.149, ptr @polaris10_populate_pm_fuses._entry.153, ptr @polaris10_populate_pm_fuses._entry.157, ptr @polaris10_populate_pm_fuses._entry.161, ptr @polaris10_populate_pm_fuses._entry_ptr, ptr @polaris10_populate_pm_fuses._entry_ptr.134, ptr @polaris10_populate_pm_fuses._entry_ptr.138, ptr @polaris10_populate_pm_fuses._entry_ptr.142, ptr @polaris10_populate_pm_fuses._entry_ptr.146, ptr @polaris10_populate_pm_fuses._entry_ptr.150, ptr @polaris10_populate_pm_fuses._entry_ptr.154, ptr @polaris10_populate_pm_fuses._entry_ptr.158, ptr @polaris10_populate_pm_fuses._entry_ptr.162, ptr @polaris10_populate_single_graphic_level._entry, ptr @polaris10_populate_single_graphic_level._entry_ptr, ptr @polaris10_populate_single_memory_level._entry, ptr @polaris10_populate_single_memory_level._entry_ptr, ptr @polaris10_populate_smc_acpi_level._entry, ptr @polaris10_populate_smc_acpi_level._entry.114, ptr @polaris10_populate_smc_acpi_level._entry.118, ptr @polaris10_populate_smc_acpi_level._entry_ptr, ptr @polaris10_populate_smc_acpi_level._entry_ptr.115, ptr @polaris10_populate_smc_acpi_level._entry_ptr.119, ptr @polaris10_populate_smc_samu_level._entry, ptr @polaris10_populate_smc_samu_level._entry_ptr, ptr @polaris10_populate_smc_uvd_level._entry, ptr @polaris10_populate_smc_uvd_level._entry.125, ptr @polaris10_populate_smc_uvd_level._entry_ptr, ptr @polaris10_populate_smc_uvd_level._entry_ptr.126, ptr @polaris10_populate_smc_vce_level._entry, ptr @polaris10_populate_smc_vce_level._entry_ptr, ptr @polaris10_populate_vr_config._entry, ptr @polaris10_populate_vr_config._entry_ptr, ptr @polaris10_setup_graphics_level_structure._entry, ptr @polaris10_setup_graphics_level_structure._entry.20, ptr @polaris10_setup_graphics_level_structure._entry.24, ptr @polaris10_setup_graphics_level_structure._entry.28, ptr @polaris10_setup_graphics_level_structure._entry.32, ptr @polaris10_setup_graphics_level_structure._entry_ptr, ptr @polaris10_setup_graphics_level_structure._entry_ptr.21, ptr @polaris10_setup_graphics_level_structure._entry_ptr.25, ptr @polaris10_setup_graphics_level_structure._entry_ptr.29, ptr @polaris10_setup_graphics_level_structure._entry_ptr.33, ptr @polaris10_start_smu._entry, ptr @polaris10_start_smu._entry_ptr, ptr @polaris10_start_smu_in_protection_mode._entry, ptr @polaris10_start_smu_in_protection_mode._entry_ptr, ptr @polaris10_update_sclk_threshold._entry, ptr @polaris10_update_sclk_threshold._entry.39, ptr @polaris10_update_sclk_threshold._entry_ptr, ptr @polaris10_update_sclk_threshold._entry_ptr.40, ptr @.str, ptr @polaris10_smu_funcs, ptr @polaris10_start_smu._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @polaris10_start_smu_in_protection_mode._rs, ptr @.str.5, ptr @polaris10_avfs_event_mgr._rs, ptr @.str.6, ptr @.str.8, ptr @polaris10_avfs_event_mgr._rs.10, ptr @.str.13, ptr @polaris10_avfs_event_mgr._rs.14, ptr @.str.17, ptr @polaris10_setup_graphics_level_structure._rs, ptr @.str.18, ptr @polaris10_setup_graphics_level_structure._rs.19, ptr @.str.22, ptr @avfs_graphics_level_polaris10, ptr @polaris10_setup_graphics_level_structure._rs.23, ptr @.str.26, ptr @avfs_memory_level_polaris10, ptr @polaris10_setup_graphics_level_structure._rs.27, ptr @.str.30, ptr @polaris10_setup_graphics_level_structure._rs.31, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @polaris10_update_sclk_threshold._rs, ptr @.str.37, ptr @polaris10_update_sclk_threshold._rs.38, ptr @.str.41, ptr @polaris10_populate_memory_timing_parameters._rs, ptr @.str.42, ptr @polaris10_init_smc_table._rs.48, ptr @.str.51, ptr @polaris10_init_smc_table._rs.52, ptr @.str.55, ptr @polaris10_init_smc_table._rs.56, ptr @.str.59, ptr @polaris10_init_smc_table._rs.60, ptr @.str.63, ptr @polaris10_init_smc_table._rs.64, ptr @.str.67, ptr @polaris10_init_smc_table._rs.68, ptr @.str.71, ptr @polaris10_init_smc_table._rs.72, ptr @.str.75, ptr @polaris10_init_smc_table._rs.88, ptr @.str.91, ptr @polaris10_init_smc_table._rs.92, ptr @.str.95, ptr @polaris10_init_smc_table._rs.100, ptr @.str.103, ptr @polaris10_init_smc_table._rs.104, ptr @.str.107, ptr @polaris10_init_smc_table._rs.108, ptr @.str.111, ptr @polaris10_power_tune_data_set_array, ptr @polaris10_populate_smc_acpi_level._rs, ptr @.str.112, ptr @polaris10_populate_smc_acpi_level._rs.117, ptr @.str.120, ptr @polaris10_populate_mvdd_value._rs, ptr @.str.121, ptr @polaris10_populate_smc_vce_level._rs, ptr @.str.122, ptr @polaris10_populate_smc_samu_level._rs, ptr @polaris10_populate_smc_uvd_level._rs, ptr @.str.123, ptr @polaris10_populate_smc_uvd_level._rs.124, ptr @.str.127, ptr @polaris10_populate_bapm_parameters_in_dpm_table._rs, ptr @.str.128, ptr @polaris10_populate_clock_stretcher_data_table._rs, ptr @.str.129, ptr @polaris10_populate_vr_config._rs, ptr @.str.130, ptr @polaris10_populate_pm_fuses._rs, ptr @.str.131, ptr @polaris10_populate_pm_fuses._rs.140, ptr @.str.143, ptr @polaris10_populate_pm_fuses._rs.160, ptr @.str.163, ptr @polaris10_populate_dw8._rs, ptr @.str.164, ptr @polaris10_populate_all_graphic_levels._rs, ptr @.str.165, ptr @polaris10_populate_all_graphic_levels._rs.166, ptr @.str.169, ptr @Range_Table, ptr @polaris10_populate_single_graphic_level._rs, ptr @.str.170, ptr @polaris10_populate_all_memory_levels._rs, ptr @.str.171, ptr @polaris10_populate_single_memory_level._rs, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @switch.table.polaris10_get_offsetof, ptr @switch.table.polaris10_get_offsetof.177, ptr @switch.table.polaris10_get_mac_definition], section "llvm.metadata"
@0 = internal global [167 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_smu_funcs to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_start_smu._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_start_smu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_start_smu_in_protection_mode._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_start_smu_in_protection_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_avfs_event_mgr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_avfs_event_mgr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_avfs_event_mgr._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_avfs_event_mgr._rs.10 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_avfs_event_mgr._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_avfs_event_mgr._rs.14 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_avfs_event_mgr._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_setup_graphics_level_structure._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_setup_graphics_level_structure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_setup_graphics_level_structure._rs.19 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_setup_graphics_level_structure._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avfs_graphics_level_polaris10 to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_setup_graphics_level_structure._rs.23 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_setup_graphics_level_structure._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avfs_memory_level_polaris10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_setup_graphics_level_structure._rs.27 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_setup_graphics_level_structure._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_setup_graphics_level_structure._rs.31 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_setup_graphics_level_structure._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_perform_btc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_update_sclk_threshold._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_update_sclk_threshold._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_update_sclk_threshold._rs.38 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_update_sclk_threshold._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_memory_timing_parameters._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_memory_timing_parameters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._rs.48 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._rs.52 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._rs.56 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._rs.60 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._rs.64 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._rs.68 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._rs.72 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._rs.88 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._rs.92 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._rs.100 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._rs.104 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._rs.108 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_init_smc_table._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_power_tune_data_set_array to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_smc_acpi_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_smc_acpi_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_smc_acpi_level._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_smc_acpi_level._rs.117 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_smc_acpi_level._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_mvdd_value._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_mvdd_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_smc_vce_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_smc_vce_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_smc_samu_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_smc_samu_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_smc_uvd_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_smc_uvd_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_smc_uvd_level._rs.124 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_smc_uvd_level._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_bapm_parameters_in_dpm_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_bapm_parameters_in_dpm_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_clock_stretcher_data_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_clock_stretcher_data_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_vr_config._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_vr_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_pm_fuses._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_pm_fuses._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_pm_fuses._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_pm_fuses._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_pm_fuses._rs.140 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_pm_fuses._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_pm_fuses._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_pm_fuses._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_pm_fuses._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_pm_fuses._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_pm_fuses._rs.160 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_pm_fuses._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_dw8._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_dw8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_all_graphic_levels._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_all_graphic_levels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_all_graphic_levels._rs.166 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_all_graphic_levels._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Range_Table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_single_graphic_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_single_graphic_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_all_memory_levels._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_all_memory_levels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_single_memory_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_populate_single_memory_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_get_offsetof._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polaris10_get_mac_definition._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.polaris10_get_offsetof to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.polaris10_get_offsetof.177 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.polaris10_get_mac_definition to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @polaris10_smu_init(ptr noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5040) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %1 = ptrtoint ptr %smu_backend to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %smu_backend, align 4
  %call1 = tail call i32 @smu7_init(ptr noundef %hwmgr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then2 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_smu_fini(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @polaris10_start_smu(ptr noundef %hwmgr) #0 align 64 {
entry:
  %vr_config.i.i = alloca i32, align 4
  %dpm_table_start.i.i = alloca i32, align 4
  %u16_boot_mvdd.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %call = tail call zeroext i1 @smu7_is_smc_ram_running(ptr noundef %hwmgr) #7
  br i1 %call, label %entry.if.end30_crit_edge, label %land.lhs.true

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

land.lhs.true:                                    ; preds = %entry
  %not_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %2 = ptrtoint ptr %not_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %not_vf, align 4, !range !348
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true.if.end30_crit_edge, label %if.then

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then:                                          ; preds = %land.lhs.true
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %read_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %read_ind_register to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_ind_register, align 4
  %call2 = tail call i32 %9(ptr noundef %5, i32 noundef 1, i32 noundef -536858460) #7
  %and = lshr i32 %call2, 16
  %10 = trunc i32 %and to i8
  %conv = and i8 %10, 1
  %protected_mode = getelementptr inbounds %struct.polaris10_smumgr, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %protected_mode to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %protected_mode, align 8
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %read_ind_register5 = getelementptr inbounds %struct.cgs_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %read_ind_register5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_ind_register5, align 4
  %call7 = tail call i32 %17(ptr noundef %13, i32 noundef 1, i32 noundef -536858460) #7
  %and8 = lshr i32 %call7, 17
  %18 = trunc i32 %and8 to i8
  %conv10 = and i8 %18, 1
  %security_hard_key = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %security_hard_key to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv10, ptr %security_hard_key, align 4
  %20 = ptrtoint ptr %protected_mode to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %protected_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp = icmp eq i8 %21, 0
  br i1 %cmp, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then
  %call.i = tail call i32 @phm_wait_for_indirect_register_unequal(ptr noundef %hwmgr, i32 noundef 428, i32 noundef -1073741820, i32 noundef 0, i32 noundef 128) #7
  %22 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %write_ind_register.i = getelementptr inbounds %struct.cgs_ops, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %write_ind_register.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_ind_register.i, align 4
  tail call void %27(ptr noundef %23, i32 noundef 1, i32 noundef 258048, i32 noundef 0) #7
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %write_ind_register4.i = getelementptr inbounds %struct.cgs_ops, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %write_ind_register4.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_ind_register4.i, align 4
  %read_ind_register.i = getelementptr inbounds %struct.cgs_ops, ptr %31, i32 0, i32 2
  %34 = ptrtoint ptr %read_ind_register.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read_ind_register.i, align 4
  %call9.i = tail call i32 %35(ptr noundef %29, i32 noundef 1, i32 noundef -2147483648) #7
  %or.i = or i32 %call9.i, 1
  tail call void %33(ptr noundef %29, i32 noundef 1, i32 noundef -2147483648, i32 noundef %or.i) #7
  %call10.i = tail call i32 @smu7_upload_smu_firmware_image(ptr noundef %hwmgr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp.not.i = icmp eq i32 %call10.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then14.do.body_crit_edge

if.then14.do.body_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = tail call i32 @smu7_program_jump_on_start(ptr noundef %hwmgr) #7
  %36 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %write_ind_register14.i = getelementptr inbounds %struct.cgs_ops, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %write_ind_register14.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_ind_register14.i, align 4
  %read_ind_register18.i = getelementptr inbounds %struct.cgs_ops, ptr %39, i32 0, i32 2
  %42 = ptrtoint ptr %read_ind_register18.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read_ind_register18.i, align 4
  %call20.i = tail call i32 %43(ptr noundef %37, i32 noundef 1, i32 noundef -2147483644) #7
  %and21.i = and i32 %call20.i, -2
  tail call void %41(ptr noundef %37, i32 noundef 1, i32 noundef -2147483644, i32 noundef %and21.i) #7
  br label %if.end28

if.else:                                          ; preds = %if.then
  %44 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %write_ind_register.i52 = getelementptr inbounds %struct.cgs_ops, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %write_ind_register.i52 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_ind_register.i52, align 4
  %read_ind_register.i53 = getelementptr inbounds %struct.cgs_ops, ptr %47, i32 0, i32 2
  %50 = ptrtoint ptr %read_ind_register.i53 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read_ind_register.i53, align 4
  %call.i54 = tail call i32 %51(ptr noundef %45, i32 noundef 1, i32 noundef -2147483648) #7
  %or.i55 = or i32 %call.i54, 1
  tail call void %49(ptr noundef %45, i32 noundef 1, i32 noundef -2147483648, i32 noundef %or.i55) #7
  %call5.i = tail call i32 @smu7_upload_smu_firmware_image(ptr noundef %hwmgr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.not.i56 = icmp eq i32 %call5.i, 0
  br i1 %cmp.not.i56, label %if.end.i58, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.i58:                                       ; preds = %if.else
  %52 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %write_ind_register8.i = getelementptr inbounds %struct.cgs_ops, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %write_ind_register8.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_ind_register8.i, align 4
  tail call void %57(ptr noundef %53, i32 noundef 1, i32 noundef -536858488, i32 noundef 0) #7
  %58 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %write_ind_register12.i = getelementptr inbounds %struct.cgs_ops, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %write_ind_register12.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write_ind_register12.i, align 4
  %read_ind_register16.i = getelementptr inbounds %struct.cgs_ops, ptr %61, i32 0, i32 2
  %64 = ptrtoint ptr %read_ind_register16.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read_ind_register16.i, align 4
  %call18.i = tail call i32 %65(ptr noundef %59, i32 noundef 1, i32 noundef -2147483644) #7
  %and19.i = and i32 %call18.i, -2
  tail call void %63(ptr noundef %59, i32 noundef 1, i32 noundef -2147483644, i32 noundef %and19.i) #7
  %66 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %device, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %write_ind_register23.i = getelementptr inbounds %struct.cgs_ops, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %write_ind_register23.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write_ind_register23.i, align 4
  %read_ind_register27.i = getelementptr inbounds %struct.cgs_ops, ptr %69, i32 0, i32 2
  %72 = ptrtoint ptr %read_ind_register27.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read_ind_register27.i, align 4
  %call29.i = tail call i32 %73(ptr noundef %67, i32 noundef 1, i32 noundef -2147483648) #7
  %and30.i = and i32 %call29.i, -2
  tail call void %71(ptr noundef %67, i32 noundef 1, i32 noundef -2147483648, i32 noundef %and30.i) #7
  %call32.i = tail call i32 @phm_wait_on_indirect_register(ptr noundef %hwmgr, i32 noundef 428, i32 noundef -1073741820, i32 noundef 65536, i32 noundef 65536) #7
  %call33.i = tail call i32 @smu7_send_msg_to_smc_offset(ptr noundef %hwmgr) #7
  %call34.i57 = tail call i32 @phm_wait_for_indirect_register_unequal(ptr noundef %hwmgr, i32 noundef 428, i32 noundef -536858488, i32 noundef 0, i32 noundef 1) #7
  %74 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %device, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %read_ind_register37.i = getelementptr inbounds %struct.cgs_ops, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %read_ind_register37.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read_ind_register37.i, align 4
  %call39.i = tail call i32 %79(ptr noundef %75, i32 noundef 1, i32 noundef -536858488) #7
  %80 = and i32 %call39.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp41.not.not.i = icmp eq i32 %80, 0
  br i1 %cmp41.not.not.i, label %do.body.i, label %if.end50.i

do.body.i:                                        ; preds = %if.end.i58
  %call43.i = tail call i32 @___ratelimit(ptr noundef nonnull @polaris10_start_smu_in_protection_mode._rs, ptr noundef nonnull @__func__.polaris10_start_smu_in_protection_mode) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.body_crit_edge, label %do.end.i

do.body.i.do.body_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #11
  br label %do.body

if.end50.i:                                       ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %device, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %write_ind_register53.i = getelementptr inbounds %struct.cgs_ops, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %write_ind_register53.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write_ind_register53.i, align 4
  tail call void %86(ptr noundef %82, i32 noundef 1, i32 noundef 258048, i32 noundef 0) #7
  %87 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %device, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %write_ind_register57.i = getelementptr inbounds %struct.cgs_ops, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %write_ind_register57.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %write_ind_register57.i, align 4
  %read_ind_register61.i = getelementptr inbounds %struct.cgs_ops, ptr %90, i32 0, i32 2
  %93 = ptrtoint ptr %read_ind_register61.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %read_ind_register61.i, align 4
  %call63.i = tail call i32 %94(ptr noundef %88, i32 noundef 1, i32 noundef -2147483648) #7
  %or65.i = or i32 %call63.i, 1
  tail call void %92(ptr noundef %88, i32 noundef 1, i32 noundef -2147483648, i32 noundef %or65.i) #7
  br label %if.end28

do.body:                                          ; preds = %do.end.i, %do.body.i.do.body_crit_edge, %if.else.do.body_crit_edge, %if.then14.do.body_crit_edge
  %result.0.ph = phi i32 [ -1, %do.body.i.do.body_crit_edge ], [ -1, %do.end.i ], [ %call5.i, %if.else.do.body_crit_edge ], [ %call10.i, %if.then14.do.body_crit_edge ]
  %call20 = tail call i32 @___ratelimit(ptr noundef nonnull @polaris10_start_smu._rs, ptr noundef nonnull @__func__.polaris10_start_smu) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #11
  br label %cleanup

if.end28:                                         ; preds = %if.end50.i, %if.end.i
  %95 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %device, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %write_ind_register25.i = getelementptr inbounds %struct.cgs_ops, ptr %98, i32 0, i32 3
  %99 = ptrtoint ptr %write_ind_register25.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %write_ind_register25.i, align 4
  %read_ind_register29.i = getelementptr inbounds %struct.cgs_ops, ptr %98, i32 0, i32 2
  %101 = ptrtoint ptr %read_ind_register29.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %read_ind_register29.i, align 4
  %call31.i = tail call i32 %102(ptr noundef %96, i32 noundef 1, i32 noundef -2147483648) #7
  %and32.i = and i32 %call31.i, -2
  tail call void %100(ptr noundef %96, i32 noundef 1, i32 noundef -2147483648, i32 noundef %and32.i) #7
  %call34.i = tail call i32 @phm_wait_on_indirect_register(ptr noundef %hwmgr, i32 noundef 428, i32 noundef 258048, i32 noundef 1, i32 noundef 1) #7
  %103 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %smu_backend, align 4
  %avfs_supported.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 47
  %105 = ptrtoint ptr %avfs_supported.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %avfs_supported.i, align 4, !range !348
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool.not.i59 = icmp eq i8 %106, 0
  br i1 %tobool.not.i59, label %if.end28.if.end30_crit_edge, label %do.body.i60

if.end28.if.end30_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

do.body.i60:                                      ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vr_config.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dpm_table_start.i.i) #7
  %107 = ptrtoint ptr %dpm_table_start.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 -1, ptr %dpm_table_start.i.i, align 4, !annotation !349
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %u16_boot_mvdd.i.i) #7
  %108 = ptrtoint ptr %u16_boot_mvdd.i.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 5200, ptr %u16_boot_mvdd.i.i, align 2
  %call.i.i = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131124, ptr noundef nonnull %dpm_table_start.i.i, i32 noundef 262144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end7.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %do.body.i60
  %call1.i.i = call i32 @___ratelimit(ptr noundef nonnull @polaris10_setup_graphics_level_structure._rs, ptr noundef nonnull @__func__.polaris10_setup_graphics_level_structure) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.then1.i_crit_edge, label %if.then.i.i.cleanup.sink.split.i.i_crit_edge

if.then.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

if.then.i.i.if.then1.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1.i

do.end7.i.i:                                      ; preds = %do.body.i60
  %109 = ptrtoint ptr %vr_config.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 16778496, ptr %vr_config.i.i, align 4
  %110 = ptrtoint ptr %dpm_table_start.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %dpm_table_start.i.i, align 4
  %add.i.i = add i32 %111, 112
  %call9.i.i = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add.i.i, ptr noundef nonnull %vr_config.i.i, i32 noundef 4, i32 noundef 262144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %cmp10.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %cmp10.i.i, label %do.end23.i.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %do.end7.i.i
  %call12.i.i = call i32 @___ratelimit(ptr noundef nonnull @polaris10_setup_graphics_level_structure._rs.19, ptr noundef nonnull @__func__.polaris10_setup_graphics_level_structure) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.then11.i.i.if.then1.i_crit_edge, label %if.then11.i.i.cleanup.sink.split.i.i_crit_edge

if.then11.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

if.then11.i.i.if.then1.i_crit_edge:               ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1.i

do.end23.i.i:                                     ; preds = %do.end7.i.i
  %112 = ptrtoint ptr %dpm_table_start.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %dpm_table_start.i.i, align 4
  %add24.i.i = add i32 %113, 236
  %call26.i.i = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add24.i.i, ptr noundef nonnull @avfs_graphics_level_polaris10, i32 noundef 448, i32 noundef 262144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %cmp27.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %cmp27.i.i, label %do.end40.i.i, label %if.then28.i.i

if.then28.i.i:                                    ; preds = %do.end23.i.i
  %call29.i.i = call i32 @___ratelimit(ptr noundef nonnull @polaris10_setup_graphics_level_structure._rs.23, ptr noundef nonnull @__func__.polaris10_setup_graphics_level_structure) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %tobool30.not.i.i = icmp eq i32 %call29.i.i, 0
  br i1 %tobool30.not.i.i, label %if.then28.i.i.if.then1.i_crit_edge, label %if.then28.i.i.cleanup.sink.split.i.i_crit_edge

if.then28.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

if.then28.i.i.if.then1.i_crit_edge:               ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1.i

do.end40.i.i:                                     ; preds = %do.end23.i.i
  %114 = ptrtoint ptr %dpm_table_start.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %dpm_table_start.i.i, align 4
  %add41.i.i = add i32 %115, 708
  %call43.i.i = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add41.i.i, ptr noundef nonnull @avfs_memory_level_polaris10, i32 noundef 24, i32 noundef 262144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i.i)
  %cmp44.i.i = icmp eq i32 %call43.i.i, 0
  br i1 %cmp44.i.i, label %do.end57.i.i, label %if.then45.i.i

if.then45.i.i:                                    ; preds = %do.end40.i.i
  %call46.i.i = call i32 @___ratelimit(ptr noundef nonnull @polaris10_setup_graphics_level_structure._rs.27, ptr noundef nonnull @__func__.polaris10_setup_graphics_level_structure) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i)
  %tobool47.not.i.i = icmp eq i32 %call46.i.i, 0
  br i1 %tobool47.not.i.i, label %if.then45.i.i.if.then1.i_crit_edge, label %if.then45.i.i.cleanup.sink.split.i.i_crit_edge

if.then45.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

if.then45.i.i.if.then1.i_crit_edge:               ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1.i

do.end57.i.i:                                     ; preds = %do.end40.i.i
  %116 = ptrtoint ptr %dpm_table_start.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %dpm_table_start.i.i, align 4
  %add58.i.i = add i32 %117, 1592
  %call60.i.i = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add58.i.i, ptr noundef nonnull %u16_boot_mvdd.i.i, i32 noundef 2, i32 noundef 262144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i.i)
  %cmp61.i.i = icmp eq i32 %call60.i.i, 0
  br i1 %cmp61.i.i, label %do.end10.i, label %if.then62.i.i

if.then62.i.i:                                    ; preds = %do.end57.i.i
  %call63.i.i = call i32 @___ratelimit(ptr noundef nonnull @polaris10_setup_graphics_level_structure._rs.31, ptr noundef nonnull @__func__.polaris10_setup_graphics_level_structure) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i.i)
  %tobool64.not.i.i = icmp eq i32 %call63.i.i, 0
  br i1 %tobool64.not.i.i, label %if.then62.i.i.if.then1.i_crit_edge, label %if.then62.i.i.cleanup.sink.split.i.i_crit_edge

if.then62.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %if.then62.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

if.then62.i.i.if.then1.i_crit_edge:               ; preds = %if.then62.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1.i

cleanup.sink.split.i.i:                           ; preds = %if.then62.i.i.cleanup.sink.split.i.i_crit_edge, %if.then45.i.i.cleanup.sink.split.i.i_crit_edge, %if.then28.i.i.cleanup.sink.split.i.i_crit_edge, %if.then11.i.i.cleanup.sink.split.i.i_crit_edge, %if.then.i.i.cleanup.sink.split.i.i_crit_edge
  %.str.34.sink.i.i = phi ptr [ @.str.18, %if.then.i.i.cleanup.sink.split.i.i_crit_edge ], [ @.str.22, %if.then11.i.i.cleanup.sink.split.i.i_crit_edge ], [ @.str.26, %if.then28.i.i.cleanup.sink.split.i.i_crit_edge ], [ @.str.30, %if.then45.i.i.cleanup.sink.split.i.i_crit_edge ], [ @.str.34, %if.then62.i.i.cleanup.sink.split.i.i_crit_edge ]
  %call70.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %.str.34.sink.i.i) #11
  br label %if.then1.i

if.then1.i:                                       ; preds = %cleanup.sink.split.i.i, %if.then62.i.i.if.then1.i_crit_edge, %if.then45.i.i.if.then1.i_crit_edge, %if.then28.i.i.if.then1.i_crit_edge, %if.then11.i.i.if.then1.i_crit_edge, %if.then.i.i.if.then1.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %u16_boot_mvdd.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dpm_table_start.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vr_config.i.i) #7
  %call2.i = call i32 @___ratelimit(ptr noundef nonnull @polaris10_avfs_event_mgr._rs, ptr noundef nonnull @__func__.polaris10_avfs_event_mgr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then1.i.if.end30_crit_edge, label %if.then1.i.cleanup.sink.split.i_crit_edge

if.then1.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.then1.i.if.end30_crit_edge:                    ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

do.end10.i:                                       ; preds = %do.end57.i.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %u16_boot_mvdd.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dpm_table_start.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vr_config.i.i) #7
  %avfs_btc_param.i = getelementptr inbounds %struct.smu7_smumgr, ptr %104, i32 0, i32 11
  %118 = ptrtoint ptr %avfs_btc_param.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %avfs_btc_param.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %119)
  %cmp11.i = icmp ugt i32 %119, 1
  br i1 %cmp11.i, label %do.end15.i, label %do.end10.i.do.body35.i_crit_edge

do.end10.i.do.body35.i_crit_edge:                 ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body35.i

do.end15.i:                                       ; preds = %do.end10.i
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  %call19.i = call i32 @smu7_setup_pwr_virus(ptr noundef %hwmgr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp eq i32 %call19.i, 0
  br i1 %cmp20.i, label %do.end15.i.do.body35.i_crit_edge, label %if.then21.i

do.end15.i.do.body35.i_crit_edge:                 ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body35.i

if.then21.i:                                      ; preds = %do.end15.i
  %call22.i = call i32 @___ratelimit(ptr noundef nonnull @polaris10_avfs_event_mgr._rs.10, ptr noundef nonnull @__func__.polaris10_avfs_event_mgr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.then21.i.if.end30_crit_edge, label %if.then21.i.cleanup.sink.split.i_crit_edge

if.then21.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.then21.i.if.end30_crit_edge:                   ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

do.body35.i:                                      ; preds = %do.end15.i.do.body35.i_crit_edge, %do.end10.i.do.body35.i_crit_edge
  %120 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %smu_backend, align 4
  %avfs_btc_param.i.i = getelementptr inbounds %struct.smu7_smumgr, ptr %121, i32 0, i32 11
  %122 = ptrtoint ptr %avfs_btc_param.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %avfs_btc_param.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp.not.i.i = icmp eq i32 %123, 0
  br i1 %cmp.not.i.i, label %do.body35.i.if.end30_crit_edge, label %if.then.i2.i

do.body35.i.if.end30_crit_edge:                   ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then.i2.i:                                     ; preds = %do.body35.i
  %call.i1.i = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 620, i32 noundef %123, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %cmp2.not.i.i = icmp eq i32 %call.i1.i, 0
  br i1 %cmp2.not.i.i, label %if.then.i2.i.if.end5.i.i_crit_edge, label %do.end.i.i

if.then.i2.i.if.end5.i.i_crit_edge:               ; preds = %if.then.i2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i.i

do.end.i.i:                                       ; preds = %if.then.i2.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #11
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %do.end.i.i, %if.then.i2.i.if.end5.i.i_crit_edge
  %124 = ptrtoint ptr %avfs_btc_param.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %.pr.i.i = load i32, ptr %avfs_btc_param.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i.i)
  %cmp7.i.i = icmp ugt i32 %.pr.i.i, 1
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.end5.i.i.polaris10_perform_btc.exit.i_crit_edge

if.end5.i.i.polaris10_perform_btc.exit.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %polaris10_perform_btc.exit.i

if.then8.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %125 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %device, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %126, align 4
  %write_register.i.i = getelementptr inbounds %struct.cgs_ops, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %write_register.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %write_register.i.i, align 4
  call void %130(ptr noundef %126, i32 noundef 8333, i32 noundef 1342177280) #7
  %131 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %device, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 4
  %write_register12.i.i = getelementptr inbounds %struct.cgs_ops, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %write_register12.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %write_register12.i.i, align 4
  call void %136(ptr noundef %132, i32 noundef 8200, i32 noundef -1) #7
  %137 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %device, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  %write_register16.i.i = getelementptr inbounds %struct.cgs_ops, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %write_register16.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %write_register16.i.i, align 4
  call void %142(ptr noundef %138, i32 noundef 8200, i32 noundef 0) #7
  br label %polaris10_perform_btc.exit.i

polaris10_perform_btc.exit.i:                     ; preds = %if.then8.i.i, %if.end5.i.i.polaris10_perform_btc.exit.i_crit_edge
  br i1 %cmp2.not.i.i, label %polaris10_perform_btc.exit.i.if.end30_crit_edge, label %if.then38.i

polaris10_perform_btc.exit.i.if.end30_crit_edge:  ; preds = %polaris10_perform_btc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then38.i:                                      ; preds = %polaris10_perform_btc.exit.i
  %call39.i61 = call i32 @___ratelimit(ptr noundef nonnull @polaris10_avfs_event_mgr._rs.14, ptr noundef nonnull @__func__.polaris10_avfs_event_mgr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i61)
  %tobool40.not.i = icmp eq i32 %call39.i61, 0
  br i1 %tobool40.not.i, label %if.then38.i.if.end30_crit_edge, label %if.then38.i.cleanup.sink.split.i_crit_edge

if.then38.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.then38.i.if.end30_crit_edge:                   ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

cleanup.sink.split.i:                             ; preds = %if.then38.i.cleanup.sink.split.i_crit_edge, %if.then21.i.cleanup.sink.split.i_crit_edge, %if.then1.i.cleanup.sink.split.i_crit_edge
  %.str.17.sink.i = phi ptr [ @.str.6, %if.then1.i.cleanup.sink.split.i_crit_edge ], [ @.str.13, %if.then21.i.cleanup.sink.split.i_crit_edge ], [ @.str.17, %if.then38.i.cleanup.sink.split.i_crit_edge ]
  %call46.i62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %.str.17.sink.i) #11
  br label %if.end30

if.end30:                                         ; preds = %cleanup.sink.split.i, %if.then38.i.if.end30_crit_edge, %polaris10_perform_btc.exit.i.if.end30_crit_edge, %do.body35.i.if.end30_crit_edge, %if.then21.i.if.end30_crit_edge, %if.then1.i.if.end30_crit_edge, %if.end28.if.end30_crit_edge, %land.lhs.true.if.end30_crit_edge, %entry.if.end30_crit_edge
  %soft_regs_start = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 3
  %call32 = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131120, ptr noundef %soft_regs_start, i32 noundef 262144) #7
  %call33 = call i32 @smu7_request_smu_load_fw(ptr noundef %hwmgr) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %if.end30 ], [ %result.0.ph, %do.end ], [ %result.0.ph, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_check_fw_load_finish(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_reload_firmware(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_get_argument(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_send_msg_to_smc(ptr noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_send_msg_to_smc_with_parameter(ptr noundef, i16 noundef zeroext, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @polaris10_update_smc_table(ptr noundef %hwmgr, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %smu_backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %1 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %smu_backend.i, align 4
  %pptable.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %3 = ptrtoint ptr %pptable.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pptable.i, align 4
  %UvdBootLevel.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %2, i32 0, i32 2, i32 47
  %5 = ptrtoint ptr %UvdBootLevel.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %UvdBootLevel.i, align 1
  %mm_dep_table.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %4, i32 0, i32 14
  %6 = ptrtoint ptr %mm_dep_table.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mm_dep_table.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %sw.bb.if.end.i_crit_edge, label %if.then.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %10 = trunc i32 %9 to i8
  %conv.i = add i8 %10, -1
  %11 = ptrtoint ptr %UvdBootLevel.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i, ptr %UvdBootLevel.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.if.end.i_crit_edge
  %dpm_table_start.i = getelementptr inbounds %struct.smu7_smumgr, ptr %2, i32 0, i32 4
  %12 = ptrtoint ptr %dpm_table_start.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dpm_table_start.i, align 8
  %add.i = add i32 %13, 1576
  %div1.i = and i32 %add.i, -4
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %14 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %read_ind_register.i = getelementptr inbounds %struct.cgs_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %read_ind_register.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_ind_register.i, align 4
  %call.i = tail call i32 %19(ptr noundef %15, i32 noundef 1, i32 noundef %div1.i) #7
  %and.i = and i32 %call.i, 16777215
  %20 = ptrtoint ptr %UvdBootLevel.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %UvdBootLevel.i, align 1
  %conv8.i = zext i8 %21 to i32
  %shl.i = shl nuw i32 %conv8.i, 24
  %or.i = or i32 %shl.i, %and.i
  %22 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %write_ind_register.i = getelementptr inbounds %struct.cgs_ops, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %write_ind_register.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_ind_register.i, align 4
  tail call void %27(ptr noundef %23, i32 noundef 1, i32 noundef %div1.i, i32 noundef %or.i) #7
  %arrayidx.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 3
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i, align 4
  %and1.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.i.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %cmp.i.not.i, label %if.end.i.sw.epilog.sink.split_crit_edge, label %lor.lhs.false.i

if.end.i.sw.epilog.sink.split_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

lor.lhs.false.i:                                  ; preds = %if.end.i
  %arrayidx.i2.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 4
  %30 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i2.i, align 4
  %and1.i3.i = and i32 %31, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i3.i)
  %cmp.i4.not.i = icmp eq i32 %and1.i3.i, 0
  br i1 %cmp.i4.not.i, label %lor.lhs.false.i.sw.epilog_crit_edge, label %lor.lhs.false.i.sw.epilog.sink.split_crit_edge

lor.lhs.false.i.sw.epilog.sink.split_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

lor.lhs.false.i.sw.epilog_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %smu_backend.i7 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %32 = ptrtoint ptr %smu_backend.i7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %smu_backend.i7, align 4
  %arrayidx.i.i8 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 4
  %34 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i8, align 4
  %and1.i.i9 = and i32 %35, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i9)
  %cmp.i.not.i10 = icmp eq i32 %and1.i.i9, 0
  br i1 %cmp.i.not.i10, label %sw.bb1.if.end.i26_crit_edge, label %if.then.i14

sw.bb1.if.end.i26_crit_edge:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i26

if.then.i14:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %pptable.i11 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %36 = ptrtoint ptr %pptable.i11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pptable.i11, align 4
  %mm_dep_table.i12 = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %37, i32 0, i32 14
  %38 = ptrtoint ptr %mm_dep_table.i12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mm_dep_table.i12, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %42 = trunc i32 %41 to i8
  %conv.i13 = add i8 %42, -1
  br label %if.end.i26

if.end.i26:                                       ; preds = %if.then.i14, %sw.bb1.if.end.i26_crit_edge
  %conv.sink.i = phi i8 [ %conv.i13, %if.then.i14 ], [ 0, %sw.bb1.if.end.i26_crit_edge ]
  %43 = getelementptr inbounds %struct.polaris10_smumgr, ptr %33, i32 0, i32 2, i32 48
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv.sink.i, ptr %43, align 1
  %dpm_table_start.i15 = getelementptr inbounds %struct.smu7_smumgr, ptr %33, i32 0, i32 4
  %45 = ptrtoint ptr %dpm_table_start.i15 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dpm_table_start.i15, align 8
  %add.i16 = add i32 %46, 1577
  %div1.i17 = and i32 %add.i16, -4
  %device.i18 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %47 = ptrtoint ptr %device.i18 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device.i18, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %read_ind_register.i19 = getelementptr inbounds %struct.cgs_ops, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %read_ind_register.i19 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read_ind_register.i19, align 4
  %call4.i = tail call i32 %52(ptr noundef %48, i32 noundef 1, i32 noundef %div1.i17) #7
  %and.i20 = and i32 %call4.i, -16711681
  %53 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %43, align 1
  %conv7.i = zext i8 %54 to i32
  %shl.i21 = shl nuw nsw i32 %conv7.i, 16
  %or.i22 = or i32 %shl.i21, %and.i20
  %55 = ptrtoint ptr %device.i18 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %device.i18, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %write_ind_register.i23 = getelementptr inbounds %struct.cgs_ops, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %write_ind_register.i23 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write_ind_register.i23, align 4
  tail call void %60(ptr noundef %56, i32 noundef 1, i32 noundef %div1.i17, i32 noundef %or.i22) #7
  %61 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i.i8, align 4
  %and1.i3.i24 = and i32 %62, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i3.i24)
  %cmp.i4.not.i25 = icmp eq i32 %and1.i3.i24, 0
  br i1 %cmp.i4.not.i25, label %if.end.i26.sw.epilog_crit_edge, label %if.end.i26.sw.epilog.sink.split_crit_edge

if.end.i26.sw.epilog.sink.split_crit_edge:        ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.end.i26.sw.epilog_crit_edge:                   ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %smu_backend.i27 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %63 = ptrtoint ptr %smu_backend.i27 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %smu_backend.i27, align 4
  %pptable.i28 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %65 = ptrtoint ptr %pptable.i28 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pptable.i28, align 4
  %pcie_table1.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %66, i32 0, i32 18
  %67 = ptrtoint ptr %pcie_table1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pcie_table1.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %71 = tail call i32 @llvm.umin.i32(i32 %70, i32 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp31.not.i = icmp eq i32 %71, 0
  br i1 %cmp31.not.i, label %sw.bb3.sw.epilog_crit_edge, label %for.body.i

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body.i:                                       ; preds = %sw.bb3
  %pcie_sclk.i = getelementptr %struct.phm_ppt_v1_pcie_table, ptr %68, i32 0, i32 1, i32 0, i32 4
  %72 = ptrtoint ptr %pcie_sclk.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pcie_sclk.i, align 4
  %arrayidx4.i = getelementptr %struct.polaris10_smumgr, ptr %64, i32 0, i32 8, i32 0
  %74 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %exitcond.not.i = icmp eq i32 %71, 1
  br i1 %exitcond.not.i, label %for.body.i.sw.epilog_crit_edge, label %for.body.i.1

for.body.i.sw.epilog_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body.i.1:                                     ; preds = %for.body.i
  %pcie_sclk.i.1 = getelementptr %struct.phm_ppt_v1_pcie_table, ptr %68, i32 0, i32 1, i32 1, i32 4
  %75 = ptrtoint ptr %pcie_sclk.i.1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pcie_sclk.i.1, align 4
  %arrayidx4.i.1 = getelementptr %struct.polaris10_smumgr, ptr %64, i32 0, i32 8, i32 1
  %77 = ptrtoint ptr %arrayidx4.i.1 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %arrayidx4.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %71)
  %exitcond.not.i.1 = icmp eq i32 %71, 2
  br i1 %exitcond.not.i.1, label %for.body.i.1.sw.epilog_crit_edge, label %for.body.i.2

for.body.i.1.sw.epilog_crit_edge:                 ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body.i.2:                                     ; preds = %for.body.i.1
  %pcie_sclk.i.2 = getelementptr %struct.phm_ppt_v1_pcie_table, ptr %68, i32 0, i32 1, i32 2, i32 4
  %78 = ptrtoint ptr %pcie_sclk.i.2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pcie_sclk.i.2, align 4
  %arrayidx4.i.2 = getelementptr %struct.polaris10_smumgr, ptr %64, i32 0, i32 8, i32 2
  %80 = ptrtoint ptr %arrayidx4.i.2 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %arrayidx4.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %71)
  %exitcond.not.i.2 = icmp eq i32 %71, 3
  br i1 %exitcond.not.i.2, label %for.body.i.2.sw.epilog_crit_edge, label %for.body.i.3

for.body.i.2.sw.epilog_crit_edge:                 ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body.i.3:                                     ; preds = %for.body.i.2
  %pcie_sclk.i.3 = getelementptr %struct.phm_ppt_v1_pcie_table, ptr %68, i32 0, i32 1, i32 3, i32 4
  %81 = ptrtoint ptr %pcie_sclk.i.3 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pcie_sclk.i.3, align 4
  %arrayidx4.i.3 = getelementptr %struct.polaris10_smumgr, ptr %64, i32 0, i32 8, i32 3
  %83 = ptrtoint ptr %arrayidx4.i.3 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %arrayidx4.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %71)
  %exitcond.not.i.3 = icmp eq i32 %71, 4
  br i1 %exitcond.not.i.3, label %for.body.i.3.sw.epilog_crit_edge, label %for.body.i.4

for.body.i.3.sw.epilog_crit_edge:                 ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body.i.4:                                     ; preds = %for.body.i.3
  %pcie_sclk.i.4 = getelementptr %struct.phm_ppt_v1_pcie_table, ptr %68, i32 0, i32 1, i32 4, i32 4
  %84 = ptrtoint ptr %pcie_sclk.i.4 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pcie_sclk.i.4, align 4
  %arrayidx4.i.4 = getelementptr %struct.polaris10_smumgr, ptr %64, i32 0, i32 8, i32 4
  %86 = ptrtoint ptr %arrayidx4.i.4 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %arrayidx4.i.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %71)
  %exitcond.not.i.4 = icmp eq i32 %71, 5
  br i1 %exitcond.not.i.4, label %for.body.i.4.sw.epilog_crit_edge, label %for.body.i.5

for.body.i.4.sw.epilog_crit_edge:                 ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body.i.5:                                     ; preds = %for.body.i.4
  %pcie_sclk.i.5 = getelementptr %struct.phm_ppt_v1_pcie_table, ptr %68, i32 0, i32 1, i32 5, i32 4
  %87 = ptrtoint ptr %pcie_sclk.i.5 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pcie_sclk.i.5, align 4
  %arrayidx4.i.5 = getelementptr %struct.polaris10_smumgr, ptr %64, i32 0, i32 8, i32 5
  %89 = ptrtoint ptr %arrayidx4.i.5 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %arrayidx4.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %71)
  %exitcond.not.i.5 = icmp eq i32 %71, 6
  br i1 %exitcond.not.i.5, label %for.body.i.5.sw.epilog_crit_edge, label %for.body.i.6

for.body.i.5.sw.epilog_crit_edge:                 ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body.i.6:                                     ; preds = %for.body.i.5
  %pcie_sclk.i.6 = getelementptr %struct.phm_ppt_v1_pcie_table, ptr %68, i32 0, i32 1, i32 6, i32 4
  %90 = ptrtoint ptr %pcie_sclk.i.6 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pcie_sclk.i.6, align 4
  %arrayidx4.i.6 = getelementptr %struct.polaris10_smumgr, ptr %64, i32 0, i32 8, i32 6
  %92 = ptrtoint ptr %arrayidx4.i.6 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %arrayidx4.i.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %71)
  %exitcond.not.i.6 = icmp eq i32 %71, 7
  br i1 %exitcond.not.i.6, label %for.body.i.6.sw.epilog_crit_edge, label %for.body.i.7

for.body.i.6.sw.epilog_crit_edge:                 ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body.i.7:                                     ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #9
  %pcie_sclk.i.7 = getelementptr %struct.phm_ppt_v1_pcie_table, ptr %68, i32 0, i32 1, i32 7, i32 4
  %93 = ptrtoint ptr %pcie_sclk.i.7 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pcie_sclk.i.7, align 4
  %arrayidx4.i.7 = getelementptr %struct.polaris10_smumgr, ptr %64, i32 0, i32 8, i32 7
  %95 = ptrtoint ptr %arrayidx4.i.7 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %arrayidx4.i.7, align 4
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %if.end.i26.sw.epilog.sink.split_crit_edge, %lor.lhs.false.i.sw.epilog.sink.split_crit_edge, %if.end.i.sw.epilog.sink.split_crit_edge
  %.sink30 = phi ptr [ %UvdBootLevel.i, %lor.lhs.false.i.sw.epilog.sink.split_crit_edge ], [ %UvdBootLevel.i, %if.end.i.sw.epilog.sink.split_crit_edge ], [ %43, %if.end.i26.sw.epilog.sink.split_crit_edge ]
  %.sink = phi i16 [ 301, %lor.lhs.false.i.sw.epilog.sink.split_crit_edge ], [ 301, %if.end.i.sw.epilog.sink.split_crit_edge ], [ 302, %if.end.i26.sw.epilog.sink.split_crit_edge ]
  %96 = ptrtoint ptr %.sink30 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %.sink30, align 1
  %conv18.i = zext i8 %97 to i32
  %shl19.i = shl nuw i32 1, %conv18.i
  %call20.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext %.sink, i32 noundef %shl19.i, ptr noundef null) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.body.i.7, %for.body.i.6.sw.epilog_crit_edge, %for.body.i.5.sw.epilog_crit_edge, %for.body.i.4.sw.epilog_crit_edge, %for.body.i.3.sw.epilog_crit_edge, %for.body.i.2.sw.epilog_crit_edge, %for.body.i.1.sw.epilog_crit_edge, %for.body.i.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge, %if.end.i26.sw.epilog_crit_edge, %lor.lhs.false.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @polaris10_process_firmware_header(ptr noundef %hwmgr) #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %2 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backend, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #7
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tmp, align 4, !annotation !349
  %call = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131124, ptr noundef nonnull %tmp, i32 noundef 262144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tmp, align 4
  %dpm_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dpm_table_start, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call4 = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131120, ptr noundef nonnull %tmp, i32 noundef 262144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tmp, align 4
  %soft_regs_start = getelementptr inbounds %struct.smu7_hwmgr, ptr %3, i32 0, i32 39
  %10 = ptrtoint ptr %soft_regs_start to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %soft_regs_start, align 4
  %soft_regs_start8 = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %soft_regs_start8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %soft_regs_start8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %call17 = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131140, ptr noundef nonnull %tmp, i32 noundef 262144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end9.if.end21_crit_edge

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then19:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tmp, align 4
  %mc_reg_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %mc_reg_table_start to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %mc_reg_table_start, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end9.if.end21_crit_edge
  %call22 = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131128, ptr noundef nonnull %tmp, i32 noundef 262144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end21.if.end26_crit_edge

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tmp, align 4
  %fan_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %fan_table_start to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %fan_table_start, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end21.if.end26_crit_edge
  %call34 = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131144, ptr noundef nonnull %tmp, i32 noundef 262144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %if.end26.if.end38_crit_edge

if.end26.if.end38_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then36:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tmp, align 4
  %arb_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %arb_table_start to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arb_table_start, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end26.if.end38_crit_edge
  %call46 = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131092, ptr noundef nonnull %tmp, i32 noundef 262144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then48, label %if.end38.if.end49_crit_edge

if.end38.if.end49_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then48:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tmp, align 4
  %microcode_version_info = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 39
  %23 = ptrtoint ptr %microcode_version_info to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %microcode_version_info, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end38.if.end49_crit_edge
  %24 = or i32 %call4, %call
  %25 = or i32 %24, %call22
  %26 = or i32 %25, %call34
  %27 = or i32 %26, %call46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %.not = icmp ne i32 %27, 0
  %cond = sext i1 %.not to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #7
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @polaris10_update_sclk_threshold(ptr noundef %hwmgr) #0 align 64 {
entry:
  %low_sclk_interrupt_threshold = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %low_sclk_interrupt_threshold) #7
  %4 = ptrtoint ptr %low_sclk_interrupt_threshold to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %low_sclk_interrupt_threshold, align 4
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 3
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %6, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %entry.do.end13_crit_edge, label %land.lhs.true

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

land.lhs.true:                                    ; preds = %entry
  %low_sclk_interrupt_threshold1 = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 83
  %7 = ptrtoint ptr %low_sclk_interrupt_threshold1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %low_sclk_interrupt_threshold1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %land.lhs.true.do.end13_crit_edge, label %do.body

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

do.body:                                          ; preds = %land.lhs.true
  %9 = ptrtoint ptr %low_sclk_interrupt_threshold to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %low_sclk_interrupt_threshold, align 4
  %dpm_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dpm_table_start, align 8
  %add = add i32 %11, 1692
  %call3 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add, ptr noundef nonnull %low_sclk_interrupt_threshold, i32 noundef 4, i32 noundef 262144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %do.body.do.end13_crit_edge, label %if.then5

do.body.do.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

if.then5:                                         ; preds = %do.body
  %call6 = call i32 @___ratelimit(ptr noundef nonnull @polaris10_update_sclk_threshold._rs, ptr noundef nonnull @__func__.polaris10_update_sclk_threshold) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then5.cleanup_crit_edge, label %if.then5.cleanup.sink.split_crit_edge

if.then5.cleanup.sink.split_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end13:                                         ; preds = %do.body.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %entry.do.end13_crit_edge
  %12 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %backend, align 4
  %need_update_smu7_dpm_table.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %13, i32 0, i32 71
  %14 = ptrtoint ptr %need_update_smu7_dpm_table.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %need_update_smu7_dpm_table.i, align 4
  %and.i = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end13.cleanup_crit_edge, label %polaris10_program_mem_timing_parameters.exit

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

polaris10_program_mem_timing_parameters.exit:     ; preds = %do.end13
  %call.i = call fastcc i32 @polaris10_program_memory_timing_parameters(ptr noundef %hwmgr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp16 = icmp eq i32 %call.i, 0
  br i1 %cmp16, label %polaris10_program_mem_timing_parameters.exit.cleanup_crit_edge, label %if.then17

polaris10_program_mem_timing_parameters.exit.cleanup_crit_edge: ; preds = %polaris10_program_mem_timing_parameters.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then17:                                        ; preds = %polaris10_program_mem_timing_parameters.exit
  %call18 = call i32 @___ratelimit(ptr noundef nonnull @polaris10_update_sclk_threshold._rs.38, ptr noundef nonnull @__func__.polaris10_update_sclk_threshold) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17.cleanup_crit_edge, label %if.then17.cleanup.sink.split_crit_edge

if.then17.cleanup.sink.split_crit_edge:           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then17.cleanup.sink.split_crit_edge, %if.then5.cleanup.sink.split_crit_edge
  %.str.41.sink = phi ptr [ @.str.37, %if.then5.cleanup.sink.split_crit_edge ], [ @.str.41, %if.then17.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call3, %if.then5.cleanup.sink.split_crit_edge ], [ %call.i, %if.then17.cleanup.sink.split_crit_edge ]
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %.str.41.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then17.cleanup_crit_edge, %polaris10_program_mem_timing_parameters.exit.cleanup_crit_edge, %do.end13.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then5.cleanup_crit_edge ], [ %call.i, %if.then17.cleanup_crit_edge ], [ 0, %polaris10_program_mem_timing_parameters.exit.cleanup_crit_edge ], [ 0, %do.end13.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %low_sclk_interrupt_threshold) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @polaris10_thermal_setup_fan_table(ptr noundef %hwmgr) #0 align 64 {
entry:
  %fan_table = alloca %struct.SMU74_Discrete_FanTable, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fan_table) #7
  %2 = call ptr @memset(ptr %fan_table, i32 0, i32 36)
  %fanInfo = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4
  %3 = ptrtoint ptr %fanInfo to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fanInfo, align 4, !range !348
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %fan_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %fan_table_start to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fan_table_start, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.end.cleanup.sink.split_crit_edge, label %if.end5

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %read_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %read_ind_register to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_ind_register, align 4
  %call = tail call i32 %12(ptr noundef %8, i32 noundef 1, i32 noundef -1070595992) #7
  %and = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp7 = icmp eq i32 %and, 0
  br i1 %cmp7, label %if.end5.cleanup.sink.split_crit_edge, label %if.end12

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.end5
  %use_hw_fan_control = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 3
  %13 = ptrtoint ptr %use_hw_fan_control to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %use_hw_fan_control, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool14.not = icmp eq i8 %14, 0
  br i1 %tobool14.not, label %if.end206, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end206:                                        ; preds = %if.end12
  %advanceFanControlParameters = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5
  %usPWMMin = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 3
  %15 = ptrtoint ptr %usPWMMin to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %usPWMMin, align 2
  %conv = zext i16 %16 to i32
  %mul = mul nuw nsw i32 %and, %conv
  %conv18 = zext i32 %mul to i64
  %17 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3777893186295716171, i64 %conv18) #12, !srcloc !350
  %18 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3777893186295716171, i64 %conv18, i64 %17) #12, !srcloc !351
  %div186454 = lshr i64 %18, 11
  %extract.t455 = trunc i64 %div186454 to i16
  %usTMed = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 1
  %19 = ptrtoint ptr %usTMed to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %usTMed, align 2
  %conv211 = zext i16 %20 to i32
  %21 = ptrtoint ptr %advanceFanControlParameters to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %advanceFanControlParameters, align 4
  %conv214 = zext i16 %22 to i32
  %sub215 = sub nsw i32 %conv211, %conv214
  %usTHigh = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 2
  %23 = ptrtoint ptr %usTHigh to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %usTHigh, align 4
  %conv218 = zext i16 %24 to i32
  %sub223 = sub nsw i32 %conv218, %conv211
  %usPWMMed = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 4
  %25 = ptrtoint ptr %usPWMMed to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %usPWMMed, align 4
  %conv226 = zext i16 %26 to i32
  %sub231 = sub nsw i32 %conv226, %conv
  %usPWMHigh = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 5
  %27 = ptrtoint ptr %usPWMHigh to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %usPWMHigh, align 2
  %conv234 = zext i16 %28 to i32
  %sub239 = sub nsw i32 %conv234, %conv226
  %mul240 = shl nuw nsw i32 %and, 4
  %mul241 = mul nsw i32 %sub231, %mul240
  %div242 = udiv i32 %mul241, %sub215
  %add243 = add i32 %div242, 50
  %div244 = udiv i32 %add243, 100
  %conv245 = trunc i32 %div244 to i16
  %mul247 = mul nsw i32 %sub239, %mul240
  %div248 = udiv i32 %mul247, %sub223
  %add249 = add i32 %div248, 50
  %div250 = udiv i32 %add249, 100
  %conv251 = trunc i32 %div250 to i16
  %add256 = add nuw nsw i32 %conv214, 50
  %div257 = udiv i32 %add256, 100
  %conv258 = trunc i32 %div257 to i16
  %TempMin = getelementptr inbounds %struct.SMU74_Discrete_FanTable, ptr %fan_table, i32 0, i32 1
  %29 = ptrtoint ptr %TempMin to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %conv258, ptr %TempMin, align 1
  %add263 = add nuw nsw i32 %conv211, 50
  %div264 = udiv i32 %add263, 100
  %conv265 = trunc i32 %div264 to i16
  %TempMed = getelementptr inbounds %struct.SMU74_Discrete_FanTable, ptr %fan_table, i32 0, i32 2
  %30 = ptrtoint ptr %TempMed to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 %conv265, ptr %TempMed, align 1
  %usTMax = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 8
  %31 = ptrtoint ptr %usTMax to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %usTMax, align 4
  %conv268 = zext i16 %32 to i32
  %add269 = add nuw nsw i32 %conv268, 50
  %div270 = udiv i32 %add269, 100
  %conv271 = trunc i32 %div270 to i16
  %TempMax = getelementptr inbounds %struct.SMU74_Discrete_FanTable, ptr %fan_table, i32 0, i32 3
  %33 = ptrtoint ptr %TempMax to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %conv271, ptr %TempMax, align 1
  %Slope1 = getelementptr inbounds %struct.SMU74_Discrete_FanTable, ptr %fan_table, i32 0, i32 4
  %34 = ptrtoint ptr %Slope1 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %conv245, ptr %Slope1, align 1
  %Slope2 = getelementptr inbounds %struct.SMU74_Discrete_FanTable, ptr %fan_table, i32 0, i32 5
  %35 = ptrtoint ptr %Slope2 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %conv251, ptr %Slope2, align 1
  %FdoMin = getelementptr inbounds %struct.SMU74_Discrete_FanTable, ptr %fan_table, i32 0, i32 6
  %36 = ptrtoint ptr %FdoMin to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 %extract.t455, ptr %FdoMin, align 1
  %ucTHyst = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 6
  %37 = ptrtoint ptr %ucTHyst to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ucTHyst, align 4
  %conv274 = zext i8 %38 to i16
  %HystDown = getelementptr inbounds %struct.SMU74_Discrete_FanTable, ptr %fan_table, i32 0, i32 8
  %39 = ptrtoint ptr %HystDown to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %conv274, ptr %HystDown, align 1
  %HystUp = getelementptr inbounds %struct.SMU74_Discrete_FanTable, ptr %fan_table, i32 0, i32 7
  %40 = ptrtoint ptr %HystUp to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 1, ptr %HystUp, align 1
  %HystSlope = getelementptr inbounds %struct.SMU74_Discrete_FanTable, ptr %fan_table, i32 0, i32 9
  %41 = ptrtoint ptr %HystSlope to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 1, ptr %HystSlope, align 1
  %TempRespLim = getelementptr inbounds %struct.SMU74_Discrete_FanTable, ptr %fan_table, i32 0, i32 10
  %42 = ptrtoint ptr %TempRespLim to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 5, ptr %TempRespLim, align 1
  %43 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hwmgr, align 4
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %44, i32 0, i32 12
  %45 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %asic_funcs, align 4
  %get_xclk = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %46, i32 0, i32 6
  %47 = ptrtoint ptr %get_xclk to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %get_xclk, align 4
  %call276 = tail call i32 %48(ptr noundef %44) #7
  %ulCycleDelay = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 7
  %49 = ptrtoint ptr %ulCycleDelay to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ulCycleDelay, align 4
  %mul279 = mul i32 %50, %call276
  %div280 = udiv i32 %mul279, 1600
  %RefreshPeriod = getelementptr inbounds %struct.SMU74_Discrete_FanTable, ptr %fan_table, i32 0, i32 14
  %51 = ptrtoint ptr %RefreshPeriod to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %div280, ptr %RefreshPeriod, align 1
  %conv281 = trunc i32 %and to i16
  %FdoMax = getelementptr inbounds %struct.SMU74_Discrete_FanTable, ptr %fan_table, i32 0, i32 15
  %52 = ptrtoint ptr %FdoMax to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 %conv281, ptr %FdoMax, align 1
  %53 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %read_ind_register284 = getelementptr inbounds %struct.cgs_ops, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %read_ind_register284 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read_ind_register284, align 4
  %call286 = tail call i32 %58(ptr noundef %54, i32 noundef 1, i32 noundef -1070596080) #7
  %and287 = lshr i32 %call286, 20
  %conv289 = trunc i32 %and287 to i8
  %TempSrc = getelementptr inbounds %struct.SMU74_Discrete_FanTable, ptr %fan_table, i32 0, i32 16
  %59 = ptrtoint ptr %TempSrc to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv289, ptr %TempSrc, align 1
  %60 = ptrtoint ptr %fan_table_start to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %fan_table_start, align 8
  %call292 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %61, ptr noundef nonnull %fan_table, i32 noundef 36, i32 noundef 262144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call292)
  %tobool293.not = icmp eq i32 %call292, 0
  br i1 %tobool293.not, label %land.lhs.true294, label %if.end206.cleanup.sink.split_crit_edge

if.end206.cleanup.sink.split_crit_edge:           ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

land.lhs.true294:                                 ; preds = %if.end206
  %ucMinimumPWMLimit = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 28
  %62 = ptrtoint ptr %ucMinimumPWMLimit to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %ucMinimumPWMLimit, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool298.not = icmp eq i8 %63, 0
  br i1 %tobool298.not, label %land.lhs.true294.land.lhs.true307_crit_edge, label %if.end305

land.lhs.true294.land.lhs.true307_crit_edge:      ; preds = %land.lhs.true294
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true307

if.end305:                                        ; preds = %land.lhs.true294
  %conv297 = zext i8 %63 to i32
  %call304 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 521, i32 noundef %conv297, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call304)
  %tobool306.not = icmp eq i32 %call304, 0
  br i1 %tobool306.not, label %if.end305.land.lhs.true307_crit_edge, label %if.end305.cleanup.sink.split_crit_edge

if.end305.cleanup.sink.split_crit_edge:           ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end305.land.lhs.true307_crit_edge:             ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true307

land.lhs.true307:                                 ; preds = %if.end305.land.lhs.true307_crit_edge, %land.lhs.true294.land.lhs.true307_crit_edge
  %ulMinFanSCLKAcousticLimit = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 26
  %64 = ptrtoint ptr %ulMinFanSCLKAcousticLimit to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ulMinFanSCLKAcousticLimit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool310.not = icmp eq i32 %65, 0
  br i1 %tobool310.not, label %land.lhs.true307.cleanup_crit_edge, label %if.end316

land.lhs.true307.cleanup_crit_edge:               ; preds = %land.lhs.true307
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end316:                                        ; preds = %land.lhs.true307
  %call315 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 518, i32 noundef %65, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call315)
  %tobool317.not = icmp eq i32 %call315, 0
  br i1 %tobool317.not, label %if.end316.cleanup_crit_edge, label %if.end316.cleanup.sink.split_crit_edge

if.end316.cleanup.sink.split_crit_edge:           ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end316.cleanup_crit_edge:                      ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end316.cleanup.sink.split_crit_edge, %if.end305.cleanup.sink.split_crit_edge, %if.end206.cleanup.sink.split_crit_edge, %if.end5.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 1
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i, align 4
  %and1.i461 = and i32 %67, -1073741825
  store i32 %and1.i461, ptr %arrayidx.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end316.cleanup_crit_edge, %land.lhs.true307.cleanup_crit_edge, %if.end12.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fan_table) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @polaris10_thermal_avfs_enable(ptr noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %avfs_supported = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 47
  %0 = ptrtoint ptr %avfs_supported to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %avfs_supported, align 4, !range !348
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %2 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backend, align 4
  %avfs_vdroop_override_setting = getelementptr inbounds %struct.smu7_hwmgr, ptr %3, i32 0, i32 95
  %4 = ptrtoint ptr %avfs_vdroop_override_setting to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %avfs_vdroop_override_setting, align 4
  %call = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 773, i32 noundef %5, ptr noundef null) #7
  %call1 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 618, ptr noundef null) #7
  %apply_avfs_cks_off_voltage = getelementptr inbounds %struct.smu7_hwmgr, ptr %3, i32 0, i32 96
  %6 = ptrtoint ptr %apply_avfs_cks_off_voltage to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %apply_avfs_cks_off_voltage, align 4, !range !348
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 1045, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @polaris10_init_smc_table(ptr noundef %hwmgr) #0 align 64 {
entry:
  %dividers.i = alloca %struct.pp_atomctrl_clock_dividers_vi, align 4
  %mvdd.i = alloca i32, align 4
  %gpio_pin = alloca %struct.pp_atomctrl_gpio_pin_assignment, align 4
  %dividers = alloca %struct.pp_atomctrl_clock_dividers_vi, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %4 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pptable, align 4
  %smc_state_table = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_pin) #7
  %6 = ptrtoint ptr %gpio_pin to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %gpio_pin, align 4, !annotation !349
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dividers) #7
  %7 = call ptr @memset(ptr %dividers, i32 255, i32 16)
  %gpio_table1 = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %5, i32 0, i32 19
  %8 = ptrtoint ptr %gpio_table1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpio_table1, align 4
  %power_tune_defaults10.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %power_tune_defaults10.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @polaris10_power_tune_data_set_array, ptr %power_tune_defaults10.i, align 8
  %voltage_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %voltage_control to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %voltage_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not = icmp eq i32 %12, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %13 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %backend, align 4
  %voltage_control.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %voltage_control.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %voltage_control.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i.i = icmp eq i32 %16, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.polaris10_populate_smc_vddc_table.exit.i_crit_edge

if.then.polaris10_populate_smc_vddc_table.exit.i_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %polaris10_populate_smc_vddc_table.exit.i

if.then.i.i:                                      ; preds = %if.then
  %vddc_voltage_table.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %14, i32 0, i32 41
  %17 = ptrtoint ptr %vddc_voltage_table.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vddc_voltage_table.i.i, align 4
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp41.not.i.i = icmp eq i32 %19, 0
  br i1 %cmp41.not.i.i, label %if.then.i.i.for.end.i.i_crit_edge, label %for.body.i.i

if.then.i.i.for.end.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %if.then.i.i
  %SmioTable1.i.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 7
  %arrayidx.i.i = getelementptr %struct.smu7_hwmgr, ptr %14, i32 0, i32 41, i32 3, i32 0
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.i.i, align 4
  %mul.i.i = shl i16 %21, 2
  %22 = ptrtoint ptr %SmioTable1.i.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %mul.i.i, ptr %SmioTable1.i.i, align 1
  %Smio.i.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 7, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %Smio.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %Smio.i.i, align 1
  %smio_low.i.i = getelementptr %struct.smu7_hwmgr, ptr %14, i32 0, i32 41, i32 3, i32 0, i32 1
  %24 = ptrtoint ptr %smio_low.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %smio_low.i.i, align 4
  %arrayidx16.i.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 46, i32 0
  %26 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %arrayidx16.i.i, align 1
  %or.i.i = or i32 %27, %25
  store i32 %or.i.i, ptr %arrayidx16.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %exitcond.not.i.i = icmp eq i32 %19, 1
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.1

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i.i.1:                                   ; preds = %for.body.i.i
  %arrayidx.i.i.1 = getelementptr %struct.smu7_hwmgr, ptr %14, i32 0, i32 41, i32 3, i32 1
  %28 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.i.i.1, align 4
  %mul.i.i.1 = shl i16 %29, 2
  %arrayidx7.i.i.1 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 7, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx7.i.i.1 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 %mul.i.i.1, ptr %arrayidx7.i.i.1, align 1
  %Smio.i.i.1 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 7, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %Smio.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %Smio.i.i.1, align 1
  %smio_low.i.i.1 = getelementptr %struct.smu7_hwmgr, ptr %14, i32 0, i32 41, i32 3, i32 1, i32 1
  %32 = ptrtoint ptr %smio_low.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %smio_low.i.i.1, align 4
  %arrayidx16.i.i.1 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 46, i32 1
  %34 = ptrtoint ptr %arrayidx16.i.i.1 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %arrayidx16.i.i.1, align 1
  %or.i.i.1 = or i32 %35, %33
  store i32 %or.i.i.1, ptr %arrayidx16.i.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %exitcond.not.i.i.1 = icmp eq i32 %19, 2
  br i1 %exitcond.not.i.i.1, label %for.body.i.i.1.for.end.i.i_crit_edge, label %for.body.i.i.2

for.body.i.i.1.for.end.i.i_crit_edge:             ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i.i.2:                                   ; preds = %for.body.i.i.1
  %arrayidx.i.i.2 = getelementptr %struct.smu7_hwmgr, ptr %14, i32 0, i32 41, i32 3, i32 2
  %36 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.i.i.2, align 4
  %mul.i.i.2 = shl i16 %37, 2
  %arrayidx7.i.i.2 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 7, i32 0, i32 2
  %38 = ptrtoint ptr %arrayidx7.i.i.2 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %mul.i.i.2, ptr %arrayidx7.i.i.2, align 1
  %Smio.i.i.2 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 7, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %Smio.i.i.2 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 2, ptr %Smio.i.i.2, align 1
  %smio_low.i.i.2 = getelementptr %struct.smu7_hwmgr, ptr %14, i32 0, i32 41, i32 3, i32 2, i32 1
  %40 = ptrtoint ptr %smio_low.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %smio_low.i.i.2, align 4
  %arrayidx16.i.i.2 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 46, i32 2
  %42 = ptrtoint ptr %arrayidx16.i.i.2 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %arrayidx16.i.i.2, align 1
  %or.i.i.2 = or i32 %43, %41
  store i32 %or.i.i.2, ptr %arrayidx16.i.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %exitcond.not.i.i.2 = icmp eq i32 %19, 3
  br i1 %exitcond.not.i.i.2, label %for.body.i.i.2.for.end.i.i_crit_edge, label %for.body.i.i.3

for.body.i.i.2.for.end.i.i_crit_edge:             ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i.i.3:                                   ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i.3 = getelementptr %struct.smu7_hwmgr, ptr %14, i32 0, i32 41, i32 3, i32 3
  %44 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx.i.i.3, align 4
  %mul.i.i.3 = shl i16 %45, 2
  %arrayidx7.i.i.3 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 7, i32 0, i32 3
  %46 = ptrtoint ptr %arrayidx7.i.i.3 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 %mul.i.i.3, ptr %arrayidx7.i.i.3, align 1
  %Smio.i.i.3 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 7, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %Smio.i.i.3 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 3, ptr %Smio.i.i.3, align 1
  %smio_low.i.i.3 = getelementptr %struct.smu7_hwmgr, ptr %14, i32 0, i32 41, i32 3, i32 3, i32 1
  %48 = ptrtoint ptr %smio_low.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %smio_low.i.i.3, align 4
  %arrayidx16.i.i.3 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 46, i32 3
  %50 = ptrtoint ptr %arrayidx16.i.i.3 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %arrayidx16.i.i.3, align 1
  %or.i.i.3 = or i32 %51, %49
  store i32 %or.i.i.3, ptr %arrayidx16.i.i.3, align 1
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.3, %for.body.i.i.2.for.end.i.i_crit_edge, %for.body.i.i.1.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge, %if.then.i.i.for.end.i.i_crit_edge
  %mask_low.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %14, i32 0, i32 41, i32 1
  %52 = ptrtoint ptr %mask_low.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mask_low.i.i, align 4
  %SmioMask1.i.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 5
  %54 = ptrtoint ptr %SmioMask1.i.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %53, ptr %SmioMask1.i.i, align 1
  br label %polaris10_populate_smc_vddc_table.exit.i

polaris10_populate_smc_vddc_table.exit.i:         ; preds = %for.end.i.i, %if.then.polaris10_populate_smc_vddc_table.exit.i_crit_edge
  %55 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %backend, align 4
  %vddci_control.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %56, i32 0, i32 40
  %57 = ptrtoint ptr %vddci_control.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %vddci_control.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp.i2.i = icmp eq i32 %58, 1
  br i1 %cmp.i2.i, label %if.then.i4.i, label %polaris10_populate_smc_vddc_table.exit.i.polaris10_populate_smc_vddci_table.exit.i_crit_edge

polaris10_populate_smc_vddc_table.exit.i.polaris10_populate_smc_vddci_table.exit.i_crit_edge: ; preds = %polaris10_populate_smc_vddc_table.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %polaris10_populate_smc_vddci_table.exit.i

if.then.i4.i:                                     ; preds = %polaris10_populate_smc_vddc_table.exit.i
  %vddci_voltage_table.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %56, i32 0, i32 42
  %59 = ptrtoint ptr %vddci_voltage_table.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %vddci_voltage_table.i.i, align 4
  %61 = tail call i32 @llvm.umin.i32(i32 %60, i32 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp41.not.i3.i = icmp eq i32 %61, 0
  br i1 %cmp41.not.i3.i, label %if.then.i4.i.for.end.i21.i_crit_edge, label %for.body.i18.i

if.then.i4.i.for.end.i21.i_crit_edge:             ; preds = %if.then.i4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i21.i

for.body.i18.i:                                   ; preds = %if.then.i4.i
  %SmioTable1.i5.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 7
  %arrayidx.i8.i = getelementptr %struct.smu7_hwmgr, ptr %56, i32 0, i32 42, i32 3, i32 0
  %62 = ptrtoint ptr %arrayidx.i8.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx.i8.i, align 4
  %mul.i9.i = shl i16 %63, 2
  %64 = ptrtoint ptr %SmioTable1.i5.i to i32
  call void @__asan_storeN_noabort(i32 %64, i32 2)
  store i16 %mul.i9.i, ptr %SmioTable1.i5.i, align 1
  %Smio.i12.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 7, i32 0, i32 0, i32 1
  %65 = ptrtoint ptr %Smio.i12.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %Smio.i12.i, align 1
  %smio_low.i13.i = getelementptr %struct.smu7_hwmgr, ptr %56, i32 0, i32 42, i32 3, i32 0, i32 1
  %66 = ptrtoint ptr %smio_low.i13.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %smio_low.i13.i, align 4
  %arrayidx16.i14.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 46, i32 0
  %68 = ptrtoint ptr %arrayidx16.i14.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %arrayidx16.i14.i, align 1
  %or.i15.i = or i32 %69, %67
  store i32 %or.i15.i, ptr %arrayidx16.i14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %exitcond.not.i17.i = icmp eq i32 %61, 1
  br i1 %exitcond.not.i17.i, label %for.body.i18.i.for.end.i21.i_crit_edge, label %for.body.i18.i.1

for.body.i18.i.for.end.i21.i_crit_edge:           ; preds = %for.body.i18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i21.i

for.body.i18.i.1:                                 ; preds = %for.body.i18.i
  %arrayidx.i8.i.1 = getelementptr %struct.smu7_hwmgr, ptr %56, i32 0, i32 42, i32 3, i32 1
  %70 = ptrtoint ptr %arrayidx.i8.i.1 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx.i8.i.1, align 4
  %mul.i9.i.1 = shl i16 %71, 2
  %arrayidx7.i10.i.1 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 7, i32 0, i32 1
  %72 = ptrtoint ptr %arrayidx7.i10.i.1 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 2)
  store i16 %mul.i9.i.1, ptr %arrayidx7.i10.i.1, align 1
  %Smio.i12.i.1 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 7, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %Smio.i12.i.1 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %Smio.i12.i.1, align 1
  %smio_low.i13.i.1 = getelementptr %struct.smu7_hwmgr, ptr %56, i32 0, i32 42, i32 3, i32 1, i32 1
  %74 = ptrtoint ptr %smio_low.i13.i.1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %smio_low.i13.i.1, align 4
  %arrayidx16.i14.i.1 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 46, i32 1
  %76 = ptrtoint ptr %arrayidx16.i14.i.1 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %arrayidx16.i14.i.1, align 1
  %or.i15.i.1 = or i32 %77, %75
  store i32 %or.i15.i.1, ptr %arrayidx16.i14.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %exitcond.not.i17.i.1 = icmp eq i32 %61, 2
  br i1 %exitcond.not.i17.i.1, label %for.body.i18.i.1.for.end.i21.i_crit_edge, label %for.body.i18.i.2

for.body.i18.i.1.for.end.i21.i_crit_edge:         ; preds = %for.body.i18.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i21.i

for.body.i18.i.2:                                 ; preds = %for.body.i18.i.1
  %arrayidx.i8.i.2 = getelementptr %struct.smu7_hwmgr, ptr %56, i32 0, i32 42, i32 3, i32 2
  %78 = ptrtoint ptr %arrayidx.i8.i.2 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %arrayidx.i8.i.2, align 4
  %mul.i9.i.2 = shl i16 %79, 2
  %arrayidx7.i10.i.2 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 7, i32 0, i32 2
  %80 = ptrtoint ptr %arrayidx7.i10.i.2 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 2)
  store i16 %mul.i9.i.2, ptr %arrayidx7.i10.i.2, align 1
  %Smio.i12.i.2 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 7, i32 0, i32 2, i32 1
  %81 = ptrtoint ptr %Smio.i12.i.2 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 2, ptr %Smio.i12.i.2, align 1
  %smio_low.i13.i.2 = getelementptr %struct.smu7_hwmgr, ptr %56, i32 0, i32 42, i32 3, i32 2, i32 1
  %82 = ptrtoint ptr %smio_low.i13.i.2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %smio_low.i13.i.2, align 4
  %arrayidx16.i14.i.2 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 46, i32 2
  %84 = ptrtoint ptr %arrayidx16.i14.i.2 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %arrayidx16.i14.i.2, align 1
  %or.i15.i.2 = or i32 %85, %83
  store i32 %or.i15.i.2, ptr %arrayidx16.i14.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %61)
  %exitcond.not.i17.i.2 = icmp eq i32 %61, 3
  br i1 %exitcond.not.i17.i.2, label %for.body.i18.i.2.for.end.i21.i_crit_edge, label %for.body.i18.i.3

for.body.i18.i.2.for.end.i21.i_crit_edge:         ; preds = %for.body.i18.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i21.i

for.body.i18.i.3:                                 ; preds = %for.body.i18.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i8.i.3 = getelementptr %struct.smu7_hwmgr, ptr %56, i32 0, i32 42, i32 3, i32 3
  %86 = ptrtoint ptr %arrayidx.i8.i.3 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx.i8.i.3, align 4
  %mul.i9.i.3 = shl i16 %87, 2
  %arrayidx7.i10.i.3 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 7, i32 0, i32 3
  %88 = ptrtoint ptr %arrayidx7.i10.i.3 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 2)
  store i16 %mul.i9.i.3, ptr %arrayidx7.i10.i.3, align 1
  %Smio.i12.i.3 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 7, i32 0, i32 3, i32 1
  %89 = ptrtoint ptr %Smio.i12.i.3 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 3, ptr %Smio.i12.i.3, align 1
  %smio_low.i13.i.3 = getelementptr %struct.smu7_hwmgr, ptr %56, i32 0, i32 42, i32 3, i32 3, i32 1
  %90 = ptrtoint ptr %smio_low.i13.i.3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %smio_low.i13.i.3, align 4
  %arrayidx16.i14.i.3 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 46, i32 3
  %92 = ptrtoint ptr %arrayidx16.i14.i.3 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %arrayidx16.i14.i.3, align 1
  %or.i15.i.3 = or i32 %93, %91
  store i32 %or.i15.i.3, ptr %arrayidx16.i14.i.3, align 1
  br label %for.end.i21.i

for.end.i21.i:                                    ; preds = %for.body.i18.i.3, %for.body.i18.i.2.for.end.i21.i_crit_edge, %for.body.i18.i.1.for.end.i21.i_crit_edge, %for.body.i18.i.for.end.i21.i_crit_edge, %if.then.i4.i.for.end.i21.i_crit_edge
  %mask_low.i19.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %56, i32 0, i32 42, i32 1
  %94 = ptrtoint ptr %mask_low.i19.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %mask_low.i19.i, align 4
  %SmioMask1.i20.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 5
  %96 = ptrtoint ptr %SmioMask1.i20.i to i32
  call void @__asan_storeN_noabort(i32 %96, i32 4)
  store i32 %95, ptr %SmioMask1.i20.i, align 1
  br label %polaris10_populate_smc_vddci_table.exit.i

polaris10_populate_smc_vddci_table.exit.i:        ; preds = %for.end.i21.i, %polaris10_populate_smc_vddc_table.exit.i.polaris10_populate_smc_vddci_table.exit.i_crit_edge
  %97 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %backend, align 4
  %mvdd_control.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %98, i32 0, i32 23
  %99 = ptrtoint ptr %mvdd_control.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %mvdd_control.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %100)
  %cmp.i23.i = icmp eq i32 %100, 1
  br i1 %cmp.i23.i, label %if.then.i25.i, label %polaris10_populate_smc_vddci_table.exit.i.polaris10_populate_smc_mvdd_table.exit.i_crit_edge

polaris10_populate_smc_vddci_table.exit.i.polaris10_populate_smc_mvdd_table.exit.i_crit_edge: ; preds = %polaris10_populate_smc_vddci_table.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %polaris10_populate_smc_mvdd_table.exit.i

if.then.i25.i:                                    ; preds = %polaris10_populate_smc_vddci_table.exit.i
  %mvdd_voltage_table.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %98, i32 0, i32 43
  %101 = ptrtoint ptr %mvdd_voltage_table.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %mvdd_voltage_table.i.i, align 4
  %103 = tail call i32 @llvm.umin.i32(i32 %102, i32 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp41.not.i24.i = icmp eq i32 %103, 0
  br i1 %cmp41.not.i24.i, label %if.then.i25.i.for.end.i40.i_crit_edge, label %for.body.i38.i

if.then.i25.i.for.end.i40.i_crit_edge:            ; preds = %if.then.i25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i40.i

for.body.i38.i:                                   ; preds = %if.then.i25.i
  %SmioTable2.i.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 8
  %arrayidx.i28.i = getelementptr %struct.smu7_hwmgr, ptr %98, i32 0, i32 43, i32 3, i32 0
  %104 = ptrtoint ptr %arrayidx.i28.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %arrayidx.i28.i, align 4
  %mul.i29.i = shl i16 %105, 2
  %106 = ptrtoint ptr %SmioTable2.i.i to i32
  call void @__asan_storeN_noabort(i32 %106, i32 2)
  store i16 %mul.i29.i, ptr %SmioTable2.i.i, align 1
  %Smio.i32.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 8, i32 0, i32 0, i32 1
  %107 = ptrtoint ptr %Smio.i32.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %Smio.i32.i, align 1
  %smio_low.i33.i = getelementptr %struct.smu7_hwmgr, ptr %98, i32 0, i32 43, i32 3, i32 0, i32 1
  %108 = ptrtoint ptr %smio_low.i33.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %smio_low.i33.i, align 4
  %arrayidx16.i34.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 46, i32 0
  %110 = ptrtoint ptr %arrayidx16.i34.i to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %arrayidx16.i34.i, align 1
  %or.i35.i = or i32 %111, %109
  store i32 %or.i35.i, ptr %arrayidx16.i34.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %103)
  %exitcond.not.i37.i = icmp eq i32 %103, 1
  br i1 %exitcond.not.i37.i, label %for.body.i38.i.for.end.i40.i_crit_edge, label %for.body.i38.i.1

for.body.i38.i.for.end.i40.i_crit_edge:           ; preds = %for.body.i38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i40.i

for.body.i38.i.1:                                 ; preds = %for.body.i38.i
  %arrayidx.i28.i.1 = getelementptr %struct.smu7_hwmgr, ptr %98, i32 0, i32 43, i32 3, i32 1
  %112 = ptrtoint ptr %arrayidx.i28.i.1 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %arrayidx.i28.i.1, align 4
  %mul.i29.i.1 = shl i16 %113, 2
  %arrayidx7.i30.i.1 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 8, i32 0, i32 1
  %114 = ptrtoint ptr %arrayidx7.i30.i.1 to i32
  call void @__asan_storeN_noabort(i32 %114, i32 2)
  store i16 %mul.i29.i.1, ptr %arrayidx7.i30.i.1, align 1
  %Smio.i32.i.1 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 8, i32 0, i32 1, i32 1
  %115 = ptrtoint ptr %Smio.i32.i.1 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 1, ptr %Smio.i32.i.1, align 1
  %smio_low.i33.i.1 = getelementptr %struct.smu7_hwmgr, ptr %98, i32 0, i32 43, i32 3, i32 1, i32 1
  %116 = ptrtoint ptr %smio_low.i33.i.1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %smio_low.i33.i.1, align 4
  %arrayidx16.i34.i.1 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 46, i32 1
  %118 = ptrtoint ptr %arrayidx16.i34.i.1 to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %arrayidx16.i34.i.1, align 1
  %or.i35.i.1 = or i32 %119, %117
  store i32 %or.i35.i.1, ptr %arrayidx16.i34.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %103)
  %exitcond.not.i37.i.1 = icmp eq i32 %103, 2
  br i1 %exitcond.not.i37.i.1, label %for.body.i38.i.1.for.end.i40.i_crit_edge, label %for.body.i38.i.2

for.body.i38.i.1.for.end.i40.i_crit_edge:         ; preds = %for.body.i38.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i40.i

for.body.i38.i.2:                                 ; preds = %for.body.i38.i.1
  %arrayidx.i28.i.2 = getelementptr %struct.smu7_hwmgr, ptr %98, i32 0, i32 43, i32 3, i32 2
  %120 = ptrtoint ptr %arrayidx.i28.i.2 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %arrayidx.i28.i.2, align 4
  %mul.i29.i.2 = shl i16 %121, 2
  %arrayidx7.i30.i.2 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 8, i32 0, i32 2
  %122 = ptrtoint ptr %arrayidx7.i30.i.2 to i32
  call void @__asan_storeN_noabort(i32 %122, i32 2)
  store i16 %mul.i29.i.2, ptr %arrayidx7.i30.i.2, align 1
  %Smio.i32.i.2 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 8, i32 0, i32 2, i32 1
  %123 = ptrtoint ptr %Smio.i32.i.2 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 2, ptr %Smio.i32.i.2, align 1
  %smio_low.i33.i.2 = getelementptr %struct.smu7_hwmgr, ptr %98, i32 0, i32 43, i32 3, i32 2, i32 1
  %124 = ptrtoint ptr %smio_low.i33.i.2 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %smio_low.i33.i.2, align 4
  %arrayidx16.i34.i.2 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 46, i32 2
  %126 = ptrtoint ptr %arrayidx16.i34.i.2 to i32
  call void @__asan_loadN_noabort(i32 %126, i32 4)
  %127 = load i32, ptr %arrayidx16.i34.i.2, align 1
  %or.i35.i.2 = or i32 %127, %125
  store i32 %or.i35.i.2, ptr %arrayidx16.i34.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %103)
  %exitcond.not.i37.i.2 = icmp eq i32 %103, 3
  br i1 %exitcond.not.i37.i.2, label %for.body.i38.i.2.for.end.i40.i_crit_edge, label %for.body.i38.i.3

for.body.i38.i.2.for.end.i40.i_crit_edge:         ; preds = %for.body.i38.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i40.i

for.body.i38.i.3:                                 ; preds = %for.body.i38.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i28.i.3 = getelementptr %struct.smu7_hwmgr, ptr %98, i32 0, i32 43, i32 3, i32 3
  %128 = ptrtoint ptr %arrayidx.i28.i.3 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %arrayidx.i28.i.3, align 4
  %mul.i29.i.3 = shl i16 %129, 2
  %arrayidx7.i30.i.3 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 8, i32 0, i32 3
  %130 = ptrtoint ptr %arrayidx7.i30.i.3 to i32
  call void @__asan_storeN_noabort(i32 %130, i32 2)
  store i16 %mul.i29.i.3, ptr %arrayidx7.i30.i.3, align 1
  %Smio.i32.i.3 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 8, i32 0, i32 3, i32 1
  %131 = ptrtoint ptr %Smio.i32.i.3 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 3, ptr %Smio.i32.i.3, align 1
  %smio_low.i33.i.3 = getelementptr %struct.smu7_hwmgr, ptr %98, i32 0, i32 43, i32 3, i32 3, i32 1
  %132 = ptrtoint ptr %smio_low.i33.i.3 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %smio_low.i33.i.3, align 4
  %arrayidx16.i34.i.3 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 46, i32 3
  %134 = ptrtoint ptr %arrayidx16.i34.i.3 to i32
  call void @__asan_loadN_noabort(i32 %134, i32 4)
  %135 = load i32, ptr %arrayidx16.i34.i.3, align 1
  %or.i35.i.3 = or i32 %135, %133
  store i32 %or.i35.i.3, ptr %arrayidx16.i34.i.3, align 1
  br label %for.end.i40.i

for.end.i40.i:                                    ; preds = %for.body.i38.i.3, %for.body.i38.i.2.for.end.i40.i_crit_edge, %for.body.i38.i.1.for.end.i40.i_crit_edge, %for.body.i38.i.for.end.i40.i_crit_edge, %if.then.i25.i.for.end.i40.i_crit_edge
  %mask_low.i39.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %98, i32 0, i32 43, i32 1
  %136 = ptrtoint ptr %mask_low.i39.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %mask_low.i39.i, align 4
  %SmioMask2.i.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 6
  %138 = ptrtoint ptr %SmioMask2.i.i to i32
  call void @__asan_storeN_noabort(i32 %138, i32 4)
  store i32 %137, ptr %SmioMask2.i.i, align 1
  %MvddLevelCount.i.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 9
  %139 = ptrtoint ptr %MvddLevelCount.i.i to i32
  call void @__asan_storeN_noabort(i32 %139, i32 4)
  store i32 %103, ptr %MvddLevelCount.i.i, align 1
  br label %polaris10_populate_smc_mvdd_table.exit.i

polaris10_populate_smc_mvdd_table.exit.i:         ; preds = %for.end.i40.i, %polaris10_populate_smc_vddci_table.exit.i.polaris10_populate_smc_mvdd_table.exit.i_crit_edge
  %140 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %backend, align 4
  %142 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pptable, align 4
  %vddc_lookup_table.i.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %143, i32 0, i32 15
  %144 = ptrtoint ptr %vddc_lookup_table.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %vddc_lookup_table.i.i, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %145, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp1.not.i.i = icmp eq i32 %147, 0
  br i1 %cmp1.not.i.i, label %polaris10_populate_smc_mvdd_table.exit.i.if.end_crit_edge, label %polaris10_populate_smc_mvdd_table.exit.i.for.body.i45.i_crit_edge

polaris10_populate_smc_mvdd_table.exit.i.for.body.i45.i_crit_edge: ; preds = %polaris10_populate_smc_mvdd_table.exit.i
  br label %for.body.i45.i

polaris10_populate_smc_mvdd_table.exit.i.if.end_crit_edge: ; preds = %polaris10_populate_smc_mvdd_table.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.i45.i:                                   ; preds = %for.body.i45.i.for.body.i45.i_crit_edge, %polaris10_populate_smc_mvdd_table.exit.i.for.body.i45.i_crit_edge
  %count.02.i.i = phi i32 [ %inc.i43.i, %for.body.i45.i.for.body.i45.i_crit_edge ], [ 0, %polaris10_populate_smc_mvdd_table.exit.i.for.body.i45.i_crit_edge ]
  %arrayidx.i42.i = getelementptr %struct.smu7_hwmgr, ptr %141, i32 0, i32 41, i32 3, i32 %count.02.i.i
  %148 = ptrtoint ptr %arrayidx.i42.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %arrayidx.i42.i, align 4
  %call.i.i = tail call zeroext i8 @phm_get_voltage_index(ptr noundef %145, i16 noundef zeroext %149) #7
  %idxprom.i.i = zext i8 %call.i.i to i32
  %us_cac_low.i.i = getelementptr %struct.phm_ppt_v1_voltage_lookup_table, ptr %145, i32 0, i32 1, i32 %idxprom.i.i, i32 2
  %150 = ptrtoint ptr %us_cac_low.i.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %us_cac_low.i.i, align 2
  %call4.i.i = tail call zeroext i8 @convert_to_vid(i16 noundef zeroext %151) #7
  %arrayidx5.i.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 11, i32 %count.02.i.i
  %152 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %call4.i.i, ptr %arrayidx5.i.i, align 1
  %us_cac_mid.i.i = getelementptr %struct.phm_ppt_v1_voltage_lookup_table, ptr %145, i32 0, i32 1, i32 %idxprom.i.i, i32 3
  %153 = ptrtoint ptr %us_cac_mid.i.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %us_cac_mid.i.i, align 2
  %call9.i.i = tail call zeroext i8 @convert_to_vid(i16 noundef zeroext %154) #7
  %arrayidx10.i.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 10, i32 %count.02.i.i
  %155 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %call9.i.i, ptr %arrayidx10.i.i, align 1
  %us_cac_high.i.i = getelementptr %struct.phm_ppt_v1_voltage_lookup_table, ptr %145, i32 0, i32 1, i32 %idxprom.i.i, i32 4
  %156 = ptrtoint ptr %us_cac_high.i.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %us_cac_high.i.i, align 2
  %call14.i.i = tail call zeroext i8 @convert_to_vid(i16 noundef zeroext %157) #7
  %arrayidx15.i.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 12, i32 %count.02.i.i
  %158 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %call14.i.i, ptr %arrayidx15.i.i, align 1
  %inc.i43.i = add nuw i32 %count.02.i.i, 1
  %159 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %145, align 4
  %cmp.i44.i = icmp ult i32 %inc.i43.i, %160
  br i1 %cmp.i44.i, label %for.body.i45.i.for.body.i45.i_crit_edge, label %for.body.i45.i.if.end_crit_edge

for.body.i45.i.if.end_crit_edge:                  ; preds = %for.body.i45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.i45.i.for.body.i45.i_crit_edge:          ; preds = %for.body.i45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i45.i

if.end:                                           ; preds = %for.body.i45.i.if.end_crit_edge, %polaris10_populate_smc_mvdd_table.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %SystemFlags = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 3
  %161 = ptrtoint ptr %SystemFlags to i32
  call void @__asan_storeN_noabort(i32 %161, i32 4)
  store i32 0, ptr %SystemFlags, align 1
  %platform_descriptor = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23
  %162 = ptrtoint ptr %platform_descriptor to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %platform_descriptor, align 4
  %and1.i = lshr i32 %163, 24
  %and1.i.lobit = and i32 %and1.i, 1
  store i32 %and1.i.lobit, ptr %SystemFlags, align 1
  %164 = load i32, ptr %platform_descriptor, align 4
  %and1.i628 = and i32 %164, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i628)
  %cmp.i629.not = icmp eq i32 %and1.i628, 0
  br i1 %cmp.i629.not, label %if.end.if.end13_crit_edge, label %if.then10

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %165 = ptrtoint ptr %SystemFlags to i32
  call void @__asan_loadN_noabort(i32 %165, i32 4)
  %166 = load i32, ptr %SystemFlags, align 1
  %or12 = or i32 %166, 2
  store i32 %or12, ptr %SystemFlags, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end.if.end13_crit_edge
  %is_memory_gddr5 = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 12
  %167 = ptrtoint ptr %is_memory_gddr5 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %is_memory_gddr5, align 4, !range !348
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool.not = icmp eq i8 %168, 0
  br i1 %tobool.not, label %if.end13.if.end17_crit_edge, label %if.then14

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then14:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %169 = ptrtoint ptr %SystemFlags to i32
  call void @__asan_loadN_noabort(i32 %169, i32 4)
  %170 = load i32, ptr %SystemFlags, align 1
  %or16 = or i32 %170, 4
  store i32 %or16, ptr %SystemFlags, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end13.if.end17_crit_edge
  %ulv_supported = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 55
  %171 = ptrtoint ptr %ulv_supported to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %ulv_supported, align 2, !range !348
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool18.not = icmp eq i8 %172, 0
  br i1 %tobool18.not, label %if.end17.if.end35_crit_edge, label %land.lhs.true

if.end17.if.end35_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end17
  %us_ulv_voltage_offset = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %5, i32 0, i32 20
  %173 = ptrtoint ptr %us_ulv_voltage_offset to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %us_ulv_voltage_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %174)
  %tobool19.not = icmp eq i16 %174, 0
  br i1 %tobool19.not, label %land.lhs.true.if.end35_crit_edge, label %if.then20

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then20:                                        ; preds = %land.lhs.true
  %Ulv.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 43
  %175 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %backend, align 4
  %177 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %pptable, align 4
  %179 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %hwmgr, align 4
  %181 = ptrtoint ptr %Ulv.i to i32
  call void @__asan_storeN_noabort(i32 %181, i32 4)
  store i32 0, ptr %Ulv.i, align 1
  %CcPwrDynRm1.i.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 43, i32 1
  %182 = ptrtoint ptr %CcPwrDynRm1.i.i to i32
  call void @__asan_storeN_noabort(i32 %182, i32 4)
  store i32 0, ptr %CcPwrDynRm1.i.i, align 1
  %us_ulv_voltage_offset.i.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %178, i32 0, i32 20
  %183 = ptrtoint ptr %us_ulv_voltage_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %us_ulv_voltage_offset.i.i, align 4
  %VddcOffset.i.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 43, i32 2
  %185 = ptrtoint ptr %VddcOffset.i.i to i32
  call void @__asan_storeN_noabort(i32 %185, i32 2)
  store i16 %184, ptr %VddcOffset.i.i, align 1
  %186 = load i16, ptr %us_ulv_voltage_offset.i.i, align 4
  %conv.i.i = zext i16 %186 to i32
  %mul.i.i632 = mul nuw nsw i32 %conv.i.i, 100
  %div.i.i = udiv i32 %mul.i.i632, 625
  %conv3.i.i = trunc i32 %div.i.i to i8
  %VddcOffsetVid.i.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 43, i32 3
  %187 = ptrtoint ptr %VddcOffsetVid.i.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %conv3.i.i, ptr %VddcOffsetVid.i.i, align 1
  %chip_id.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 2
  %188 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %189)
  %cmp.i.i633 = icmp eq i32 %189, 17
  br i1 %cmp.i.i633, label %if.then20.if.then.i.i634_crit_edge, label %lor.lhs.false.i.i

if.then20.if.then.i.i634_crit_edge:               ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i634

lor.lhs.false.i.i:                                ; preds = %if.then20
  %pdev.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %180, i32 0, i32 1
  %190 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %pdev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %191, i32 0, i32 8
  %192 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %device.i.i, align 2
  %194 = zext i16 %193 to i64
  call void @__sanitizer_cov_trace_switch(i64 %194, ptr @__sancov_gen_cov_switch_values.178)
  switch i16 %193, label %lor.lhs.false.i.i.if.else.i.i_crit_edge [
    i16 26591, label %land.lhs.true.i.i
    i16 28639, label %land.lhs.true42.i.i
    i16 26607, label %land.lhs.true66.i.i
    i16 26623, label %land.lhs.true84.i.i
  ]

lor.lhs.false.i.i.if.else.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %revision.i.i = getelementptr inbounds %struct.pci_dev, ptr %191, i32 0, i32 12
  %195 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %revision.i.i, align 4
  %197 = zext i8 %196 to i64
  call void @__sanitizer_cov_trace_switch(i64 %197, ptr @__sancov_gen_cov_switch_values.179)
  switch i8 %196, label %land.lhs.true.i.i.if.else.i.i_crit_edge [
    i8 -29, label %land.lhs.true.i.i.if.then.i.i634_crit_edge
    i8 -28, label %land.lhs.true.i.i.if.then.i.i634_crit_edge700
    i8 -27, label %land.lhs.true.i.i.if.then.i.i634_crit_edge701
    i8 -25, label %land.lhs.true.i.i.if.then.i.i634_crit_edge702
    i8 -17, label %land.lhs.true.i.i.if.then.i.i634_crit_edge703
    i8 -31, label %land.lhs.true.i.i.if.then.i.i634_crit_edge704
    i8 -9, label %land.lhs.true.i.i.if.then.i.i634_crit_edge705
  ]

land.lhs.true.i.i.if.then.i.i634_crit_edge705:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i634

land.lhs.true.i.i.if.then.i.i634_crit_edge704:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i634

land.lhs.true.i.i.if.then.i.i634_crit_edge703:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i634

land.lhs.true.i.i.if.then.i.i634_crit_edge702:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i634

land.lhs.true.i.i.if.then.i.i634_crit_edge701:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i634

land.lhs.true.i.i.if.then.i.i634_crit_edge700:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i634

land.lhs.true.i.i.if.then.i.i634_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i634

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

land.lhs.true42.i.i:                              ; preds = %lor.lhs.false.i.i
  %revision44.i.i = getelementptr inbounds %struct.pci_dev, ptr %191, i32 0, i32 12
  %198 = ptrtoint ptr %revision44.i.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %revision44.i.i, align 4
  %200 = zext i8 %199 to i64
  call void @__sanitizer_cov_trace_switch(i64 %200, ptr @__sancov_gen_cov_switch_values.180)
  switch i8 %199, label %land.lhs.true42.i.i.if.else.i.i_crit_edge [
    i8 -25, label %land.lhs.true42.i.i.if.then.i.i634_crit_edge
    i8 -17, label %land.lhs.true42.i.i.if.then.i.i634_crit_edge706
    i8 -1, label %land.lhs.true42.i.i.if.then.i.i634_crit_edge707
  ]

land.lhs.true42.i.i.if.then.i.i634_crit_edge707:  ; preds = %land.lhs.true42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i634

land.lhs.true42.i.i.if.then.i.i634_crit_edge706:  ; preds = %land.lhs.true42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i634

land.lhs.true42.i.i.if.then.i.i634_crit_edge:     ; preds = %land.lhs.true42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i634

land.lhs.true42.i.i.if.else.i.i_crit_edge:        ; preds = %land.lhs.true42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

land.lhs.true66.i.i:                              ; preds = %lor.lhs.false.i.i
  %revision68.i.i = getelementptr inbounds %struct.pci_dev, ptr %191, i32 0, i32 12
  %201 = ptrtoint ptr %revision68.i.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %revision68.i.i, align 4
  %203 = zext i8 %202 to i64
  call void @__sanitizer_cov_trace_switch(i64 %203, ptr @__sancov_gen_cov_switch_values.181)
  switch i8 %202, label %land.lhs.true66.i.i.if.else.i.i_crit_edge [
    i8 -32, label %land.lhs.true66.i.i.if.then.i.i634_crit_edge
    i8 -27, label %land.lhs.true66.i.i.if.then.i.i634_crit_edge708
    i8 -30, label %land.lhs.true66.i.i.if.then.i.i634_crit_edge709
  ]

land.lhs.true66.i.i.if.then.i.i634_crit_edge709:  ; preds = %land.lhs.true66.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i634

land.lhs.true66.i.i.if.then.i.i634_crit_edge708:  ; preds = %land.lhs.true66.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i634

land.lhs.true66.i.i.if.then.i.i634_crit_edge:     ; preds = %land.lhs.true66.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i634

land.lhs.true66.i.i.if.else.i.i_crit_edge:        ; preds = %land.lhs.true66.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

land.lhs.true84.i.i:                              ; preds = %lor.lhs.false.i.i
  %revision86.i.i = getelementptr inbounds %struct.pci_dev, ptr %191, i32 0, i32 12
  %204 = ptrtoint ptr %revision86.i.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %revision86.i.i, align 4
  %206 = zext i8 %205 to i64
  call void @__sanitizer_cov_trace_switch(i64 %206, ptr @__sancov_gen_cov_switch_values.182)
  switch i8 %205, label %land.lhs.true84.i.i.if.else.i.i_crit_edge [
    i8 -49, label %land.lhs.true84.i.i.if.then.i.i634_crit_edge
    i8 -17, label %land.lhs.true84.i.i.if.then.i.i634_crit_edge710
    i8 -1, label %land.lhs.true84.i.i.if.then.i.i634_crit_edge711
  ]

land.lhs.true84.i.i.if.then.i.i634_crit_edge711:  ; preds = %land.lhs.true84.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i634

land.lhs.true84.i.i.if.then.i.i634_crit_edge710:  ; preds = %land.lhs.true84.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i634

land.lhs.true84.i.i.if.then.i.i634_crit_edge:     ; preds = %land.lhs.true84.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i634

land.lhs.true84.i.i.if.else.i.i_crit_edge:        ; preds = %land.lhs.true84.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

if.then.i.i634:                                   ; preds = %land.lhs.true84.i.i.if.then.i.i634_crit_edge, %land.lhs.true84.i.i.if.then.i.i634_crit_edge710, %land.lhs.true84.i.i.if.then.i.i634_crit_edge711, %land.lhs.true66.i.i.if.then.i.i634_crit_edge, %land.lhs.true66.i.i.if.then.i.i634_crit_edge708, %land.lhs.true66.i.i.if.then.i.i634_crit_edge709, %land.lhs.true42.i.i.if.then.i.i634_crit_edge, %land.lhs.true42.i.i.if.then.i.i634_crit_edge706, %land.lhs.true42.i.i.if.then.i.i634_crit_edge707, %land.lhs.true.i.i.if.then.i.i634_crit_edge, %land.lhs.true.i.i.if.then.i.i634_crit_edge700, %land.lhs.true.i.i.if.then.i.i634_crit_edge701, %land.lhs.true.i.i.if.then.i.i634_crit_edge702, %land.lhs.true.i.i.if.then.i.i634_crit_edge703, %land.lhs.true.i.i.if.then.i.i634_crit_edge704, %land.lhs.true.i.i.if.then.i.i634_crit_edge705, %if.then20.if.then.i.i634_crit_edge
  %vddc_phase_shed_control.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %176, i32 0, i32 67
  %207 = ptrtoint ptr %vddc_phase_shed_control.i.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %vddc_phase_shed_control.i.i, align 4
  %209 = xor i8 %208, 3
  br label %polaris10_populate_ulv_state.exit

if.else.i.i:                                      ; preds = %land.lhs.true84.i.i.if.else.i.i_crit_edge, %land.lhs.true66.i.i.if.else.i.i_crit_edge, %land.lhs.true42.i.i.if.else.i.i_crit_edge, %land.lhs.true.i.i.if.else.i.i_crit_edge, %lor.lhs.false.i.i.if.else.i.i_crit_edge
  %vddc_phase_shed_control134.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %176, i32 0, i32 67
  %210 = ptrtoint ptr %vddc_phase_shed_control134.i.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %vddc_phase_shed_control134.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %tobool.not.i.i = icmp eq i8 %211, 0
  %conv136.i.i = zext i1 %tobool.not.i.i to i8
  br label %polaris10_populate_ulv_state.exit

polaris10_populate_ulv_state.exit:                ; preds = %if.else.i.i, %if.then.i.i634
  %conv136.sink.i.i = phi i8 [ %conv136.i.i, %if.else.i.i ], [ %209, %if.then.i.i634 ]
  %VddcPhase137.i.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 43, i32 4
  %212 = ptrtoint ptr %VddcPhase137.i.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %conv136.sink.i.i, ptr %VddcPhase137.i.i, align 1
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %213 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %device, align 4
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %214, align 4
  %write_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %216, i32 0, i32 3
  %217 = ptrtoint ptr %write_ind_register to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %write_ind_register, align 4
  tail call void %218(ptr noundef %214, i32 noundef 1, i32 noundef -1071644324, i32 noundef 262197) #7
  br label %if.end35

if.end35:                                         ; preds = %polaris10_populate_ulv_state.exit, %land.lhs.true.if.end35_crit_edge, %if.end17.if.end35_crit_edge
  %219 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %backend, align 4
  %221 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %smu_backend, align 4
  %pcie_speed_table.i = getelementptr inbounds %struct.smu7_dpm_table, ptr %220, i32 0, i32 2
  %pcie_spc_cap.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %220, i32 0, i32 19
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end35
  %i.01.i = phi i32 [ 0, %if.end35 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %value.i = getelementptr %struct.smu7_dpm_table, ptr %220, i32 0, i32 2, i32 1, i32 %i.01.i, i32 1
  %223 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %value.i, align 4
  %conv.i = trunc i32 %224 to i8
  %arrayidx3.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 37, i32 %i.01.i
  %225 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %conv.i, ptr %arrayidx3.i, align 1
  %param1.i = getelementptr %struct.smu7_dpm_table, ptr %220, i32 0, i32 2, i32 1, i32 %i.01.i, i32 2
  %226 = ptrtoint ptr %param1.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %param1.i, align 4
  %call.i = tail call zeroext i8 @encode_pcie_lane_width(i32 noundef %227) #7
  %PcieLaneCount.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 37, i32 %i.01.i, i32 1
  %228 = ptrtoint ptr %PcieLaneCount.i to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %call.i, ptr %PcieLaneCount.i, align 1
  %EnabledForActivity.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 37, i32 %i.01.i, i32 2
  %229 = ptrtoint ptr %EnabledForActivity.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 1, ptr %EnabledForActivity.i, align 1
  %230 = ptrtoint ptr %pcie_spc_cap.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %pcie_spc_cap.i, align 4
  %conv11.i = trunc i32 %231 to i8
  %SPC.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 37, i32 %i.01.i, i32 3
  %232 = ptrtoint ptr %SPC.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %conv11.i, ptr %SPC.i, align 1
  %DownThreshold.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 37, i32 %i.01.i, i32 4
  %233 = ptrtoint ptr %DownThreshold.i to i32
  call void @__asan_storeN_noabort(i32 %233, i32 4)
  store i32 5, ptr %DownThreshold.i, align 1
  %UpThreshold.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 37, i32 %i.01.i, i32 5
  %234 = ptrtoint ptr %UpThreshold.i to i32
  call void @__asan_storeN_noabort(i32 %234, i32 4)
  store i32 30, ptr %UpThreshold.i, align 1
  %inc.i = add i32 %i.01.i, 1
  %235 = ptrtoint ptr %pcie_speed_table.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %pcie_speed_table.i, align 4
  %cmp.not.i = icmp ugt i32 %inc.i, %236
  br i1 %cmp.not.i, label %polaris10_populate_smc_link_level.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

polaris10_populate_smc_link_level.exit:           ; preds = %for.body.i
  %conv20.i = trunc i32 %236 to i8
  %LinkLevelCount.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %222, i32 0, i32 2, i32 15
  %237 = ptrtoint ptr %LinkLevelCount.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %conv20.i, ptr %LinkLevelCount.i, align 1
  %call22.i = tail call i32 @phm_get_dpm_level_enable_mask_value(ptr noundef %pcie_speed_table.i) #7
  %pcie_dpm_enable_mask.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %220, i32 0, i32 70, i32 6
  %238 = ptrtoint ptr %pcie_dpm_enable_mask.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %call22.i, ptr %pcie_dpm_enable_mask.i, align 4
  %call53 = tail call i32 @polaris10_populate_all_graphic_levels(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp55 = icmp eq i32 %call53, 0
  br i1 %cmp55, label %do.end69, label %if.then57

if.then57:                                        ; preds = %polaris10_populate_smc_link_level.exit
  %call58 = tail call i32 @___ratelimit(ptr noundef nonnull @polaris10_init_smc_table._rs.48, ptr noundef nonnull @__func__.polaris10_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then57.cleanup_crit_edge, label %do.end63

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end63:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.51) #11
  br label %cleanup

do.end69:                                         ; preds = %polaris10_populate_smc_link_level.exit
  %call70 = tail call i32 @polaris10_populate_all_memory_levels(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp72 = icmp eq i32 %call70, 0
  br i1 %cmp72, label %do.end86, label %if.then74

if.then74:                                        ; preds = %do.end69
  %call75 = tail call i32 @___ratelimit(ptr noundef nonnull @polaris10_init_smc_table._rs.52, ptr noundef nonnull @__func__.polaris10_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.then74.cleanup_crit_edge, label %do.end80

if.then74.cleanup_crit_edge:                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end80:                                         ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.55) #11
  br label %cleanup

do.end86:                                         ; preds = %do.end69
  %239 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %backend, align 4
  %241 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %pptable, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvdd.i) #7
  %243 = ptrtoint ptr %mvdd.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 -1, ptr %mvdd.i, align 4, !annotation !349
  %ACPILevel.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 38
  %244 = ptrtoint ptr %ACPILevel.i to i32
  call void @__asan_loadN_noabort(i32 %244, i32 4)
  %245 = load i32, ptr %ACPILevel.i, align 1
  %and.i = and i32 %245, -2
  store i32 %and.i, ptr %ACPILevel.i, align 1
  %sclk_bootup_value.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %240, i32 0, i32 31, i32 4
  %246 = ptrtoint ptr %sclk_bootup_value.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %sclk_bootup_value.i, align 4
  %248 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %242, align 4
  %MinVoltage.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 38, i32 1
  %call.i637 = call fastcc i32 @polaris10_get_dependency_volt_by_clk(ptr noundef %hwmgr, ptr noundef %249, i32 noundef %247, ptr noundef %MinVoltage.i, ptr noundef nonnull %mvdd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i637)
  %cmp.i638 = icmp eq i32 %call.i637, 0
  br i1 %cmp.i638, label %do.end86.do.end8.i_crit_edge, label %if.then.i

do.end86.do.end8.i_crit_edge:                     ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8.i

if.then.i:                                        ; preds = %do.end86
  %call2.i = tail call i32 @___ratelimit(ptr noundef nonnull @polaris10_populate_smc_acpi_level._rs, ptr noundef nonnull @__func__.polaris10_populate_smc_acpi_level) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.end8.i_crit_edge, label %do.end.i

if.then.i.do.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.112) #11
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i, %if.then.i.do.end8.i_crit_edge, %do.end86.do.end8.i_crit_edge
  %SclkSetting.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 38, i32 9
  tail call fastcc void @polaris10_calculate_sclk_params(ptr noundef %hwmgr, i32 noundef %247, ptr noundef %SclkSetting.i) #7
  %DeepSleepDivId.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 38, i32 5
  %250 = ptrtoint ptr %DeepSleepDivId.i to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 0, ptr %DeepSleepDivId.i, align 1
  %CcPwrDynRm.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 38, i32 7
  %251 = ptrtoint ptr %CcPwrDynRm.i to i32
  call void @__asan_storeN_noabort(i32 %251, i32 4)
  store i32 0, ptr %CcPwrDynRm.i, align 1
  %CcPwrDynRm1.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 38, i32 8
  %252 = ptrtoint ptr %CcPwrDynRm1.i to i32
  call void @__asan_storeN_noabort(i32 %252, i32 4)
  store i32 0, ptr %CcPwrDynRm1.i, align 1
  %mclk_bootup_value.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %240, i32 0, i32 31, i32 5
  %253 = ptrtoint ptr %mclk_bootup_value.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %mclk_bootup_value.i, align 4
  %MemoryACPILevel.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 35
  %MclkFrequency.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 35, i32 2
  %255 = ptrtoint ptr %MclkFrequency.i to i32
  call void @__asan_storeN_noabort(i32 %255, i32 4)
  store i32 %254, ptr %MclkFrequency.i, align 1
  %vdd_dep_on_mclk.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %242, i32 0, i32 1
  %256 = ptrtoint ptr %vdd_dep_on_mclk.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %vdd_dep_on_mclk.i, align 4
  %call100.i = call fastcc i32 @polaris10_get_dependency_volt_by_clk(ptr noundef %hwmgr, ptr noundef %257, i32 noundef %254, ptr noundef %MemoryACPILevel.i, ptr noundef nonnull %mvdd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.i)
  %cmp102.i = icmp eq i32 %call100.i, 0
  br i1 %cmp102.i, label %do.end8.i.do.end115.i_crit_edge, label %if.then103.i

do.end8.i.do.end115.i_crit_edge:                  ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end115.i

if.then103.i:                                     ; preds = %do.end8.i
  %call104.i = tail call i32 @___ratelimit(ptr noundef nonnull @polaris10_populate_smc_acpi_level._rs.117, ptr noundef nonnull @__func__.polaris10_populate_smc_acpi_level) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104.i)
  %tobool105.not.i = icmp eq i32 %call104.i, 0
  br i1 %tobool105.not.i, label %if.then103.i.do.end115.i_crit_edge, label %do.end109.i

if.then103.i.do.end115.i_crit_edge:               ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end115.i

do.end109.i:                                      ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #9
  %call111.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.120) #11
  br label %do.end115.i

do.end115.i:                                      ; preds = %do.end109.i, %if.then103.i.do.end115.i_crit_edge, %do.end8.i.do.end115.i_crit_edge
  %mvdd_control.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %240, i32 0, i32 23
  %258 = ptrtoint ptr %mvdd_control.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %mvdd_control.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %cmp116.i = icmp eq i32 %259, 0
  br i1 %cmp116.i, label %do.end115.i.if.end120.i_crit_edge, label %lor.lhs.false.i

do.end115.i.if.end120.i_crit_edge:                ; preds = %do.end115.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120.i

lor.lhs.false.i:                                  ; preds = %do.end115.i
  %mclk_dpm_key_disabled.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %240, i32 0, i32 73
  %260 = ptrtoint ptr %mclk_dpm_key_disabled.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %mclk_dpm_key_disabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %261)
  %tobool117.not.i = icmp eq i32 %261, 0
  br i1 %tobool117.not.i, label %if.then118.i, label %lor.lhs.false.i.if.end120.i_crit_edge

lor.lhs.false.i.if.end120.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120.i

if.then118.i:                                     ; preds = %lor.lhs.false.i
  %value.i639 = getelementptr inbounds %struct.smu7_dpm_table, ptr %240, i32 0, i32 1, i32 1, i32 0, i32 1
  %262 = ptrtoint ptr %value.i639 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %value.i639, align 4
  %264 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %backend, align 4
  %mvdd_control.i.i640 = getelementptr inbounds %struct.smu7_hwmgr, ptr %265, i32 0, i32 23
  %266 = ptrtoint ptr %mvdd_control.i.i640 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %mvdd_control.i.i640, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %267)
  %cmp.not.i.i = icmp eq i32 %267, 0
  br i1 %cmp.not.i.i, label %if.then118.i.if.end120.i_crit_edge, label %for.cond.preheader.i.i

if.then118.i.if.end120.i_crit_edge:               ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120.i

for.cond.preheader.i.i:                           ; preds = %if.then118.i
  %268 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %pptable, align 4
  %vdd_dep_on_mclk.i.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %269, i32 0, i32 1
  %270 = ptrtoint ptr %vdd_dep_on_mclk.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %vdd_dep_on_mclk.i.i, align 4
  %272 = ptrtoint ptr %271 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %271, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %cmp134.not.i.i = icmp eq i32 %273, 0
  br i1 %cmp134.not.i.i, label %for.cond.preheader.i.i.do.body.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i642_crit_edge

for.cond.preheader.i.i.for.body.i.i642_crit_edge: ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i642

for.cond.preheader.i.i.do.body.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

for.body.i.i642:                                  ; preds = %for.inc.i.i.for.body.i.i642_crit_edge, %for.cond.preheader.i.i.for.body.i.i642_crit_edge
  %i.035.i.i = phi i32 [ %inc.i.i643, %for.inc.i.i.for.body.i.i642_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i642_crit_edge ]
  %arrayidx.i.i641 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %271, i32 0, i32 1, i32 %i.035.i.i
  %274 = ptrtoint ptr %arrayidx.i.i641 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %arrayidx.i.i641, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %275, i32 %263)
  %cmp3.not.i.i = icmp ult i32 %275, %263
  br i1 %cmp3.not.i.i, label %for.inc.i.i, label %for.body.i.i642.do.body.i.i_crit_edge

for.body.i.i642.do.body.i.i_crit_edge:            ; preds = %for.body.i.i642
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i642
  %inc.i.i643 = add nuw i32 %i.035.i.i, 1
  %exitcond.not.i.i644 = icmp eq i32 %inc.i.i643, %273
  br i1 %exitcond.not.i.i644, label %for.inc.i.i.if.then10.i.i_crit_edge, label %for.inc.i.i.for.body.i.i642_crit_edge

for.inc.i.i.for.body.i.i642_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i642

for.inc.i.i.if.then10.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i.i

do.body.i.i:                                      ; preds = %for.body.i.i642.do.body.i.i_crit_edge, %for.cond.preheader.i.i.do.body.i.i_crit_edge
  %i.032.i.i = phi i32 [ 0, %for.cond.preheader.i.i.do.body.i.i_crit_edge ], [ %i.035.i.i, %for.body.i.i642.do.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.032.i.i, i32 %273)
  %cmp9.i.i = icmp ult i32 %i.032.i.i, %273
  br i1 %cmp9.i.i, label %do.body.i.i.if.end120.i_crit_edge, label %do.body.i.i.if.then10.i.i_crit_edge

do.body.i.i.if.then10.i.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i.i

do.body.i.i.if.end120.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120.i

if.then10.i.i:                                    ; preds = %do.body.i.i.if.then10.i.i_crit_edge, %for.inc.i.i.if.then10.i.i_crit_edge
  %call.i.i645 = tail call i32 @___ratelimit(ptr noundef nonnull @polaris10_populate_mvdd_value._rs, ptr noundef nonnull @__func__.polaris10_populate_mvdd_value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i645)
  %tobool.not.i.i646 = icmp eq i32 %call.i.i645, 0
  br i1 %tobool.not.i.i646, label %if.then10.i.i.if.end120.i_crit_edge, label %do.end.i.i

if.then10.i.i.if.end120.i_crit_edge:              ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120.i

do.end.i.i:                                       ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.121) #11
  br label %if.end120.i

if.end120.i:                                      ; preds = %do.end.i.i, %if.then10.i.i.if.end120.i_crit_edge, %do.body.i.i.if.end120.i_crit_edge, %if.then118.i.if.end120.i_crit_edge, %lor.lhs.false.i.if.end120.i_crit_edge, %do.end115.i.if.end120.i_crit_edge
  %276 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %backend, align 4
  %mvdd_control.i215.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %277, i32 0, i32 23
  %278 = ptrtoint ptr %mvdd_control.i215.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %mvdd_control.i215.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %279)
  %cmp.not.i216.i = icmp eq i32 %279, 0
  br i1 %cmp.not.i216.i, label %if.end120.i.polaris10_populate_smc_acpi_level.exit_crit_edge, label %for.cond.preheader.i220.i

if.end120.i.polaris10_populate_smc_acpi_level.exit_crit_edge: ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %polaris10_populate_smc_acpi_level.exit

for.cond.preheader.i220.i:                        ; preds = %if.end120.i
  %280 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %pptable, align 4
  %vdd_dep_on_mclk.i218.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %281, i32 0, i32 1
  %282 = ptrtoint ptr %vdd_dep_on_mclk.i218.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %vdd_dep_on_mclk.i218.i, align 4
  %284 = ptrtoint ptr %283 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %283, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %285)
  %cmp134.not.i219.i = icmp eq i32 %285, 0
  br i1 %cmp134.not.i219.i, label %if.then10.i231.i, label %if.then123.i

if.then10.i231.i:                                 ; preds = %for.cond.preheader.i220.i
  %call.i229.i = tail call i32 @___ratelimit(ptr noundef nonnull @polaris10_populate_mvdd_value._rs, ptr noundef nonnull @__func__.polaris10_populate_mvdd_value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i229.i)
  %tobool.not.i230.i = icmp eq i32 %call.i229.i, 0
  br i1 %tobool.not.i230.i, label %if.then10.i231.i.polaris10_populate_smc_acpi_level.exit_crit_edge, label %do.end.i233.i

if.then10.i231.i.polaris10_populate_smc_acpi_level.exit_crit_edge: ; preds = %if.then10.i231.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %polaris10_populate_smc_acpi_level.exit

do.end.i233.i:                                    ; preds = %if.then10.i231.i
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i232.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.121) #11
  br label %polaris10_populate_smc_acpi_level.exit

if.then123.i:                                     ; preds = %for.cond.preheader.i220.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx6.i224.i = getelementptr %struct.smu7_hwmgr, ptr %277, i32 0, i32 43, i32 3, i32 0
  %286 = ptrtoint ptr %arrayidx6.i224.i to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %arrayidx6.i224.i, align 4
  %conv.i647 = zext i16 %287 to i32
  br label %polaris10_populate_smc_acpi_level.exit

polaris10_populate_smc_acpi_level.exit:           ; preds = %if.then123.i, %do.end.i233.i, %if.then10.i231.i.polaris10_populate_smc_acpi_level.exit_crit_edge, %if.end120.i.polaris10_populate_smc_acpi_level.exit_crit_edge
  %.sink.i = phi i32 [ %conv.i647, %if.then123.i ], [ 0, %do.end.i233.i ], [ 0, %if.then10.i231.i.polaris10_populate_smc_acpi_level.exit_crit_edge ], [ 0, %if.end120.i.polaris10_populate_smc_acpi_level.exit_crit_edge ]
  %MinMvdd126.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 35, i32 1
  %288 = ptrtoint ptr %MinMvdd126.i to i32
  call void @__asan_storeN_noabort(i32 %288, i32 4)
  store i32 %.sink.i, ptr %MinMvdd126.i, align 1
  %StutterEnable.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 35, i32 3
  %289 = ptrtoint ptr %StutterEnable.i to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 0, ptr %StutterEnable.i, align 1
  %EnabledForThrottle.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 35, i32 4
  %290 = ptrtoint ptr %EnabledForThrottle.i to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 0, ptr %EnabledForThrottle.i, align 1
  %EnabledForActivity.i648 = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 35, i32 5
  %291 = ptrtoint ptr %EnabledForActivity.i648 to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 0, ptr %EnabledForActivity.i648, align 1
  %UpHyst.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 35, i32 7
  %292 = ptrtoint ptr %UpHyst.i to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 0, ptr %UpHyst.i, align 1
  %DownHyst.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 35, i32 8
  %293 = ptrtoint ptr %DownHyst.i to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 100, ptr %DownHyst.i, align 1
  %VoltageDownHyst.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 35, i32 9
  %294 = ptrtoint ptr %VoltageDownHyst.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 0, ptr %VoltageDownHyst.i, align 1
  %sclk_activity.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %240, i32 0, i32 102, i32 3
  %295 = ptrtoint ptr %sclk_activity.i to i32
  call void @__asan_load2_noabort(i32 %295)
  %296 = load i16, ptr %sclk_activity.i, align 4
  %ActivityLevel.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 35, i32 11
  %297 = ptrtoint ptr %ActivityLevel.i to i32
  call void @__asan_storeN_noabort(i32 %297, i32 2)
  store i16 %296, ptr %ActivityLevel.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvdd.i) #7
  br i1 %cmp102.i, label %do.end103, label %if.then91

if.then91:                                        ; preds = %polaris10_populate_smc_acpi_level.exit
  %call92 = tail call i32 @___ratelimit(ptr noundef nonnull @polaris10_init_smc_table._rs.56, ptr noundef nonnull @__func__.polaris10_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.then91.cleanup_crit_edge, label %do.end97

if.then91.cleanup_crit_edge:                      ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end97:                                         ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #9
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.59) #11
  br label %cleanup

do.end103:                                        ; preds = %polaris10_populate_smc_acpi_level.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dividers.i) #7
  %298 = call ptr @memset(ptr %dividers.i, i32 255, i32 16)
  %299 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %pptable, align 4
  %mm_dep_table.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %300, i32 0, i32 14
  %301 = ptrtoint ptr %mm_dep_table.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %mm_dep_table.i, align 4
  %303 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %backend, align 4
  %305 = ptrtoint ptr %302 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %302, align 4
  %conv.i651 = trunc i32 %306 to i8
  %VceLevelCount.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 18
  %307 = ptrtoint ptr %VceLevelCount.i to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 %conv.i651, ptr %VceLevelCount.i, align 1
  %VceBootLevel.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 48
  %308 = ptrtoint ptr %VceBootLevel.i to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 0, ptr %VceBootLevel.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i651)
  %cmp138.not.i = icmp eq i8 %conv.i651, 0
  br i1 %cmp138.not.i, label %do.end103.if.then108_crit_edge, label %for.body.lr.ph.i

do.end103.if.then108_crit_edge:                   ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then108

for.body.lr.ph.i:                                 ; preds = %do.end103
  %vddci_control.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %304, i32 0, i32 40
  %vddci_voltage_table.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %304, i32 0, i32 42
  br label %for.body.i653

for.body.i653:                                    ; preds = %do.end70.i.for.body.i653_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %do.end70.i.for.body.i653_crit_edge ]
  %eclk.i = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %302, i32 0, i32 1, i32 %indvars.iv.i, i32 2
  %309 = ptrtoint ptr %eclk.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %eclk.i, align 4
  %arrayidx7.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 40, i32 %indvars.iv.i
  %311 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_storeN_noabort(i32 %311, i32 4)
  store i32 %310, ptr %arrayidx7.i, align 1
  %MinVoltage.i652 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 40, i32 %indvars.iv.i, i32 1
  %312 = ptrtoint ptr %MinVoltage.i652 to i32
  call void @__asan_storeN_noabort(i32 %312, i32 4)
  store i32 0, ptr %MinVoltage.i652, align 1
  %vddc.i = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %302, i32 0, i32 1, i32 %indvars.iv.i, i32 7
  %313 = ptrtoint ptr %vddc.i to i32
  call void @__asan_load2_noabort(i32 %313)
  %314 = load i16, ptr %vddc.i, align 4
  %conv14.i = zext i16 %314 to i32
  %mul.i = shl nuw nsw i32 %conv14.i, 2
  store i32 %mul.i, ptr %MinVoltage.i652, align 1
  %315 = ptrtoint ptr %vddci_control.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %vddci_control.i, align 4
  %317 = zext i32 %316 to i64
  call void @__sanitizer_cov_trace_switch(i64 %317, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %316, label %for.body.i653.if.end42.i_crit_edge [
    i32 1, label %if.then.i655
    i32 2, label %if.then31.i
  ]

for.body.i653.if.end42.i_crit_edge:               ; preds = %for.body.i653
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

if.then.i655:                                     ; preds = %for.body.i653
  call void @__sanitizer_cov_trace_pc() #9
  %318 = ptrtoint ptr %vddc.i to i32
  call void @__asan_load2_noabort(i32 %318)
  %319 = load i16, ptr %vddc.i, align 4
  %sub.i = add i16 %319, -200
  %call.i654 = call zeroext i16 @phm_find_closest_vddci(ptr noundef %vddci_voltage_table.i, i16 noundef zeroext %sub.i) #7
  %conv27.i = zext i16 %call.i654 to i32
  br label %if.end42.i

if.then31.i:                                      ; preds = %for.body.i653
  call void @__sanitizer_cov_trace_pc() #9
  %320 = ptrtoint ptr %vddc.i to i32
  call void @__asan_load2_noabort(i32 %320)
  %321 = load i16, ptr %vddc.i, align 4
  %conv36.i = zext i16 %321 to i32
  %sub37.i = add nsw i32 %conv36.i, -200
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then31.i, %if.then.i655, %for.body.i653.if.end42.i_crit_edge
  %vddci.0.i = phi i32 [ %conv27.i, %if.then.i655 ], [ %sub37.i, %if.then31.i ], [ 0, %for.body.i653.if.end42.i_crit_edge ]
  %mul43.i = shl i32 %vddci.0.i, 17
  %322 = ptrtoint ptr %MinVoltage.i652 to i32
  call void @__asan_loadN_noabort(i32 %322, i32 4)
  %323 = load i32, ptr %MinVoltage.i652, align 1
  %or49.i = or i32 %323, %mul43.i
  %or54.i = or i32 %or49.i, 1073741824
  store i32 %or54.i, ptr %MinVoltage.i652, align 1
  %324 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_loadN_noabort(i32 %324, i32 4)
  %325 = load i32, ptr %arrayidx7.i, align 1
  %call59.i = call i32 @atomctrl_get_dfs_pll_dividers_vi(ptr noundef %hwmgr, i32 noundef %325, ptr noundef nonnull %dividers.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %cmp60.i = icmp eq i32 %call59.i, 0
  br i1 %cmp60.i, label %do.end70.i, label %if.then62.i

if.then62.i:                                      ; preds = %if.end42.i
  %call63.i = call i32 @___ratelimit(ptr noundef nonnull @polaris10_populate_smc_vce_level._rs, ptr noundef nonnull @__func__.polaris10_populate_smc_vce_level) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool.not.i656 = icmp eq i32 %call63.i, 0
  br i1 %tobool.not.i656, label %if.then62.i.if.then108_crit_edge, label %do.end.i657

if.then62.i.if.then108_crit_edge:                 ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then108

do.end.i657:                                      ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #9
  %call66.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.122) #11
  br label %if.then108

do.end70.i:                                       ; preds = %if.end42.i
  %326 = ptrtoint ptr %dividers.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %dividers.i, align 4
  %conv71.i = trunc i32 %327 to i8
  %Divider.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 40, i32 %indvars.iv.i, i32 2
  %328 = ptrtoint ptr %Divider.i to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 %conv71.i, ptr %Divider.i, align 1
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %329 = ptrtoint ptr %VceLevelCount.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %VceLevelCount.i, align 1
  %331 = zext i8 %330 to i32
  %cmp.i658 = icmp ult i32 %indvars.iv.next.i, %331
  br i1 %cmp.i658, label %do.end70.i.for.body.i653_crit_edge, label %do.end120

do.end70.i.for.body.i653_crit_edge:               ; preds = %do.end70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i653

if.then108:                                       ; preds = %do.end.i657, %if.then62.i.if.then108_crit_edge, %do.end103.if.then108_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %do.end103.if.then108_crit_edge ], [ %call59.i, %if.then62.i.if.then108_crit_edge ], [ %call59.i, %do.end.i657 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers.i) #7
  %call109 = call i32 @___ratelimit(ptr noundef nonnull @polaris10_init_smc_table._rs.60, ptr noundef nonnull @__func__.polaris10_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.then108.cleanup_crit_edge, label %do.end114

if.then108.cleanup_crit_edge:                     ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end114:                                        ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #9
  %call116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.63) #11
  br label %cleanup

do.end120:                                        ; preds = %do.end70.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers.i) #7
  %call121 = call fastcc i32 @polaris10_populate_smc_samu_level(ptr noundef %hwmgr, ptr noundef %smc_state_table)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %cmp123 = icmp eq i32 %call121, 0
  br i1 %cmp123, label %do.end137, label %if.then125

if.then125:                                       ; preds = %do.end120
  %call126 = call i32 @___ratelimit(ptr noundef nonnull @polaris10_init_smc_table._rs.64, ptr noundef nonnull @__func__.polaris10_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.then125.cleanup_crit_edge, label %do.end131

if.then125.cleanup_crit_edge:                     ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end131:                                        ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #9
  %call133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.67) #11
  br label %cleanup

do.end137:                                        ; preds = %do.end120
  %call138 = call fastcc i32 @polaris10_program_memory_timing_parameters(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %cmp140 = icmp eq i32 %call138, 0
  br i1 %cmp140, label %do.end154, label %if.then142

if.then142:                                       ; preds = %do.end137
  %call143 = call i32 @___ratelimit(ptr noundef nonnull @polaris10_init_smc_table._rs.68, ptr noundef nonnull @__func__.polaris10_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.then142.cleanup_crit_edge, label %do.end148

if.then142.cleanup_crit_edge:                     ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end148:                                        ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  %call150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.71) #11
  br label %cleanup

do.end154:                                        ; preds = %do.end137
  %call155 = call fastcc i32 @polaris10_populate_smc_uvd_level(ptr noundef %hwmgr, ptr noundef %smc_state_table)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %cmp157 = icmp eq i32 %call155, 0
  br i1 %cmp157, label %do.end171, label %if.then159

if.then159:                                       ; preds = %do.end154
  %call160 = call i32 @___ratelimit(ptr noundef nonnull @polaris10_init_smc_table._rs.72, ptr noundef nonnull @__func__.polaris10_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.then159.cleanup_crit_edge, label %do.end165

if.then159.cleanup_crit_edge:                     ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end165:                                        ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #9
  %call167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.75) #11
  br label %cleanup

do.end171:                                        ; preds = %do.end154
  call fastcc void @polaris10_populate_smc_boot_level(ptr noundef %hwmgr, ptr noundef %smc_state_table)
  call fastcc void @polaris10_populate_smc_initailial_state(ptr noundef %hwmgr)
  call fastcc void @polaris10_populate_bapm_parameters_in_dpm_table(ptr noundef %hwmgr)
  %ucEnableZeroRPM.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 36
  %332 = ptrtoint ptr %ucEnableZeroRPM.i to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %ucEnableZeroRPM.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %333)
  %tobool.not.i659 = icmp eq i8 %333, 0
  br i1 %tobool.not.i659, label %do.end171.polaris10_populate_zero_rpm_parameters.exit_crit_edge, label %if.then.i661

do.end171.polaris10_populate_zero_rpm_parameters.exit_crit_edge: ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #9
  br label %polaris10_populate_zero_rpm_parameters.exit

if.then.i661:                                     ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #9
  %ucFanStartTemperature.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 38
  %334 = ptrtoint ptr %ucFanStartTemperature.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %ucFanStartTemperature.i, align 2
  %conv6.i = zext i8 %335 to i16
  %shl7.i = shl nuw i16 %conv6.i, 8
  %ucFanStopTemperature.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 37
  %336 = ptrtoint ptr %ucFanStopTemperature.i to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %ucFanStopTemperature.i, align 1
  %conv1.i = zext i8 %337 to i16
  %shl.i = shl nuw i16 %conv1.i, 8
  %338 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %smu_backend, align 4
  %FanStartTemperature.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %339, i32 0, i32 2, i32 29
  %340 = ptrtoint ptr %FanStartTemperature.i to i32
  call void @__asan_storeN_noabort(i32 %340, i32 2)
  store i16 %shl7.i, ptr %FanStartTemperature.i, align 1
  %FanStopTemperature.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %339, i32 0, i32 2, i32 30
  %341 = ptrtoint ptr %FanStopTemperature.i to i32
  call void @__asan_storeN_noabort(i32 %341, i32 2)
  store i16 %shl.i, ptr %FanStopTemperature.i, align 1
  br label %polaris10_populate_zero_rpm_parameters.exit

polaris10_populate_zero_rpm_parameters.exit:      ; preds = %if.then.i661, %do.end171.polaris10_populate_zero_rpm_parameters.exit_crit_edge
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 5
  %342 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %arrayidx.i, align 4
  %and1.i662 = and i32 %343, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i662)
  %cmp.i663.not = icmp eq i32 %and1.i662, 0
  br i1 %cmp.i663.not, label %polaris10_populate_zero_rpm_parameters.exit.if.end245_crit_edge, label %if.then227

polaris10_populate_zero_rpm_parameters.exit.if.end245_crit_edge: ; preds = %polaris10_populate_zero_rpm_parameters.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end245

if.then227:                                       ; preds = %polaris10_populate_zero_rpm_parameters.exit
  %call228 = call fastcc i32 @polaris10_populate_clock_stretcher_data_table(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %cmp230 = icmp eq i32 %call228, 0
  br i1 %cmp230, label %if.then227.if.end245_crit_edge, label %if.then232

if.then227.if.end245_crit_edge:                   ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end245

if.then232:                                       ; preds = %if.then227
  %call233 = call i32 @___ratelimit(ptr noundef nonnull @polaris10_init_smc_table._rs.88, ptr noundef nonnull @__func__.polaris10_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %if.then232.cleanup_crit_edge, label %do.end238

if.then232.cleanup_crit_edge:                     ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end238:                                        ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #9
  %call240 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.91) #11
  br label %cleanup

if.end245:                                        ; preds = %if.then227.if.end245_crit_edge, %polaris10_populate_zero_rpm_parameters.exit.if.end245_crit_edge
  %call246 = call fastcc i32 @polaris10_populate_avfs_parameters(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call246)
  %cmp248 = icmp eq i32 %call246, 0
  br i1 %cmp248, label %do.end262, label %if.then250

if.then250:                                       ; preds = %if.end245
  %call251 = call i32 @___ratelimit(ptr noundef nonnull @polaris10_init_smc_table._rs.92, ptr noundef nonnull @__func__.polaris10_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call251)
  %tobool252.not = icmp eq i32 %call251, 0
  br i1 %tobool252.not, label %if.then250.cleanup_crit_edge, label %do.end256

if.then250.cleanup_crit_edge:                     ; preds = %if.then250
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end256:                                        ; preds = %if.then250
  call void @__sanitizer_cov_trace_pc() #9
  %call258 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.95) #11
  br label %cleanup

do.end262:                                        ; preds = %if.end245
  %CurrSclkPllRange = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 97
  %344 = ptrtoint ptr %CurrSclkPllRange to i32
  call void @__asan_storeN_noabort(i32 %344, i32 4)
  store i32 255, ptr %CurrSclkPllRange, align 1
  %GraphicsVoltageChangeEnable = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 52
  %cac_dtp_table = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %5, i32 0, i32 12
  %345 = call ptr @memset(ptr %GraphicsVoltageChangeEnable, i32 1, i32 5)
  %346 = ptrtoint ptr %cac_dtp_table to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %cac_dtp_table, align 4
  %usTargetOperatingTemp = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %347, i32 0, i32 14
  %348 = ptrtoint ptr %usTargetOperatingTemp to i32
  call void @__asan_load2_noabort(i32 %348)
  %349 = load i16, ptr %usTargetOperatingTemp, align 4
  %mul = shl i16 %349, 8
  %TemperatureLimitHigh = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 57
  %350 = ptrtoint ptr %TemperatureLimitHigh to i32
  call void @__asan_storeN_noabort(i32 %350, i32 2)
  store i16 %mul, ptr %TemperatureLimitHigh, align 1
  %351 = load ptr, ptr %cac_dtp_table, align 4
  %usTargetOperatingTemp266 = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %351, i32 0, i32 14
  %352 = ptrtoint ptr %usTargetOperatingTemp266 to i32
  call void @__asan_load2_noabort(i32 %352)
  %353 = load i16, ptr %usTargetOperatingTemp266, align 4
  %sub = shl i16 %353, 8
  %mul268 = add i16 %sub, -256
  %TemperatureLimitLow = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 58
  %354 = ptrtoint ptr %TemperatureLimitLow to i32
  call void @__asan_storeN_noabort(i32 %354, i32 2)
  store i16 %mul268, ptr %TemperatureLimitLow, align 1
  %MemoryVoltageChangeEnable = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 60
  %355 = ptrtoint ptr %MemoryVoltageChangeEnable to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 1, ptr %MemoryVoltageChangeEnable, align 1
  %MemoryInterval = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 62
  %356 = ptrtoint ptr %MemoryInterval to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 1, ptr %MemoryInterval, align 1
  %VoltageResponseTime = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 64
  %357 = ptrtoint ptr %VoltageResponseTime to i32
  call void @__asan_storeN_noabort(i32 %357, i32 2)
  store i16 0, ptr %VoltageResponseTime, align 1
  %PhaseResponseTime = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 65
  %358 = ptrtoint ptr %PhaseResponseTime to i32
  call void @__asan_storeN_noabort(i32 %358, i32 2)
  store i16 0, ptr %PhaseResponseTime, align 1
  %MemoryThermThrottleEnable = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 63
  %359 = ptrtoint ptr %MemoryThermThrottleEnable to i32
  call void @__asan_store1_noabort(i32 %359)
  store i8 1, ptr %MemoryThermThrottleEnable, align 1
  %pcie_speed_table = getelementptr inbounds %struct.smu7_dpm_table, ptr %1, i32 0, i32 2
  %360 = ptrtoint ptr %pcie_speed_table to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %pcie_speed_table, align 4
  %conv270 = trunc i32 %361 to i8
  %PCIeBootLinkLevel = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 66
  %362 = ptrtoint ptr %PCIeBootLinkLevel to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 %conv270, ptr %PCIeBootLinkLevel, align 1
  %PCIeGenInterval = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 67
  %363 = ptrtoint ptr %PCIeGenInterval to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 1, ptr %PCIeGenInterval, align 1
  %VRConfig = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 4
  %364 = ptrtoint ptr %VRConfig to i32
  call void @__asan_storeN_noabort(i32 %364, i32 4)
  store i32 0, ptr %VRConfig, align 1
  call fastcc void @polaris10_populate_vr_config(ptr noundef %hwmgr, ptr noundef %smc_state_table)
  %365 = ptrtoint ptr %VRConfig to i32
  call void @__asan_loadN_noabort(i32 %365, i32 4)
  %366 = load i32, ptr %VRConfig, align 1
  %vr_config = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 101
  %367 = ptrtoint ptr %vr_config to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 %366, ptr %vr_config, align 4
  %ThermGpio = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 73
  %368 = ptrtoint ptr %ThermGpio to i32
  call void @__asan_store1_noabort(i32 %368)
  store i8 17, ptr %ThermGpio, align 1
  %SclkStepSize = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 45
  %369 = ptrtoint ptr %SclkStepSize to i32
  call void @__asan_storeN_noabort(i32 %369, i32 4)
  store i32 16384, ptr %SclkStepSize, align 1
  %call289 = call zeroext i1 @atomctrl_get_pp_assign_pin(ptr noundef %hwmgr, i32 noundef 61, ptr noundef nonnull %gpio_pin) #7
  br i1 %call289, label %if.then290, label %if.else

if.then290:                                       ; preds = %do.end262
  %uc_gpio_pin_bit_shift = getelementptr inbounds %struct.pp_atomctrl_gpio_pin_assignment, ptr %gpio_pin, i32 0, i32 1
  %370 = ptrtoint ptr %uc_gpio_pin_bit_shift to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %uc_gpio_pin_bit_shift, align 2
  %VRHotGpio = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 71
  %372 = ptrtoint ptr %VRHotGpio to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 %371, ptr %VRHotGpio, align 1
  %tobool291.not = icmp eq ptr %9, null
  br i1 %tobool291.not, label %if.then290.if.end298_crit_edge, label %if.then292

if.then290.if.end298_crit_edge:                   ; preds = %if.then290
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end298

if.then292:                                       ; preds = %if.then290
  call void @__sanitizer_cov_trace_pc() #9
  %373 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %9, align 1
  %VRHotLevel = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 25
  %375 = ptrtoint ptr %VRHotLevel to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 %374, ptr %VRHotLevel, align 1
  br label %if.end298

if.else:                                          ; preds = %do.end262
  call void @__sanitizer_cov_trace_pc() #9
  %VRHotGpio294 = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 71
  %376 = ptrtoint ptr %VRHotGpio294 to i32
  call void @__asan_store1_noabort(i32 %376)
  store i8 127, ptr %VRHotGpio294, align 1
  %arrayidx.i664 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %377 = ptrtoint ptr %arrayidx.i664 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %arrayidx.i664, align 4
  %and1.i665 = and i32 %378, -5
  store i32 %and1.i665, ptr %arrayidx.i664, align 4
  br label %if.end298

if.end298:                                        ; preds = %if.else, %if.then292, %if.then290.if.end298_crit_edge
  %call299 = call zeroext i1 @atomctrl_get_pp_assign_pin(ptr noundef %hwmgr, i32 noundef 60, ptr noundef nonnull %gpio_pin) #7
  br i1 %call299, label %if.then300, label %if.else315

if.then300:                                       ; preds = %if.end298
  %uc_gpio_pin_bit_shift301 = getelementptr inbounds %struct.pp_atomctrl_gpio_pin_assignment, ptr %gpio_pin, i32 0, i32 1
  %379 = ptrtoint ptr %uc_gpio_pin_bit_shift301 to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %uc_gpio_pin_bit_shift301, align 2
  %AcDcGpio = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 72
  %381 = ptrtoint ptr %AcDcGpio to i32
  call void @__asan_store1_noabort(i32 %381)
  store i8 %380, ptr %AcDcGpio, align 1
  %382 = ptrtoint ptr %platform_descriptor to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %platform_descriptor, align 4
  %and1.i666 = and i32 %383, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i666)
  %cmp.i667.not = icmp eq i32 %and1.i666, 0
  br i1 %cmp.i667.not, label %if.then300.if.end320_crit_edge, label %land.lhs.true307

if.then300.if.end320_crit_edge:                   ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end320

land.lhs.true307:                                 ; preds = %if.then300
  %call308 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 631, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call308)
  %tobool309.not = icmp eq i32 %call308, 0
  br i1 %tobool309.not, label %if.then310, label %land.lhs.true307.if.end320_crit_edge

land.lhs.true307.if.end320_crit_edge:             ; preds = %land.lhs.true307
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end320

if.then310:                                       ; preds = %land.lhs.true307
  call void @__sanitizer_cov_trace_pc() #9
  %384 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %385, 2048
  store i32 %or.i, ptr %arrayidx.i, align 4
  br label %if.end320

if.else315:                                       ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #9
  %AcDcGpio316 = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 72
  %386 = ptrtoint ptr %AcDcGpio316 to i32
  call void @__asan_store1_noabort(i32 %386)
  store i8 127, ptr %AcDcGpio316, align 1
  %387 = ptrtoint ptr %platform_descriptor to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %platform_descriptor, align 4
  %and1.i669 = and i32 %388, -16777217
  store i32 %and1.i669, ptr %platform_descriptor, align 4
  br label %if.end320

if.end320:                                        ; preds = %if.else315, %if.then310, %land.lhs.true307.if.end320_crit_edge, %if.then300.if.end320_crit_edge
  %call321 = call zeroext i1 @atomctrl_get_pp_assign_pin(ptr noundef %hwmgr, i32 noundef 65, ptr noundef nonnull %gpio_pin) #7
  br i1 %call321, label %if.then322, label %if.else350

if.then322:                                       ; preds = %if.end320
  %arrayidx.i670 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 4
  %389 = ptrtoint ptr %arrayidx.i670 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %arrayidx.i670, align 4
  %or.i671 = or i32 %390, 16
  store i32 %or.i671, ptr %arrayidx.i670, align 4
  %uc_gpio_pin_bit_shift326 = getelementptr inbounds %struct.pp_atomctrl_gpio_pin_assignment, ptr %gpio_pin, i32 0, i32 1
  %391 = ptrtoint ptr %uc_gpio_pin_bit_shift326 to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %uc_gpio_pin_bit_shift326, align 2
  %ThermOutGpio = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 21
  %393 = ptrtoint ptr %ThermOutGpio to i32
  call void @__asan_store1_noabort(i32 %393)
  store i8 %392, ptr %ThermOutGpio, align 1
  %device327 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %394 = ptrtoint ptr %device327 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %device327, align 4
  %396 = ptrtoint ptr %395 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %395, align 4
  %398 = ptrtoint ptr %397 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %397, align 4
  %call330 = call i32 %399(ptr noundef %395, i32 noundef 387) #7
  %400 = ptrtoint ptr %uc_gpio_pin_bit_shift326 to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %uc_gpio_pin_bit_shift326, align 2
  %conv332 = zext i8 %401 to i32
  %shl = shl nuw i32 1, %conv332
  %and = and i32 %shl, %call330
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp333 = icmp eq i32 %and, 0
  %conv335 = zext i1 %cmp333 to i8
  %ThermOutPolarity = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 22
  %402 = ptrtoint ptr %ThermOutPolarity to i32
  call void @__asan_store1_noabort(i32 %402)
  store i8 %conv335, ptr %ThermOutPolarity, align 1
  %ThermOutMode = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 23
  %403 = ptrtoint ptr %ThermOutMode to i32
  call void @__asan_store1_noabort(i32 %403)
  store i8 1, ptr %ThermOutMode, align 1
  %arrayidx.i672 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %404 = ptrtoint ptr %arrayidx.i672 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %arrayidx.i672, align 4
  %and1.i673 = and i32 %405, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i673)
  %cmp.i674.not = icmp eq i32 %and1.i673, 0
  br i1 %cmp.i674.not, label %if.then322.if.end354_crit_edge, label %land.lhs.true341

if.then322.if.end354_crit_edge:                   ; preds = %if.then322
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end354

land.lhs.true341:                                 ; preds = %if.then322
  %406 = ptrtoint ptr %arrayidx.i670 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %arrayidx.i670, align 4
  %and1.i676 = and i32 %407, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i676)
  %cmp.i677.not = icmp eq i32 %and1.i676, 0
  br i1 %cmp.i677.not, label %land.lhs.true341.if.end354_crit_edge, label %if.then347

land.lhs.true341.if.end354_crit_edge:             ; preds = %land.lhs.true341
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end354

if.then347:                                       ; preds = %land.lhs.true341
  call void @__sanitizer_cov_trace_pc() #9
  %408 = ptrtoint ptr %ThermOutMode to i32
  call void @__asan_store1_noabort(i32 %408)
  store i8 2, ptr %ThermOutMode, align 1
  br label %if.end354

if.else350:                                       ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #9
  %ThermOutGpio351 = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 21
  %409 = ptrtoint ptr %ThermOutGpio351 to i32
  call void @__asan_store1_noabort(i32 %409)
  store i8 17, ptr %ThermOutGpio351, align 1
  %ThermOutPolarity352 = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 22
  %410 = ptrtoint ptr %ThermOutPolarity352 to i32
  call void @__asan_store1_noabort(i32 %410)
  store i8 1, ptr %ThermOutPolarity352, align 1
  %ThermOutMode353 = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 23
  %411 = ptrtoint ptr %ThermOutMode353 to i32
  call void @__asan_store1_noabort(i32 %411)
  store i8 0, ptr %ThermOutMode353, align 1
  br label %if.end354

if.end354:                                        ; preds = %if.else350, %if.then347, %land.lhs.true341.if.end354_crit_edge, %if.then322.if.end354_crit_edge
  %BifSclkDfs = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 43, i32 5
  br label %for.body

for.body:                                         ; preds = %do.end377.for.body_crit_edge, %if.end354
  %conv355684 = phi i32 [ 0, %if.end354 ], [ %conv355, %do.end377.for.body_crit_edge ]
  %i.0683 = phi i8 [ 0, %if.end354 ], [ %inc, %do.end377.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 8, i32 %conv355684
  %412 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %arrayidx, align 4
  %call361 = call i32 @atomctrl_get_dfs_pll_dividers_vi(ptr noundef %hwmgr, i32 noundef %413, ptr noundef nonnull %dividers) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call361)
  %cmp363 = icmp eq i32 %call361, 0
  br i1 %cmp363, label %do.end377, label %if.then365

if.then365:                                       ; preds = %for.body
  %call366 = call i32 @___ratelimit(ptr noundef nonnull @polaris10_init_smc_table._rs.100, ptr noundef nonnull @__func__.polaris10_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call366)
  %tobool367.not = icmp eq i32 %call366, 0
  br i1 %tobool367.not, label %if.then365.cleanup_crit_edge, label %do.end371

if.then365.cleanup_crit_edge:                     ; preds = %if.then365
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end371:                                        ; preds = %if.then365
  call void @__sanitizer_cov_trace_pc() #9
  %call373 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.103) #11
  br label %cleanup

do.end377:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %i.0683)
  %cmp379 = icmp eq i8 %i.0683, 0
  %414 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %dividers, align 4
  %conv382 = trunc i32 %415 to i16
  %sub387 = add nsw i32 %conv355684, -1
  %BifSclkDfs389 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 37, i32 %sub387, i32 6
  %BifSclkDfs.sink = select i1 %cmp379, ptr %BifSclkDfs, ptr %BifSclkDfs389
  %416 = ptrtoint ptr %BifSclkDfs.sink to i32
  call void @__asan_storeN_noabort(i32 %416, i32 2)
  store i16 %conv382, ptr %BifSclkDfs.sink, align 1
  %inc = add i8 %i.0683, 1
  %conv355 = zext i8 %inc to i32
  %417 = ptrtoint ptr %pcie_speed_table to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %pcie_speed_table, align 4
  %cmp359.not = icmp ult i32 %418, %conv355
  br i1 %cmp359.not, label %for.cond391.preheader, label %do.end377.for.body_crit_edge

do.end377.for.body_crit_edge:                     ; preds = %do.end377
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond391.preheader:                            ; preds = %do.end377
  %dpm_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 4
  %419 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %dpm_table_start, align 8
  %add = add i32 %420, 108
  %call423 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add, ptr noundef %SystemFlags, i32 noundef 1776, i32 noundef 262144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call423)
  %cmp425 = icmp eq i32 %call423, 0
  br i1 %cmp425, label %do.end439, label %if.then427

if.then427:                                       ; preds = %for.cond391.preheader
  %call428 = call i32 @___ratelimit(ptr noundef nonnull @polaris10_init_smc_table._rs.104, ptr noundef nonnull @__func__.polaris10_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call428)
  %tobool429.not = icmp eq i32 %call428, 0
  br i1 %tobool429.not, label %if.then427.cleanup_crit_edge, label %do.end433

if.then427.cleanup_crit_edge:                     ; preds = %if.then427
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end433:                                        ; preds = %if.then427
  call void @__sanitizer_cov_trace_pc() #9
  %call435 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.107) #11
  br label %cleanup

do.end439:                                        ; preds = %for.cond391.preheader
  %call440 = call fastcc i32 @polaris10_populate_pm_fuses(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call440)
  %cmp442 = icmp eq i32 %call440, 0
  br i1 %cmp442, label %do.end439.cleanup_crit_edge, label %if.then444

do.end439.cleanup_crit_edge:                      ; preds = %do.end439
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then444:                                       ; preds = %do.end439
  %call445 = call i32 @___ratelimit(ptr noundef nonnull @polaris10_init_smc_table._rs.108, ptr noundef nonnull @__func__.polaris10_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call445)
  %tobool446.not = icmp eq i32 %call445, 0
  br i1 %tobool446.not, label %if.then444.cleanup_crit_edge, label %do.end450

if.then444.cleanup_crit_edge:                     ; preds = %if.then444
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end450:                                        ; preds = %if.then444
  call void @__sanitizer_cov_trace_pc() #9
  %call452 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.111) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end450, %if.then444.cleanup_crit_edge, %do.end439.cleanup_crit_edge, %do.end433, %if.then427.cleanup_crit_edge, %do.end371, %if.then365.cleanup_crit_edge, %do.end256, %if.then250.cleanup_crit_edge, %do.end238, %if.then232.cleanup_crit_edge, %do.end165, %if.then159.cleanup_crit_edge, %do.end148, %if.then142.cleanup_crit_edge, %do.end131, %if.then125.cleanup_crit_edge, %do.end114, %if.then108.cleanup_crit_edge, %do.end97, %if.then91.cleanup_crit_edge, %do.end80, %if.then74.cleanup_crit_edge, %do.end63, %if.then57.cleanup_crit_edge
  %retval.0 = phi i32 [ %call53, %do.end63 ], [ %call53, %if.then57.cleanup_crit_edge ], [ %call70, %do.end80 ], [ %call70, %if.then74.cleanup_crit_edge ], [ %call100.i, %do.end97 ], [ %call100.i, %if.then91.cleanup_crit_edge ], [ %retval.0.i.ph, %do.end114 ], [ %retval.0.i.ph, %if.then108.cleanup_crit_edge ], [ %call121, %do.end131 ], [ %call121, %if.then125.cleanup_crit_edge ], [ %call138, %do.end148 ], [ %call138, %if.then142.cleanup_crit_edge ], [ %call155, %do.end165 ], [ %call155, %if.then159.cleanup_crit_edge ], [ %call228, %do.end238 ], [ %call228, %if.then232.cleanup_crit_edge ], [ %call246, %do.end256 ], [ %call246, %if.then250.cleanup_crit_edge ], [ %call361, %do.end371 ], [ %call361, %if.then365.cleanup_crit_edge ], [ %call423, %do.end433 ], [ %call423, %if.then427.cleanup_crit_edge ], [ %call440, %do.end450 ], [ %call440, %if.then444.cleanup_crit_edge ], [ 0, %do.end439.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_pin) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @polaris10_populate_all_graphic_levels(ptr noundef %hwmgr) #0 align 64 {
entry:
  %mvdd.i = alloca i32, align 4
  %curr_sclk_setting.i = alloca %struct.SMU_SclkSetting, align 1
  %range_table_from_vbios.i = alloca %struct.pp_atom_ctrl_sclk_range_table, align 2
  %shared_rail.i = alloca i8, align 1
  %dividers = alloca %struct.pp_atomctrl_clock_dividers_vi, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %4 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pptable, align 4
  %pcie_table2 = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %pcie_table2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcie_table2, align 4
  %pcie_speed_table = getelementptr inbounds %struct.smu7_dpm_table, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %pcie_speed_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pcie_speed_table, align 4
  %dpm_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dpm_table_start, align 8
  %add = add i32 %11, 236
  %GraphicsLevel = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 34
  %12 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dividers) #7
  %14 = call ptr @memset(ptr %dividers, i32 255, i32 16)
  %SclkSetting = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 34, i32 0, i32 16
  %15 = ptrtoint ptr %SclkSetting to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %SclkSetting, align 1
  %pdev = getelementptr inbounds %struct.amdgpu_device, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %device, align 2
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.184)
  switch i16 %20, label %entry.if.end_crit_edge [
    i16 26591, label %land.lhs.true
    i16 28639, label %land.lhs.true41
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %revision = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 12
  %22 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %revision, align 4
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.185)
  switch i8 %23, label %land.lhs.true65 [
    i8 -29, label %land.lhs.true.if.then_crit_edge
    i8 -28, label %land.lhs.true.if.then_crit_edge434
    i8 -27, label %land.lhs.true.if.then_crit_edge435
    i8 -25, label %land.lhs.true.if.then_crit_edge436
    i8 -17, label %land.lhs.true.if.then_crit_edge437
  ]

land.lhs.true.if.then_crit_edge437:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true.if.then_crit_edge436:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true.if.then_crit_edge435:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true.if.then_crit_edge434:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true41:                                  ; preds = %entry
  %revision43 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 12
  %25 = ptrtoint ptr %revision43 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %revision43, align 4
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.186)
  switch i8 %26, label %land.lhs.true41.if.end_crit_edge [
    i8 -25, label %land.lhs.true41.if.then_crit_edge
    i8 -17, label %land.lhs.true41.if.then_crit_edge438
    i8 -1, label %land.lhs.true41.if.then_crit_edge439
  ]

land.lhs.true41.if.then_crit_edge439:             ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true41.if.then_crit_edge438:             ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true41.if.then_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true41.if.end_crit_edge:                 ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true65:                                  ; preds = %land.lhs.true
  %28 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %revision, align 4
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.187)
  switch i8 %29, label %land.lhs.true65.if.end_crit_edge [
    i8 -31, label %land.lhs.true65.if.then_crit_edge
    i8 -9, label %land.lhs.true65.if.then_crit_edge440
  ]

land.lhs.true65.if.then_crit_edge440:             ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true65.if.then_crit_edge:                ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true65.if.end_crit_edge:                 ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true65.if.then_crit_edge, %land.lhs.true65.if.then_crit_edge440, %land.lhs.true41.if.then_crit_edge, %land.lhs.true41.if.then_crit_edge438, %land.lhs.true41.if.then_crit_edge439, %land.lhs.true.if.then_crit_edge, %land.lhs.true.if.then_crit_edge434, %land.lhs.true.if.then_crit_edge435, %land.lhs.true.if.then_crit_edge436, %land.lhs.true.if.then_crit_edge437
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %shared_rail.i) #7
  %31 = ptrtoint ptr %shared_rail.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %shared_rail.i, align 1, !annotation !349
  %call.i = call i32 @atomctrl_get_vddc_shared_railinfo(ptr noundef %hwmgr, ptr noundef nonnull %shared_rail.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.polaris10_get_vddc_shared_railinfo.exit_crit_edge

if.then.polaris10_get_vddc_shared_railinfo.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %polaris10_get_vddc_shared_railinfo.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %shared_rail.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %shared_rail.i, align 1
  %SharedRails.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 27
  %34 = ptrtoint ptr %SharedRails.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %SharedRails.i, align 1
  br label %polaris10_get_vddc_shared_railinfo.exit

polaris10_get_vddc_shared_railinfo.exit:          ; preds = %if.then.i, %if.then.polaris10_get_vddc_shared_railinfo.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %shared_rail.i) #7
  br label %if.end

if.end:                                           ; preds = %polaris10_get_vddc_shared_railinfo.exit, %land.lhs.true65.if.end_crit_edge, %land.lhs.true41.if.end_crit_edge, %entry.if.end_crit_edge
  %35 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %smu_backend, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %range_table_from_vbios.i) #7
  %37 = call ptr @memset(ptr %range_table_from_vbios.i, i32 0, i32 64)
  %38 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hwmgr, align 4
  %asic_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %asic_funcs.i, align 4
  %get_xclk.i = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %get_xclk.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %get_xclk.i, align 4
  %call.i384 = call i32 %43(ptr noundef %39) #7
  %call2.i = call i32 @atomctrl_get_smc_sclk_range_table(ptr noundef %hwmgr, ptr noundef nonnull %range_table_from_vbios.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %for.body.preheader.i, label %if.end.for.body42.i_crit_edge

if.end.for.body42.i_crit_edge:                    ; preds = %if.end
  br label %for.body42.i

for.body.preheader.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %range_table_from_vbios.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %range_table_from_vbios.i, align 2
  %arrayidx5.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98
  %46 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %arrayidx5.i, align 1
  %ucPostdiv.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 0, i32 1
  %47 = ptrtoint ptr %ucPostdiv.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ucPostdiv.i, align 1
  %postdiv.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 0, i32 1
  %49 = ptrtoint ptr %postdiv.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %postdiv.i, align 1
  %usFcw_pcc.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 0, i32 2
  %50 = ptrtoint ptr %usFcw_pcc.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %usFcw_pcc.i, align 2
  %fcw_pcc.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 0, i32 2
  %52 = ptrtoint ptr %fcw_pcc.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 %51, ptr %fcw_pcc.i, align 1
  %usFcw_trans_upper.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 0, i32 3
  %53 = ptrtoint ptr %usFcw_trans_upper.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %usFcw_trans_upper.i, align 2
  %fcw_trans_upper.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 0, i32 3
  %55 = ptrtoint ptr %fcw_trans_upper.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %54, ptr %fcw_trans_upper.i, align 1
  %usRcw_trans_lower.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 0, i32 4
  %56 = ptrtoint ptr %usRcw_trans_lower.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %usRcw_trans_lower.i, align 2
  %fcw_trans_lower.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 0, i32 4
  %58 = ptrtoint ptr %fcw_trans_lower.i to i32
  call void @__asan_storeN_noabort(i32 %58, i32 2)
  store i16 %57, ptr %fcw_trans_lower.i, align 1
  %arrayidx.1.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 1
  %59 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.1.i, align 2
  %arrayidx5.1.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 1
  %61 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %arrayidx5.1.i, align 1
  %ucPostdiv.1.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %ucPostdiv.1.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %ucPostdiv.1.i, align 1
  %postdiv.1.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 1, i32 1
  %64 = ptrtoint ptr %postdiv.1.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %postdiv.1.i, align 1
  %usFcw_pcc.1.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 1, i32 2
  %65 = ptrtoint ptr %usFcw_pcc.1.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %usFcw_pcc.1.i, align 2
  %fcw_pcc.1.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 1, i32 2
  %67 = ptrtoint ptr %fcw_pcc.1.i to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 %66, ptr %fcw_pcc.1.i, align 1
  %usFcw_trans_upper.1.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 1, i32 3
  %68 = ptrtoint ptr %usFcw_trans_upper.1.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %usFcw_trans_upper.1.i, align 2
  %fcw_trans_upper.1.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 1, i32 3
  %70 = ptrtoint ptr %fcw_trans_upper.1.i to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %69, ptr %fcw_trans_upper.1.i, align 1
  %usRcw_trans_lower.1.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 1, i32 4
  %71 = ptrtoint ptr %usRcw_trans_lower.1.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %usRcw_trans_lower.1.i, align 2
  %fcw_trans_lower.1.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 1, i32 4
  %73 = ptrtoint ptr %fcw_trans_lower.1.i to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 %72, ptr %fcw_trans_lower.1.i, align 1
  %arrayidx.2.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 2
  %74 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.2.i, align 2
  %arrayidx5.2.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 2
  %76 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %arrayidx5.2.i, align 1
  %ucPostdiv.2.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 2, i32 1
  %77 = ptrtoint ptr %ucPostdiv.2.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %ucPostdiv.2.i, align 1
  %postdiv.2.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 2, i32 1
  %79 = ptrtoint ptr %postdiv.2.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %postdiv.2.i, align 1
  %usFcw_pcc.2.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 2, i32 2
  %80 = ptrtoint ptr %usFcw_pcc.2.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %usFcw_pcc.2.i, align 2
  %fcw_pcc.2.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 2, i32 2
  %82 = ptrtoint ptr %fcw_pcc.2.i to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 %81, ptr %fcw_pcc.2.i, align 1
  %usFcw_trans_upper.2.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 2, i32 3
  %83 = ptrtoint ptr %usFcw_trans_upper.2.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %usFcw_trans_upper.2.i, align 2
  %fcw_trans_upper.2.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 2, i32 3
  %85 = ptrtoint ptr %fcw_trans_upper.2.i to i32
  call void @__asan_storeN_noabort(i32 %85, i32 2)
  store i16 %84, ptr %fcw_trans_upper.2.i, align 1
  %usRcw_trans_lower.2.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 2, i32 4
  %86 = ptrtoint ptr %usRcw_trans_lower.2.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %usRcw_trans_lower.2.i, align 2
  %fcw_trans_lower.2.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 2, i32 4
  %88 = ptrtoint ptr %fcw_trans_lower.2.i to i32
  call void @__asan_storeN_noabort(i32 %88, i32 2)
  store i16 %87, ptr %fcw_trans_lower.2.i, align 1
  %arrayidx.3.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 3
  %89 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.3.i, align 2
  %arrayidx5.3.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 3
  %91 = ptrtoint ptr %arrayidx5.3.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %arrayidx5.3.i, align 1
  %ucPostdiv.3.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 3, i32 1
  %92 = ptrtoint ptr %ucPostdiv.3.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %ucPostdiv.3.i, align 1
  %postdiv.3.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 3, i32 1
  %94 = ptrtoint ptr %postdiv.3.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %postdiv.3.i, align 1
  %usFcw_pcc.3.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 3, i32 2
  %95 = ptrtoint ptr %usFcw_pcc.3.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %usFcw_pcc.3.i, align 2
  %fcw_pcc.3.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 3, i32 2
  %97 = ptrtoint ptr %fcw_pcc.3.i to i32
  call void @__asan_storeN_noabort(i32 %97, i32 2)
  store i16 %96, ptr %fcw_pcc.3.i, align 1
  %usFcw_trans_upper.3.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 3, i32 3
  %98 = ptrtoint ptr %usFcw_trans_upper.3.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %usFcw_trans_upper.3.i, align 2
  %fcw_trans_upper.3.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 3, i32 3
  %100 = ptrtoint ptr %fcw_trans_upper.3.i to i32
  call void @__asan_storeN_noabort(i32 %100, i32 2)
  store i16 %99, ptr %fcw_trans_upper.3.i, align 1
  %usRcw_trans_lower.3.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 3, i32 4
  %101 = ptrtoint ptr %usRcw_trans_lower.3.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %usRcw_trans_lower.3.i, align 2
  %fcw_trans_lower.3.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 3, i32 4
  %103 = ptrtoint ptr %fcw_trans_lower.3.i to i32
  call void @__asan_storeN_noabort(i32 %103, i32 2)
  store i16 %102, ptr %fcw_trans_lower.3.i, align 1
  %arrayidx.4.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 4
  %104 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx.4.i, align 2
  %arrayidx5.4.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 4
  %106 = ptrtoint ptr %arrayidx5.4.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %arrayidx5.4.i, align 1
  %ucPostdiv.4.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 4, i32 1
  %107 = ptrtoint ptr %ucPostdiv.4.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %ucPostdiv.4.i, align 1
  %postdiv.4.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 4, i32 1
  %109 = ptrtoint ptr %postdiv.4.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %postdiv.4.i, align 1
  %usFcw_pcc.4.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 4, i32 2
  %110 = ptrtoint ptr %usFcw_pcc.4.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %usFcw_pcc.4.i, align 2
  %fcw_pcc.4.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 4, i32 2
  %112 = ptrtoint ptr %fcw_pcc.4.i to i32
  call void @__asan_storeN_noabort(i32 %112, i32 2)
  store i16 %111, ptr %fcw_pcc.4.i, align 1
  %usFcw_trans_upper.4.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 4, i32 3
  %113 = ptrtoint ptr %usFcw_trans_upper.4.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %usFcw_trans_upper.4.i, align 2
  %fcw_trans_upper.4.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 4, i32 3
  %115 = ptrtoint ptr %fcw_trans_upper.4.i to i32
  call void @__asan_storeN_noabort(i32 %115, i32 2)
  store i16 %114, ptr %fcw_trans_upper.4.i, align 1
  %usRcw_trans_lower.4.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 4, i32 4
  %116 = ptrtoint ptr %usRcw_trans_lower.4.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %usRcw_trans_lower.4.i, align 2
  %fcw_trans_lower.4.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 4, i32 4
  %118 = ptrtoint ptr %fcw_trans_lower.4.i to i32
  call void @__asan_storeN_noabort(i32 %118, i32 2)
  store i16 %117, ptr %fcw_trans_lower.4.i, align 1
  %arrayidx.5.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 5
  %119 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx.5.i, align 2
  %arrayidx5.5.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 5
  %121 = ptrtoint ptr %arrayidx5.5.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %arrayidx5.5.i, align 1
  %ucPostdiv.5.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 5, i32 1
  %122 = ptrtoint ptr %ucPostdiv.5.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %ucPostdiv.5.i, align 1
  %postdiv.5.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 5, i32 1
  %124 = ptrtoint ptr %postdiv.5.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %123, ptr %postdiv.5.i, align 1
  %usFcw_pcc.5.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 5, i32 2
  %125 = ptrtoint ptr %usFcw_pcc.5.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %usFcw_pcc.5.i, align 2
  %fcw_pcc.5.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 5, i32 2
  %127 = ptrtoint ptr %fcw_pcc.5.i to i32
  call void @__asan_storeN_noabort(i32 %127, i32 2)
  store i16 %126, ptr %fcw_pcc.5.i, align 1
  %usFcw_trans_upper.5.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 5, i32 3
  %128 = ptrtoint ptr %usFcw_trans_upper.5.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %usFcw_trans_upper.5.i, align 2
  %fcw_trans_upper.5.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 5, i32 3
  %130 = ptrtoint ptr %fcw_trans_upper.5.i to i32
  call void @__asan_storeN_noabort(i32 %130, i32 2)
  store i16 %129, ptr %fcw_trans_upper.5.i, align 1
  %usRcw_trans_lower.5.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 5, i32 4
  %131 = ptrtoint ptr %usRcw_trans_lower.5.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %usRcw_trans_lower.5.i, align 2
  %fcw_trans_lower.5.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 5, i32 4
  %133 = ptrtoint ptr %fcw_trans_lower.5.i to i32
  call void @__asan_storeN_noabort(i32 %133, i32 2)
  store i16 %132, ptr %fcw_trans_lower.5.i, align 1
  %arrayidx.6.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 6
  %134 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx.6.i, align 2
  %arrayidx5.6.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 6
  %136 = ptrtoint ptr %arrayidx5.6.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %arrayidx5.6.i, align 1
  %ucPostdiv.6.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 6, i32 1
  %137 = ptrtoint ptr %ucPostdiv.6.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %ucPostdiv.6.i, align 1
  %postdiv.6.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 6, i32 1
  %139 = ptrtoint ptr %postdiv.6.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %postdiv.6.i, align 1
  %usFcw_pcc.6.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 6, i32 2
  %140 = ptrtoint ptr %usFcw_pcc.6.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %usFcw_pcc.6.i, align 2
  %fcw_pcc.6.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 6, i32 2
  %142 = ptrtoint ptr %fcw_pcc.6.i to i32
  call void @__asan_storeN_noabort(i32 %142, i32 2)
  store i16 %141, ptr %fcw_pcc.6.i, align 1
  %usFcw_trans_upper.6.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 6, i32 3
  %143 = ptrtoint ptr %usFcw_trans_upper.6.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %usFcw_trans_upper.6.i, align 2
  %fcw_trans_upper.6.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 6, i32 3
  %145 = ptrtoint ptr %fcw_trans_upper.6.i to i32
  call void @__asan_storeN_noabort(i32 %145, i32 2)
  store i16 %144, ptr %fcw_trans_upper.6.i, align 1
  %usRcw_trans_lower.6.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 6, i32 4
  %146 = ptrtoint ptr %usRcw_trans_lower.6.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %usRcw_trans_lower.6.i, align 2
  %fcw_trans_lower.6.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 6, i32 4
  %148 = ptrtoint ptr %fcw_trans_lower.6.i to i32
  call void @__asan_storeN_noabort(i32 %148, i32 2)
  store i16 %147, ptr %fcw_trans_lower.6.i, align 1
  %arrayidx.7.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 7
  %149 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx.7.i, align 2
  %arrayidx5.7.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 7
  %151 = ptrtoint ptr %arrayidx5.7.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %150, ptr %arrayidx5.7.i, align 1
  %ucPostdiv.7.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 7, i32 1
  %152 = ptrtoint ptr %ucPostdiv.7.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %ucPostdiv.7.i, align 1
  %postdiv.7.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 7, i32 1
  %154 = ptrtoint ptr %postdiv.7.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %153, ptr %postdiv.7.i, align 1
  %usFcw_pcc.7.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 7, i32 2
  %155 = ptrtoint ptr %usFcw_pcc.7.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %usFcw_pcc.7.i, align 2
  %fcw_pcc.7.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 7, i32 2
  %157 = ptrtoint ptr %fcw_pcc.7.i to i32
  call void @__asan_storeN_noabort(i32 %157, i32 2)
  store i16 %156, ptr %fcw_pcc.7.i, align 1
  %usFcw_trans_upper.7.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 7, i32 3
  %158 = ptrtoint ptr %usFcw_trans_upper.7.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %usFcw_trans_upper.7.i, align 2
  %fcw_trans_upper.7.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 7, i32 3
  %160 = ptrtoint ptr %fcw_trans_upper.7.i to i32
  call void @__asan_storeN_noabort(i32 %160, i32 2)
  store i16 %159, ptr %fcw_trans_upper.7.i, align 1
  %usRcw_trans_lower.7.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 7, i32 4
  %161 = ptrtoint ptr %usRcw_trans_lower.7.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %usRcw_trans_lower.7.i, align 2
  %fcw_trans_lower.7.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 7, i32 4
  %163 = ptrtoint ptr %fcw_trans_lower.7.i to i32
  call void @__asan_storeN_noabort(i32 %163, i32 2)
  store i16 %162, ptr %fcw_trans_lower.7.i, align 1
  br label %polaris10_get_sclk_range_table.exit

for.body42.i:                                     ; preds = %for.body42.i.for.body42.i_crit_edge, %if.end.for.body42.i_crit_edge
  %i.1176.i = phi i32 [ %inc103.i, %for.body42.i.for.body42.i_crit_edge ], [ 0, %if.end.for.body42.i_crit_edge ]
  %arrayidx43.i = getelementptr [8 x %struct.sclkFcwRange_t], ptr @Range_Table, i32 0, i32 %i.1176.i
  %fcw_trans_lower44.i = getelementptr [8 x %struct.sclkFcwRange_t], ptr @Range_Table, i32 0, i32 %i.1176.i, i32 4
  %164 = ptrtoint ptr %fcw_trans_lower44.i to i32
  call void @__asan_loadN_noabort(i32 %164, i32 2)
  %165 = load i16, ptr %fcw_trans_lower44.i, align 1
  %conv.i = zext i16 %165 to i32
  %mul.i = mul i32 %call.i384, %conv.i
  %postdiv46.i = getelementptr [8 x %struct.sclkFcwRange_t], ptr @Range_Table, i32 0, i32 %i.1176.i, i32 1
  %166 = ptrtoint ptr %postdiv46.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %postdiv46.i, align 1
  %conv47.i = zext i8 %167 to i32
  %shr.i = lshr i32 %mul.i, %conv47.i
  %arrayidx48.i = getelementptr %struct.polaris10_smumgr, ptr %36, i32 0, i32 6, i32 %i.1176.i
  %168 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %shr.i, ptr %arrayidx48.i, align 8
  %fcw_trans_upper50.i = getelementptr [8 x %struct.sclkFcwRange_t], ptr @Range_Table, i32 0, i32 %i.1176.i, i32 3
  %169 = ptrtoint ptr %fcw_trans_upper50.i to i32
  call void @__asan_loadN_noabort(i32 %169, i32 2)
  %170 = load i16, ptr %fcw_trans_upper50.i, align 1
  %conv51.i = zext i16 %170 to i32
  %mul52.i = mul i32 %call.i384, %conv51.i
  %shr56.i = lshr i32 %mul52.i, %conv47.i
  %trans_upper_frequency.i = getelementptr %struct.polaris10_smumgr, ptr %36, i32 0, i32 6, i32 %i.1176.i, i32 1
  %171 = ptrtoint ptr %trans_upper_frequency.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %shr56.i, ptr %trans_upper_frequency.i, align 4
  %172 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx43.i, align 1
  %arrayidx62.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 %i.1176.i
  %174 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %173, ptr %arrayidx62.i, align 1
  %postdiv68.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 %i.1176.i, i32 1
  %175 = ptrtoint ptr %postdiv68.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %167, ptr %postdiv68.i, align 1
  %fcw_pcc70.i = getelementptr [8 x %struct.sclkFcwRange_t], ptr @Range_Table, i32 0, i32 %i.1176.i, i32 2
  %176 = ptrtoint ptr %fcw_pcc70.i to i32
  call void @__asan_loadN_noabort(i32 %176, i32 2)
  %177 = load i16, ptr %fcw_pcc70.i, align 1
  %fcw_pcc73.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 %i.1176.i, i32 2
  %178 = ptrtoint ptr %fcw_pcc73.i to i32
  call void @__asan_storeN_noabort(i32 %178, i32 2)
  store i16 %177, ptr %fcw_pcc73.i, align 1
  %fcw_trans_upper78.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 %i.1176.i, i32 3
  %179 = ptrtoint ptr %fcw_trans_upper78.i to i32
  call void @__asan_storeN_noabort(i32 %179, i32 2)
  store i16 %170, ptr %fcw_trans_upper78.i, align 1
  %fcw_trans_lower83.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 %i.1176.i, i32 4
  %180 = ptrtoint ptr %fcw_trans_lower83.i to i32
  call void @__asan_storeN_noabort(i32 %180, i32 2)
  store i16 %165, ptr %fcw_trans_lower83.i, align 1
  %inc103.i = add nuw nsw i32 %i.1176.i, 1
  %exitcond.not.i = icmp eq i32 %inc103.i, 8
  br i1 %exitcond.not.i, label %for.body42.i.polaris10_get_sclk_range_table.exit_crit_edge, label %for.body42.i.for.body42.i_crit_edge

for.body42.i.for.body42.i_crit_edge:              ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body42.i

for.body42.i.polaris10_get_sclk_range_table.exit_crit_edge: ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %polaris10_get_sclk_range_table.exit

polaris10_get_sclk_range_table.exit:              ; preds = %for.body42.i.polaris10_get_sclk_range_table.exit_crit_edge, %for.body.preheader.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %range_table_from_vbios.i) #7
  %181 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %cmp79391.not = icmp eq i32 %182, 0
  br i1 %cmp79391.not, label %polaris10_get_sclk_range_table.exit.for.end_crit_edge, label %for.body.lr.ph

polaris10_get_sclk_range_table.exit.for.end_crit_edge: ; preds = %polaris10_get_sclk_range_table.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %polaris10_get_sclk_range_table.exit
  %od_enabled.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 53
  %display_config.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 45
  %arrayidx.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0392 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %value = getelementptr %struct.smu7_single_dpm_table, ptr %1, i32 0, i32 1, i32 %i.0392, i32 1
  %183 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %value, align 4
  %arrayidx85 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 34, i32 %i.0392
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvdd.i) #7
  %185 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %backend, align 4
  %187 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %pptable, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %curr_sclk_setting.i) #7
  %189 = call ptr @memset(ptr %curr_sclk_setting.i, i32 0, i32 24)
  call fastcc void @polaris10_calculate_sclk_params(ptr noundef %hwmgr, i32 noundef %184, ptr noundef nonnull %curr_sclk_setting.i) #7
  %190 = ptrtoint ptr %od_enabled.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %od_enabled.i, align 4, !range !348
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool.not.i385 = icmp eq i8 %191, 0
  br i1 %tobool.not.i385, label %if.else.i, label %if.then.i386

if.then.i386:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %vdd_dependency_on_sclk.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %186, i32 0, i32 2, i32 2
  br label %if.end.i

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %192 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %188, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i386
  %vdd_dep_table.0.i = phi ptr [ %vdd_dependency_on_sclk.i, %if.then.i386 ], [ %193, %if.else.i ]
  %call1.i = call fastcc i32 @polaris10_get_dependency_volt_by_clk(ptr noundef %hwmgr, ptr noundef %vdd_dep_table.0.i, i32 noundef %184, ptr noundef %arrayidx85, ptr noundef nonnull %mvdd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i387 = icmp eq i32 %call1.i, 0
  br i1 %cmp.i387, label %do.end11.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %call3.i = call i32 @___ratelimit(ptr noundef nonnull @polaris10_populate_single_graphic_level._rs, ptr noundef nonnull @__func__.polaris10_populate_single_graphic_level) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then2.i.polaris10_populate_single_graphic_level.exit.thread_crit_edge, label %do.end.i

if.then2.i.polaris10_populate_single_graphic_level.exit.thread_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %polaris10_populate_single_graphic_level.exit.thread

do.end.i:                                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.170) #11
  br label %polaris10_populate_single_graphic_level.exit.thread

do.end11.i:                                       ; preds = %if.end.i
  %sclk_activity.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %186, i32 0, i32 102, i32 3
  %194 = ptrtoint ptr %sclk_activity.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %sclk_activity.i, align 4
  %ActivityLevel.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 34, i32 %i.0392, i32 3
  %196 = ptrtoint ptr %ActivityLevel.i to i32
  call void @__asan_storeN_noabort(i32 %196, i32 2)
  store i16 %195, ptr %ActivityLevel.i, align 1
  %CcPwrDynRm.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 34, i32 %i.0392, i32 6
  %197 = ptrtoint ptr %CcPwrDynRm.i to i32
  call void @__asan_storeN_noabort(i32 %197, i32 4)
  store i32 0, ptr %CcPwrDynRm.i, align 1
  %CcPwrDynRm1.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 34, i32 %i.0392, i32 7
  %198 = ptrtoint ptr %CcPwrDynRm1.i to i32
  call void @__asan_storeN_noabort(i32 %198, i32 4)
  store i32 0, ptr %CcPwrDynRm1.i, align 1
  %EnabledForActivity.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 34, i32 %i.0392, i32 10
  %199 = ptrtoint ptr %EnabledForActivity.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 0, ptr %EnabledForActivity.i, align 1
  %EnabledForThrottle.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 34, i32 %i.0392, i32 11
  %200 = ptrtoint ptr %EnabledForThrottle.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 1, ptr %EnabledForThrottle.i, align 1
  %sclk_up_hyst.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %186, i32 0, i32 102, i32 1
  %201 = ptrtoint ptr %sclk_up_hyst.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %sclk_up_hyst.i, align 1
  %UpHyst.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 34, i32 %i.0392, i32 12
  %203 = ptrtoint ptr %UpHyst.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %202, ptr %UpHyst.i, align 1
  %sclk_down_hyst.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %186, i32 0, i32 102, i32 2
  %204 = ptrtoint ptr %sclk_down_hyst.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %sclk_down_hyst.i, align 2
  %DownHyst.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 34, i32 %i.0392, i32 13
  %206 = ptrtoint ptr %DownHyst.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %205, ptr %DownHyst.i, align 1
  %VoltageDownHyst.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 34, i32 %i.0392, i32 14
  %207 = ptrtoint ptr %VoltageDownHyst.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 0, ptr %VoltageDownHyst.i, align 1
  %PowerThrottle.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 34, i32 %i.0392, i32 15
  %208 = ptrtoint ptr %PowerThrottle.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 0, ptr %PowerThrottle.i, align 1
  %209 = ptrtoint ptr %display_config.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %display_config.i, align 4
  %min_core_set_clock_in_sr.i = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %210, i32 0, i32 10
  %211 = ptrtoint ptr %min_core_set_clock_in_sr.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %min_core_set_clock_in_sr.i, align 4
  %display_timing.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %186, i32 0, i32 68
  %213 = ptrtoint ptr %display_timing.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %212, ptr %display_timing.i, align 4
  %214 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx.i.i, align 4
  %and1.i.i = and i32 %215, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.i.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %cmp.i.not.i, label %do.end11.i.if.end19.i_crit_edge, label %if.then15.i

do.end11.i.if.end19.i_crit_edge:                  ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.then15.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %216 = ptrtoint ptr %display_config.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %display_config.i, align 4
  %min_core_set_clock_in_sr17.i = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %217, i32 0, i32 10
  %218 = ptrtoint ptr %min_core_set_clock_in_sr17.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %min_core_set_clock_in_sr17.i, align 4
  %call18.i = call zeroext i8 @smu7_get_sleep_divider_id_from_clock(i32 noundef %184, i32 noundef %219) #7
  %DeepSleepDivId.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 34, i32 %i.0392, i32 2
  %220 = ptrtoint ptr %DeepSleepDivId.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %call18.i, ptr %DeepSleepDivId.i, align 1
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then15.i, %do.end11.i.if.end19.i_crit_edge
  %update_up_hyst.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %186, i32 0, i32 89
  %221 = ptrtoint ptr %update_up_hyst.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %update_up_hyst.i, align 4, !range !348
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %222)
  %tobool20.not.i = icmp eq i8 %222, 0
  br i1 %tobool20.not.i, label %if.end19.i.if.end23.i_crit_edge, label %if.then21.i

if.end19.i.if.end23.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %up_hyst.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %186, i32 0, i32 92
  %223 = ptrtoint ptr %up_hyst.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %up_hyst.i, align 4
  %conv.i388 = trunc i32 %224 to i8
  %225 = ptrtoint ptr %UpHyst.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %conv.i388, ptr %UpHyst.i, align 1
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end19.i.if.end23.i_crit_edge
  %update_down_hyst.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %186, i32 0, i32 90
  %226 = ptrtoint ptr %update_down_hyst.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %update_down_hyst.i, align 1, !range !348
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %tobool24.not.i = icmp eq i8 %227, 0
  br i1 %tobool24.not.i, label %if.end23.i.if.end87_crit_edge, label %if.then25.i

if.end23.i.if.end87_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  %down_hyst.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %186, i32 0, i32 91
  %228 = ptrtoint ptr %down_hyst.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %down_hyst.i, align 4
  %conv26.i = trunc i32 %229 to i8
  %230 = ptrtoint ptr %DownHyst.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %conv26.i, ptr %DownHyst.i, align 1
  br label %if.end87

polaris10_populate_single_graphic_level.exit.thread: ; preds = %do.end.i, %if.then2.i.polaris10_populate_single_graphic_level.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %curr_sclk_setting.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvdd.i) #7
  br label %cleanup

if.end87:                                         ; preds = %if.then25.i, %if.end23.i.if.end87_crit_edge
  %SclkSetting.i = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 34, i32 %i.0392, i32 16
  %231 = call ptr @memcpy(ptr %SclkSetting.i, ptr %curr_sclk_setting.i, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %curr_sclk_setting.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvdd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0392)
  %cmp88 = icmp ugt i32 %i.0392, 1
  br i1 %cmp88, label %if.then90, label %if.end87.for.inc_crit_edge

if.end87.for.inc_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  %DeepSleepDivId = getelementptr %struct.SMU74_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0392, i32 2
  %232 = ptrtoint ptr %DeepSleepDivId to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 0, ptr %DeepSleepDivId, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then90, %if.end87.for.inc_crit_edge
  %inc = add nuw i32 %i.0392, 1
  %233 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %1, align 4
  %cmp79 = icmp ult i32 %inc, %234
  br i1 %cmp79, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %polaris10_get_sclk_range_table.exit.for.end_crit_edge
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 5
  %235 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %236, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i389.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i389.not, label %for.end.if.end132_crit_edge, label %if.then95

for.end.if.end132_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

if.then95:                                        ; preds = %for.end
  %SSc_En = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 34, i32 0, i32 16, i32 5
  %237 = ptrtoint ptr %SSc_En to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 0, ptr %SSc_En, align 1
  %238 = ptrtoint ptr %SclkSetting to i32
  call void @__asan_loadN_noabort(i32 %238, i32 4)
  %239 = load i32, ptr %SclkSetting, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %239)
  %cmp103.not = icmp eq i32 %16, %239
  br i1 %cmp103.not, label %if.then95.if.end132_crit_edge, label %if.then105

if.then95.if.end132_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

if.then105:                                       ; preds = %if.then95
  %value109 = getelementptr inbounds %struct.smu7_single_dpm_table, ptr %1, i32 0, i32 1, i32 0, i32 1
  %240 = ptrtoint ptr %value109 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %value109, align 4
  %call110 = call i32 @atomctrl_get_dfs_pll_dividers_vi(ptr noundef %hwmgr, i32 noundef %241, ptr noundef nonnull %dividers) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp eq i32 %call110, 0
  br i1 %cmp111, label %do.end122, label %if.then113

if.then113:                                       ; preds = %if.then105
  %call114 = call i32 @___ratelimit(ptr noundef nonnull @polaris10_populate_all_graphic_levels._rs, ptr noundef nonnull @__func__.polaris10_populate_all_graphic_levels) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.then113.cleanup_crit_edge, label %do.end

if.then113.cleanup_crit_edge:                     ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #9
  %call118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.165) #11
  br label %cleanup

do.end122:                                        ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  %real_clock = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_vi, ptr %dividers, i32 0, i32 1
  %242 = ptrtoint ptr %real_clock to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %real_clock, align 4
  %244 = ptrtoint ptr %value109 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %value109, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %243, i32 %245)
  %cmp127 = icmp ult i32 %243, %245
  %246 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %dividers, align 4
  %sub = sext i1 %cmp127 to i32
  %cond = add i32 %247, %sub
  %call130 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 768, i32 noundef %cond, ptr noundef null) #7
  br label %if.end132

if.end132:                                        ; preds = %do.end122, %if.then95.if.end132_crit_edge, %for.end.if.end132_crit_edge
  %248 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %1, align 4
  %conv135 = trunc i32 %249 to i8
  %GraphicsDpmLevelCount = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 13
  %250 = ptrtoint ptr %GraphicsDpmLevelCount to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 %conv135, ptr %GraphicsDpmLevelCount, align 1
  %call138 = call i32 @phm_get_dpm_level_enable_mask_value(ptr noundef %1) #7
  %sclk_dpm_enable_mask = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 70, i32 4
  %251 = ptrtoint ptr %sclk_dpm_enable_mask to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %call138, ptr %sclk_dpm_enable_mask, align 4
  %252 = ptrtoint ptr %GraphicsDpmLevelCount to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %GraphicsDpmLevelCount, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %253)
  %cmp143395.not = icmp eq i8 %253, 0
  br i1 %cmp143395.not, label %if.end132.for.end154_crit_edge, label %if.end132.for.body145_crit_edge

if.end132.for.body145_crit_edge:                  ; preds = %if.end132
  br label %for.body145

if.end132.for.end154_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end154

for.body145:                                      ; preds = %for.body145.for.body145_crit_edge, %if.end132.for.body145_crit_edge
  %i.1396 = phi i32 [ %inc153, %for.body145.for.body145_crit_edge ], [ 0, %if.end132.for.body145_crit_edge ]
  %254 = ptrtoint ptr %sclk_dpm_enable_mask to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %sclk_dpm_enable_mask, align 4
  %shl = shl nuw i32 1, %i.1396
  %and = and i32 %255, %shl
  %shr = lshr i32 %and, %i.1396
  %conv148 = trunc i32 %shr to i8
  %EnabledForActivity = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 34, i32 %i.1396, i32 10
  %256 = ptrtoint ptr %EnabledForActivity to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %conv148, ptr %EnabledForActivity, align 1
  %inc153 = add nuw nsw i32 %i.1396, 1
  %257 = ptrtoint ptr %GraphicsDpmLevelCount to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %GraphicsDpmLevelCount, align 1
  %conv142 = zext i8 %258 to i32
  %cmp143 = icmp ult i32 %inc153, %conv142
  br i1 %cmp143, label %for.body145.for.body145_crit_edge, label %for.body145.for.end154_crit_edge

for.body145.for.end154_crit_edge:                 ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end154

for.body145.for.body145_crit_edge:                ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body145

for.end154:                                       ; preds = %for.body145.for.end154_crit_edge, %if.end132.for.end154_crit_edge
  %cmp155.not = icmp eq ptr %7, null
  br i1 %cmp155.not, label %while.cond.preheader, label %do.body158

while.cond.preheader:                             ; preds = %for.end154
  %pcie_dpm_enable_mask = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 70, i32 6
  %259 = ptrtoint ptr %pcie_dpm_enable_mask to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %pcie_dpm_enable_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %260)
  %tobool195.not = icmp eq i32 %260, 0
  br i1 %tobool195.not, label %while.cond.preheader.while.end240_crit_edge, label %while.cond.preheader.land.rhs_crit_edge

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

while.cond.preheader.while.end240_crit_edge:      ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end240

do.body158:                                       ; preds = %for.end154
  %conv159 = and i32 %9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv159)
  %cmp160.not = icmp eq i32 %conv159, 0
  br i1 %cmp160.not, label %if.then162, label %do.end174

if.then162:                                       ; preds = %do.body158
  %call163 = call i32 @___ratelimit(ptr noundef nonnull @polaris10_populate_all_graphic_levels._rs.166, ptr noundef nonnull @__func__.polaris10_populate_all_graphic_levels) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.then162.cleanup_crit_edge, label %do.end168

if.then162.cleanup_crit_edge:                     ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end168:                                        ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #9
  %call170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.169) #11
  br label %cleanup

do.end174:                                        ; preds = %do.body158
  %sub176 = add nsw i32 %conv159, -1
  %261 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %262)
  %cmp180397.not = icmp eq i32 %262, 0
  br i1 %cmp180397.not, label %do.end174.if.end273_crit_edge, label %do.end174.for.body182_crit_edge

do.end174.for.body182_crit_edge:                  ; preds = %do.end174
  br label %for.body182

do.end174.if.end273_crit_edge:                    ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end273

for.body182:                                      ; preds = %for.body182.for.body182_crit_edge, %do.end174.for.body182_crit_edge
  %i.2398 = phi i32 [ %inc192, %for.body182.for.body182_crit_edge ], [ 0, %do.end174.for.body182_crit_edge ]
  %263 = call i32 @llvm.umin.i32(i32 %i.2398, i32 %sub176)
  %conv189 = trunc i32 %263 to i8
  %pcieDpmLevel = getelementptr %struct.SMU74_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.2398, i32 1
  %264 = ptrtoint ptr %pcieDpmLevel to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 %conv189, ptr %pcieDpmLevel, align 1
  %inc192 = add nuw i32 %i.2398, 1
  %265 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %1, align 4
  %cmp180 = icmp ult i32 %inc192, %266
  br i1 %cmp180, label %for.body182.for.body182_crit_edge, label %for.body182.if.end273_crit_edge

for.body182.if.end273_crit_edge:                  ; preds = %for.body182
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end273

for.body182.for.body182_crit_edge:                ; preds = %for.body182
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body182

land.rhs:                                         ; preds = %land.rhs.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %hightest_pcie_level_enabled.0399 = phi i8 [ %inc204, %land.rhs.land.rhs_crit_edge ], [ 0, %while.cond.preheader.land.rhs_crit_edge ]
  %conv198 = zext i8 %hightest_pcie_level_enabled.0399 to i32
  %shl200 = shl i32 2, %conv198
  %and201 = and i32 %shl200, %260
  %cmp202.not = icmp eq i32 %and201, 0
  %inc204 = add i8 %hightest_pcie_level_enabled.0399, 1
  br i1 %cmp202.not, label %while.end, label %land.rhs.land.rhs_crit_edge

land.rhs.land.rhs_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

while.end:                                        ; preds = %land.rhs
  br i1 %tobool195.not, label %while.end.while.end220_crit_edge, label %while.end.land.rhs209_crit_edge

while.end.land.rhs209_crit_edge:                  ; preds = %while.end
  br label %land.rhs209

while.end.while.end220_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end220

land.rhs209:                                      ; preds = %land.rhs209.land.rhs209_crit_edge, %while.end.land.rhs209_crit_edge
  %lowest_pcie_level_enabled.0405 = phi i8 [ %inc219, %land.rhs209.land.rhs209_crit_edge ], [ 0, %while.end.land.rhs209_crit_edge ]
  %conv212 = zext i8 %lowest_pcie_level_enabled.0405 to i32
  %shl213 = shl nuw i32 1, %conv212
  %and214 = and i32 %shl213, %260
  %cmp215 = icmp eq i32 %and214, 0
  %inc219 = add i8 %lowest_pcie_level_enabled.0405, 1
  br i1 %cmp215, label %land.rhs209.land.rhs209_crit_edge, label %land.rhs209.while.end220_crit_edge

land.rhs209.while.end220_crit_edge:               ; preds = %land.rhs209
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end220

land.rhs209.land.rhs209_crit_edge:                ; preds = %land.rhs209
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs209

while.end220:                                     ; preds = %land.rhs209.while.end220_crit_edge, %while.end.while.end220_crit_edge
  %lowest_pcie_level_enabled.0.lcssa = phi i8 [ 0, %while.end.while.end220_crit_edge ], [ %lowest_pcie_level_enabled.0405, %land.rhs209.while.end220_crit_edge ]
  %conv229 = zext i8 %lowest_pcie_level_enabled.0.lcssa to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %hightest_pcie_level_enabled.0399)
  %cmp224408.not = icmp eq i8 %hightest_pcie_level_enabled.0399, 0
  br i1 %cmp224408.not, label %while.end220.while.end240_crit_edge, label %land.rhs226.preheader

while.end220.while.end240_crit_edge:              ; preds = %while.end220
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end240

land.rhs226.preheader:                            ; preds = %while.end220
  %267 = add i8 %hightest_pcie_level_enabled.0399, -1
  %268 = zext i8 %267 to i32
  %269 = add nuw nsw i32 %268, 1
  %wide.trip.count = zext i8 %hightest_pcie_level_enabled.0399 to i32
  br label %land.rhs226

while.cond221:                                    ; preds = %land.rhs226
  %exitcond.not = icmp eq i32 %add230, %wide.trip.count
  br i1 %exitcond.not, label %while.cond221.while.end240_crit_edge, label %while.cond221.land.rhs226_crit_edge

while.cond221.land.rhs226_crit_edge:              ; preds = %while.cond221
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs226

while.cond221.while.end240_crit_edge:             ; preds = %while.cond221
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end240

land.rhs226:                                      ; preds = %while.cond221.land.rhs226_crit_edge, %land.rhs226.preheader
  %indvars.iv = phi i32 [ 0, %land.rhs226.preheader ], [ %add230, %while.cond221.land.rhs226_crit_edge ]
  %add230 = add nuw nsw i32 %indvars.iv, 1
  %add232 = add nuw nsw i32 %add230, %conv229
  %shl233 = shl nuw i32 1, %add232
  %and234 = and i32 %shl233, %260
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and234)
  %cmp235 = icmp eq i32 %and234, 0
  br i1 %cmp235, label %while.cond221, label %land.rhs226.while.end240_crit_edge

land.rhs226.while.end240_crit_edge:               ; preds = %land.rhs226
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end240

while.end240:                                     ; preds = %land.rhs226.while.end240_crit_edge, %while.cond221.while.end240_crit_edge, %while.end220.while.end240_crit_edge, %while.cond.preheader.while.end240_crit_edge
  %conv229427 = phi i32 [ %conv229, %while.end220.while.end240_crit_edge ], [ 0, %while.cond.preheader.while.end240_crit_edge ], [ %conv229, %while.cond221.while.end240_crit_edge ], [ %conv229, %land.rhs226.while.end240_crit_edge ]
  %lowest_pcie_level_enabled.0.lcssa425 = phi i8 [ %lowest_pcie_level_enabled.0.lcssa, %while.end220.while.end240_crit_edge ], [ 0, %while.cond.preheader.while.end240_crit_edge ], [ %lowest_pcie_level_enabled.0.lcssa, %while.cond221.while.end240_crit_edge ], [ %lowest_pcie_level_enabled.0.lcssa, %land.rhs226.while.end240_crit_edge ]
  %hightest_pcie_level_enabled.0.lcssa417423 = phi i8 [ 0, %while.end220.while.end240_crit_edge ], [ 0, %while.cond.preheader.while.end240_crit_edge ], [ %hightest_pcie_level_enabled.0399, %while.cond221.while.end240_crit_edge ], [ %hightest_pcie_level_enabled.0399, %land.rhs226.while.end240_crit_edge ]
  %conv223.le.pre-phi = phi i32 [ 0, %while.end220.while.end240_crit_edge ], [ 0, %while.cond.preheader.while.end240_crit_edge ], [ %wide.trip.count, %while.cond221.while.end240_crit_edge ], [ %wide.trip.count, %land.rhs226.while.end240_crit_edge ]
  %conv222.lcssa = phi i32 [ 0, %while.end220.while.end240_crit_edge ], [ 0, %while.cond.preheader.while.end240_crit_edge ], [ %indvars.iv, %land.rhs226.while.end240_crit_edge ], [ %269, %while.cond221.while.end240_crit_edge ]
  %add242 = add nsw i32 %conv222.lcssa, 1
  %add244 = add nsw i32 %add242, %conv229427
  %270 = call i32 @llvm.umin.i32(i32 %add244, i32 %conv223.le.pre-phi)
  %conv257 = trunc i32 %270 to i8
  %271 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %272)
  %cmp261413 = icmp ugt i32 %272, 2
  br i1 %cmp261413, label %while.end240.for.body263_crit_edge, label %while.end240.for.end268_crit_edge

while.end240.for.end268_crit_edge:                ; preds = %while.end240
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end268

while.end240.for.body263_crit_edge:               ; preds = %while.end240
  br label %for.body263

for.body263:                                      ; preds = %for.body263.for.body263_crit_edge, %while.end240.for.body263_crit_edge
  %i.3414 = phi i32 [ %inc267, %for.body263.for.body263_crit_edge ], [ 2, %while.end240.for.body263_crit_edge ]
  %pcieDpmLevel265 = getelementptr %struct.SMU74_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.3414, i32 1
  %273 = ptrtoint ptr %pcieDpmLevel265 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 %hightest_pcie_level_enabled.0.lcssa417423, ptr %pcieDpmLevel265, align 1
  %inc267 = add nuw i32 %i.3414, 1
  %274 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %1, align 4
  %cmp261 = icmp ult i32 %inc267, %275
  br i1 %cmp261, label %for.body263.for.body263_crit_edge, label %for.body263.for.end268_crit_edge

for.body263.for.end268_crit_edge:                 ; preds = %for.body263
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end268

for.body263.for.body263_crit_edge:                ; preds = %for.body263
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body263

for.end268:                                       ; preds = %for.body263.for.end268_crit_edge, %while.end240.for.end268_crit_edge
  %pcieDpmLevel270 = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 34, i32 0, i32 1
  %276 = ptrtoint ptr %pcieDpmLevel270 to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 %lowest_pcie_level_enabled.0.lcssa425, ptr %pcieDpmLevel270, align 1
  %pcieDpmLevel272 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 34, i32 1, i32 1
  %277 = ptrtoint ptr %pcieDpmLevel272 to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %conv257, ptr %pcieDpmLevel272, align 1
  br label %if.end273

if.end273:                                        ; preds = %for.end268, %for.body182.if.end273_crit_edge, %do.end174.if.end273_crit_edge
  %call274 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add, ptr noundef %GraphicsLevel, i32 noundef 448, i32 noundef 262144) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end273, %do.end168, %if.then162.cleanup_crit_edge, %do.end, %if.then113.cleanup_crit_edge, %polaris10_populate_single_graphic_level.exit.thread
  %retval.0 = phi i32 [ %call274, %if.end273 ], [ %call110, %do.end ], [ %call110, %if.then113.cleanup_crit_edge ], [ -22, %do.end168 ], [ -22, %if.then162.cleanup_crit_edge ], [ %call1.i, %polaris10_populate_single_graphic_level.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @polaris10_populate_all_memory_levels(ptr noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  %dpm_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dpm_table_start, align 8
  %add = add i32 %5, 708
  %MemoryLevel = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 36
  %mclk_table = getelementptr inbounds %struct.smu7_dpm_table, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mclk_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp88.not = icmp eq i32 %7, 0
  br i1 %cmp88.not, label %entry.for.end_crit_edge, label %do.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %od_enabled.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 53
  %pptable.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %display_config.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 45
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  br label %do.body

for.cond:                                         ; preds = %if.end21
  %inc = add nuw i32 %i.089, 1
  %8 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mclk_table, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.cond.do.body_crit_edge, label %for.end.loopexit

for.cond.do.body_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %for.cond.do.body_crit_edge, %do.body.lr.ph
  %i.089 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %for.cond.do.body_crit_edge ]
  %value = getelementptr %struct.smu7_dpm_table, ptr %1, i32 0, i32 1, i32 1, i32 %i.089, i32 1
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp3.not = icmp eq i32 %11, 0
  br i1 %cmp3.not, label %if.then, label %do.end9

if.then:                                          ; preds = %do.body
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @polaris10_populate_all_memory_levels._rs, ptr noundef nonnull @__func__.polaris10_populate_all_memory_levels) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.171) #11
  br label %cleanup

do.end9:                                          ; preds = %do.body
  %arrayidx14 = getelementptr %struct.SMU74_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.089
  %12 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %backend, align 4
  %14 = ptrtoint ptr %od_enabled.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %od_enabled.i, align 4, !range !348
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  %vdd_dependency_on_mclk.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %13, i32 0, i32 2, i32 3
  br label %if.end.i

if.else.i:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %pptable.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pptable.i, align 4
  %vdd_dep_on_mclk.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %vdd_dep_on_mclk.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vdd_dep_on_mclk.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %vdd_dep_table.0.i = phi ptr [ %vdd_dependency_on_mclk.i, %if.then.i ], [ %19, %if.else.i ]
  %tobool1.not.i = icmp eq ptr %vdd_dep_table.0.i, null
  br i1 %tobool1.not.i, label %if.end.i.if.end13.i_crit_edge, label %if.then2.i

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then2.i:                                       ; preds = %if.end.i
  %MinMvdd.i = getelementptr %struct.SMU74_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.089, i32 1
  %call.i = tail call fastcc i32 @polaris10_get_dependency_volt_by_clk(ptr noundef %hwmgr, ptr noundef nonnull %vdd_dep_table.0.i, i32 noundef %11, ptr noundef %arrayidx14, ptr noundef %MinMvdd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then2.i.if.end13.i_crit_edge, label %if.then3.i

if.then2.i.if.end13.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then3.i:                                       ; preds = %if.then2.i
  %call4.i = tail call i32 @___ratelimit(ptr noundef nonnull @polaris10_populate_single_memory_level._rs, ptr noundef nonnull @__func__.polaris10_populate_single_memory_level) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then3.i.polaris10_populate_single_memory_level.exit_crit_edge, label %do.end.i

if.then3.i.polaris10_populate_single_memory_level.exit_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %polaris10_populate_single_memory_level.exit

do.end.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.172) #11
  br label %polaris10_populate_single_memory_level.exit

if.end13.i:                                       ; preds = %if.then2.i.if.end13.i_crit_edge, %if.end.i.if.end13.i_crit_edge
  %MclkFrequency.i = getelementptr %struct.SMU74_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.089, i32 2
  %20 = ptrtoint ptr %MclkFrequency.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %11, ptr %MclkFrequency.i, align 1
  %EnabledForThrottle.i = getelementptr %struct.SMU74_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.089, i32 4
  %21 = ptrtoint ptr %EnabledForThrottle.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %EnabledForThrottle.i, align 1
  %EnabledForActivity.i = getelementptr %struct.SMU74_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.089, i32 5
  %22 = ptrtoint ptr %EnabledForActivity.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %EnabledForActivity.i, align 1
  %mclk_up_hyst.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %13, i32 0, i32 102, i32 5
  %23 = ptrtoint ptr %mclk_up_hyst.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mclk_up_hyst.i, align 1
  %UpHyst.i = getelementptr %struct.SMU74_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.089, i32 7
  %25 = ptrtoint ptr %UpHyst.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %UpHyst.i, align 1
  %mclk_down_hyst.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %13, i32 0, i32 102, i32 6
  %26 = ptrtoint ptr %mclk_down_hyst.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mclk_down_hyst.i, align 4
  %DownHyst.i = getelementptr %struct.SMU74_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.089, i32 8
  %28 = ptrtoint ptr %DownHyst.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %DownHyst.i, align 1
  %VoltageDownHyst.i = getelementptr %struct.SMU74_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.089, i32 9
  %29 = ptrtoint ptr %VoltageDownHyst.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %VoltageDownHyst.i, align 1
  %mclk_activity.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %13, i32 0, i32 102, i32 7
  %30 = ptrtoint ptr %mclk_activity.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %mclk_activity.i, align 2
  %ActivityLevel.i = getelementptr %struct.SMU74_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.089, i32 11
  %32 = ptrtoint ptr %ActivityLevel.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %31, ptr %ActivityLevel.i, align 1
  %StutterEnable.i = getelementptr %struct.SMU74_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.089, i32 3
  %33 = ptrtoint ptr %StutterEnable.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %StutterEnable.i, align 1
  %DisplayWatermark.i = getelementptr %struct.SMU74_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.089, i32 12
  %34 = ptrtoint ptr %DisplayWatermark.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %DisplayWatermark.i, align 1
  %35 = ptrtoint ptr %display_config.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %display_config.i, align 4
  %num_display.i = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %num_display.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_display.i, align 4
  %num_existing_displays.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %13, i32 0, i32 68, i32 1
  %39 = ptrtoint ptr %num_existing_displays.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %num_existing_displays.i, align 4
  %40 = load ptr, ptr %display_config.i, align 4
  %vrefresh.i = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %40, i32 0, i32 12
  %41 = ptrtoint ptr %vrefresh.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vrefresh.i, align 4
  %vrefresh18.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %13, i32 0, i32 68, i32 2
  %43 = ptrtoint ptr %vrefresh18.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %vrefresh18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40001, i32 %11)
  %cmp20.i = icmp ult i32 %11, 40001
  br i1 %cmp20.i, label %land.lhs.true21.i, label %if.end13.i.polaris10_populate_single_memory_level.exit_crit_edge

if.end13.i.polaris10_populate_single_memory_level.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %polaris10_populate_single_memory_level.exit

land.lhs.true21.i:                                ; preds = %if.end13.i
  %44 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %call23.i = tail call i32 %49(ptr noundef %45, i32 noundef 6965) #7
  %and.i = and i32 %call23.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool25.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool25.not.i, label %land.lhs.true21.i.polaris10_populate_single_memory_level.exit_crit_edge, label %land.lhs.true26.i

land.lhs.true21.i.polaris10_populate_single_memory_level.exit_crit_edge: ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %polaris10_populate_single_memory_level.exit

land.lhs.true26.i:                                ; preds = %land.lhs.true21.i
  %50 = ptrtoint ptr %num_existing_displays.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_existing_displays.i, align 4
  %52 = add i32 %51, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %52)
  %53 = icmp ult i32 %52, -2
  br i1 %53, label %land.lhs.true26.i.polaris10_populate_single_memory_level.exit_crit_edge, label %if.then34.i

land.lhs.true26.i.polaris10_populate_single_memory_level.exit_crit_edge: ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %polaris10_populate_single_memory_level.exit

if.then34.i:                                      ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %StutterEnable.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %StutterEnable.i, align 1
  br label %polaris10_populate_single_memory_level.exit

polaris10_populate_single_memory_level.exit:      ; preds = %if.then34.i, %land.lhs.true26.i.polaris10_populate_single_memory_level.exit_crit_edge, %land.lhs.true21.i.polaris10_populate_single_memory_level.exit_crit_edge, %if.end13.i.polaris10_populate_single_memory_level.exit_crit_edge, %do.end.i, %if.then3.i.polaris10_populate_single_memory_level.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %call.i, %if.then3.i.polaris10_populate_single_memory_level.exit_crit_edge ], [ 0, %if.then34.i ], [ 0, %land.lhs.true26.i.polaris10_populate_single_memory_level.exit_crit_edge ], [ 0, %land.lhs.true21.i.polaris10_populate_single_memory_level.exit_crit_edge ], [ 0, %if.end13.i.polaris10_populate_single_memory_level.exit_crit_edge ]
  %55 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mclk_table, align 4
  %sub = add i32 %56, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.089, i32 %sub)
  %cmp18 = icmp eq i32 %i.089, %sub
  br i1 %cmp18, label %if.then19, label %polaris10_populate_single_memory_level.exit.if.end21_crit_edge

polaris10_populate_single_memory_level.exit.if.end21_crit_edge: ; preds = %polaris10_populate_single_memory_level.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then19:                                        ; preds = %polaris10_populate_single_memory_level.exit
  call void @__sanitizer_cov_trace_pc() #9
  %DisplayWatermark = getelementptr %struct.SMU74_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.089, i32 12
  %57 = ptrtoint ptr %DisplayWatermark to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %DisplayWatermark, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %polaris10_populate_single_memory_level.exit.if.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool22.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool22.not, label %for.cond, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.loopexit:                                 ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast = trunc i32 %9 to i8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %.lcssa = phi i8 [ 0, %entry.for.end_crit_edge ], [ %phi.cast, %for.end.loopexit ]
  %MemoryDpmLevelCount = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 14
  %58 = ptrtoint ptr %MemoryDpmLevelCount to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %.lcssa, ptr %MemoryDpmLevelCount, align 1
  %call29 = tail call i32 @phm_get_dpm_level_enable_mask_value(ptr noundef %mclk_table) #7
  %mclk_dpm_enable_mask = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 70, i32 5
  %59 = ptrtoint ptr %mclk_dpm_enable_mask to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call29, ptr %mclk_dpm_enable_mask, align 4
  %60 = ptrtoint ptr %MemoryDpmLevelCount to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %MemoryDpmLevelCount, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp3494.not = icmp eq i8 %61, 0
  br i1 %cmp3494.not, label %for.end.for.end45_crit_edge, label %for.end.for.body36_crit_edge

for.end.for.body36_crit_edge:                     ; preds = %for.end
  br label %for.body36

for.end.for.end45_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end45

for.body36:                                       ; preds = %for.body36.for.body36_crit_edge, %for.end.for.body36_crit_edge
  %i.195 = phi i32 [ %inc44, %for.body36.for.body36_crit_edge ], [ 0, %for.end.for.body36_crit_edge ]
  %62 = ptrtoint ptr %mclk_dpm_enable_mask to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mclk_dpm_enable_mask, align 4
  %shl = shl nuw i32 1, %i.195
  %and = and i32 %63, %shl
  %shr = lshr i32 %and, %i.195
  %conv39 = trunc i32 %shr to i8
  %EnabledForActivity = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 36, i32 %i.195, i32 5
  %64 = ptrtoint ptr %EnabledForActivity to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv39, ptr %EnabledForActivity, align 1
  %inc44 = add nuw nsw i32 %i.195, 1
  %65 = ptrtoint ptr %MemoryDpmLevelCount to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %MemoryDpmLevelCount, align 1
  %conv33 = zext i8 %66 to i32
  %cmp34 = icmp ult i32 %inc44, %conv33
  br i1 %cmp34, label %for.body36.for.body36_crit_edge, label %for.body36.for.end45_crit_edge

for.body36.for.end45_crit_edge:                   ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end45

for.body36.for.body36_crit_edge:                  ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body36

for.end45:                                        ; preds = %for.body36.for.end45_crit_edge, %for.end.for.end45_crit_edge
  %call46 = tail call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add, ptr noundef %MemoryLevel, i32 noundef 96, i32 noundef 262144) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end45, %if.end21.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call46, %for.end45 ], [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ %retval.0.i, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @polaris10_initialize_mc_reg_table(ptr noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %mc_reg_table1 = getelementptr inbounds %struct.polaris10_smumgr, ptr %1, i32 0, i32 9
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i = tail call i32 %7(ptr noundef %3, i32 noundef 1485) #7
  %shr.i = lshr i32 %call.i, 16
  %conv.i = trunc i32 %shr.i to i8
  %8 = call ptr @memset(ptr %mc_reg_table1, i32 0, i32 2772)
  %call2 = tail call i32 @atomctrl_initialize_mc_reg_table_v2_2(ptr noundef %hwmgr, i8 noundef zeroext %conv.i, ptr noundef %mc_reg_table1) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @polaris10_get_offsetof(i32 noundef %type, i32 noundef %member) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %type, label %entry.do.end_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %member)
  %1 = icmp ult i32 %member, 15
  br i1 %1, label %switch.hole_check, label %sw.bb.do.end_crit_edge

sw.bb.do.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

sw.bb13:                                          ; preds = %entry
  %switch.tableidx = add i32 %member, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 3
  br i1 %2, label %switch.lookup22, label %sw.bb13.do.end_crit_edge

sw.bb13.do.end_crit_edge:                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %sw.bb13.do.end_crit_edge, %sw.bb.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, i32 noundef %type, i32 noundef %member) #11
  br label %return

switch.hole_check:                                ; preds = %sw.bb
  %switch.maskindex = trunc i32 %member to i16
  %switch.shifted = lshr i16 31871, %switch.maskindex
  %3 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %switch.lobit.not = icmp eq i16 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [15 x i32], ptr @switch.table.polaris10_get_offsetof, i32 0, i32 %member
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

switch.lookup22:                                  ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep23 = getelementptr inbounds [3 x i32], ptr @switch.table.polaris10_get_offsetof.177, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep23 to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load24 = load i32, ptr %switch.gep23, align 4
  br label %return

return:                                           ; preds = %switch.lookup22, %switch.lookup, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %switch.load, %switch.lookup ], [ %switch.load24, %switch.lookup22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @polaris10_get_mac_definition(i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %value)
  %0 = icmp ult i32 %value, 9
  br i1 %0, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, i32 noundef %value) #11
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.polaris10_get_mac_definition, i32 0, i32 %value
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @polaris10_is_dpm_running(ptr nocapture noundef readonly %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read_ind_register to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_ind_register, align 4
  %call = tail call i32 %5(ptr noundef %1, i32 noundef 1, i32 noundef 258064) #7
  %6 = and i32 %call, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp ne i32 %6, 0
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @polaris10_is_hw_avfs_present(ptr nocapture noundef readonly %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read_ind_register to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_ind_register, align 4
  %call = tail call i32 %5(ptr noundef %1, i32 noundef 1, i32 noundef -1072693052) #7
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @polaris10_update_dpm_settings(ptr noundef %hwmgr, ptr noundef readonly %profile_setting) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  %GraphicsLevel = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 34
  %dpm_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dpm_table_start, align 8
  %add = add i32 %5, 236
  %add3 = add i32 %5, 708
  %MemoryLevel = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 36
  %cmp = icmp eq ptr %profile_setting, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %profile_setting to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %profile_setting, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.if.end80_crit_edge, label %if.then6

if.end.if.end80_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.then6:                                         ; preds = %if.end
  %sclk_dpm_key_disabled = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 72
  %8 = ptrtoint ptr %sclk_dpm_key_disabled to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sclk_dpm_key_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %if.then8, label %if.then6.if.end9_crit_edge

if.then6.if.end9_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 393, ptr noundef null) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.then6.if.end9_crit_edge
  %GraphicsDpmLevelCount = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 13
  %10 = ptrtoint ptr %GraphicsDpmLevelCount to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %GraphicsDpmLevelCount, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp11301.not = icmp eq i8 %11, 0
  br i1 %cmp11301.not, label %if.end9.for.end_crit_edge, label %for.body.lr.ph

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end9
  %sclk_activity = getelementptr inbounds %struct.profile_mode_setting, ptr %profile_setting, i32 0, i32 3
  %add21 = add i32 %5, 242
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %sclk_up_hyst = getelementptr inbounds %struct.profile_mode_setting, ptr %profile_setting, i32 0, i32 1
  %sclk_down_hyst = getelementptr inbounds %struct.profile_mode_setting, ptr %profile_setting, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0302 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ActivityLevel = getelementptr %struct.SMU74_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0302, i32 3
  %12 = ptrtoint ptr %ActivityLevel to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %ActivityLevel, align 1
  %14 = ptrtoint ptr %sclk_activity to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sclk_activity, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp15.not = icmp eq i16 %13, %15
  br i1 %cmp15.not, label %for.body.if.end32_crit_edge, label %if.then17

for.body.if.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %ActivityLevel to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %15, ptr %ActivityLevel, align 1
  %mul = mul nuw nsw i32 %i.0302, 56
  %add22 = add i32 %add21, %mul
  %and = and i32 %add22, -4
  %17 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %read_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %read_ind_register to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_ind_register, align 4
  %call24 = tail call i32 %22(ptr noundef %18, i32 noundef 1, i32 noundef %and) #7
  %23 = ptrtoint ptr %ActivityLevel to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %ActivityLevel, align 1
  %conv27 = zext i16 %24 to i32
  %call28 = tail call i32 @phm_set_field_to_u32(i32 noundef %add22, i32 noundef %call24, i32 noundef %conv27, i32 noundef 2) #7
  %25 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %write_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %write_ind_register to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_ind_register, align 4
  tail call void %30(ptr noundef %26, i32 noundef 1, i32 noundef %and, i32 noundef %call28) #7
  br label %if.end32

if.end32:                                         ; preds = %if.then17, %for.body.if.end32_crit_edge
  %UpHyst = getelementptr %struct.SMU74_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0302, i32 12
  %31 = ptrtoint ptr %UpHyst to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %UpHyst, align 1
  %33 = ptrtoint ptr %sclk_up_hyst to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sclk_up_hyst, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %34)
  %cmp36.not = icmp eq i8 %32, %34
  br i1 %cmp36.not, label %lor.lhs.false, label %if.end32.if.then43_crit_edge

if.end32.if.then43_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

lor.lhs.false:                                    ; preds = %if.end32
  %DownHyst = getelementptr %struct.SMU74_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0302, i32 13
  %35 = ptrtoint ptr %DownHyst to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %DownHyst, align 1
  %37 = ptrtoint ptr %sclk_down_hyst to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %sclk_down_hyst, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %38)
  %cmp41.not = icmp eq i8 %36, %38
  br i1 %cmp41.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.then43_crit_edge

lor.lhs.false.if.then43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then43:                                        ; preds = %lor.lhs.false.if.then43_crit_edge, %if.end32.if.then43_crit_edge
  %39 = ptrtoint ptr %UpHyst to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %34, ptr %UpHyst, align 1
  %40 = ptrtoint ptr %sclk_down_hyst to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sclk_down_hyst, align 2
  %DownHyst49 = getelementptr %struct.SMU74_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0302, i32 13
  %42 = ptrtoint ptr %DownHyst49 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %DownHyst49, align 1
  %mul50 = mul nuw nsw i32 %i.0302, 56
  %add51 = add i32 %mul50, %add
  %add52 = add i32 %add51, 28
  %add55 = add i32 %add51, 29
  %and56 = and i32 %add52, -4
  %43 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %device, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %read_ind_register59 = getelementptr inbounds %struct.cgs_ops, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %read_ind_register59 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read_ind_register59, align 4
  %call61 = tail call i32 %48(ptr noundef %44, i32 noundef 1, i32 noundef %and56) #7
  %49 = ptrtoint ptr %UpHyst to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %UpHyst, align 1
  %conv64 = zext i8 %50 to i32
  %call65 = tail call i32 @phm_set_field_to_u32(i32 noundef %add52, i32 noundef %call61, i32 noundef %conv64, i32 noundef 1) #7
  %51 = ptrtoint ptr %DownHyst49 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %DownHyst49, align 1
  %conv68 = zext i8 %52 to i32
  %call69 = tail call i32 @phm_set_field_to_u32(i32 noundef %add55, i32 noundef %call65, i32 noundef %conv68, i32 noundef 1) #7
  %53 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %write_ind_register72 = getelementptr inbounds %struct.cgs_ops, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %write_ind_register72 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write_ind_register72, align 4
  tail call void %58(ptr noundef %54, i32 noundef 1, i32 noundef %and56, i32 noundef %call69) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then43, %lor.lhs.false.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0302, 1
  %59 = ptrtoint ptr %GraphicsDpmLevelCount to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %GraphicsDpmLevelCount, align 1
  %conv = zext i8 %60 to i32
  %cmp11 = icmp ult i32 %inc, %conv
  br i1 %cmp11, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end9.for.end_crit_edge
  %61 = ptrtoint ptr %sclk_dpm_key_disabled to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sclk_dpm_key_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool76.not = icmp eq i32 %62, 0
  br i1 %tobool76.not, label %if.then77, label %for.end.if.end80_crit_edge

for.end.if.end80_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.then77:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call78 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 394, ptr noundef null) #7
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %for.end.if.end80_crit_edge, %if.end.if.end80_crit_edge
  %bupdate_mclk = getelementptr inbounds %struct.profile_mode_setting, ptr %profile_setting, i32 0, i32 4
  %63 = ptrtoint ptr %bupdate_mclk to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %bupdate_mclk, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool81.not = icmp eq i8 %64, 0
  br i1 %tobool81.not, label %if.end80.cleanup_crit_edge, label %if.then82

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then82:                                        ; preds = %if.end80
  %mclk_dpm_key_disabled = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 73
  %65 = ptrtoint ptr %mclk_dpm_key_disabled to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mclk_dpm_key_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool83.not = icmp eq i32 %66, 0
  br i1 %tobool83.not, label %if.then84, label %if.then82.if.end86_crit_edge

if.then82.if.end86_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then84:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #9
  %call85 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 395, ptr noundef null) #7
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.then82.if.end86_crit_edge
  %MemoryDpmLevelCount = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 14
  %67 = ptrtoint ptr %MemoryDpmLevelCount to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %MemoryDpmLevelCount, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp90305.not = icmp eq i8 %68, 0
  br i1 %cmp90305.not, label %if.end86.for.end168_crit_edge, label %for.body92.lr.ph

if.end86.for.end168_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end168

for.body92.lr.ph:                                 ; preds = %if.end86
  %mclk_activity = getelementptr inbounds %struct.profile_mode_setting, ptr %profile_setting, i32 0, i32 7
  %add104 = add i32 %5, 728
  %device107 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %mclk_up_hyst = getelementptr inbounds %struct.profile_mode_setting, ptr %profile_setting, i32 0, i32 5
  %mclk_down_hyst = getelementptr inbounds %struct.profile_mode_setting, ptr %profile_setting, i32 0, i32 6
  br label %for.body92

for.body92:                                       ; preds = %for.inc166.for.body92_crit_edge, %for.body92.lr.ph
  %i.1306 = phi i32 [ 0, %for.body92.lr.ph ], [ %inc167, %for.inc166.for.body92_crit_edge ]
  %ActivityLevel94 = getelementptr %struct.SMU74_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.1306, i32 11
  %69 = ptrtoint ptr %ActivityLevel94 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %ActivityLevel94, align 1
  %71 = ptrtoint ptr %mclk_activity to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %mclk_activity, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %70, i16 %72)
  %cmp97.not = icmp eq i16 %70, %72
  br i1 %cmp97.not, label %for.body92.if.end120_crit_edge, label %if.then99

for.body92.if.end120_crit_edge:                   ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

if.then99:                                        ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %ActivityLevel94 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 %72, ptr %ActivityLevel94, align 1
  %mul103 = mul nuw nsw i32 %i.1306, 24
  %add105 = add i32 %add104, %mul103
  %and106 = and i32 %add105, -4
  %74 = ptrtoint ptr %device107 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %device107, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %read_ind_register109 = getelementptr inbounds %struct.cgs_ops, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %read_ind_register109 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read_ind_register109, align 4
  %call111 = tail call i32 %79(ptr noundef %75, i32 noundef 1, i32 noundef %and106) #7
  %80 = ptrtoint ptr %ActivityLevel94 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %ActivityLevel94, align 1
  %conv114 = zext i16 %81 to i32
  %call115 = tail call i32 @phm_set_field_to_u32(i32 noundef %add105, i32 noundef %call111, i32 noundef %conv114, i32 noundef 2) #7
  %82 = ptrtoint ptr %device107 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %device107, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %write_ind_register118 = getelementptr inbounds %struct.cgs_ops, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %write_ind_register118 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write_ind_register118, align 4
  tail call void %87(ptr noundef %83, i32 noundef 1, i32 noundef %and106, i32 noundef %call115) #7
  br label %if.end120

if.end120:                                        ; preds = %if.then99, %for.body92.if.end120_crit_edge
  %UpHyst122 = getelementptr %struct.SMU74_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.1306, i32 7
  %88 = ptrtoint ptr %UpHyst122 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %UpHyst122, align 1
  %90 = ptrtoint ptr %mclk_up_hyst to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %mclk_up_hyst, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %89, i8 %91)
  %cmp125.not = icmp eq i8 %89, %91
  br i1 %cmp125.not, label %lor.lhs.false127, label %if.end120.if.then134_crit_edge

if.end120.if.then134_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then134

lor.lhs.false127:                                 ; preds = %if.end120
  %DownHyst129 = getelementptr %struct.SMU74_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.1306, i32 8
  %92 = ptrtoint ptr %DownHyst129 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %DownHyst129, align 1
  %94 = ptrtoint ptr %mclk_down_hyst to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %mclk_down_hyst, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %93, i8 %95)
  %cmp132.not = icmp eq i8 %93, %95
  br i1 %cmp132.not, label %lor.lhs.false127.for.inc166_crit_edge, label %lor.lhs.false127.if.then134_crit_edge

lor.lhs.false127.if.then134_crit_edge:            ; preds = %lor.lhs.false127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then134

lor.lhs.false127.for.inc166_crit_edge:            ; preds = %lor.lhs.false127
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc166

if.then134:                                       ; preds = %lor.lhs.false127.if.then134_crit_edge, %if.end120.if.then134_crit_edge
  %96 = ptrtoint ptr %UpHyst122 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %91, ptr %UpHyst122, align 1
  %97 = ptrtoint ptr %mclk_down_hyst to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %mclk_down_hyst, align 2
  %DownHyst140 = getelementptr %struct.SMU74_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.1306, i32 8
  %99 = ptrtoint ptr %DownHyst140 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %DownHyst140, align 1
  %mul141 = mul nuw nsw i32 %i.1306, 24
  %add142 = add i32 %mul141, %add3
  %add143 = add i32 %add142, 16
  %add146 = add i32 %add142, 17
  %and147 = and i32 %add143, -4
  %100 = ptrtoint ptr %device107 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %device107, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %read_ind_register150 = getelementptr inbounds %struct.cgs_ops, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %read_ind_register150 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %read_ind_register150, align 4
  %call152 = tail call i32 %105(ptr noundef %101, i32 noundef 1, i32 noundef %and147) #7
  %106 = ptrtoint ptr %UpHyst122 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %UpHyst122, align 1
  %conv155 = zext i8 %107 to i32
  %call156 = tail call i32 @phm_set_field_to_u32(i32 noundef %add143, i32 noundef %call152, i32 noundef %conv155, i32 noundef 1) #7
  %108 = ptrtoint ptr %DownHyst140 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %DownHyst140, align 1
  %conv159 = zext i8 %109 to i32
  %call160 = tail call i32 @phm_set_field_to_u32(i32 noundef %add146, i32 noundef %call156, i32 noundef %conv159, i32 noundef 1) #7
  %110 = ptrtoint ptr %device107 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %device107, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %write_ind_register163 = getelementptr inbounds %struct.cgs_ops, ptr %113, i32 0, i32 3
  %114 = ptrtoint ptr %write_ind_register163 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %write_ind_register163, align 4
  tail call void %115(ptr noundef %111, i32 noundef 1, i32 noundef %and147, i32 noundef %call160) #7
  br label %for.inc166

for.inc166:                                       ; preds = %if.then134, %lor.lhs.false127.for.inc166_crit_edge
  %inc167 = add nuw nsw i32 %i.1306, 1
  %116 = ptrtoint ptr %MemoryDpmLevelCount to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %MemoryDpmLevelCount, align 1
  %conv89 = zext i8 %117 to i32
  %cmp90 = icmp ult i32 %inc167, %conv89
  br i1 %cmp90, label %for.inc166.for.body92_crit_edge, label %for.inc166.for.end168_crit_edge

for.inc166.for.end168_crit_edge:                  ; preds = %for.inc166
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end168

for.inc166.for.body92_crit_edge:                  ; preds = %for.inc166
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body92

for.end168:                                       ; preds = %for.inc166.for.end168_crit_edge, %if.end86.for.end168_crit_edge
  %118 = ptrtoint ptr %mclk_dpm_key_disabled to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %mclk_dpm_key_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool170.not = icmp eq i32 %119, 0
  br i1 %tobool170.not, label %if.then171, label %for.end168.cleanup_crit_edge

for.end168.cleanup_crit_edge:                     ; preds = %for.end168
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then171:                                       ; preds = %for.end168
  call void @__sanitizer_cov_trace_pc() #9
  %call172 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 396, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then171, %for.end168.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.end168.cleanup_crit_edge ], [ 0, %if.then171 ], [ 0, %if.end80.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @smu7_is_smc_ram_running(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_read_smc_sram_dword(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_request_smu_load_fw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_wait_for_indirect_register_unequal(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_upload_smu_firmware_image(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_program_jump_on_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_wait_on_indirect_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_send_msg_to_smc_offset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_setup_pwr_virus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_copy_bytes_to_smc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc_with_parameter(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @polaris10_program_memory_timing_parameters(ptr noundef %hwmgr) unnamed_addr #0 align 64 {
entry:
  %arb_regs = alloca %struct.SMU74_Discrete_MCArbDramTimingTable, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %arb_regs) #7
  %4 = call ptr @memset(ptr %arb_regs, i32 255, i32 384)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp65.not = icmp eq i32 %6, 0
  br i1 %cmp65.not, label %entry.for.end29_crit_edge, label %for.cond1.preheader.lr.ph

entry.for.end29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end29

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %mclk_table = getelementptr inbounds %struct.smu7_dpm_table, ptr %1, i32 0, i32 1
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc27.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %i.066 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc28, %for.inc27.for.cond1.preheader_crit_edge ]
  %7 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mclk_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp462.not = icmp eq i32 %8, 0
  br i1 %cmp462.not, label %for.cond1.preheader.for.inc27_crit_edge, label %for.body5.lr.ph

for.cond1.preheader.for.inc27_crit_edge:          ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc27

for.body5.lr.ph:                                  ; preds = %for.cond1.preheader
  %value = getelementptr %struct.smu7_single_dpm_table, ptr %1, i32 0, i32 1, i32 %i.066, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.066)
  %cmp16 = icmp eq i32 %i.066, 0
  br label %for.body5

for.body5:                                        ; preds = %for.inc.for.body5_crit_edge, %for.body5.lr.ph
  %j.063 = phi i32 [ 0, %for.body5.lr.ph ], [ %inc, %for.inc.for.body5_crit_edge ]
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %value12 = getelementptr %struct.smu7_dpm_table, ptr %1, i32 0, i32 1, i32 1, i32 %j.063, i32 1
  %11 = ptrtoint ptr %value12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value12, align 4
  %call.i = tail call i32 @atomctrl_set_engine_dram_timings_rv770(ptr noundef %hwmgr, i32 noundef %10, i32 noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %land.lhs.true, label %if.then.i

if.then.i:                                        ; preds = %for.body5
  %call1.i = tail call i32 @___ratelimit(ptr noundef nonnull @polaris10_populate_memory_timing_parameters._rs, ptr noundef nonnull @__func__.polaris10_populate_memory_timing_parameters) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i.cleanup_crit_edge, label %do.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.42) #11
  br label %cleanup

land.lhs.true:                                    ; preds = %for.body5
  %arrayidx14 = getelementptr [8 x [4 x %struct.SMU74_Discrete_MCArbDramTimingTableEntry]], ptr %arb_regs, i32 0, i32 %i.066, i32 %j.063
  %13 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call9.i = tail call i32 %18(ptr noundef %14, i32 noundef 2525) #7
  %19 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call14.i = tail call i32 %24(ptr noundef %20, i32 noundef 2526) #7
  %25 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call19.i = tail call i32 %30(ptr noundef %26, i32 noundef 2562) #7
  %31 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %call9.i, ptr %arrayidx14, align 1
  %McArbDramTiming2.i = getelementptr [8 x [4 x %struct.SMU74_Discrete_MCArbDramTimingTableEntry]], ptr %arb_regs, i32 0, i32 %i.066, i32 %j.063, i32 1
  %32 = ptrtoint ptr %McArbDramTiming2.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %call14.i, ptr %McArbDramTiming2.i, align 1
  %33 = trunc i32 %call19.i to i8
  %conv.i = and i8 %33, 31
  %McArbBurstTime.i = getelementptr [8 x [4 x %struct.SMU74_Discrete_MCArbDramTimingTableEntry]], ptr %arb_regs, i32 0, i32 %i.066, i32 %j.063, i32 2
  %34 = ptrtoint ptr %McArbBurstTime.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv.i, ptr %McArbBurstTime.i, align 1
  br i1 %cmp16, label %if.end, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true
  %35 = ptrtoint ptr %value12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %value12, align 4
  %conv = trunc i32 %j.063 to i8
  %call22 = tail call i32 @atomctrl_set_ac_timing_ai(ptr noundef %hwmgr, i32 noundef %36, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 0
  br i1 %cmp23.not, label %if.end.for.inc_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %inc = add nuw i32 %j.063, 1
  %37 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mclk_table, align 4
  %cmp4 = icmp ult i32 %inc, %38
  br i1 %cmp4, label %for.inc.for.body5_crit_edge, label %for.inc.for.inc27_crit_edge

for.inc.for.inc27_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc27

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body5

for.inc27:                                        ; preds = %for.inc.for.inc27_crit_edge, %for.cond1.preheader.for.inc27_crit_edge
  %inc28 = add nuw i32 %i.066, 1
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %1, align 4
  %cmp = icmp ult i32 %inc28, %40
  br i1 %cmp, label %for.inc27.for.cond1.preheader_crit_edge, label %for.inc27.for.end29_crit_edge

for.inc27.for.end29_crit_edge:                    ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end29

for.inc27.for.cond1.preheader_crit_edge:          ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader

for.end29:                                        ; preds = %for.inc27.for.end29_crit_edge, %entry.for.end29_crit_edge
  %arb_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 7
  %41 = ptrtoint ptr %arb_table_start to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arb_table_start, align 4
  %call30 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %42, ptr noundef nonnull %arb_regs, i32 noundef 384, i32 noundef 262144) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end29, %if.end.cleanup_crit_edge, %do.end.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %for.end29 ], [ %call.i, %do.end.i ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %arb_regs) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_set_ac_timing_ai(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_set_engine_dram_timings_rv770(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @polaris10_populate_smc_samu_level(ptr noundef %hwmgr, ptr nocapture noundef %table) unnamed_addr #0 align 64 {
entry:
  %dividers = alloca %struct.pp_atomctrl_clock_dividers_vi, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dividers) #7
  %0 = call ptr @memset(ptr %dividers, i32 255, i32 16)
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %1 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pptable, align 4
  %mm_dep_table = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %2, i32 0, i32 14
  %3 = ptrtoint ptr %mm_dep_table to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mm_dep_table, align 4
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %5 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %backend, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 4
  %conv = trunc i32 %8 to i8
  %SamuLevelCount = getelementptr inbounds %struct.SMU74_Discrete_DpmTable, ptr %table, i32 0, i32 20
  %9 = ptrtoint ptr %SamuLevelCount to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %SamuLevelCount, align 1
  %SamuBootLevel = getelementptr inbounds %struct.SMU74_Discrete_DpmTable, ptr %table, i32 0, i32 50
  %10 = ptrtoint ptr %SamuBootLevel to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %SamuBootLevel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %cmp132.not = icmp eq i8 %conv, 0
  br i1 %cmp132.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %vddci_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %6, i32 0, i32 40
  %vddci_voltage_table = getelementptr inbounds %struct.smu7_hwmgr, ptr %6, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %do.end66.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %do.end66.for.body_crit_edge ]
  %samclock = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %4, i32 0, i32 1, i32 %indvars.iv, i32 4
  %11 = ptrtoint ptr %samclock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %samclock, align 4
  %arrayidx7 = getelementptr %struct.SMU74_Discrete_DpmTable, ptr %table, i32 0, i32 42, i32 %indvars.iv
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %arrayidx7, align 1
  %vddc = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %4, i32 0, i32 1, i32 %indvars.iv, i32 7
  %14 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vddc, align 4
  %conv11 = zext i16 %15 to i32
  %mul = shl nuw nsw i32 %conv11, 2
  %MinVoltage = getelementptr %struct.SMU74_Discrete_DpmTable, ptr %table, i32 0, i32 42, i32 %indvars.iv, i32 1
  %16 = ptrtoint ptr %MinVoltage to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %MinVoltage, align 1
  %or = or i32 %mul, %17
  store i32 %or, ptr %MinVoltage, align 1
  %18 = ptrtoint ptr %vddci_control to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vddci_control, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %19, label %for.body.if.end38_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then27
  ]

for.body.if.end38_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vddc, align 4
  %sub = add i16 %22, -200
  %call = call zeroext i16 @phm_find_closest_vddci(ptr noundef %vddci_voltage_table, i16 noundef zeroext %sub) #7
  %conv23 = zext i16 %call to i32
  br label %if.end38

if.then27:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vddc, align 4
  %conv32 = zext i16 %24 to i32
  %sub33 = add nsw i32 %conv32, -200
  br label %if.end38

if.end38:                                         ; preds = %if.then27, %if.then, %for.body.if.end38_crit_edge
  %vddci.0 = phi i32 [ %conv23, %if.then ], [ %sub33, %if.then27 ], [ 0, %for.body.if.end38_crit_edge ]
  %mul39 = shl i32 %vddci.0, 17
  %25 = ptrtoint ptr %MinVoltage to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %MinVoltage, align 1
  %or45 = or i32 %mul39, %26
  %or50 = or i32 %or45, 1073741824
  store i32 %or50, ptr %MinVoltage, align 1
  %27 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %arrayidx7, align 1
  %call55 = call i32 @atomctrl_get_dfs_pll_dividers_vi(ptr noundef %hwmgr, i32 noundef %28, ptr noundef nonnull %dividers) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %do.end66, label %if.then58

if.then58:                                        ; preds = %if.end38
  %call59 = call i32 @___ratelimit(ptr noundef nonnull @polaris10_populate_smc_samu_level._rs, ptr noundef nonnull @__func__.polaris10_populate_smc_samu_level) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool.not = icmp eq i32 %call59, 0
  br i1 %tobool.not, label %if.then58.cleanup_crit_edge, label %do.end

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.122) #11
  br label %cleanup

do.end66:                                         ; preds = %if.end38
  %29 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dividers, align 4
  %conv67 = trunc i32 %30 to i8
  %Divider = getelementptr %struct.SMU74_Discrete_DpmTable, ptr %table, i32 0, i32 42, i32 %indvars.iv, i32 2
  %31 = ptrtoint ptr %Divider to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv67, ptr %Divider, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %32 = ptrtoint ptr %SamuLevelCount to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %SamuLevelCount, align 1
  %34 = zext i8 %33 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %34
  br i1 %cmp, label %do.end66.for.body_crit_edge, label %do.end66.cleanup_crit_edge

do.end66.cleanup_crit_edge:                       ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end66.for.body_crit_edge:                      ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %do.end66.cleanup_crit_edge, %do.end, %if.then58.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call55, %do.end ], [ %call55, %if.then58.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end66.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @polaris10_populate_smc_uvd_level(ptr noundef %hwmgr, ptr nocapture noundef %table) unnamed_addr #0 align 64 {
entry:
  %dividers = alloca %struct.pp_atomctrl_clock_dividers_vi, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dividers) #7
  %0 = call ptr @memset(ptr %dividers, i32 255, i32 16)
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %1 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pptable, align 4
  %mm_dep_table = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %2, i32 0, i32 14
  %3 = ptrtoint ptr %mm_dep_table to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mm_dep_table, align 4
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %5 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %backend, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 4
  %conv = trunc i32 %8 to i8
  %UvdLevelCount = getelementptr inbounds %struct.SMU74_Discrete_DpmTable, ptr %table, i32 0, i32 17
  %9 = ptrtoint ptr %UvdLevelCount to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %UvdLevelCount, align 1
  %UvdBootLevel = getelementptr inbounds %struct.SMU74_Discrete_DpmTable, ptr %table, i32 0, i32 47
  %10 = ptrtoint ptr %UvdBootLevel to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %UvdBootLevel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %cmp195.not = icmp eq i8 %conv, 0
  br i1 %cmp195.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %vddci_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %6, i32 0, i32 40
  %vddci_voltage_table = getelementptr inbounds %struct.smu7_hwmgr, ptr %6, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %do.end101.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %do.end101.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.SMU74_Discrete_DpmTable, ptr %table, i32 0, i32 39, i32 %indvars.iv
  %MinVoltage = getelementptr %struct.SMU74_Discrete_DpmTable, ptr %table, i32 0, i32 39, i32 %indvars.iv, i32 2
  %11 = ptrtoint ptr %MinVoltage to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 0, ptr %MinVoltage, align 1
  %arrayidx7 = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %4, i32 0, i32 1, i32 %indvars.iv
  %vclk = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %4, i32 0, i32 1, i32 %indvars.iv, i32 1
  %12 = ptrtoint ptr %vclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vclk, align 4
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %arrayidx, align 1
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx7, align 4
  %DclkFrequency = getelementptr %struct.SMU74_Discrete_DpmTable, ptr %table, i32 0, i32 39, i32 %indvars.iv, i32 1
  %17 = ptrtoint ptr %DclkFrequency to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %DclkFrequency, align 1
  %vddc = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %4, i32 0, i32 1, i32 %indvars.iv, i32 7
  %18 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vddc, align 4
  %conv20 = zext i16 %19 to i32
  %mul = shl nuw nsw i32 %conv20, 2
  store i32 %mul, ptr %MinVoltage, align 1
  %20 = ptrtoint ptr %vddci_control to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vddci_control, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %21, label %for.body.if.end48_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then37
  ]

for.body.if.end48_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vddc, align 4
  %sub = add i16 %24, -200
  %call = call zeroext i16 @phm_find_closest_vddci(ptr noundef %vddci_voltage_table, i16 noundef zeroext %sub) #7
  %conv33 = zext i16 %call to i32
  br label %if.end48

if.then37:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vddc, align 4
  %conv42 = zext i16 %26 to i32
  %sub43 = add nsw i32 %conv42, -200
  br label %if.end48

if.end48:                                         ; preds = %if.then37, %if.then, %for.body.if.end48_crit_edge
  %vddci.0 = phi i32 [ %conv33, %if.then ], [ %sub43, %if.then37 ], [ 0, %for.body.if.end48_crit_edge ]
  %mul49 = shl i32 %vddci.0, 17
  %27 = ptrtoint ptr %MinVoltage to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %MinVoltage, align 1
  %or55 = or i32 %mul49, %28
  %or60 = or i32 %or55, 1073741824
  store i32 %or60, ptr %MinVoltage, align 1
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %arrayidx, align 1
  %call65 = call i32 @atomctrl_get_dfs_pll_dividers_vi(ptr noundef %hwmgr, i32 noundef %30, ptr noundef nonnull %dividers) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp eq i32 %call65, 0
  br i1 %cmp66, label %do.end76, label %if.then68

if.then68:                                        ; preds = %if.end48
  %call69 = call i32 @___ratelimit(ptr noundef nonnull @polaris10_populate_smc_uvd_level._rs, ptr noundef nonnull @__func__.polaris10_populate_smc_uvd_level) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool.not = icmp eq i32 %call69, 0
  br i1 %tobool.not, label %if.then68.cleanup_crit_edge, label %if.then68.cleanup.sink.split_crit_edge

if.then68.cleanup.sink.split_crit_edge:           ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then68.cleanup_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end76:                                         ; preds = %if.end48
  %31 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dividers, align 4
  %conv77 = trunc i32 %32 to i8
  %VclkDivider = getelementptr %struct.SMU74_Discrete_DpmTable, ptr %table, i32 0, i32 39, i32 %indvars.iv, i32 3
  %33 = ptrtoint ptr %VclkDivider to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv77, ptr %VclkDivider, align 1
  %34 = ptrtoint ptr %DclkFrequency to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %DclkFrequency, align 1
  %call85 = call i32 @atomctrl_get_dfs_pll_dividers_vi(ptr noundef %hwmgr, i32 noundef %35, ptr noundef nonnull %dividers) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp87 = icmp eq i32 %call85, 0
  br i1 %cmp87, label %do.end101, label %if.then89

if.then89:                                        ; preds = %do.end76
  %call90 = call i32 @___ratelimit(ptr noundef nonnull @polaris10_populate_smc_uvd_level._rs.124, ptr noundef nonnull @__func__.polaris10_populate_smc_uvd_level) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.then89.cleanup_crit_edge, label %if.then89.cleanup.sink.split_crit_edge

if.then89.cleanup.sink.split_crit_edge:           ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then89.cleanup_crit_edge:                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end101:                                        ; preds = %do.end76
  %36 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dividers, align 4
  %conv103 = trunc i32 %37 to i8
  %DclkDivider = getelementptr %struct.SMU74_Discrete_DpmTable, ptr %table, i32 0, i32 39, i32 %indvars.iv, i32 4
  %38 = ptrtoint ptr %DclkDivider to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv103, ptr %DclkDivider, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %39 = ptrtoint ptr %UvdLevelCount to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %UvdLevelCount, align 1
  %41 = zext i8 %40 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %41
  br i1 %cmp, label %do.end101.for.body_crit_edge, label %do.end101.cleanup_crit_edge

do.end101.cleanup_crit_edge:                      ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end101.for.body_crit_edge:                     ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.sink.split:                               ; preds = %if.then89.cleanup.sink.split_crit_edge, %if.then68.cleanup.sink.split_crit_edge
  %.str.127.sink = phi ptr [ @.str.123, %if.then68.cleanup.sink.split_crit_edge ], [ @.str.127, %if.then89.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call65, %if.then68.cleanup.sink.split_crit_edge ], [ %call85, %if.then89.cleanup.sink.split_crit_edge ]
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %.str.127.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end101.cleanup_crit_edge, %if.then89.cleanup_crit_edge, %if.then68.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call65, %if.then68.cleanup_crit_edge ], [ %call85, %if.then89.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %do.end101.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @polaris10_populate_smc_boot_level(ptr nocapture noundef readonly %hwmgr, ptr noundef %table) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %GraphicsBootLevel = getelementptr inbounds %struct.SMU74_Discrete_DpmTable, ptr %table, i32 0, i32 51
  %2 = ptrtoint ptr %GraphicsBootLevel to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %GraphicsBootLevel, align 1
  %MemoryBootLevel = getelementptr inbounds %struct.SMU74_Discrete_DpmTable, ptr %table, i32 0, i32 59
  %3 = ptrtoint ptr %MemoryBootLevel to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %MemoryBootLevel, align 1
  %sclk_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 4
  %4 = ptrtoint ptr %sclk_bootup_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sclk_bootup_value, align 4
  %call = tail call i32 @phm_find_boot_level(ptr noundef %1, i32 noundef %5, ptr noundef %GraphicsBootLevel) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %GraphicsBootLevel to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %GraphicsBootLevel, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mclk_table = getelementptr inbounds %struct.smu7_dpm_table, ptr %1, i32 0, i32 1
  %mclk_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 5
  %7 = ptrtoint ptr %mclk_bootup_value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mclk_bootup_value, align 4
  %call6 = tail call i32 @phm_find_boot_level(ptr noundef %mclk_table, i32 noundef %8, ptr noundef %MemoryBootLevel) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %MemoryBootLevel to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %MemoryBootLevel, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %vbios_boot_state = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31
  %vddc_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 1
  %10 = ptrtoint ptr %vddc_bootup_value to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vddc_bootup_value, align 2
  %mul = shl i16 %11, 2
  %BootVddc = getelementptr inbounds %struct.SMU74_Discrete_DpmTable, ptr %table, i32 0, i32 84
  %12 = ptrtoint ptr %BootVddc to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %mul, ptr %BootVddc, align 1
  %vddci_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 2
  %13 = ptrtoint ptr %vddci_bootup_value to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vddci_bootup_value, align 4
  %mul15 = shl i16 %14, 2
  %BootVddci = getelementptr inbounds %struct.SMU74_Discrete_DpmTable, ptr %table, i32 0, i32 85
  %15 = ptrtoint ptr %BootVddci to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %mul15, ptr %BootVddci, align 1
  %16 = ptrtoint ptr %vbios_boot_state to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vbios_boot_state, align 4
  %mul19 = shl i16 %17, 2
  %BootMVdd = getelementptr inbounds %struct.SMU74_Discrete_DpmTable, ptr %table, i32 0, i32 61
  %18 = ptrtoint ptr %BootMVdd to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %mul19, ptr %BootMVdd, align 1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @polaris10_populate_smc_initailial_state(ptr nocapture noundef readonly %hwmgr) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %4 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pptable, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %conv3 = and i32 %9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3)
  %cmp3.not = icmp eq i32 %conv3, 0
  br i1 %cmp3.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sclk_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 4
  %10 = ptrtoint ptr %sclk_bootup_value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sclk_bootup_value, align 4
  %12 = trunc i32 %9 to i8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv25 = phi i32 [ 0, %for.body.lr.ph ], [ %conv2, %for.inc.for.body_crit_edge ]
  %level.04 = phi i8 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %7, i32 0, i32 1, i32 %conv25
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %11)
  %cmp6.not = icmp ult i32 %14, %11
  br i1 %cmp6.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %GraphicsBootLevel = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 51
  %15 = ptrtoint ptr %GraphicsBootLevel to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %level.04, ptr %GraphicsBootLevel, align 1
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i8 %level.04, 1
  %conv2 = zext i8 %inc to i32
  %cmp = icmp ult i8 %inc, %12
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then, %entry.for.end_crit_edge
  %vdd_dep_on_mclk = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %vdd_dep_on_mclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vdd_dep_on_mclk, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %conv12 = and i32 %19, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv12)
  %cmp136.not = icmp eq i32 %conv12, 0
  br i1 %cmp136.not, label %for.end.for.end29_crit_edge, label %for.body15.lr.ph

for.end.for.end29_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end29

for.body15.lr.ph:                                 ; preds = %for.end
  %mclk_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 5
  %20 = ptrtoint ptr %mclk_bootup_value to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mclk_bootup_value, align 4
  %22 = trunc i32 %19 to i8
  br label %for.body15

for.body15:                                       ; preds = %for.inc27.for.body15_crit_edge, %for.body15.lr.ph
  %conv118 = phi i32 [ 0, %for.body15.lr.ph ], [ %conv11, %for.inc27.for.body15_crit_edge ]
  %level.17 = phi i8 [ 0, %for.body15.lr.ph ], [ %inc28, %for.inc27.for.body15_crit_edge ]
  %arrayidx19 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %17, i32 0, i32 1, i32 %conv118
  %23 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %21)
  %cmp22.not = icmp ult i32 %24, %21
  br i1 %cmp22.not, label %for.inc27, label %if.then24

if.then24:                                        ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #9
  %MemoryBootLevel = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 59
  %25 = ptrtoint ptr %MemoryBootLevel to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %level.17, ptr %MemoryBootLevel, align 1
  br label %for.end29

for.inc27:                                        ; preds = %for.body15
  %inc28 = add nuw i8 %level.17, 1
  %conv11 = zext i8 %inc28 to i32
  %cmp13 = icmp ult i8 %inc28, %22
  br i1 %cmp13, label %for.inc27.for.body15_crit_edge, label %for.inc27.for.end29_crit_edge

for.inc27.for.end29_crit_edge:                    ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end29

for.inc27.for.body15_crit_edge:                   ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body15

for.end29:                                        ; preds = %for.inc27.for.end29_crit_edge, %if.then24, %for.end.for.end29_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @polaris10_populate_bapm_parameters_in_dpm_table(ptr nocapture noundef readonly %hwmgr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %power_tune_defaults = getelementptr inbounds %struct.polaris10_smumgr, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %power_tune_defaults to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %power_tune_defaults, align 8
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %4 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pptable, align 4
  %cac_dtp_table1 = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %cac_dtp_table1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cac_dtp_table1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 4
  %mul = shl i16 %9, 7
  %DefaultTdp = getelementptr inbounds %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 76
  %10 = ptrtoint ptr %DefaultTdp to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %mul, ptr %DefaultTdp, align 1
  %11 = load i16, ptr %7, align 4
  %mul5 = shl i16 %11, 7
  %TargetTdp = getelementptr inbounds %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 77
  %12 = ptrtoint ptr %TargetTdp to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %mul5, ptr %TargetTdp, align 1
  %usTargetOperatingTemp = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %7, i32 0, i32 14
  %13 = ptrtoint ptr %usTargetOperatingTemp to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %usTargetOperatingTemp, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %14)
  %cmp = icmp ult i16 %14, 256
  br i1 %cmp, label %entry.do.end14_crit_edge, label %if.then

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @polaris10_populate_bapm_parameters_in_dpm_table._rs, ptr noundef nonnull @__func__.polaris10_populate_bapm_parameters_in_dpm_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.do.end14_crit_edge, label %do.end

if.then.do.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.128) #11
  br label %do.end14

do.end14:                                         ; preds = %do.end, %if.then.do.end14_crit_edge, %entry.do.end14_crit_edge
  %15 = ptrtoint ptr %usTargetOperatingTemp to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %usTargetOperatingTemp, align 4
  %mul17 = shl i16 %16, 8
  %TemperatureLimitEdge = getelementptr inbounds %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 82
  %17 = ptrtoint ptr %TemperatureLimitEdge to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %mul17, ptr %TemperatureLimitEdge, align 1
  %usTemperatureLimitHotspot = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %7, i32 0, i32 18
  %18 = ptrtoint ptr %usTemperatureLimitHotspot to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %usTemperatureLimitHotspot, align 4
  %mul20 = shl i16 %19, 8
  %TemperatureLimitHotspot = getelementptr inbounds %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 83
  %20 = ptrtoint ptr %TemperatureLimitHotspot to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %mul20, ptr %TemperatureLimitHotspot, align 1
  %usFanGainEdge = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 29
  %21 = ptrtoint ptr %usFanGainEdge to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %usFanGainEdge, align 2
  %conv.i = zext i16 %22 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 12
  %div.i = udiv i32 %mul.i, 100
  %conv1.i = trunc i32 %div.i to i16
  %FanGainEdge = getelementptr inbounds %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 86
  %23 = ptrtoint ptr %FanGainEdge to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %conv1.i, ptr %FanGainEdge, align 1
  %usFanGainHotspot = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 30
  %24 = ptrtoint ptr %usFanGainHotspot to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %usFanGainHotspot, align 4
  %conv.i1 = zext i16 %25 to i32
  %mul.i2 = shl nuw nsw i32 %conv.i1, 12
  %div.i3 = udiv i32 %mul.i2, 100
  %conv1.i4 = trunc i32 %div.i3 to i16
  %FanGainHotspot = getelementptr inbounds %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 87
  %26 = ptrtoint ptr %FanGainHotspot to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %conv1.i4, ptr %FanGainHotspot, align 1
  %BAPMTI_R = getelementptr inbounds %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 8
  %BAPMTI_RC = getelementptr inbounds %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 9
  %arrayidx36 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 0, i32 0
  %arrayidx40 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 81, i32 0, i32 0
  %27 = ptrtoint ptr %BAPMTI_R to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %BAPMTI_R, align 2
  %29 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %arrayidx36, align 1
  %30 = ptrtoint ptr %BAPMTI_RC to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %BAPMTI_RC, align 2
  %32 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %31, ptr %arrayidx40, align 1
  %incdec.ptr = getelementptr %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 8, i32 1
  %incdec.ptr42 = getelementptr %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 9, i32 1
  %arrayidx36.1 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 0, i32 1
  %arrayidx40.1 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 81, i32 0, i32 1
  %33 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %incdec.ptr, align 2
  %35 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %34, ptr %arrayidx36.1, align 1
  %36 = ptrtoint ptr %incdec.ptr42 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %incdec.ptr42, align 2
  %38 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %37, ptr %arrayidx40.1, align 1
  %incdec.ptr.1 = getelementptr %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 8, i32 2
  %incdec.ptr42.1 = getelementptr %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 9, i32 2
  %arrayidx36.2 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 0, i32 2
  %arrayidx40.2 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 81, i32 0, i32 2
  %39 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %incdec.ptr.1, align 2
  %41 = ptrtoint ptr %arrayidx36.2 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %40, ptr %arrayidx36.2, align 1
  %42 = ptrtoint ptr %incdec.ptr42.1 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %incdec.ptr42.1, align 2
  %44 = ptrtoint ptr %arrayidx40.2 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %43, ptr %arrayidx40.2, align 1
  %incdec.ptr.2 = getelementptr %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 8, i32 3
  %incdec.ptr42.2 = getelementptr %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 9, i32 3
  %arrayidx36.113 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 1, i32 0
  %arrayidx40.114 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 81, i32 1, i32 0
  %45 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %incdec.ptr.2, align 2
  %47 = ptrtoint ptr %arrayidx36.113 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 %46, ptr %arrayidx36.113, align 1
  %48 = ptrtoint ptr %incdec.ptr42.2 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %incdec.ptr42.2, align 2
  %50 = ptrtoint ptr %arrayidx40.114 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %49, ptr %arrayidx40.114, align 1
  %incdec.ptr.115 = getelementptr %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 8, i32 4
  %incdec.ptr42.116 = getelementptr %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 9, i32 4
  %arrayidx36.1.1 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 1, i32 1
  %arrayidx40.1.1 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 81, i32 1, i32 1
  %51 = ptrtoint ptr %incdec.ptr.115 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %incdec.ptr.115, align 2
  %53 = ptrtoint ptr %arrayidx36.1.1 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 2)
  store i16 %52, ptr %arrayidx36.1.1, align 1
  %54 = ptrtoint ptr %incdec.ptr42.116 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %incdec.ptr42.116, align 2
  %56 = ptrtoint ptr %arrayidx40.1.1 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 2)
  store i16 %55, ptr %arrayidx40.1.1, align 1
  %incdec.ptr.1.1 = getelementptr %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 8, i32 5
  %incdec.ptr42.1.1 = getelementptr %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 9, i32 5
  %arrayidx36.2.1 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 1, i32 2
  %arrayidx40.2.1 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 81, i32 1, i32 2
  %57 = ptrtoint ptr %incdec.ptr.1.1 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %incdec.ptr.1.1, align 2
  %59 = ptrtoint ptr %arrayidx36.2.1 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 %58, ptr %arrayidx36.2.1, align 1
  %60 = ptrtoint ptr %incdec.ptr42.1.1 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %incdec.ptr42.1.1, align 2
  %62 = ptrtoint ptr %arrayidx40.2.1 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 %61, ptr %arrayidx40.2.1, align 1
  %incdec.ptr.2.1 = getelementptr %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 8, i32 6
  %incdec.ptr42.2.1 = getelementptr %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 9, i32 6
  %arrayidx36.217 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 2, i32 0
  %arrayidx40.218 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 81, i32 2, i32 0
  %63 = ptrtoint ptr %incdec.ptr.2.1 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %incdec.ptr.2.1, align 2
  %65 = ptrtoint ptr %arrayidx36.217 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 2)
  store i16 %64, ptr %arrayidx36.217, align 1
  %66 = ptrtoint ptr %incdec.ptr42.2.1 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %incdec.ptr42.2.1, align 2
  %68 = ptrtoint ptr %arrayidx40.218 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 2)
  store i16 %67, ptr %arrayidx40.218, align 1
  %incdec.ptr.219 = getelementptr %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 8, i32 7
  %incdec.ptr42.220 = getelementptr %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 9, i32 7
  %arrayidx36.1.2 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 2, i32 1
  %arrayidx40.1.2 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 81, i32 2, i32 1
  %69 = ptrtoint ptr %incdec.ptr.219 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %incdec.ptr.219, align 2
  %71 = ptrtoint ptr %arrayidx36.1.2 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 2)
  store i16 %70, ptr %arrayidx36.1.2, align 1
  %72 = ptrtoint ptr %incdec.ptr42.220 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %incdec.ptr42.220, align 2
  %74 = ptrtoint ptr %arrayidx40.1.2 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 2)
  store i16 %73, ptr %arrayidx40.1.2, align 1
  %incdec.ptr.1.2 = getelementptr %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 8, i32 8
  %incdec.ptr42.1.2 = getelementptr %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 9, i32 8
  %arrayidx36.2.2 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 2, i32 2
  %arrayidx40.2.2 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 81, i32 2, i32 2
  %75 = ptrtoint ptr %incdec.ptr.1.2 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %incdec.ptr.1.2, align 2
  %77 = ptrtoint ptr %arrayidx36.2.2 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 2)
  store i16 %76, ptr %arrayidx36.2.2, align 1
  %78 = ptrtoint ptr %incdec.ptr42.1.2 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %incdec.ptr42.1.2, align 2
  %80 = ptrtoint ptr %arrayidx40.2.2 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 2)
  store i16 %79, ptr %arrayidx40.2.2, align 1
  %incdec.ptr.2.2 = getelementptr %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 8, i32 9
  %incdec.ptr42.2.2 = getelementptr %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 9, i32 9
  %arrayidx36.3 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 3, i32 0
  %arrayidx40.3 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 81, i32 3, i32 0
  %81 = ptrtoint ptr %incdec.ptr.2.2 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %incdec.ptr.2.2, align 2
  %83 = ptrtoint ptr %arrayidx36.3 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 2)
  store i16 %82, ptr %arrayidx36.3, align 1
  %84 = ptrtoint ptr %incdec.ptr42.2.2 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %incdec.ptr42.2.2, align 2
  %86 = ptrtoint ptr %arrayidx40.3 to i32
  call void @__asan_storeN_noabort(i32 %86, i32 2)
  store i16 %85, ptr %arrayidx40.3, align 1
  %incdec.ptr.3 = getelementptr %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 8, i32 10
  %incdec.ptr42.3 = getelementptr %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 9, i32 10
  %arrayidx36.1.3 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 3, i32 1
  %arrayidx40.1.3 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 81, i32 3, i32 1
  %87 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %incdec.ptr.3, align 2
  %89 = ptrtoint ptr %arrayidx36.1.3 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 2)
  store i16 %88, ptr %arrayidx36.1.3, align 1
  %90 = ptrtoint ptr %incdec.ptr42.3 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %incdec.ptr42.3, align 2
  %92 = ptrtoint ptr %arrayidx40.1.3 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 2)
  store i16 %91, ptr %arrayidx40.1.3, align 1
  %incdec.ptr.1.3 = getelementptr %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 8, i32 11
  %incdec.ptr42.1.3 = getelementptr %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 9, i32 11
  %arrayidx36.2.3 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 3, i32 2
  %arrayidx40.2.3 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 81, i32 3, i32 2
  %93 = ptrtoint ptr %incdec.ptr.1.3 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %incdec.ptr.1.3, align 2
  %95 = ptrtoint ptr %arrayidx36.2.3 to i32
  call void @__asan_storeN_noabort(i32 %95, i32 2)
  store i16 %94, ptr %arrayidx36.2.3, align 1
  %96 = ptrtoint ptr %incdec.ptr42.1.3 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %incdec.ptr42.1.3, align 2
  %98 = ptrtoint ptr %arrayidx40.2.3 to i32
  call void @__asan_storeN_noabort(i32 %98, i32 2)
  store i16 %97, ptr %arrayidx40.2.3, align 1
  %incdec.ptr.2.3 = getelementptr %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 8, i32 12
  %incdec.ptr42.2.3 = getelementptr %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 9, i32 12
  %arrayidx36.4 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 4, i32 0
  %arrayidx40.4 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 81, i32 4, i32 0
  %99 = ptrtoint ptr %incdec.ptr.2.3 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %incdec.ptr.2.3, align 2
  %101 = ptrtoint ptr %arrayidx36.4 to i32
  call void @__asan_storeN_noabort(i32 %101, i32 2)
  store i16 %100, ptr %arrayidx36.4, align 1
  %102 = ptrtoint ptr %incdec.ptr42.2.3 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %incdec.ptr42.2.3, align 2
  %104 = ptrtoint ptr %arrayidx40.4 to i32
  call void @__asan_storeN_noabort(i32 %104, i32 2)
  store i16 %103, ptr %arrayidx40.4, align 1
  %incdec.ptr.4 = getelementptr %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 8, i32 13
  %incdec.ptr42.4 = getelementptr %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 9, i32 13
  %arrayidx36.1.4 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 4, i32 1
  %arrayidx40.1.4 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 81, i32 4, i32 1
  %105 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %incdec.ptr.4, align 2
  %107 = ptrtoint ptr %arrayidx36.1.4 to i32
  call void @__asan_storeN_noabort(i32 %107, i32 2)
  store i16 %106, ptr %arrayidx36.1.4, align 1
  %108 = ptrtoint ptr %incdec.ptr42.4 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %incdec.ptr42.4, align 2
  %110 = ptrtoint ptr %arrayidx40.1.4 to i32
  call void @__asan_storeN_noabort(i32 %110, i32 2)
  store i16 %109, ptr %arrayidx40.1.4, align 1
  %incdec.ptr.1.4 = getelementptr %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 8, i32 14
  %incdec.ptr42.1.4 = getelementptr %struct.polaris10_pt_defaults, ptr %3, i32 0, i32 9, i32 14
  %arrayidx36.2.4 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 4, i32 2
  %arrayidx40.2.4 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 81, i32 4, i32 2
  %111 = ptrtoint ptr %incdec.ptr.1.4 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %incdec.ptr.1.4, align 2
  %113 = ptrtoint ptr %arrayidx36.2.4 to i32
  call void @__asan_storeN_noabort(i32 %113, i32 2)
  store i16 %112, ptr %arrayidx36.2.4, align 1
  %114 = ptrtoint ptr %incdec.ptr42.1.4 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %incdec.ptr42.1.4, align 2
  %116 = ptrtoint ptr %arrayidx40.2.4 to i32
  call void @__asan_storeN_noabort(i32 %116, i32 2)
  store i16 %115, ptr %arrayidx40.2.4, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @polaris10_populate_clock_stretcher_data_table(ptr noundef %hwmgr) unnamed_addr #0 align 64 {
entry:
  %efuse = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %2 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backend, align 4
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %4 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pptable, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %efuse) #7
  %8 = ptrtoint ptr %efuse to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %efuse, align 4, !annotation !349
  %cac_dtp_table = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %5, i32 0, i32 12
  %9 = ptrtoint ptr %cac_dtp_table to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cac_dtp_table, align 4
  %usClockStretchAmount = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %10, i32 0, i32 17
  %11 = ptrtoint ptr %usClockStretchAmount to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %usClockStretchAmount, align 2
  %call = call i32 @atomctrl_read_efuse(ptr noundef %hwmgr, i16 noundef zeroext 2168, i16 noundef zeroext 2175, ptr noundef nonnull %efuse) #7
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp190.not = icmp eq i32 %14, 0
  br i1 %cmp190.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ro_range_maximum = getelementptr inbounds %struct.smu7_hwmgr, ptr %3, i32 0, i32 104
  %15 = ptrtoint ptr %ro_range_maximum to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ro_range_maximum, align 4
  %ro_range_minimum = getelementptr inbounds %struct.smu7_hwmgr, ptr %3, i32 0, i32 103
  %17 = ptrtoint ptr %ro_range_minimum to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ro_range_minimum, align 4
  %sub = sub i32 %16, %18
  %19 = ptrtoint ptr %efuse to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %efuse, align 4
  %mul = mul i32 %sub, %20
  %div = udiv i32 %mul, 255
  %add = add i32 %div, %18
  %Sclk_CKS_masterEn0_7 = getelementptr inbounds %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 91
  %chip_id = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 2
  %.neg = mul i32 %add, -1000000
  %add54 = add i32 %.neg, -1828172496
  %sub72 = add i32 %.neg, -1251311296
  %add15 = add i32 %.neg, -1471373296
  %add34 = add i32 %.neg, -1432765296
  br label %for.body

for.body:                                         ; preds = %if.end97.for.body_crit_edge, %for.body.lr.ph
  %conv2193 = phi i32 [ 0, %for.body.lr.ph ], [ %conv2, %if.end97.for.body_crit_edge ]
  %volt_offset.0192 = phi i8 [ 0, %for.body.lr.ph ], [ %volt_offset.1, %if.end97.for.body_crit_edge ]
  %i.0191 = phi i8 [ 0, %for.body.lr.ph ], [ %inc, %if.end97.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %7, i32 0, i32 1, i32 %conv2193
  %cks_enable = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %7, i32 0, i32 1, i32 %conv2193, i32 10
  %21 = ptrtoint ptr %cks_enable to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cks_enable, align 1
  %conv4 = zext i8 %22 to i32
  %shl = shl i32 %conv4, %conv2193
  %23 = ptrtoint ptr %Sclk_CKS_masterEn0_7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %Sclk_CKS_masterEn0_7, align 1
  %25 = trunc i32 %shl to i8
  %conv7 = or i8 %24, %25
  store i8 %conv7, ptr %Sclk_CKS_masterEn0_7, align 1
  %26 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %27)
  %cmp8 = icmp eq i32 %27, 15
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %div13 = udiv i32 %29, 100
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %mul14 = mul i32 %div13, 136418
  %sub18 = add i32 %add15, %mul14
  %mul24 = mul i32 %div13, 1132925
  %div25 = udiv i32 %mul24, 1000
  %sub26 = sub nsw i32 2424180, %div25
  %div27 = udiv i32 %sub18, %sub26
  %mul33 = mul i32 %div13, 3232
  %sub37 = add i32 %add34, %mul33
  %mul43 = mul i32 %div13, 115764
  %div44 = udiv i32 %mul43, 100
  %sub45 = sub nsw i32 2522480, %div44
  %div46 = udiv i32 %sub37, %sub45
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %mul52 = mul i32 %div13, 1476925
  %div53 = udiv i32 %mul52, 10
  %sub57 = add i32 %add54, %div53
  %mul63.neg = mul i32 %div13, -1258
  %sub64 = add i32 %mul63.neg, 2625416
  %div65 = udiv i32 %sub57, %sub64
  %mul71.neg = mul i32 %div13, -392803
  %sub75 = add i32 %sub72, %mul71.neg
  %mul81.neg = mul i32 %div13, -1888
  %sub82 = add i32 %mul81.neg, 3422454
  %div83 = udiv i32 %sub75, %sub82
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %volt_without_cks.0 = phi i32 [ %div27, %if.then ], [ %div65, %if.else ]
  %volt_with_cks.0 = phi i32 [ %div46, %if.then ], [ %div83, %if.else ]
  call void @__sanitizer_cov_trace_cmp4(i32 %volt_without_cks.0, i32 %volt_with_cks.0)
  %cmp84.not = icmp ult i32 %volt_without_cks.0, %volt_with_cks.0
  br i1 %cmp84.not, label %if.end.if.end97_crit_edge, label %if.then86

if.end.if.end97_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

if.then86:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub87 = sub i32 %volt_without_cks.0, %volt_with_cks.0
  %cks_voffset = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %7, i32 0, i32 1, i32 %conv2193, i32 11
  %30 = ptrtoint ptr %cks_voffset to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %cks_voffset, align 4
  %conv91 = zext i8 %31 to i32
  %add92 = add i32 %sub87, %conv91
  %mul93 = mul i32 %add92, 100
  %add94 = add i32 %mul93, 624
  %div95 = udiv i32 %add94, 625
  %conv96 = trunc i32 %div95 to i8
  br label %if.end97

if.end97:                                         ; preds = %if.then86, %if.end.if.end97_crit_edge
  %volt_offset.1 = phi i8 [ %conv96, %if.then86 ], [ %volt_offset.0192, %if.end.if.end97_crit_edge ]
  %arrayidx100 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 94, i32 %conv2193
  %32 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %volt_offset.1, ptr %arrayidx100, align 1
  %inc = add i8 %i.0191, 1
  %conv2 = zext i8 %inc to i32
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %7, align 4
  %cmp = icmp ugt i32 %34, %conv2
  br i1 %cmp, label %if.end97.for.body_crit_edge, label %if.end97.for.end_crit_edge

if.end97.for.end_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end97.for.body_crit_edge:                      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end97.for.end_crit_edge, %entry.for.end_crit_edge
  %35 = ptrtoint ptr %cac_dtp_table to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cac_dtp_table, align 4
  %ucCKS_LDO_REFSEL = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %36, i32 0, i32 32
  %37 = ptrtoint ptr %ucCKS_LDO_REFSEL to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ucCKS_LDO_REFSEL, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp103.not = icmp eq i8 %38, 0
  %spec.select = select i1 %cmp103.not, i8 5, i8 %38
  %LdoRefSel = getelementptr inbounds %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 26
  %39 = ptrtoint ptr %LdoRefSel to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %spec.select, ptr %LdoRefSel, align 1
  %40 = and i16 %12, 255
  %41 = add nsw i16 %40, -6
  call void @__sanitizer_cov_trace_const_cmp2(i16 -5, i16 %41)
  %42 = icmp ult i16 %41, -5
  br i1 %42, label %if.then116, label %if.end124

if.then116:                                       ; preds = %for.end
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 5
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %44, -3
  store i32 %and1.i, ptr %arrayidx.i, align 4
  %call117 = call i32 @___ratelimit(ptr noundef nonnull @polaris10_populate_clock_stretcher_data_table._rs, ptr noundef nonnull @__func__.polaris10_populate_clock_stretcher_data_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool.not = icmp eq i32 %call117, 0
  br i1 %tobool.not, label %if.then116.cleanup_crit_edge, label %do.end

if.then116.cleanup_crit_edge:                     ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #9
  %call120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.129) #11
  br label %cleanup

if.end124:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %45 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %read_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %read_ind_register to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read_ind_register, align 4
  %call126 = call i32 %50(ptr noundef %46, i32 noundef 1, i32 noundef -1071643824) #7
  %and = and i32 %call126, -2
  %51 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %write_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %write_ind_register to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write_ind_register, align 4
  call void %56(ptr noundef %52, i32 noundef 1, i32 noundef -1071643824, i32 noundef %and) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end124, %do.end, %if.then116.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end124 ], [ -22, %do.end ], [ -22, %if.then116.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %efuse) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @polaris10_populate_avfs_parameters(ptr noundef %hwmgr) unnamed_addr #0 align 64 {
entry:
  %avfs_params = alloca %struct.pp_atom_ctrl__avfs_parameters, align 4
  %AVFS_meanNsigma = alloca %struct.AVFS_meanNsigma_t, align 4
  %AVFS_SclkOffset = alloca %struct.AVFS_Sclk_Offset_t, align 2
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  %4 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %avfs_params) #7
  %6 = call ptr @memset(ptr %avfs_params, i32 0, i32 80)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %AVFS_meanNsigma) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %AVFS_SclkOffset) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #7
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %tmp, align 4, !annotation !349
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %8 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pptable, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %avfs_supported = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 47
  %12 = ptrtoint ptr %avfs_supported to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %avfs_supported, align 4, !range !348
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %voltage_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %voltage_control to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %voltage_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp = icmp eq i32 %15, 1
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %avfs_supported to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %avfs_supported, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call = call i32 @atomctrl_get_avfs_information(ptr noundef %hwmgr, ptr noundef nonnull %avfs_params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then6, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  %pdev = getelementptr inbounds %struct.amdgpu_device, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %device, align 2
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.191)
  switch i16 %20, label %if.then6.lor.lhs.false60_crit_edge [
    i16 26591, label %land.lhs.true
    i16 28639, label %land.lhs.true42
  ]

if.then6.lor.lhs.false60_crit_edge:               ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false60

land.lhs.true:                                    ; preds = %if.then6
  %revision = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 12
  %22 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %revision, align 4
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.192)
  switch i8 %23, label %land.lhs.true.lor.lhs.false60_crit_edge [
    i8 -29, label %land.lhs.true.if.then159_crit_edge
    i8 -28, label %land.lhs.true.if.then159_crit_edge536
    i8 -27, label %land.lhs.true.if.then159_crit_edge537
    i8 -25, label %land.lhs.true.if.then159_crit_edge538
    i8 -17, label %land.lhs.true.if.then159_crit_edge539
  ]

land.lhs.true.if.then159_crit_edge539:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then159

land.lhs.true.if.then159_crit_edge538:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then159

land.lhs.true.if.then159_crit_edge537:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then159

land.lhs.true.if.then159_crit_edge536:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then159

land.lhs.true.if.then159_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then159

land.lhs.true.lor.lhs.false60_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false60

land.lhs.true42:                                  ; preds = %if.then6
  %revision44 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 12
  %25 = ptrtoint ptr %revision44 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %revision44, align 4
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.193)
  switch i8 %26, label %land.lhs.true42.lor.lhs.false60_crit_edge [
    i8 -25, label %land.lhs.true42.if.then159_crit_edge
    i8 -17, label %land.lhs.true42.if.then159_crit_edge540
    i8 -1, label %land.lhs.true42.if.then159_crit_edge541
  ]

land.lhs.true42.if.then159_crit_edge541:          ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then159

land.lhs.true42.if.then159_crit_edge540:          ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then159

land.lhs.true42.if.then159_crit_edge:             ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then159

land.lhs.true42.lor.lhs.false60_crit_edge:        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %land.lhs.true42.lor.lhs.false60_crit_edge, %land.lhs.true.lor.lhs.false60_crit_edge, %if.then6.lor.lhs.false60_crit_edge
  %chip_id = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 2
  %28 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %29)
  %cmp61 = icmp eq i32 %29, 17
  br i1 %cmp61, label %land.lhs.true63, label %lor.lhs.false117

land.lhs.true63:                                  ; preds = %lor.lhs.false60
  %30 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.194)
  switch i16 %20, label %land.lhs.true63.if.then159_crit_edge [
    i16 27015, label %land.lhs.true69
    i16 27009, label %land.lhs.true99
  ]

land.lhs.true63.if.then159_crit_edge:             ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then159

land.lhs.true69:                                  ; preds = %land.lhs.true63
  %revision71 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 12
  %31 = ptrtoint ptr %revision71 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %revision71, align 4
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.195)
  switch i8 %32, label %land.lhs.true69.if.then159_crit_edge [
    i8 -64, label %land.lhs.true69.if.then348_crit_edge
    i8 -63, label %land.lhs.true69.if.then348_crit_edge542
    i8 -61, label %land.lhs.true69.if.then348_crit_edge543
    i8 -57, label %land.lhs.true69.if.then348_crit_edge544
  ]

land.lhs.true69.if.then348_crit_edge544:          ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then348

land.lhs.true69.if.then348_crit_edge543:          ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then348

land.lhs.true69.if.then348_crit_edge542:          ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then348

land.lhs.true69.if.then348_crit_edge:             ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then348

land.lhs.true69.if.then159_crit_edge:             ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then159

land.lhs.true99:                                  ; preds = %land.lhs.true63
  %revision101 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 12
  %34 = ptrtoint ptr %revision101 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %revision101, align 4
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.196)
  switch i8 %35, label %land.lhs.true99.if.then159_crit_edge [
    i8 0, label %land.lhs.true99.if.then348_crit_edge
    i8 1, label %land.lhs.true99.if.then348_crit_edge545
    i8 16, label %land.lhs.true99.if.then348_crit_edge546
  ]

land.lhs.true99.if.then348_crit_edge546:          ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then348

land.lhs.true99.if.then348_crit_edge545:          ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then348

land.lhs.true99.if.then348_crit_edge:             ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then348

land.lhs.true99.if.then159_crit_edge:             ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then159

lor.lhs.false117:                                 ; preds = %lor.lhs.false60
  %37 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.197)
  switch i16 %20, label %lor.lhs.false117.if.then348_crit_edge [
    i16 26607, label %land.lhs.true123
    i16 26623, label %land.lhs.true141
  ]

lor.lhs.false117.if.then348_crit_edge:            ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then348

land.lhs.true123:                                 ; preds = %lor.lhs.false117
  %revision125 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 12
  %38 = ptrtoint ptr %revision125 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %revision125, align 4
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.198)
  switch i8 %39, label %land.lhs.true123.if.then348_crit_edge [
    i8 -32, label %land.lhs.true123.if.then159_crit_edge
    i8 -27, label %land.lhs.true123.if.then159_crit_edge547
  ]

land.lhs.true123.if.then159_crit_edge547:         ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then159

land.lhs.true123.if.then159_crit_edge:            ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then159

land.lhs.true123.if.then348_crit_edge:            ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then348

land.lhs.true141:                                 ; preds = %lor.lhs.false117
  %revision143 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 12
  %41 = ptrtoint ptr %revision143 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %revision143, align 4
  %43 = zext i8 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.199)
  switch i8 %42, label %land.lhs.true141.if.then348_crit_edge [
    i8 -49, label %land.lhs.true141.if.then159_crit_edge
    i8 -17, label %land.lhs.true141.if.then159_crit_edge548
    i8 -1, label %land.lhs.true141.if.then159_crit_edge549
  ]

land.lhs.true141.if.then159_crit_edge549:         ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then159

land.lhs.true141.if.then159_crit_edge548:         ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then159

land.lhs.true141.if.then159_crit_edge:            ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then159

land.lhs.true141.if.then348_crit_edge:            ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then348

if.then159:                                       ; preds = %land.lhs.true141.if.then159_crit_edge, %land.lhs.true141.if.then159_crit_edge548, %land.lhs.true141.if.then159_crit_edge549, %land.lhs.true123.if.then159_crit_edge, %land.lhs.true123.if.then159_crit_edge547, %land.lhs.true99.if.then159_crit_edge, %land.lhs.true69.if.then159_crit_edge, %land.lhs.true63.if.then159_crit_edge, %land.lhs.true42.if.then159_crit_edge, %land.lhs.true42.if.then159_crit_edge540, %land.lhs.true42.if.then159_crit_edge541, %land.lhs.true.if.then159_crit_edge, %land.lhs.true.if.then159_crit_edge536, %land.lhs.true.if.then159_crit_edge537, %land.lhs.true.if.then159_crit_edge538, %land.lhs.true.if.then159_crit_edge539
  %ucEnableApplyAVFS_CKS_OFF_Voltage = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 24
  %44 = ptrtoint ptr %ucEnableApplyAVFS_CKS_OFF_Voltage to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %ucEnableApplyAVFS_CKS_OFF_Voltage, align 4
  %45 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev, align 4
  %device161 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %device161 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %device161, align 2
  %49 = zext i16 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.200)
  switch i16 %48, label %if.then159.if.else_crit_edge [
    i16 26607, label %land.lhs.true165
    i16 26623, label %land.lhs.true177
  ]

if.then159.if.else_crit_edge:                     ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true165:                                 ; preds = %if.then159
  %revision167 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 12
  %50 = ptrtoint ptr %revision167 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %revision167, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -27, i8 %51)
  %cmp169 = icmp eq i8 %51, -27
  br i1 %cmp169, label %land.lhs.true165.if.then183_crit_edge, label %land.lhs.true165.if.else_crit_edge

land.lhs.true165.if.else_crit_edge:               ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true165.if.then183_crit_edge:            ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then183

land.lhs.true177:                                 ; preds = %if.then159
  %revision179 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 12
  %52 = ptrtoint ptr %revision179 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %revision179, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %53)
  %cmp181 = icmp eq i8 %53, -17
  br i1 %cmp181, label %land.lhs.true177.if.then183_crit_edge, label %land.lhs.true177.if.else_crit_edge

land.lhs.true177.if.else_crit_edge:               ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true177.if.then183_crit_edge:            ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then183

if.then183:                                       ; preds = %land.lhs.true177.if.then183_crit_edge, %land.lhs.true165.if.then183_crit_edge
  %ulGB_VDROOP_TABLE_CKSOFF_a0 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 6
  %54 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSOFF_a0 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ulGB_VDROOP_TABLE_CKSOFF_a0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -363713069, i32 %55)
  %cmp184 = icmp eq i32 %55, -363713069
  br i1 %cmp184, label %land.lhs.true186, label %if.then183.if.then348_crit_edge

if.then183.if.then348_crit_edge:                  ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then348

land.lhs.true186:                                 ; preds = %if.then183
  %ulGB_VDROOP_TABLE_CKSOFF_a1 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 7
  %56 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSOFF_a1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ulGB_VDROOP_TABLE_CKSOFF_a1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 353370, i32 %57)
  %cmp187 = icmp eq i32 %57, 353370
  br i1 %cmp187, label %land.lhs.true189, label %land.lhs.true186.if.then348_crit_edge

land.lhs.true186.if.then348_crit_edge:            ; preds = %land.lhs.true186
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then348

land.lhs.true189:                                 ; preds = %land.lhs.true186
  %ulGB_VDROOP_TABLE_CKSOFF_a2 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 8
  %58 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSOFF_a2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ulGB_VDROOP_TABLE_CKSOFF_a2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 212894, i32 %59)
  %cmp190 = icmp eq i32 %59, 212894
  br i1 %cmp190, label %land.lhs.true192, label %land.lhs.true189.if.then348_crit_edge

land.lhs.true189.if.then348_crit_edge:            ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then348

land.lhs.true192:                                 ; preds = %land.lhs.true189
  %ulAVFSGB_FUSE_TABLE_CKSOFF_m1 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 12
  %60 = ptrtoint ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_m1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_m1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14900, i32 %61)
  %cmp193 = icmp eq i32 %61, -14900
  br i1 %cmp193, label %land.lhs.true195, label %land.lhs.true192.if.then348_crit_edge

land.lhs.true192.if.then348_crit_edge:            ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then348

land.lhs.true195:                                 ; preds = %land.lhs.true192
  %usAVFSGB_FUSE_TABLE_CKSOFF_m2 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 13
  %62 = ptrtoint ptr %usAVFSGB_FUSE_TABLE_CKSOFF_m2 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %usAVFSGB_FUSE_TABLE_CKSOFF_m2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6938, i16 %63)
  %cmp197 = icmp eq i16 %63, 6938
  br i1 %cmp197, label %land.lhs.true199, label %land.lhs.true195.if.then348_crit_edge

land.lhs.true195.if.then348_crit_edge:            ; preds = %land.lhs.true195
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then348

land.lhs.true199:                                 ; preds = %land.lhs.true195
  %ulAVFSGB_FUSE_TABLE_CKSOFF_b = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 14
  %64 = ptrtoint ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_b to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_b, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -787, i32 %65)
  %cmp200 = icmp eq i32 %65, -787
  br i1 %cmp200, label %if.then202, label %land.lhs.true199.if.then348_crit_edge

land.lhs.true199.if.then348_crit_edge:            ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then348

if.then202:                                       ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSOFF_a0 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -149360172, ptr %ulGB_VDROOP_TABLE_CKSOFF_a0, align 4
  %67 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSOFF_a1 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 205821, ptr %ulGB_VDROOP_TABLE_CKSOFF_a1, align 4
  %68 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSOFF_a2 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 123989, ptr %ulGB_VDROOP_TABLE_CKSOFF_a2, align 4
  %69 = ptrtoint ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_m1 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_m1, align 4
  %70 = ptrtoint ptr %usAVFSGB_FUSE_TABLE_CKSOFF_m2 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %usAVFSGB_FUSE_TABLE_CKSOFF_m2, align 4
  %71 = ptrtoint ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_b to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 35, ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_b, align 4
  br label %if.then348

if.else:                                          ; preds = %land.lhs.true177.if.else_crit_edge, %land.lhs.true165.if.else_crit_edge, %if.then159.if.else_crit_edge
  %chip_id210 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 2
  %72 = ptrtoint ptr %chip_id210 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %chip_id210, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %73)
  %cmp211 = icmp eq i32 %73, 17
  br i1 %cmp211, label %land.lhs.true213, label %if.else274

land.lhs.true213:                                 ; preds = %if.else
  %74 = zext i16 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.201)
  switch i16 %48, label %land.lhs.true213.if.then267_crit_edge [
    i16 27015, label %land.lhs.true219
    i16 27009, label %land.lhs.true249
  ]

land.lhs.true213.if.then267_crit_edge:            ; preds = %land.lhs.true213
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then267

land.lhs.true219:                                 ; preds = %land.lhs.true213
  %revision221 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 12
  %75 = ptrtoint ptr %revision221 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %revision221, align 4
  %77 = zext i8 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.202)
  switch i8 %76, label %land.lhs.true219.if.then267_crit_edge [
    i8 -64, label %land.lhs.true219.if.then348_crit_edge
    i8 -63, label %land.lhs.true219.if.then348_crit_edge550
    i8 -61, label %land.lhs.true219.if.then348_crit_edge551
    i8 -57, label %land.lhs.true219.if.then348_crit_edge552
  ]

land.lhs.true219.if.then348_crit_edge552:         ; preds = %land.lhs.true219
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then348

land.lhs.true219.if.then348_crit_edge551:         ; preds = %land.lhs.true219
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then348

land.lhs.true219.if.then348_crit_edge550:         ; preds = %land.lhs.true219
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then348

land.lhs.true219.if.then348_crit_edge:            ; preds = %land.lhs.true219
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then348

land.lhs.true219.if.then267_crit_edge:            ; preds = %land.lhs.true219
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then267

land.lhs.true249:                                 ; preds = %land.lhs.true213
  %revision251 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 12
  %78 = ptrtoint ptr %revision251 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %revision251, align 4
  %80 = zext i8 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.203)
  switch i8 %79, label %land.lhs.true249.if.then267_crit_edge [
    i8 0, label %land.lhs.true249.if.then348_crit_edge
    i8 1, label %land.lhs.true249.if.then348_crit_edge553
    i8 16, label %land.lhs.true249.if.then348_crit_edge554
  ]

land.lhs.true249.if.then348_crit_edge554:         ; preds = %land.lhs.true249
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then348

land.lhs.true249.if.then348_crit_edge553:         ; preds = %land.lhs.true249
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then348

land.lhs.true249.if.then348_crit_edge:            ; preds = %land.lhs.true249
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then348

land.lhs.true249.if.then267_crit_edge:            ; preds = %land.lhs.true249
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then267

if.then267:                                       ; preds = %land.lhs.true249.if.then267_crit_edge, %land.lhs.true219.if.then267_crit_edge, %land.lhs.true213.if.then267_crit_edge
  %ulGB_VDROOP_TABLE_CKSOFF_a0268 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 6
  %81 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSOFF_a0268 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -156228387, ptr %ulGB_VDROOP_TABLE_CKSOFF_a0268, align 4
  %ulGB_VDROOP_TABLE_CKSOFF_a1269 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 7
  %82 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSOFF_a1269 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 196702, ptr %ulGB_VDROOP_TABLE_CKSOFF_a1269, align 4
  %ulGB_VDROOP_TABLE_CKSOFF_a2270 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 8
  %83 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSOFF_a2270 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 100959, ptr %ulGB_VDROOP_TABLE_CKSOFF_a2270, align 4
  %ulAVFSGB_FUSE_TABLE_CKSOFF_m1271 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 12
  %84 = ptrtoint ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_m1271 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 789, ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_m1271, align 4
  %usAVFSGB_FUSE_TABLE_CKSOFF_m2272 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 13
  %85 = ptrtoint ptr %usAVFSGB_FUSE_TABLE_CKSOFF_m2272 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 -303, ptr %usAVFSGB_FUSE_TABLE_CKSOFF_m2272, align 4
  %ulAVFSGB_FUSE_TABLE_CKSOFF_b273 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 14
  %86 = ptrtoint ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_b273 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 59, ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_b273, align 4
  br label %if.then348

if.else274:                                       ; preds = %if.else
  %87 = zext i16 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.204)
  switch i16 %48, label %if.else274.if.then348_crit_edge [
    i16 26591, label %land.lhs.true280
    i16 28639, label %land.lhs.true316
  ]

if.else274.if.then348_crit_edge:                  ; preds = %if.else274
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then348

land.lhs.true280:                                 ; preds = %if.else274
  %revision282 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 12
  %88 = ptrtoint ptr %revision282 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %revision282, align 4
  %90 = zext i8 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.205)
  switch i8 %89, label %land.lhs.true280.if.then348_crit_edge [
    i8 -29, label %land.lhs.true280.if.then334_crit_edge
    i8 -28, label %land.lhs.true280.if.then334_crit_edge555
    i8 -27, label %land.lhs.true280.if.then334_crit_edge556
    i8 -25, label %land.lhs.true280.if.then334_crit_edge557
    i8 -17, label %land.lhs.true280.if.then334_crit_edge558
  ]

land.lhs.true280.if.then334_crit_edge558:         ; preds = %land.lhs.true280
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then334

land.lhs.true280.if.then334_crit_edge557:         ; preds = %land.lhs.true280
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then334

land.lhs.true280.if.then334_crit_edge556:         ; preds = %land.lhs.true280
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then334

land.lhs.true280.if.then334_crit_edge555:         ; preds = %land.lhs.true280
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then334

land.lhs.true280.if.then334_crit_edge:            ; preds = %land.lhs.true280
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then334

land.lhs.true280.if.then348_crit_edge:            ; preds = %land.lhs.true280
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then348

land.lhs.true316:                                 ; preds = %if.else274
  %revision318 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 12
  %91 = ptrtoint ptr %revision318 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %revision318, align 4
  %93 = zext i8 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.206)
  switch i8 %92, label %land.lhs.true316.if.then348_crit_edge [
    i8 -25, label %land.lhs.true316.if.then334_crit_edge
    i8 -17, label %land.lhs.true316.if.then334_crit_edge559
    i8 -1, label %land.lhs.true316.if.then334_crit_edge560
  ]

land.lhs.true316.if.then334_crit_edge560:         ; preds = %land.lhs.true316
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then334

land.lhs.true316.if.then334_crit_edge559:         ; preds = %land.lhs.true316
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then334

land.lhs.true316.if.then334_crit_edge:            ; preds = %land.lhs.true316
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then334

land.lhs.true316.if.then348_crit_edge:            ; preds = %land.lhs.true316
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then348

if.then334:                                       ; preds = %land.lhs.true316.if.then334_crit_edge, %land.lhs.true316.if.then334_crit_edge559, %land.lhs.true316.if.then334_crit_edge560, %land.lhs.true280.if.then334_crit_edge, %land.lhs.true280.if.then334_crit_edge555, %land.lhs.true280.if.then334_crit_edge556, %land.lhs.true280.if.then334_crit_edge557, %land.lhs.true280.if.then334_crit_edge558
  %ulGB_VDROOP_TABLE_CKSOFF_a0335 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 6
  %94 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSOFF_a0335 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -129780117, ptr %ulGB_VDROOP_TABLE_CKSOFF_a0335, align 4
  %ulGB_VDROOP_TABLE_CKSOFF_a1336 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 7
  %95 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSOFF_a1336 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 367797, ptr %ulGB_VDROOP_TABLE_CKSOFF_a1336, align 4
  %ulGB_VDROOP_TABLE_CKSOFF_a2337 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 8
  %96 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSOFF_a2337 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 -55169, ptr %ulGB_VDROOP_TABLE_CKSOFF_a2337, align 4
  %ulAVFSGB_FUSE_TABLE_CKSOFF_m1338 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 12
  %97 = ptrtoint ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_m1338 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_m1338, align 4
  %usAVFSGB_FUSE_TABLE_CKSOFF_m2339 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 13
  %98 = ptrtoint ptr %usAVFSGB_FUSE_TABLE_CKSOFF_m2339 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 -221, ptr %usAVFSGB_FUSE_TABLE_CKSOFF_m2339, align 4
  %ulAVFSGB_FUSE_TABLE_CKSOFF_b340 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 14
  %99 = ptrtoint ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_b340 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 88, ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_b340, align 4
  br label %if.then348

if.then348:                                       ; preds = %if.then334, %land.lhs.true316.if.then348_crit_edge, %land.lhs.true280.if.then348_crit_edge, %if.else274.if.then348_crit_edge, %if.then267, %land.lhs.true249.if.then348_crit_edge, %land.lhs.true249.if.then348_crit_edge553, %land.lhs.true249.if.then348_crit_edge554, %land.lhs.true219.if.then348_crit_edge, %land.lhs.true219.if.then348_crit_edge550, %land.lhs.true219.if.then348_crit_edge551, %land.lhs.true219.if.then348_crit_edge552, %if.then202, %land.lhs.true199.if.then348_crit_edge, %land.lhs.true195.if.then348_crit_edge, %land.lhs.true192.if.then348_crit_edge, %land.lhs.true189.if.then348_crit_edge, %land.lhs.true186.if.then348_crit_edge, %if.then183.if.then348_crit_edge, %land.lhs.true141.if.then348_crit_edge, %land.lhs.true123.if.then348_crit_edge, %lor.lhs.false117.if.then348_crit_edge, %land.lhs.true99.if.then348_crit_edge, %land.lhs.true99.if.then348_crit_edge545, %land.lhs.true99.if.then348_crit_edge546, %land.lhs.true69.if.then348_crit_edge, %land.lhs.true69.if.then348_crit_edge542, %land.lhs.true69.if.then348_crit_edge543, %land.lhs.true69.if.then348_crit_edge544
  %ulGB_VDROOP_TABLE_CKSON_a0 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 9
  %100 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSON_a0 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ulGB_VDROOP_TABLE_CKSON_a0, align 4
  %BTCGB_VDROOP_TABLE = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 99
  %102 = ptrtoint ptr %BTCGB_VDROOP_TABLE to i32
  call void @__asan_storeN_noabort(i32 %102, i32 4)
  store i32 %101, ptr %BTCGB_VDROOP_TABLE, align 1
  %ulGB_VDROOP_TABLE_CKSON_a1 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 10
  %103 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSON_a1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ulGB_VDROOP_TABLE_CKSON_a1, align 4
  %a1 = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 99, i32 0, i32 1
  %105 = ptrtoint ptr %a1 to i32
  call void @__asan_storeN_noabort(i32 %105, i32 4)
  store i32 %104, ptr %a1, align 1
  %ulGB_VDROOP_TABLE_CKSON_a2 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 11
  %106 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSON_a2 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ulGB_VDROOP_TABLE_CKSON_a2, align 4
  %a2 = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 99, i32 0, i32 2
  %108 = ptrtoint ptr %a2 to i32
  call void @__asan_storeN_noabort(i32 %108, i32 4)
  store i32 %107, ptr %a2, align 1
  %ulGB_VDROOP_TABLE_CKSOFF_a0353 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 6
  %109 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSOFF_a0353 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %ulGB_VDROOP_TABLE_CKSOFF_a0353, align 4
  %arrayidx355 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 99, i32 1
  %111 = ptrtoint ptr %arrayidx355 to i32
  call void @__asan_storeN_noabort(i32 %111, i32 4)
  store i32 %110, ptr %arrayidx355, align 1
  %ulGB_VDROOP_TABLE_CKSOFF_a1357 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 7
  %112 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSOFF_a1357 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ulGB_VDROOP_TABLE_CKSOFF_a1357, align 4
  %a1360 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 99, i32 1, i32 1
  %114 = ptrtoint ptr %a1360 to i32
  call void @__asan_storeN_noabort(i32 %114, i32 4)
  store i32 %113, ptr %a1360, align 1
  %ulGB_VDROOP_TABLE_CKSOFF_a2361 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 8
  %115 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSOFF_a2361 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ulGB_VDROOP_TABLE_CKSOFF_a2361, align 4
  %a2364 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 99, i32 1, i32 2
  %117 = ptrtoint ptr %a2364 to i32
  call void @__asan_storeN_noabort(i32 %117, i32 4)
  store i32 %116, ptr %a2364, align 1
  %ulAVFSGB_FUSE_TABLE_CKSON_m1 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 15
  %118 = ptrtoint ptr %ulAVFSGB_FUSE_TABLE_CKSON_m1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ulAVFSGB_FUSE_TABLE_CKSON_m1, align 4
  %AVFSGB_VDROOP_TABLE = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 100
  %120 = ptrtoint ptr %AVFSGB_VDROOP_TABLE to i32
  call void @__asan_storeN_noabort(i32 %120, i32 4)
  store i32 %119, ptr %AVFSGB_VDROOP_TABLE, align 1
  %usAVFSGB_FUSE_TABLE_CKSON_m2 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 16
  %121 = ptrtoint ptr %usAVFSGB_FUSE_TABLE_CKSON_m2 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %usAVFSGB_FUSE_TABLE_CKSON_m2, align 4
  %m2 = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 100, i32 0, i32 2
  %123 = ptrtoint ptr %m2 to i32
  call void @__asan_storeN_noabort(i32 %123, i32 2)
  store i16 %122, ptr %m2, align 1
  %ulAVFSGB_FUSE_TABLE_CKSON_b = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 17
  %124 = ptrtoint ptr %ulAVFSGB_FUSE_TABLE_CKSON_b to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %ulAVFSGB_FUSE_TABLE_CKSON_b, align 4
  %b = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 100, i32 0, i32 1
  %126 = ptrtoint ptr %b to i32
  call void @__asan_storeN_noabort(i32 %126, i32 4)
  store i32 %125, ptr %b, align 1
  %m1_shift = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 100, i32 0, i32 3
  %127 = ptrtoint ptr %m1_shift to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 24, ptr %m1_shift, align 1
  %m2_shift = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 100, i32 0, i32 4
  %128 = ptrtoint ptr %m2_shift to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 12, ptr %m2_shift, align 1
  %ulAVFSGB_FUSE_TABLE_CKSOFF_m1374 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 12
  %129 = ptrtoint ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_m1374 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_m1374, align 4
  %arrayidx376 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 100, i32 1
  %131 = ptrtoint ptr %arrayidx376 to i32
  call void @__asan_storeN_noabort(i32 %131, i32 4)
  store i32 %130, ptr %arrayidx376, align 1
  %usAVFSGB_FUSE_TABLE_CKSOFF_m2378 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 13
  %132 = ptrtoint ptr %usAVFSGB_FUSE_TABLE_CKSOFF_m2378 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %usAVFSGB_FUSE_TABLE_CKSOFF_m2378, align 4
  %m2381 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 100, i32 1, i32 2
  %134 = ptrtoint ptr %m2381 to i32
  call void @__asan_storeN_noabort(i32 %134, i32 2)
  store i16 %133, ptr %m2381, align 1
  %ulAVFSGB_FUSE_TABLE_CKSOFF_b382 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 14
  %135 = ptrtoint ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_b382 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_b382, align 4
  %b385 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 100, i32 1, i32 1
  %137 = ptrtoint ptr %b385 to i32
  call void @__asan_storeN_noabort(i32 %137, i32 4)
  store i32 %136, ptr %b385, align 1
  %m1_shift388 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 100, i32 1, i32 3
  %138 = ptrtoint ptr %m1_shift388 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 24, ptr %m1_shift388, align 1
  %m2_shift391 = getelementptr %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 100, i32 1, i32 4
  %139 = ptrtoint ptr %m2_shift391 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 12, ptr %m2_shift391, align 1
  %usMaxVoltage_0_25mv = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 18
  %140 = ptrtoint ptr %usMaxVoltage_0_25mv to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %usMaxVoltage_0_25mv, align 4
  %MaxVoltage = getelementptr inbounds %struct.polaris10_smumgr, ptr %3, i32 0, i32 2, i32 31
  %142 = ptrtoint ptr %MaxVoltage to i32
  call void @__asan_storeN_noabort(i32 %142, i32 2)
  store i16 %141, ptr %MaxVoltage, align 1
  %143 = ptrtoint ptr %avfs_params to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %avfs_params, align 4
  %145 = ptrtoint ptr %AVFS_meanNsigma to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %AVFS_meanNsigma, align 4
  %ulAVFS_meanNsigma_Acontant1 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 1
  %146 = ptrtoint ptr %ulAVFS_meanNsigma_Acontant1 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %ulAVFS_meanNsigma_Acontant1, align 4
  %arrayidx394 = getelementptr inbounds [3 x i32], ptr %AVFS_meanNsigma, i32 0, i32 1
  %148 = ptrtoint ptr %arrayidx394 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %arrayidx394, align 4
  %ulAVFS_meanNsigma_Acontant2 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 2
  %149 = ptrtoint ptr %ulAVFS_meanNsigma_Acontant2 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %ulAVFS_meanNsigma_Acontant2, align 4
  %arrayidx396 = getelementptr inbounds [3 x i32], ptr %AVFS_meanNsigma, i32 0, i32 2
  %151 = ptrtoint ptr %arrayidx396 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %arrayidx396, align 4
  %usAVFS_meanNsigma_DC_tol_sigma = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 3
  %152 = ptrtoint ptr %usAVFS_meanNsigma_DC_tol_sigma to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %usAVFS_meanNsigma_DC_tol_sigma, align 4
  %DC_tol_sigma = getelementptr inbounds %struct.AVFS_meanNsigma_t, ptr %AVFS_meanNsigma, i32 0, i32 1
  %154 = ptrtoint ptr %DC_tol_sigma to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %153, ptr %DC_tol_sigma, align 4
  %usAVFS_meanNsigma_Platform_mean = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 4
  %155 = ptrtoint ptr %usAVFS_meanNsigma_Platform_mean to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %usAVFS_meanNsigma_Platform_mean, align 2
  %Platform_mean = getelementptr inbounds %struct.AVFS_meanNsigma_t, ptr %AVFS_meanNsigma, i32 0, i32 2
  %157 = ptrtoint ptr %Platform_mean to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %156, ptr %Platform_mean, align 2
  %usPSM_Age_ComFactor = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 23
  %158 = ptrtoint ptr %usPSM_Age_ComFactor to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %usPSM_Age_ComFactor, align 2
  %PSM_Age_CompFactor = getelementptr inbounds %struct.AVFS_meanNsigma_t, ptr %AVFS_meanNsigma, i32 0, i32 4
  %160 = ptrtoint ptr %PSM_Age_CompFactor to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %159, ptr %PSM_Age_CompFactor, align 2
  %usAVFS_meanNsigma_Platform_sigma = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 5
  %161 = ptrtoint ptr %usAVFS_meanNsigma_Platform_sigma to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %usAVFS_meanNsigma_Platform_sigma, align 4
  %Platform_sigma = getelementptr inbounds %struct.AVFS_meanNsigma_t, ptr %AVFS_meanNsigma, i32 0, i32 3
  %163 = ptrtoint ptr %Platform_sigma to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %162, ptr %Platform_sigma, align 4
  %cks_voffset = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %11, i32 0, i32 1, i32 0, i32 11
  %164 = ptrtoint ptr %cks_voffset to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %cks_voffset, align 4
  %conv400 = zext i8 %165 to i16
  %mul = mul nuw nsw i16 %conv400, 100
  %div = udiv i16 %mul, 625
  %conv401 = trunc i16 %div to i8
  %arrayidx402 = getelementptr inbounds %struct.AVFS_meanNsigma_t, ptr %AVFS_meanNsigma, i32 0, i32 5, i32 0
  %166 = ptrtoint ptr %arrayidx402 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %conv401, ptr %arrayidx402, align 4
  %sclk_offset = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %11, i32 0, i32 1, i32 0, i32 12
  %167 = ptrtoint ptr %sclk_offset to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %sclk_offset, align 4
  %169 = trunc i32 %168 to i16
  %div407534 = udiv i16 %169, 100
  %170 = ptrtoint ptr %AVFS_SclkOffset to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %div407534, ptr %AVFS_SclkOffset, align 2
  %cks_voffset.1 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %11, i32 0, i32 1, i32 1, i32 11
  %171 = ptrtoint ptr %cks_voffset.1 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %cks_voffset.1, align 4
  %conv400.1 = zext i8 %172 to i16
  %mul.1 = mul nuw nsw i16 %conv400.1, 100
  %div.1 = udiv i16 %mul.1, 625
  %conv401.1 = trunc i16 %div.1 to i8
  %arrayidx402.1 = getelementptr inbounds %struct.AVFS_meanNsigma_t, ptr %AVFS_meanNsigma, i32 0, i32 5, i32 1
  %173 = ptrtoint ptr %arrayidx402.1 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %conv401.1, ptr %arrayidx402.1, align 1
  %sclk_offset.1 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %11, i32 0, i32 1, i32 1, i32 12
  %174 = ptrtoint ptr %sclk_offset.1 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %sclk_offset.1, align 4
  %176 = trunc i32 %175 to i16
  %div407534.1 = udiv i16 %176, 100
  %arrayidx409.1 = getelementptr inbounds [8 x i16], ptr %AVFS_SclkOffset, i32 0, i32 1
  %177 = ptrtoint ptr %arrayidx409.1 to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %div407534.1, ptr %arrayidx409.1, align 2
  %cks_voffset.2 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %11, i32 0, i32 1, i32 2, i32 11
  %178 = ptrtoint ptr %cks_voffset.2 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %cks_voffset.2, align 4
  %conv400.2 = zext i8 %179 to i16
  %mul.2 = mul nuw nsw i16 %conv400.2, 100
  %div.2 = udiv i16 %mul.2, 625
  %conv401.2 = trunc i16 %div.2 to i8
  %arrayidx402.2 = getelementptr inbounds %struct.AVFS_meanNsigma_t, ptr %AVFS_meanNsigma, i32 0, i32 5, i32 2
  %180 = ptrtoint ptr %arrayidx402.2 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %conv401.2, ptr %arrayidx402.2, align 2
  %sclk_offset.2 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %11, i32 0, i32 1, i32 2, i32 12
  %181 = ptrtoint ptr %sclk_offset.2 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %sclk_offset.2, align 4
  %183 = trunc i32 %182 to i16
  %div407534.2 = udiv i16 %183, 100
  %arrayidx409.2 = getelementptr inbounds [8 x i16], ptr %AVFS_SclkOffset, i32 0, i32 2
  %184 = ptrtoint ptr %arrayidx409.2 to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %div407534.2, ptr %arrayidx409.2, align 2
  %cks_voffset.3 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %11, i32 0, i32 1, i32 3, i32 11
  %185 = ptrtoint ptr %cks_voffset.3 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %cks_voffset.3, align 4
  %conv400.3 = zext i8 %186 to i16
  %mul.3 = mul nuw nsw i16 %conv400.3, 100
  %div.3 = udiv i16 %mul.3, 625
  %conv401.3 = trunc i16 %div.3 to i8
  %arrayidx402.3 = getelementptr inbounds %struct.AVFS_meanNsigma_t, ptr %AVFS_meanNsigma, i32 0, i32 5, i32 3
  %187 = ptrtoint ptr %arrayidx402.3 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %conv401.3, ptr %arrayidx402.3, align 1
  %sclk_offset.3 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %11, i32 0, i32 1, i32 3, i32 12
  %188 = ptrtoint ptr %sclk_offset.3 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %sclk_offset.3, align 4
  %190 = trunc i32 %189 to i16
  %div407534.3 = udiv i16 %190, 100
  %arrayidx409.3 = getelementptr inbounds [8 x i16], ptr %AVFS_SclkOffset, i32 0, i32 3
  %191 = ptrtoint ptr %arrayidx409.3 to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %div407534.3, ptr %arrayidx409.3, align 2
  %cks_voffset.4 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %11, i32 0, i32 1, i32 4, i32 11
  %192 = ptrtoint ptr %cks_voffset.4 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %cks_voffset.4, align 4
  %conv400.4 = zext i8 %193 to i16
  %mul.4 = mul nuw nsw i16 %conv400.4, 100
  %div.4 = udiv i16 %mul.4, 625
  %conv401.4 = trunc i16 %div.4 to i8
  %arrayidx402.4 = getelementptr inbounds %struct.AVFS_meanNsigma_t, ptr %AVFS_meanNsigma, i32 0, i32 5, i32 4
  %194 = ptrtoint ptr %arrayidx402.4 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %conv401.4, ptr %arrayidx402.4, align 4
  %sclk_offset.4 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %11, i32 0, i32 1, i32 4, i32 12
  %195 = ptrtoint ptr %sclk_offset.4 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %sclk_offset.4, align 4
  %197 = trunc i32 %196 to i16
  %div407534.4 = udiv i16 %197, 100
  %arrayidx409.4 = getelementptr inbounds [8 x i16], ptr %AVFS_SclkOffset, i32 0, i32 4
  %198 = ptrtoint ptr %arrayidx409.4 to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %div407534.4, ptr %arrayidx409.4, align 2
  %cks_voffset.5 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %11, i32 0, i32 1, i32 5, i32 11
  %199 = ptrtoint ptr %cks_voffset.5 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %cks_voffset.5, align 4
  %conv400.5 = zext i8 %200 to i16
  %mul.5 = mul nuw nsw i16 %conv400.5, 100
  %div.5 = udiv i16 %mul.5, 625
  %conv401.5 = trunc i16 %div.5 to i8
  %arrayidx402.5 = getelementptr inbounds %struct.AVFS_meanNsigma_t, ptr %AVFS_meanNsigma, i32 0, i32 5, i32 5
  %201 = ptrtoint ptr %arrayidx402.5 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %conv401.5, ptr %arrayidx402.5, align 1
  %sclk_offset.5 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %11, i32 0, i32 1, i32 5, i32 12
  %202 = ptrtoint ptr %sclk_offset.5 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %sclk_offset.5, align 4
  %204 = trunc i32 %203 to i16
  %div407534.5 = udiv i16 %204, 100
  %arrayidx409.5 = getelementptr inbounds [8 x i16], ptr %AVFS_SclkOffset, i32 0, i32 5
  %205 = ptrtoint ptr %arrayidx409.5 to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 %div407534.5, ptr %arrayidx409.5, align 2
  %cks_voffset.6 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %11, i32 0, i32 1, i32 6, i32 11
  %206 = ptrtoint ptr %cks_voffset.6 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %cks_voffset.6, align 4
  %conv400.6 = zext i8 %207 to i16
  %mul.6 = mul nuw nsw i16 %conv400.6, 100
  %div.6 = udiv i16 %mul.6, 625
  %conv401.6 = trunc i16 %div.6 to i8
  %arrayidx402.6 = getelementptr inbounds %struct.AVFS_meanNsigma_t, ptr %AVFS_meanNsigma, i32 0, i32 5, i32 6
  %208 = ptrtoint ptr %arrayidx402.6 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %conv401.6, ptr %arrayidx402.6, align 2
  %sclk_offset.6 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %11, i32 0, i32 1, i32 6, i32 12
  %209 = ptrtoint ptr %sclk_offset.6 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %sclk_offset.6, align 4
  %211 = trunc i32 %210 to i16
  %div407534.6 = udiv i16 %211, 100
  %arrayidx409.6 = getelementptr inbounds [8 x i16], ptr %AVFS_SclkOffset, i32 0, i32 6
  %212 = ptrtoint ptr %arrayidx409.6 to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 %div407534.6, ptr %arrayidx409.6, align 2
  %cks_voffset.7 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %11, i32 0, i32 1, i32 7, i32 11
  %213 = ptrtoint ptr %cks_voffset.7 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %cks_voffset.7, align 4
  %conv400.7 = zext i8 %214 to i16
  %mul.7 = mul nuw nsw i16 %conv400.7, 100
  %div.7 = udiv i16 %mul.7, 625
  %conv401.7 = trunc i16 %div.7 to i8
  %arrayidx402.7 = getelementptr inbounds %struct.AVFS_meanNsigma_t, ptr %AVFS_meanNsigma, i32 0, i32 5, i32 7
  %215 = ptrtoint ptr %arrayidx402.7 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %conv401.7, ptr %arrayidx402.7, align 1
  %sclk_offset.7 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %11, i32 0, i32 1, i32 7, i32 12
  %216 = ptrtoint ptr %sclk_offset.7 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %sclk_offset.7, align 4
  %218 = trunc i32 %217 to i16
  %div407534.7 = udiv i16 %218, 100
  %arrayidx409.7 = getelementptr inbounds [8 x i16], ptr %AVFS_SclkOffset, i32 0, i32 7
  %219 = ptrtoint ptr %arrayidx409.7 to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 %div407534.7, ptr %arrayidx409.7, align 2
  %call410 = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131176, ptr noundef nonnull %tmp, i32 noundef 262144) #7
  %220 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %tmp, align 4
  %call411 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %221, ptr noundef nonnull %AVFS_meanNsigma, i32 noundef 28, i32 noundef 262144) #7
  %call412 = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131180, ptr noundef nonnull %tmp, i32 noundef 262144) #7
  %222 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %tmp, align 4
  %call413 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %223, ptr noundef nonnull %AVFS_SclkOffset, i32 noundef 16, i32 noundef 262144) #7
  %ucEnableGB_VDROOP_TABLE_CKSON = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 20
  %224 = ptrtoint ptr %ucEnableGB_VDROOP_TABLE_CKSON to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %ucEnableGB_VDROOP_TABLE_CKSON, align 1
  %conv414 = zext i8 %225 to i32
  %ucEnableGB_VDROOP_TABLE_CKSOFF = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 19
  %226 = ptrtoint ptr %ucEnableGB_VDROOP_TABLE_CKSOFF to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %ucEnableGB_VDROOP_TABLE_CKSOFF, align 2
  %conv415 = zext i8 %227 to i32
  %shl416 = shl nuw nsw i32 %conv415, 1
  %or = or i32 %shl416, %conv414
  %ucEnableGB_FUSE_TABLE_CKSON = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 22
  %228 = ptrtoint ptr %ucEnableGB_FUSE_TABLE_CKSON to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %ucEnableGB_FUSE_TABLE_CKSON, align 1
  %conv417 = zext i8 %229 to i32
  %shl418 = shl nuw nsw i32 %conv417, 2
  %or419 = or i32 %or, %shl418
  %ucEnableGB_FUSE_TABLE_CKSOFF = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 21
  %230 = ptrtoint ptr %ucEnableGB_FUSE_TABLE_CKSOFF to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %ucEnableGB_FUSE_TABLE_CKSOFF, align 4
  %conv420 = zext i8 %231 to i32
  %shl421 = shl nuw nsw i32 %conv420, 3
  %or422 = or i32 %or419, %shl421
  %avfs_vdroop_override_setting = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 95
  %232 = ptrtoint ptr %avfs_vdroop_override_setting to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %or422, ptr %avfs_vdroop_override_setting, align 4
  %ucEnableApplyAVFS_CKS_OFF_Voltage423 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 24
  %233 = ptrtoint ptr %ucEnableApplyAVFS_CKS_OFF_Voltage423 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %ucEnableApplyAVFS_CKS_OFF_Voltage423, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %234)
  %cmp425 = icmp eq i8 %234, 1
  %apply_avfs_cks_off_voltage = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 96
  %frombool = zext i1 %cmp425 to i8
  %235 = ptrtoint ptr %apply_avfs_cks_off_voltage to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %frombool, ptr %apply_avfs_cks_off_voltage, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then348, %if.end4.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %entry.cleanup_crit_edge ], [ %call412, %if.then348 ], [ %call, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %AVFS_SclkOffset) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %AVFS_meanNsigma) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %avfs_params) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @polaris10_populate_vr_config(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef %table) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  %VRConfig = getelementptr inbounds %struct.SMU74_Discrete_DpmTable, ptr %table, i32 0, i32 4
  %4 = ptrtoint ptr %VRConfig to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %VRConfig, align 1
  %voltage_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %voltage_control to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %voltage_control, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.207)
  switch i32 %7, label %do.body [
    i32 2, label %if.then
    i32 1, label %if.then8
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or4 = or i32 %5, 1
  %9 = ptrtoint ptr %VRConfig to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %or4, ptr %VRConfig, align 1
  br label %if.end19

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or11 = or i32 %5, 3
  %10 = ptrtoint ptr %VRConfig to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %or11, ptr %VRConfig, align 1
  br label %if.end19

do.body:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @polaris10_populate_vr_config._rs, ptr noundef nonnull @__func__.polaris10_populate_vr_config) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.if.end19_crit_edge, label %do.end

do.body.if.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.130) #11
  br label %if.end19

if.end19:                                         ; preds = %do.end, %do.body.if.end19_crit_edge, %if.then8, %if.then
  %vddci_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 40
  %11 = ptrtoint ptr %vddci_control to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vddci_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp20 = icmp eq i32 %12, 2
  br i1 %cmp20, label %if.then22, label %if.else27

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %VRConfig to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %VRConfig, align 1
  %or26 = or i32 %14, 131072
  br label %if.end42

if.else27:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp29 = icmp eq i32 %12, 1
  %15 = ptrtoint ptr %VRConfig to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %VRConfig, align 1
  br i1 %cmp29, label %if.then31, label %if.else36

if.then31:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #9
  %or35 = or i32 %16, 196608
  br label %if.end42

if.else36:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #9
  %or40 = or i32 %16, 327680
  br label %if.end42

if.end42:                                         ; preds = %if.else36, %if.then31, %if.then22
  %or35.sink = phi i32 [ %or35, %if.then31 ], [ %or40, %if.else36 ], [ %or26, %if.then22 ]
  %17 = ptrtoint ptr %VRConfig to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %or35.sink, ptr %VRConfig, align 1
  %mvdd_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 23
  %18 = ptrtoint ptr %mvdd_control to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mvdd_control, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.208)
  switch i32 %19, label %if.else77 [
    i32 2, label %if.then45
    i32 1, label %if.then65
  ]

if.then45:                                        ; preds = %if.end42
  %21 = ptrtoint ptr %VRConfig to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %VRConfig, align 1
  br i1 %cmp20, label %if.else55, label %if.then49

if.then49:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  %or53 = or i32 %22, 33554432
  %23 = ptrtoint ptr %VRConfig to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %or53, ptr %VRConfig, align 1
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %write_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %write_ind_register to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_ind_register, align 4
  %soft_regs_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 3
  %30 = ptrtoint ptr %soft_regs_start to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %soft_regs_start, align 4
  %add = add i32 %31, 112
  tail call void %29(ptr noundef %25, i32 noundef 1, i32 noundef %add, i32 noundef 1) #7
  br label %if.end83

if.else55:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  %or59 = or i32 %22, 83886080
  %32 = ptrtoint ptr %VRConfig to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %or59, ptr %VRConfig, align 1
  br label %if.end83

if.then65:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %VRConfig to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %VRConfig, align 1
  %or69 = or i32 %34, 67108864
  store i32 %or69, ptr %VRConfig, align 1
  %device70 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %35 = ptrtoint ptr %device70 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device70, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %write_ind_register72 = getelementptr inbounds %struct.cgs_ops, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %write_ind_register72 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_ind_register72, align 4
  %soft_regs_start75 = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 3
  %41 = ptrtoint ptr %soft_regs_start75 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %soft_regs_start75, align 4
  %add76 = add i32 %42, 112
  tail call void %40(ptr noundef %36, i32 noundef 1, i32 noundef %add76, i32 noundef 1) #7
  br label %if.end83

if.else77:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %VRConfig to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %VRConfig, align 1
  %or81 = or i32 %44, 83886080
  store i32 %or81, ptr %VRConfig, align 1
  br label %if.end83

if.end83:                                         ; preds = %if.else77, %if.then65, %if.else55, %if.then49
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @atomctrl_get_pp_assign_pin(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_dfs_pll_dividers_vi(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @polaris10_populate_pm_fuses(ptr noundef %hwmgr) unnamed_addr #0 align 64 {
entry:
  %temp.i = alloca i32, align 4
  %pm_fuse_table_offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pm_fuse_table_offset) #7
  %2 = ptrtoint ptr %pm_fuse_table_offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pm_fuse_table_offset, align 4, !annotation !349
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %call1 = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131148, ptr noundef nonnull %pm_fuse_table_offset, i32 noundef 262144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end10, label %do.body

do.body:                                          ; preds = %if.then
  %call3 = call i32 @___ratelimit(ptr noundef nonnull @polaris10_populate_pm_fuses._rs, ptr noundef nonnull @__func__.polaris10_populate_pm_fuses) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.then
  %5 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smu_backend, align 4
  %power_tune_defaults.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %power_tune_defaults.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %power_tune_defaults.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4
  %SviLoadLineEn1.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %6, i32 0, i32 4, i32 3
  %11 = ptrtoint ptr %SviLoadLineEn1.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %SviLoadLineEn1.i, align 1
  %SviLoadLineVddC.i = getelementptr inbounds %struct.polaris10_pt_defaults, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %SviLoadLineVddC.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %SviLoadLineVddC.i, align 1
  %SviLoadLineVddC3.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %6, i32 0, i32 4, i32 4
  %14 = ptrtoint ptr %SviLoadLineVddC3.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %SviLoadLineVddC3.i, align 1
  %SviLoadLineTrimVddC.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %6, i32 0, i32 4, i32 5
  %15 = ptrtoint ptr %SviLoadLineTrimVddC.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %SviLoadLineTrimVddC.i, align 1
  %SviLoadLineOffsetVddC.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %6, i32 0, i32 4, i32 6
  %16 = ptrtoint ptr %SviLoadLineOffsetVddC.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %SviLoadLineOffsetVddC.i, align 1
  %17 = load ptr, ptr %smu_backend, align 4
  %pptable.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %18 = ptrtoint ptr %pptable.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pptable.i, align 4
  %power_tune_defaults.i151 = getelementptr inbounds %struct.polaris10_smumgr, ptr %17, i32 0, i32 7
  %20 = ptrtoint ptr %power_tune_defaults.i151 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %power_tune_defaults.i151, align 8
  %cac_dtp_table.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %19, i32 0, i32 12
  %22 = ptrtoint ptr %cac_dtp_table.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cac_dtp_table.i, align 4
  %usTDC.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %usTDC.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %usTDC.i, align 4
  %mul.i = shl i16 %25, 7
  %TDC_VDDC_PkgLimit.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %17, i32 0, i32 4, i32 7
  %26 = ptrtoint ptr %TDC_VDDC_PkgLimit.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %mul.i, ptr %TDC_VDDC_PkgLimit.i, align 1
  %TDC_VDDC_ThrottleReleaseLimitPerc.i = getelementptr inbounds %struct.polaris10_pt_defaults, ptr %21, i32 0, i32 2
  %27 = ptrtoint ptr %TDC_VDDC_ThrottleReleaseLimitPerc.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %TDC_VDDC_ThrottleReleaseLimitPerc.i, align 2
  %TDC_VDDC_ThrottleReleaseLimitPerc3.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %17, i32 0, i32 4, i32 8
  %29 = ptrtoint ptr %TDC_VDDC_ThrottleReleaseLimitPerc3.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %TDC_VDDC_ThrottleReleaseLimitPerc3.i, align 1
  %TDC_MAWt.i = getelementptr inbounds %struct.polaris10_pt_defaults, ptr %21, i32 0, i32 3
  %30 = ptrtoint ptr %TDC_MAWt.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %TDC_MAWt.i, align 1
  %TDC_MAWt5.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %17, i32 0, i32 4, i32 9
  %32 = ptrtoint ptr %TDC_MAWt5.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %TDC_MAWt5.i, align 1
  %33 = ptrtoint ptr %pm_fuse_table_offset to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pm_fuse_table_offset, align 4
  %35 = load ptr, ptr %smu_backend, align 4
  %power_tune_defaults.i153 = getelementptr inbounds %struct.polaris10_smumgr, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %power_tune_defaults.i153 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %power_tune_defaults.i153, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #7
  %38 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %temp.i, align 4, !annotation !349
  %add.i = add i32 %34, 32
  %call.i = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef %add.i, ptr noundef nonnull %temp.i, i32 noundef 262144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end58, label %do.body.i

do.body.i:                                        ; preds = %if.end10
  %call1.i = call i32 @___ratelimit(ptr noundef nonnull @polaris10_populate_dw8._rs, ptr noundef nonnull @__func__.polaris10_populate_dw8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body.i.do.body46_crit_edge, label %do.end.i

do.body.i.do.body46_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body46

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.164) #11
  br label %do.body46

do.body46:                                        ; preds = %do.end.i, %do.body.i.do.body46_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #7
  %call47 = call i32 @___ratelimit(ptr noundef nonnull @polaris10_populate_pm_fuses._rs.140, ptr noundef nonnull @__func__.polaris10_populate_pm_fuses) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %do.body46.cleanup_crit_edge, label %do.body46.cleanup.sink.split_crit_edge

do.body46.cleanup.sink.split_crit_edge:           ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.body46.cleanup_crit_edge:                      ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end58:                                         ; preds = %if.end10
  %TdcWaterfallCtl.i = getelementptr inbounds %struct.polaris10_pt_defaults, ptr %37, i32 0, i32 4
  %39 = ptrtoint ptr %TdcWaterfallCtl.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %TdcWaterfallCtl.i, align 4
  %TdcWaterfallCtl8.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %35, i32 0, i32 4, i32 10
  %41 = ptrtoint ptr %TdcWaterfallCtl8.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %TdcWaterfallCtl8.i, align 1
  %42 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %temp.i, align 4
  %shr.i = lshr i32 %43, 16
  %conv.i = trunc i32 %shr.i to i8
  %LPMLTemperatureMin.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %35, i32 0, i32 4, i32 11
  %44 = ptrtoint ptr %LPMLTemperatureMin.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv.i, ptr %LPMLTemperatureMin.i, align 1
  %shr10.i = lshr i32 %43, 8
  %conv12.i = trunc i32 %shr10.i to i8
  %LPMLTemperatureMax.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %35, i32 0, i32 4, i32 12
  %45 = ptrtoint ptr %LPMLTemperatureMax.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv12.i, ptr %LPMLTemperatureMax.i, align 1
  %conv15.i = trunc i32 %43 to i8
  %Reserved.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %35, i32 0, i32 4, i32 13
  %46 = ptrtoint ptr %Reserved.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv15.i, ptr %Reserved.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #7
  %47 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %smu_backend, align 4
  %uglygep.i = getelementptr i8, ptr %48, i32 2025
  %49 = call ptr @memset(ptr %uglygep.i, i32 0, i32 16)
  %50 = load ptr, ptr %smu_backend, align 4
  %usFanOutputSensitivity.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 14
  %51 = ptrtoint ptr %usFanOutputSensitivity.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %usFanOutputSensitivity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %52)
  %53 = icmp slt i16 %52, 1
  br i1 %53, label %if.then.i, label %if.end58.polaris10_populate_fuzzy_fan.exit_crit_edge

if.end58.polaris10_populate_fuzzy_fan.exit_crit_edge: ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %polaris10_populate_fuzzy_fan.exit

if.then.i:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %usDefaultFanOutputSensitivity.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 15
  %54 = ptrtoint ptr %usDefaultFanOutputSensitivity.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %usDefaultFanOutputSensitivity.i, align 2
  %56 = ptrtoint ptr %usFanOutputSensitivity.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %usFanOutputSensitivity.i, align 4
  br label %polaris10_populate_fuzzy_fan.exit

polaris10_populate_fuzzy_fan.exit:                ; preds = %if.then.i, %if.end58.polaris10_populate_fuzzy_fan.exit_crit_edge
  %57 = ptrtoint ptr %usFanOutputSensitivity.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %usFanOutputSensitivity.i, align 4
  %FuzzyFan_PwmSetDelta.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %50, i32 0, i32 4, i32 17
  %59 = ptrtoint ptr %FuzzyFan_PwmSetDelta.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 %58, ptr %FuzzyFan_PwmSetDelta.i, align 1
  %60 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %smu_backend, align 4
  %uglygep.i157 = getelementptr i8, ptr %61, i32 2049
  %62 = call ptr @memset(ptr %uglygep.i157, i32 0, i32 16)
  %63 = load ptr, ptr %smu_backend, align 4
  %64 = ptrtoint ptr %pptable.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pptable.i, align 4
  %BapmVddCBaseLeakageHiSidd.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %63, i32 0, i32 4, i32 23
  %BapmVddCBaseLeakageLoSidd.i = getelementptr inbounds %struct.polaris10_smumgr, ptr %63, i32 0, i32 4, i32 24
  %cac_dtp_table.i160 = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %65, i32 0, i32 12
  %66 = ptrtoint ptr %cac_dtp_table.i160 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cac_dtp_table.i160, align 4
  %usHighCACLeakage.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %67, i32 0, i32 6
  %68 = ptrtoint ptr %usHighCACLeakage.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %usHighCACLeakage.i, align 4
  %70 = udiv i16 %69, 100
  %mul.i161 = shl i16 %70, 8
  %usLowCACLeakage.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %67, i32 0, i32 5
  %71 = ptrtoint ptr %usLowCACLeakage.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %usLowCACLeakage.i, align 2
  %73 = udiv i16 %72, 100
  %mul5.i = shl i16 %73, 8
  %74 = ptrtoint ptr %BapmVddCBaseLeakageHiSidd.i to i32
  call void @__asan_storeN_noabort(i32 %74, i32 2)
  store i16 %mul.i161, ptr %BapmVddCBaseLeakageHiSidd.i, align 1
  %75 = ptrtoint ptr %BapmVddCBaseLeakageLoSidd.i to i32
  call void @__asan_storeN_noabort(i32 %75, i32 2)
  store i16 %mul5.i, ptr %BapmVddCBaseLeakageLoSidd.i, align 1
  %76 = ptrtoint ptr %pm_fuse_table_offset to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pm_fuse_table_offset, align 4
  %power_tune_table = getelementptr inbounds %struct.polaris10_smumgr, ptr %1, i32 0, i32 4
  %call122 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %77, ptr noundef %power_tune_table, i32 noundef 84, i32 noundef 262144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %polaris10_populate_fuzzy_fan.exit.cleanup_crit_edge, label %do.body125

polaris10_populate_fuzzy_fan.exit.cleanup_crit_edge: ; preds = %polaris10_populate_fuzzy_fan.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body125:                                       ; preds = %polaris10_populate_fuzzy_fan.exit
  %call126 = call i32 @___ratelimit(ptr noundef nonnull @polaris10_populate_pm_fuses._rs.160, ptr noundef nonnull @__func__.polaris10_populate_pm_fuses) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %do.body125.cleanup_crit_edge, label %do.body125.cleanup.sink.split_crit_edge

do.body125.cleanup.sink.split_crit_edge:          ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.body125.cleanup_crit_edge:                     ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body125.cleanup.sink.split_crit_edge, %do.body46.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %.str.163.sink = phi ptr [ @.str.131, %do.body.cleanup.sink.split_crit_edge ], [ @.str.143, %do.body46.cleanup.sink.split_crit_edge ], [ @.str.163, %do.body125.cleanup.sink.split_crit_edge ]
  %call133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %.str.163.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body125.cleanup_crit_edge, %polaris10_populate_fuzzy_fan.exit.cleanup_crit_edge, %do.body46.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.body46.cleanup_crit_edge ], [ -22, %do.body125.cleanup_crit_edge ], [ 0, %polaris10_populate_fuzzy_fan.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pm_fuse_table_offset) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @phm_get_voltage_index(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @convert_to_vid(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @encode_pcie_lane_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_get_dpm_level_enable_mask_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @polaris10_get_dependency_volt_by_clk(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef readonly %dep_table, i32 noundef %clock, ptr nocapture noundef %voltage, ptr nocapture noundef writeonly %mvdd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %2 = ptrtoint ptr %mvdd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mvdd, align 4
  %3 = ptrtoint ptr %voltage to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %voltage, align 4
  %4 = ptrtoint ptr %dep_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dep_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0185 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %i.0185
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %clock)
  %cmp3.not = icmp ult i32 %7, %clock
  br i1 %cmp3.not, label %for.inc, label %if.then4

if.then4:                                         ; preds = %for.body
  %vddc = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %i.0185, i32 5
  %8 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vddc, align 2
  %conv = zext i16 %9 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %10 = ptrtoint ptr %voltage to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %voltage, align 4
  %vddci_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 40
  %11 = ptrtoint ptr %vddci_control to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vddci_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp7 = icmp eq i32 %12, 0
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %vddci_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 2
  %13 = ptrtoint ptr %vddci_bootup_value to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vddci_bootup_value, align 4
  %conv10 = zext i16 %14 to i32
  %mul11 = shl i32 %conv10, 17
  %or13 = or i32 %mul11, %mul
  br label %if.end36

if.else:                                          ; preds = %if.then4
  %vddci16 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %i.0185, i32 7
  %15 = ptrtoint ptr %vddci16 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vddci16, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not = icmp eq i16 %16, 0
  br i1 %tobool.not, label %if.else25, label %if.then17

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %conv21 = zext i16 %16 to i32
  %mul22 = shl i32 %conv21, 17
  %or24 = or i32 %mul22, %mul
  br label %if.end36

if.else25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %vddci_voltage_table = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 42
  %17 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vddc, align 2
  %sub = add i16 %18, -200
  %call = tail call zeroext i16 @phm_find_closest_vddci(ptr noundef %vddci_voltage_table, i16 noundef zeroext %sub) #7
  %conv31 = zext i16 %call to i32
  %mul32 = shl i32 %conv31, 17
  %19 = ptrtoint ptr %voltage to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %voltage, align 4
  %or34 = or i32 %mul32, %20
  br label %if.end36

if.end36:                                         ; preds = %if.else25, %if.then17, %if.then9
  %or24.sink = phi i32 [ %or24, %if.then17 ], [ %or34, %if.else25 ], [ %or13, %if.then9 ]
  %21 = ptrtoint ptr %voltage to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or24.sink, ptr %voltage, align 4
  %mvdd_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 23
  %22 = ptrtoint ptr %mvdd_control to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mvdd_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp37 = icmp eq i32 %23, 0
  br i1 %cmp37, label %if.then39, label %if.else43

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %vbios_boot_state40 = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31
  %24 = ptrtoint ptr %vbios_boot_state40 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vbios_boot_state40, align 4
  br label %if.end55.sink.split

if.else43:                                        ; preds = %if.end36
  %mvdd46 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %i.0185, i32 8
  %26 = ptrtoint ptr %mvdd46 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %mvdd46, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool47.not = icmp eq i16 %27, 0
  br i1 %tobool47.not, label %if.else43.if.end55_crit_edge, label %if.else43.if.end55.sink.split_crit_edge

if.else43.if.end55.sink.split_crit_edge:          ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.sink.split

if.else43.if.end55_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.end55.sink.split:                              ; preds = %if.else43.if.end55.sink.split_crit_edge, %if.then39
  %.sink = phi i16 [ %25, %if.then39 ], [ %27, %if.else43.if.end55.sink.split_crit_edge ]
  %conv52 = zext i16 %.sink to i32
  %mul53 = shl nuw nsw i32 %conv52, 2
  %28 = ptrtoint ptr %mvdd to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul53, ptr %mvdd, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.end55.sink.split, %if.else43.if.end55_crit_edge
  %29 = ptrtoint ptr %voltage to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %voltage, align 4
  %or56 = or i32 %30, 1073741824
  store i32 %or56, ptr %voltage, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0185, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %sub59 = add i32 %5, -1
  %vddc61 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %sub59, i32 5
  %31 = ptrtoint ptr %vddc61 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vddc61, align 2
  %conv62 = zext i16 %32 to i32
  %mul63 = shl nuw nsw i32 %conv62, 2
  %33 = ptrtoint ptr %voltage to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mul63, ptr %voltage, align 4
  %vddci_control66 = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 40
  %34 = ptrtoint ptr %vddci_control66 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vddci_control66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp67 = icmp eq i32 %35, 0
  br i1 %cmp67, label %if.then69, label %if.else76

if.then69:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %vddci_bootup_value71 = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 2
  %36 = ptrtoint ptr %vddci_bootup_value71 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vddci_bootup_value71, align 4
  %conv72 = zext i16 %37 to i32
  %mul73 = shl i32 %conv72, 17
  %or75 = or i32 %mul73, %mul63
  br label %if.end105

if.else76:                                        ; preds = %for.end
  %vddci80 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %sub59, i32 7
  %38 = ptrtoint ptr %vddci80 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vddci80, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool81.not = icmp eq i16 %39, 0
  br i1 %tobool81.not, label %if.else91, label %if.then82

if.then82:                                        ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #9
  %conv87 = zext i16 %39 to i32
  %mul88 = shl nuw nsw i32 %conv87, 2
  %or90 = or i32 %mul88, %mul63
  br label %if.end105

if.else91:                                        ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #9
  %vddci_voltage_table92 = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 42
  %vddc95 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %5, i32 5
  %40 = ptrtoint ptr %vddc95 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vddc95, align 2
  %sub97 = add i16 %41, -200
  %call99 = tail call zeroext i16 @phm_find_closest_vddci(ptr noundef %vddci_voltage_table92, i16 noundef zeroext %sub97) #7
  %conv100 = zext i16 %call99 to i32
  %mul101 = shl i32 %conv100, 17
  %42 = ptrtoint ptr %voltage to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %voltage, align 4
  %or103 = or i32 %mul101, %43
  br label %if.end105

if.end105:                                        ; preds = %if.else91, %if.then82, %if.then69
  %or90.sink = phi i32 [ %or90, %if.then82 ], [ %or103, %if.else91 ], [ %or75, %if.then69 ]
  %44 = ptrtoint ptr %voltage to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or90.sink, ptr %voltage, align 4
  %mvdd_control106 = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 23
  %45 = ptrtoint ptr %mvdd_control106 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mvdd_control106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp107 = icmp eq i32 %46, 0
  br i1 %cmp107, label %if.then109, label %if.else114

if.then109:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  %vbios_boot_state110 = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31
  %47 = ptrtoint ptr %vbios_boot_state110 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vbios_boot_state110, align 4
  %conv112 = zext i16 %48 to i32
  %mul113 = shl nuw nsw i32 %conv112, 2
  %49 = ptrtoint ptr %mvdd to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %mul113, ptr %mvdd, align 4
  br label %cleanup

if.else114:                                       ; preds = %if.end105
  %mvdd117 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %5, i32 8
  %50 = ptrtoint ptr %mvdd117 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %mvdd117, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool118.not = icmp eq i16 %51, 0
  br i1 %tobool118.not, label %if.else114.cleanup_crit_edge, label %if.then119

if.else114.cleanup_crit_edge:                     ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then119:                                       ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #9
  %mvdd123 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %sub59, i32 8
  %52 = ptrtoint ptr %mvdd123 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %mvdd123, align 4
  %conv124 = zext i16 %53 to i32
  %mul125 = shl nuw nsw i32 %conv124, 2
  %54 = ptrtoint ptr %mvdd to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %mul125, ptr %mvdd, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then119, %if.else114.cleanup_crit_edge, %if.then109, %if.end55, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end55 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else114.cleanup_crit_edge ], [ 0, %if.then119 ], [ 0, %if.then109 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @polaris10_calculate_sclk_params(ptr noundef %hwmgr, i32 noundef %clock, ptr nocapture noundef %sclk_setting) unnamed_addr #0 align 64 {
entry:
  %dividers = alloca %struct.pp_atomctrl_clock_dividers_ai, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dividers) #7
  %2 = call ptr @memset(ptr %dividers, i32 255, i32 20)
  %3 = ptrtoint ptr %sclk_setting to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %clock, ptr %sclk_setting, align 1
  %call = call i32 @atomctrl_get_engine_pll_dividers_ai(ptr noundef %hwmgr, i32 noundef %clock, ptr noundef nonnull %dividers) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_ai, ptr %dividers, i32 0, i32 11
  %5 = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_ai, ptr %dividers, i32 0, i32 10
  %6 = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_ai, ptr %dividers, i32 0, i32 9
  %7 = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_ai, ptr %dividers, i32 0, i32 7
  %8 = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_ai, ptr %dividers, i32 0, i32 6
  %9 = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_ai, ptr %dividers, i32 0, i32 5
  %10 = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_ai, ptr %dividers, i32 0, i32 4
  %11 = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_ai, ptr %dividers, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 2
  %Fcw_int = getelementptr inbounds %struct.SMU_SclkSetting, ptr %sclk_setting, i32 0, i32 1
  %14 = ptrtoint ptr %Fcw_int to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %13, ptr %Fcw_int, align 1
  %15 = ptrtoint ptr %dividers to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %dividers, align 2
  %Fcw_frac = getelementptr inbounds %struct.SMU_SclkSetting, ptr %sclk_setting, i32 0, i32 2
  %17 = ptrtoint ptr %Fcw_frac to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %16, ptr %Fcw_frac, align 1
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %6, align 2
  %Pcc_fcw_int = getelementptr inbounds %struct.SMU_SclkSetting, ptr %sclk_setting, i32 0, i32 3
  %20 = ptrtoint ptr %Pcc_fcw_int to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %19, ptr %Pcc_fcw_int, align 1
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %10, align 2
  %PllRange = getelementptr inbounds %struct.SMU_SclkSetting, ptr %sclk_setting, i32 0, i32 4
  %23 = ptrtoint ptr %PllRange to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %PllRange, align 1
  %Sclk_slew_rate = getelementptr inbounds %struct.SMU_SclkSetting, ptr %sclk_setting, i32 0, i32 6
  %24 = ptrtoint ptr %Sclk_slew_rate to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 1024, ptr %Sclk_slew_rate, align 1
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %4, align 2
  %Pcc_up_slew_rate = getelementptr inbounds %struct.SMU_SclkSetting, ptr %sclk_setting, i32 0, i32 7
  %27 = ptrtoint ptr %Pcc_up_slew_rate to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %26, ptr %Pcc_up_slew_rate, align 1
  %Pcc_down_slew_rate = getelementptr inbounds %struct.SMU_SclkSetting, ptr %sclk_setting, i32 0, i32 8
  %28 = ptrtoint ptr %Pcc_down_slew_rate to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 -1, ptr %Pcc_down_slew_rate, align 1
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %9, align 1
  %SSc_En = getelementptr inbounds %struct.SMU_SclkSetting, ptr %sclk_setting, i32 0, i32 5
  %31 = ptrtoint ptr %SSc_En to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %SSc_En, align 1
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %7, align 2
  %Fcw1_int = getelementptr inbounds %struct.SMU_SclkSetting, ptr %sclk_setting, i32 0, i32 9
  %34 = ptrtoint ptr %Fcw1_int to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %33, ptr %Fcw1_int, align 1
  %35 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %8, align 2
  %Fcw1_frac = getelementptr inbounds %struct.SMU_SclkSetting, ptr %sclk_setting, i32 0, i32 10
  %37 = ptrtoint ptr %Fcw1_frac to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %36, ptr %Fcw1_frac, align 1
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %5, align 2
  %Sclk_ss_slew_rate = getelementptr inbounds %struct.SMU_SclkSetting, ptr %sclk_setting, i32 0, i32 11
  %40 = ptrtoint ptr %Sclk_ss_slew_rate to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %39, ptr %Sclk_ss_slew_rate, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %41 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hwmgr, align 4
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %42, i32 0, i32 12
  %43 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %asic_funcs, align 4
  %get_xclk = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %get_xclk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %get_xclk, align 4
  %call2 = call i32 %46(ptr noundef %42) #7
  %arrayidx = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 6, i32 0
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %clock)
  %cmp5 = icmp ult i32 %48, %clock
  br i1 %cmp5, label %land.lhs.true, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %trans_upper_frequency = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 6, i32 0, i32 1
  %49 = ptrtoint ptr %trans_upper_frequency to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %trans_upper_frequency, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %clock)
  %cmp10.not = icmp ult i32 %50, %clock
  br i1 %cmp10.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.then12_crit_edge

land.lhs.true.if.then12_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then12:                                        ; preds = %land.lhs.true.7.if.then12_crit_edge, %land.lhs.true.6.if.then12_crit_edge, %land.lhs.true.5.if.then12_crit_edge, %land.lhs.true.4.if.then12_crit_edge, %land.lhs.true.3.if.then12_crit_edge, %land.lhs.true.2.if.then12_crit_edge, %land.lhs.true.1.if.then12_crit_edge, %land.lhs.true.if.then12_crit_edge
  %i.084.lcssa.wide = phi i8 [ 0, %land.lhs.true.if.then12_crit_edge ], [ 1, %land.lhs.true.1.if.then12_crit_edge ], [ 2, %land.lhs.true.2.if.then12_crit_edge ], [ 3, %land.lhs.true.3.if.then12_crit_edge ], [ 4, %land.lhs.true.4.if.then12_crit_edge ], [ 5, %land.lhs.true.5.if.then12_crit_edge ], [ 6, %land.lhs.true.6.if.then12_crit_edge ], [ 7, %land.lhs.true.7.if.then12_crit_edge ]
  %PllRange13 = getelementptr inbounds %struct.SMU_SclkSetting, ptr %sclk_setting, i32 0, i32 4
  %51 = ptrtoint ptr %PllRange13 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %i.084.lcssa.wide, ptr %PllRange13, align 1
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 6, i32 1
  %52 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %clock)
  %cmp5.1 = icmp ult i32 %53, %clock
  br i1 %cmp5.1, label %land.lhs.true.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %trans_upper_frequency.1 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 6, i32 1, i32 1
  %54 = ptrtoint ptr %trans_upper_frequency.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %trans_upper_frequency.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %clock)
  %cmp10.not.1 = icmp ult i32 %55, %clock
  br i1 %cmp10.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true.1.if.then12_crit_edge

land.lhs.true.1.if.then12_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 6, i32 2
  %56 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %clock)
  %cmp5.2 = icmp ult i32 %57, %clock
  br i1 %cmp5.2, label %land.lhs.true.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %trans_upper_frequency.2 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 6, i32 2, i32 1
  %58 = ptrtoint ptr %trans_upper_frequency.2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %trans_upper_frequency.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %clock)
  %cmp10.not.2 = icmp ult i32 %59, %clock
  br i1 %cmp10.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true.2.if.then12_crit_edge

land.lhs.true.2.if.then12_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 6, i32 3
  %60 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %clock)
  %cmp5.3 = icmp ult i32 %61, %clock
  br i1 %cmp5.3, label %land.lhs.true.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %trans_upper_frequency.3 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 6, i32 3, i32 1
  %62 = ptrtoint ptr %trans_upper_frequency.3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %trans_upper_frequency.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %clock)
  %cmp10.not.3 = icmp ult i32 %63, %clock
  br i1 %cmp10.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true.3.if.then12_crit_edge

land.lhs.true.3.if.then12_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 6, i32 4
  %64 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %clock)
  %cmp5.4 = icmp ult i32 %65, %clock
  br i1 %cmp5.4, label %land.lhs.true.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %trans_upper_frequency.4 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 6, i32 4, i32 1
  %66 = ptrtoint ptr %trans_upper_frequency.4 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %trans_upper_frequency.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %clock)
  %cmp10.not.4 = icmp ult i32 %67, %clock
  br i1 %cmp10.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %land.lhs.true.4.if.then12_crit_edge

land.lhs.true.4.if.then12_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 6, i32 5
  %68 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %clock)
  %cmp5.5 = icmp ult i32 %69, %clock
  br i1 %cmp5.5, label %land.lhs.true.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %trans_upper_frequency.5 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 6, i32 5, i32 1
  %70 = ptrtoint ptr %trans_upper_frequency.5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %trans_upper_frequency.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %clock)
  %cmp10.not.5 = icmp ult i32 %71, %clock
  br i1 %cmp10.not.5, label %land.lhs.true.5.for.inc.5_crit_edge, label %land.lhs.true.5.if.then12_crit_edge

land.lhs.true.5.if.then12_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 6, i32 6
  %72 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %clock)
  %cmp5.6 = icmp ult i32 %73, %clock
  br i1 %cmp5.6, label %land.lhs.true.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  %trans_upper_frequency.6 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 6, i32 6, i32 1
  %74 = ptrtoint ptr %trans_upper_frequency.6 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %trans_upper_frequency.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %clock)
  %cmp10.not.6 = icmp ult i32 %75, %clock
  br i1 %cmp10.not.6, label %land.lhs.true.6.for.inc.6_crit_edge, label %land.lhs.true.6.if.then12_crit_edge

land.lhs.true.6.if.then12_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 6, i32 7
  %76 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.7, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %clock)
  %cmp5.7 = icmp ult i32 %77, %clock
  br i1 %cmp5.7, label %land.lhs.true.7, label %for.inc.6.for.end_crit_edge

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true.7:                                  ; preds = %for.inc.6
  %trans_upper_frequency.7 = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 6, i32 7, i32 1
  %78 = ptrtoint ptr %trans_upper_frequency.7 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %trans_upper_frequency.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %clock)
  %cmp10.not.7 = icmp ult i32 %79, %clock
  br i1 %cmp10.not.7, label %land.lhs.true.7.for.end_crit_edge, label %land.lhs.true.7.if.then12_crit_edge

land.lhs.true.7.if.then12_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

land.lhs.true.7.for.end_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %land.lhs.true.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %if.then12
  %PllRange15 = getelementptr inbounds %struct.SMU_SclkSetting, ptr %sclk_setting, i32 0, i32 4
  %80 = ptrtoint ptr %PllRange15 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %PllRange15, align 1
  %idxprom16 = zext i8 %81 to i32
  %postdiv = getelementptr %struct.polaris10_smumgr, ptr %1, i32 0, i32 2, i32 98, i32 %idxprom16, i32 1
  %82 = ptrtoint ptr %postdiv to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %postdiv, align 1
  %conv18 = zext i8 %83 to i32
  %shl = shl i32 %clock, %conv18
  %div = udiv i32 %shl, %call2
  %conv19 = trunc i32 %div to i16
  %Fcw_int20 = getelementptr inbounds %struct.SMU_SclkSetting, ptr %sclk_setting, i32 0, i32 1
  %84 = ptrtoint ptr %Fcw_int20 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 2)
  store i16 %conv19, ptr %Fcw_int20, align 1
  %85 = load i8, ptr %postdiv, align 1
  %conv26 = zext i8 %85 to i32
  %shl27 = shl i32 %clock, %conv26
  %conv28 = zext i32 %shl27 to i64
  %shl29 = shl nuw nsw i64 %conv28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %shl27)
  %cmp202 = icmp ult i32 %shl27, 65536
  br i1 %cmp202, label %if.then206, label %if.else212, !prof !352

if.then206:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv207 = trunc i64 %shl29 to i32
  %div210 = udiv i32 %conv207, %call2
  %extract.t76 = trunc i32 %div210 to i16
  br label %if.end216

if.else212:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %86 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call2, i64 %shl29) #12, !srcloc !353
  %asmresult1.i = extractvalue { i64, i64 } %86, 1
  %extract.t77 = trunc i64 %asmresult1.i to i16
  br label %if.end216

if.end216:                                        ; preds = %if.else212, %if.then206
  %temp.0.off0 = phi i16 [ %extract.t76, %if.then206 ], [ %extract.t77, %if.else212 ]
  %Fcw_frac220 = getelementptr inbounds %struct.SMU_SclkSetting, ptr %sclk_setting, i32 0, i32 2
  %87 = ptrtoint ptr %Fcw_frac220 to i32
  call void @__asan_storeN_noabort(i32 %87, i32 2)
  store i16 %temp.0.off0, ptr %Fcw_frac220, align 1
  %mul221 = mul i32 %clock, 10
  %div222 = udiv i32 %mul221, 100
  %sub223 = sub i32 %clock, %div222
  %88 = ptrtoint ptr %postdiv to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %postdiv, align 1
  %conv229 = zext i8 %89 to i32
  %shl230 = shl i32 %sub223, %conv229
  %div231 = udiv i32 %shl230, %call2
  %conv232 = trunc i32 %div231 to i16
  %Pcc_fcw_int233 = getelementptr inbounds %struct.SMU_SclkSetting, ptr %sclk_setting, i32 0, i32 3
  %90 = ptrtoint ptr %Pcc_fcw_int233 to i32
  call void @__asan_storeN_noabort(i32 %90, i32 2)
  store i16 %conv232, ptr %Pcc_fcw_int233, align 1
  %SSc_En234 = getelementptr inbounds %struct.SMU_SclkSetting, ptr %sclk_setting, i32 0, i32 5
  %91 = ptrtoint ptr %SSc_En234 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %SSc_En234, align 1
  %mul238 = shl i32 %clock, 1
  %div239 = udiv i32 %mul238, 100
  %sub240 = sub i32 %clock, %div239
  %92 = load i8, ptr %postdiv, align 1
  %conv246 = zext i8 %92 to i32
  %shl247 = shl i32 %sub240, %conv246
  %div248 = udiv i32 %shl247, %call2
  %conv249 = trunc i32 %div248 to i16
  %Fcw1_int250 = getelementptr inbounds %struct.SMU_SclkSetting, ptr %sclk_setting, i32 0, i32 9
  %93 = ptrtoint ptr %Fcw1_int250 to i32
  call void @__asan_storeN_noabort(i32 %93, i32 2)
  store i16 %conv249, ptr %Fcw1_int250, align 1
  %94 = load i8, ptr %postdiv, align 1
  %conv256 = zext i8 %94 to i32
  %shl257 = shl i32 %sub240, %conv256
  %conv258 = zext i32 %shl257 to i64
  %shl259 = shl nuw nsw i64 %conv258, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %shl257)
  %cmp461 = icmp ult i32 %shl257, 65536
  br i1 %cmp461, label %if.then469, label %if.else475, !prof !352

if.then469:                                       ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #9
  %conv470 = trunc i64 %shl259 to i32
  %div473 = udiv i32 %conv470, %call2
  %extract.t80 = trunc i32 %div473 to i16
  br label %if.end479

if.else475:                                       ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #9
  %95 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call2, i64 %shl259) #12, !srcloc !353
  %asmresult1.i28 = extractvalue { i64, i64 } %95, 1
  %extract.t81 = trunc i64 %asmresult1.i28 to i16
  br label %if.end479

if.end479:                                        ; preds = %if.else475, %if.then469
  %temp.1.off0 = phi i16 [ %extract.t80, %if.then469 ], [ %extract.t81, %if.else475 ]
  %Fcw1_frac483 = getelementptr inbounds %struct.SMU_SclkSetting, ptr %sclk_setting, i32 0, i32 10
  %96 = ptrtoint ptr %Fcw1_frac483 to i32
  call void @__asan_storeN_noabort(i32 %96, i32 2)
  store i16 %temp.1.off0, ptr %Fcw1_frac483, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end479, %if.then
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dividers) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @phm_find_closest_vddci(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_engine_pll_dividers_ai(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_find_boot_level(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_read_efuse(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_avfs_information(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_vddc_shared_railinfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_smc_sclk_range_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @smu7_get_sleep_divider_id_from_clock(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_initialize_mc_reg_table_v2_2(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_set_field_to_u32(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 167)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 167)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !69, !71, !72, !73, !74, !76, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !91, !93, !94, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !172, !174, !175, !176, !177, !179, !180, !181, !182, !184, !186, !187, !188, !189, !190, !192, !193, !194, !195, !197, !198, !199, !200, !202, !203, !204, !205, !206, !208, !209, !210, !211, !212, !214, !215, !216, !217, !219, !220, !221, !222, !223, !225, !226, !227, !228, !230, !231, !232, !233, !234, !236, !237, !238, !239, !240, !242, !243, !244, !245, !246, !248, !249, !250, !251, !252, !254, !255, !256, !257, !259, !260, !261, !262, !264, !265, !266, !267, !269, !270, !271, !272, !274, !275, !276, !277, !279, !280, !281, !282, !284, !285, !286, !287, !289, !290, !291, !292, !294, !295, !296, !297, !298, !300, !301, !302, !303, !304, !306, !307, !308, !309, !311, !313, !314, !315, !316, !317, !319, !320, !321, !322, !323, !325, !326, !327, !328, !329, !331, !332, !333, !334, !336, !337, !338}
!llvm.module.flags = !{!339, !340, !341, !342, !343, !344, !345, !346}
!llvm.ident = !{!347}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 2685, i32 10}
!2 = !{ptr @polaris10_smu_funcs, !3, !"polaris10_smu_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 2684, i32 29}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 309, i32 4}
!6 = !{ptr @polaris10_start_smu._rs, !5, !"_rs", i1 false, i1 false}
!7 = !{ptr @__func__.polaris10_start_smu, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @polaris10_start_smu._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @polaris10_start_smu._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @polaris10_start_smu_in_protection_mode._rs, !14, !"_rs", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 239, i32 3}
!15 = !{ptr @__func__.polaris10_start_smu_in_protection_mode, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @polaris10_start_smu_in_protection_mode._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @polaris10_start_smu_in_protection_mode._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @polaris10_avfs_event_mgr._rs, !20, !"_rs", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 182, i32 2}
!21 = !{ptr @__func__.polaris10_avfs_event_mgr, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @polaris10_avfs_event_mgr._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @polaris10_avfs_event_mgr._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 187, i32 3}
!27 = !{ptr @polaris10_avfs_event_mgr._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @polaris10_avfs_event_mgr._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @polaris10_avfs_event_mgr._rs.10, !30, !"_rs", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 188, i32 3}
!31 = !{ptr @polaris10_avfs_event_mgr._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @polaris10_avfs_event_mgr._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @polaris10_avfs_event_mgr._rs.14, !35, !"_rs", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 193, i32 2}
!36 = !{ptr @polaris10_avfs_event_mgr._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @polaris10_avfs_event_mgr._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @polaris10_setup_graphics_level_structure._rs, !40, !"_rs", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 131, i32 2}
!41 = !{ptr @__func__.polaris10_setup_graphics_level_structure, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @polaris10_setup_graphics_level_structure._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @polaris10_setup_graphics_level_structure._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @polaris10_setup_graphics_level_structure._rs.19, !46, !"_rs", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 142, i32 2}
!47 = !{ptr @polaris10_setup_graphics_level_structure._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @polaris10_setup_graphics_level_structure._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @polaris10_setup_graphics_level_structure._rs.23, !51, !"_rs", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 149, i32 2}
!52 = !{ptr @polaris10_setup_graphics_level_structure._entry.24, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @polaris10_setup_graphics_level_structure._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @polaris10_setup_graphics_level_structure._rs.27, !56, !"_rs", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 157, i32 2}
!57 = !{ptr @polaris10_setup_graphics_level_structure._entry.28, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @polaris10_setup_graphics_level_structure._entry_ptr.29, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @polaris10_setup_graphics_level_structure._rs.31, !61, !"_rs", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 166, i32 2}
!62 = !{ptr @polaris10_setup_graphics_level_structure._entry.32, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @polaris10_setup_graphics_level_structure._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @avfs_graphics_level_polaris10, !66, !"avfs_graphics_level_polaris10", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 80, i32 43}
!67 = !{ptr @avfs_memory_level_polaris10, !68, !"avfs_memory_level_polaris10", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 93, i32 41}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 104, i32 4}
!71 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @polaris10_perform_btc._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @polaris10_perform_btc._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @polaris10_update_sclk_threshold._rs, !75, !"_rs", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 2407, i32 2}
!76 = !{ptr @__func__.polaris10_update_sclk_threshold, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @polaris10_update_sclk_threshold._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @polaris10_update_sclk_threshold._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @polaris10_update_sclk_threshold._rs.38, !81, !"_rs", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 2411, i32 2}
!82 = !{ptr @polaris10_update_sclk_threshold._entry.39, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @polaris10_update_sclk_threshold._entry_ptr.40, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @polaris10_populate_memory_timing_parameters._rs, !86, !"_rs", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 1475, i32 2}
!87 = !{ptr @__func__.polaris10_populate_memory_timing_parameters, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @polaris10_populate_memory_timing_parameters._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @polaris10_populate_memory_timing_parameters._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!91 = distinct !{null, !92, !"_rs", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 1946, i32 3}
!93 = !{ptr @__func__.polaris10_init_smc_table, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @polaris10_init_smc_table._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @polaris10_init_smc_table._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = distinct !{null, !92, !"<string literal>", i1 false, i1 false}
!97 = distinct !{null, !98, !"_rs", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 1953, i32 2}
!99 = !{ptr @polaris10_init_smc_table._entry.45, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @polaris10_init_smc_table._entry_ptr.46, !98, !"_entry_ptr", i1 false, i1 false}
!101 = distinct !{null, !98, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @polaris10_init_smc_table._rs.48, !103, !"_rs", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 1957, i32 2}
!104 = !{ptr @polaris10_init_smc_table._entry.49, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @polaris10_init_smc_table._entry_ptr.50, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @polaris10_init_smc_table._rs.52, !108, !"_rs", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 1961, i32 2}
!109 = !{ptr @polaris10_init_smc_table._entry.53, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @polaris10_init_smc_table._entry_ptr.54, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.55, !108, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @polaris10_init_smc_table._rs.56, !113, !"_rs", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 1965, i32 2}
!114 = !{ptr @polaris10_init_smc_table._entry.57, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @polaris10_init_smc_table._entry_ptr.58, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @polaris10_init_smc_table._rs.60, !118, !"_rs", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 1969, i32 2}
!119 = !{ptr @polaris10_init_smc_table._entry.61, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @polaris10_init_smc_table._entry_ptr.62, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.63, !118, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @polaris10_init_smc_table._rs.64, !123, !"_rs", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 1973, i32 2}
!124 = !{ptr @polaris10_init_smc_table._entry.65, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @polaris10_init_smc_table._entry_ptr.66, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.67, !123, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @polaris10_init_smc_table._rs.68, !128, !"_rs", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 1981, i32 2}
!129 = !{ptr @polaris10_init_smc_table._entry.69, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @polaris10_init_smc_table._entry_ptr.70, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.71, !128, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @polaris10_init_smc_table._rs.72, !133, !"_rs", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 1985, i32 2}
!134 = !{ptr @polaris10_init_smc_table._entry.73, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @polaris10_init_smc_table._entry_ptr.74, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.75, !133, !"<string literal>", i1 false, i1 false}
!137 = distinct !{null, !138, !"_rs", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 1989, i32 2}
!139 = !{ptr @polaris10_init_smc_table._entry.77, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @polaris10_init_smc_table._entry_ptr.78, !138, !"_entry_ptr", i1 false, i1 false}
!141 = distinct !{null, !138, !"<string literal>", i1 false, i1 false}
!142 = distinct !{null, !143, !"_rs", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 1993, i32 2}
!144 = !{ptr @polaris10_init_smc_table._entry.81, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @polaris10_init_smc_table._entry_ptr.82, !143, !"_entry_ptr", i1 false, i1 false}
!146 = distinct !{null, !143, !"<string literal>", i1 false, i1 false}
!147 = distinct !{null, !148, !"_rs", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 1997, i32 2}
!149 = !{ptr @polaris10_init_smc_table._entry.85, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @polaris10_init_smc_table._entry_ptr.86, !148, !"_entry_ptr", i1 false, i1 false}
!151 = distinct !{null, !148, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @polaris10_init_smc_table._rs.88, !153, !"_rs", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 2005, i32 3}
!154 = !{ptr @polaris10_init_smc_table._entry.89, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @polaris10_init_smc_table._entry_ptr.90, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.91, !153, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @polaris10_init_smc_table._rs.92, !158, !"_rs", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 2011, i32 2}
!159 = !{ptr @polaris10_init_smc_table._entry.93, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @polaris10_init_smc_table._entry_ptr.94, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.95, !158, !"<string literal>", i1 false, i1 false}
!162 = distinct !{null, !163, !"_rs", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 2035, i32 2}
!164 = !{ptr @polaris10_init_smc_table._entry.97, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @polaris10_init_smc_table._entry_ptr.98, !163, !"_entry_ptr", i1 false, i1 false}
!166 = distinct !{null, !163, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @polaris10_init_smc_table._rs.100, !168, !"_rs", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 2095, i32 3}
!169 = !{ptr @polaris10_init_smc_table._entry.101, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @polaris10_init_smc_table._entry_ptr.102, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.103, !168, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @polaris10_init_smc_table._rs.104, !173, !"_rs", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 2124, i32 2}
!174 = !{ptr @polaris10_init_smc_table._entry.105, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @polaris10_init_smc_table._entry_ptr.106, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.107, !173, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @polaris10_init_smc_table._rs.108, !178, !"_rs", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 2128, i32 2}
!179 = !{ptr @polaris10_init_smc_table._entry.109, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @polaris10_init_smc_table._entry_ptr.110, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.111, !178, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @polaris10_power_tune_data_set_array, !183, !"polaris10_power_tune_data_set_array", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 60, i32 43}
!184 = !{ptr @polaris10_populate_smc_acpi_level._rs, !185, !"_rs", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 1297, i32 2}
!186 = !{ptr @__func__.polaris10_populate_smc_acpi_level, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @polaris10_populate_smc_acpi_level._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @polaris10_populate_smc_acpi_level._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.112, !185, !"<string literal>", i1 false, i1 false}
!190 = distinct !{null, !191, !"_rs", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 1303, i32 2}
!192 = !{ptr @polaris10_populate_smc_acpi_level._entry.114, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @polaris10_populate_smc_acpi_level._entry_ptr.115, !191, !"_entry_ptr", i1 false, i1 false}
!194 = distinct !{null, !191, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @polaris10_populate_smc_acpi_level._rs.117, !196, !"_rs", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 1332, i32 2}
!197 = !{ptr @polaris10_populate_smc_acpi_level._entry.118, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @polaris10_populate_smc_acpi_level._entry_ptr.119, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.120, !196, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @polaris10_populate_mvdd_value._rs, !201, !"_rs", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 1268, i32 3}
!202 = !{ptr @__func__.polaris10_populate_mvdd_value, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @polaris10_populate_mvdd_value._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @polaris10_populate_mvdd_value._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.121, !201, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @polaris10_populate_smc_vce_level._rs, !207, !"_rs", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 1403, i32 3}
!208 = !{ptr @__func__.polaris10_populate_smc_vce_level, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @polaris10_populate_smc_vce_level._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @polaris10_populate_smc_vce_level._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.122, !207, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @polaris10_populate_smc_samu_level._rs, !213, !"_rs", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 1452, i32 3}
!214 = !{ptr @__func__.polaris10_populate_smc_samu_level, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @polaris10_populate_smc_samu_level._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @polaris10_populate_smc_samu_level._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @polaris10_populate_smc_uvd_level._rs, !218, !"_rs", i1 false, i1 false}
!218 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 1557, i32 3}
!219 = !{ptr @__func__.polaris10_populate_smc_uvd_level, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @polaris10_populate_smc_uvd_level._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @polaris10_populate_smc_uvd_level._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.123, !218, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @polaris10_populate_smc_uvd_level._rs.124, !224, !"_rs", i1 false, i1 false}
!224 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 1564, i32 3}
!225 = !{ptr @polaris10_populate_smc_uvd_level._entry.125, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @polaris10_populate_smc_uvd_level._entry_ptr.126, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.127, !224, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @polaris10_populate_bapm_parameters_in_dpm_table._rs, !229, !"_rs", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 445, i32 2}
!230 = !{ptr @__func__.polaris10_populate_bapm_parameters_in_dpm_table, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @polaris10_populate_bapm_parameters_in_dpm_table._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @polaris10_populate_bapm_parameters_in_dpm_table._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.128, !229, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @polaris10_populate_clock_stretcher_data_table._rs, !235, !"_rs", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 1699, i32 3}
!236 = !{ptr @__func__.polaris10_populate_clock_stretcher_data_table, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @polaris10_populate_clock_stretcher_data_table._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @polaris10_populate_clock_stretcher_data_table._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.129, !235, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @polaris10_populate_vr_config._rs, !241, !"_rs", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 1729, i32 3}
!242 = !{ptr @__func__.polaris10_populate_vr_config, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @polaris10_populate_vr_config._entry, !241, !"_entry", i1 false, i1 false}
!244 = !{ptr @polaris10_populate_vr_config._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.130, !241, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @polaris10_populate_pm_fuses._rs, !247, !"_rs", i1 false, i1 false}
!247 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 615, i32 4}
!248 = !{ptr @__func__.polaris10_populate_pm_fuses, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @polaris10_populate_pm_fuses._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @polaris10_populate_pm_fuses._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.131, !247, !"<string literal>", i1 false, i1 false}
!252 = distinct !{null, !253, !"_rs", i1 false, i1 false}
!253 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 620, i32 4}
!254 = !{ptr @polaris10_populate_pm_fuses._entry.133, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @polaris10_populate_pm_fuses._entry_ptr.134, !253, !"_entry_ptr", i1 false, i1 false}
!256 = distinct !{null, !253, !"<string literal>", i1 false, i1 false}
!257 = distinct !{null, !258, !"_rs", i1 false, i1 false}
!258 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 625, i32 4}
!259 = !{ptr @polaris10_populate_pm_fuses._entry.137, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @polaris10_populate_pm_fuses._entry_ptr.138, !258, !"_entry_ptr", i1 false, i1 false}
!261 = distinct !{null, !258, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @polaris10_populate_pm_fuses._rs.140, !263, !"_rs", i1 false, i1 false}
!263 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 629, i32 4}
!264 = !{ptr @polaris10_populate_pm_fuses._entry.141, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @polaris10_populate_pm_fuses._entry_ptr.142, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.143, !263, !"<string literal>", i1 false, i1 false}
!267 = distinct !{null, !268, !"_rs", i1 false, i1 false}
!268 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 635, i32 4}
!269 = !{ptr @polaris10_populate_pm_fuses._entry.145, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @polaris10_populate_pm_fuses._entry_ptr.146, !268, !"_entry_ptr", i1 false, i1 false}
!271 = distinct !{null, !268, !"<string literal>", i1 false, i1 false}
!272 = distinct !{null, !273, !"_rs", i1 false, i1 false}
!273 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 640, i32 4}
!274 = !{ptr @polaris10_populate_pm_fuses._entry.149, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @polaris10_populate_pm_fuses._entry_ptr.150, !273, !"_entry_ptr", i1 false, i1 false}
!276 = distinct !{null, !273, !"<string literal>", i1 false, i1 false}
!277 = distinct !{null, !278, !"_rs", i1 false, i1 false}
!278 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 645, i32 4}
!279 = !{ptr @polaris10_populate_pm_fuses._entry.153, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @polaris10_populate_pm_fuses._entry_ptr.154, !278, !"_entry_ptr", i1 false, i1 false}
!281 = distinct !{null, !278, !"<string literal>", i1 false, i1 false}
!282 = distinct !{null, !283, !"_rs", i1 false, i1 false}
!283 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 650, i32 4}
!284 = !{ptr @polaris10_populate_pm_fuses._entry.157, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @polaris10_populate_pm_fuses._entry_ptr.158, !283, !"_entry_ptr", i1 false, i1 false}
!286 = distinct !{null, !283, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @polaris10_populate_pm_fuses._rs.160, !288, !"_rs", i1 false, i1 false}
!288 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 657, i32 4}
!289 = !{ptr @polaris10_populate_pm_fuses._entry.161, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @polaris10_populate_pm_fuses._entry_ptr.162, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.163, !288, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @polaris10_populate_dw8._rs, !293, !"_rs", i1 false, i1 false}
!293 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 531, i32 3}
!294 = !{ptr @__func__.polaris10_populate_dw8, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @polaris10_populate_dw8._entry, !293, !"_entry", i1 false, i1 false}
!296 = !{ptr @polaris10_populate_dw8._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.164, !293, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @polaris10_populate_all_graphic_levels._rs, !299, !"_rs", i1 false, i1 false}
!299 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 1086, i32 4}
!300 = !{ptr @__func__.polaris10_populate_all_graphic_levels, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @polaris10_populate_all_graphic_levels._entry, !299, !"_entry", i1 false, i1 false}
!302 = !{ptr @polaris10_populate_all_graphic_levels._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.165, !299, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @polaris10_populate_all_graphic_levels._rs.166, !305, !"_rs", i1 false, i1 false}
!305 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 1107, i32 3}
!306 = !{ptr @polaris10_populate_all_graphic_levels._entry.167, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @polaris10_populate_all_graphic_levels._entry_ptr.168, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.169, !305, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @Range_Table, !310, !"Range_Table", i1 false, i1 false}
!310 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 68, i32 29}
!311 = !{ptr @polaris10_populate_single_graphic_level._rs, !312, !"_rs", i1 false, i1 false}
!312 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 979, i32 2}
!313 = !{ptr @__func__.polaris10_populate_single_graphic_level, !312, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @polaris10_populate_single_graphic_level._entry, !312, !"_entry", i1 false, i1 false}
!315 = !{ptr @polaris10_populate_single_graphic_level._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.170, !312, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @polaris10_populate_all_memory_levels._rs, !318, !"_rs", i1 false, i1 false}
!318 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 1224, i32 3}
!319 = !{ptr @__func__.polaris10_populate_all_memory_levels, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @polaris10_populate_all_memory_levels._entry, !318, !"_entry", i1 false, i1 false}
!321 = !{ptr @polaris10_populate_all_memory_levels._entry_ptr, !318, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.171, !318, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @polaris10_populate_single_memory_level._rs, !324, !"_rs", i1 false, i1 false}
!324 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 1173, i32 3}
!325 = !{ptr @__func__.polaris10_populate_single_memory_level, !324, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @polaris10_populate_single_memory_level._entry, !324, !"_entry", i1 false, i1 false}
!327 = !{ptr @polaris10_populate_single_memory_level._entry_ptr, !324, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.172, !324, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @.str.173, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 2460, i32 2}
!331 = !{ptr @.str.174, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @polaris10_get_offsetof._entry, !330, !"_entry", i1 false, i1 false}
!333 = !{ptr @polaris10_get_offsetof._entry_ptr, !330, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.175, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/polaris10_smumgr.c", i32 2488, i32 2}
!336 = !{ptr @.str.176, !335, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @polaris10_get_mac_definition._entry, !335, !"_entry", i1 false, i1 false}
!338 = !{ptr @polaris10_get_mac_definition._entry_ptr, !335, !"_entry_ptr", i1 false, i1 false}
!339 = !{i32 1, !"wchar_size", i32 2}
!340 = !{i32 1, !"min_enum_size", i32 4}
!341 = !{i32 8, !"branch-target-enforcement", i32 0}
!342 = !{i32 8, !"sign-return-address", i32 0}
!343 = !{i32 8, !"sign-return-address-all", i32 0}
!344 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!345 = !{i32 7, !"uwtable", i32 1}
!346 = !{i32 7, !"frame-pointer", i32 2}
!347 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!348 = !{i8 0, i8 2}
!349 = !{!"auto-init"}
!350 = !{i64 1124653, i64 1124680}
!351 = !{i64 1125163, i64 1125190, i64 1125224, i64 1125245}
!352 = !{!"branch_weights", i32 2000, i32 1}
!353 = !{i64 2148610484, i64 2148610764, i64 2148611098, i64 2148611432}
