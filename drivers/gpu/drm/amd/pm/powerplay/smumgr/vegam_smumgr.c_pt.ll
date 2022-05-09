; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/smumgr/vegam_smumgr.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c"
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
%struct.vegam_pt_defaults = type { i8, i8, i8, i8, i8, i8, i32, i32, [15 x i16], [15 x i16] }
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
%struct.vegam_smumgr = type <{ %struct.smu7_smumgr, i8, %struct.SMU75_Discrete_DpmTable, %struct.SMU75_Discrete_Ulv, %struct.SMU75_Discrete_PmFuses, [3 x i8], [8 x %struct.vegam_range_table], ptr, [8 x i32] }>
%struct.smu7_smumgr = type { %struct.smu7_buffer_entry, %struct.smu7_buffer_entry, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32 }
%struct.smu7_buffer_entry = type { i32, i64, ptr, ptr }
%struct.SMU75_Discrete_DpmTable = type { %struct.SMU75_PIDController, %struct.SMU75_PIDController, %struct.SMU75_PIDController, i32, i32, i32, i32, %struct.SMIO_Table, %struct.SMIO_Table, i32, [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i16, i16, i16, i16, i32, [8 x %struct.SMU75_Discrete_GraphicsLevel], %struct.SMU75_Discrete_MemoryLevel, [4 x %struct.SMU75_Discrete_MemoryLevel], [8 x %struct.SMU75_Discrete_LinkLevel], %struct.SMU75_Discrete_ACPILevel, [8 x %struct.SMU75_Discrete_UvdLevel], [8 x %struct.SMU75_Discrete_ExtClkLevel], [8 x %struct.SMU75_Discrete_ExtClkLevel], [8 x %struct.SMU75_Discrete_ExtClkLevel], %struct.SMU75_Discrete_Ulv, [4 x [8 x i8]], i32, [32 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i16, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, [5 x [3 x [1 x i16]]], [5 x [3 x [1 x i16]]], i16, i16, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, [8 x i8], %struct.SMU_ClockStretcherDataTable, %struct.SMU_CKS_LOOKUPTable, i32, [8 x %struct.sclkFcwRange_t], [2 x %struct.GB_VDROOP_TABLE_t], [2 x %struct.SMU_QuadraticCoeffs] }
%struct.SMU75_PIDController = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SMIO_Table = type { [4 x %struct.SMIO_Pattern] }
%struct.SMIO_Pattern = type { i16, i8, i8 }
%struct.SMU75_Discrete_GraphicsLevel = type { i32, i8, i8, i16, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, %struct.SMU_SclkSetting, [2 x i8], i16 }
%struct.SMU_SclkSetting = type { i32, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, i16 }
%struct.SMU75_Discrete_MemoryLevel = type { i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i16, i8, [3 x i8] }
%struct.SMU75_Discrete_LinkLevel = type { i8, i8, i8, i8, i32, i32, i16, i16 }
%struct.SMU75_Discrete_ACPILevel = type { i32, i32, i32, i8, i8, i8, i8, i32, i32, %struct.SMU_SclkSetting }
%struct.SMU75_Discrete_UvdLevel = type { i32, i32, i32, i8, i8, [2 x i8] }
%struct.SMU75_Discrete_ExtClkLevel = type { i32, i32, i8, [3 x i8] }
%struct.SMU_ClockStretcherDataTable = type { [4 x %struct.SMU_ClockStretcherDataTableEntry] }
%struct.SMU_ClockStretcherDataTableEntry = type { i8, i8, i16 }
%struct.SMU_CKS_LOOKUPTable = type { [4 x %struct.SMU_CKS_LOOKUPTableEntry] }
%struct.SMU_CKS_LOOKUPTableEntry = type { i16, i16, i8, [3 x i8] }
%struct.GB_VDROOP_TABLE_t = type { i32, i32, i32, i32 }
%struct.SMU_QuadraticCoeffs = type { i32, i32, i16, i8, i8 }
%struct.SMU75_Discrete_Ulv = type { i32, i32, i16, i8, i8, i16, i16 }
%struct.SMU75_Discrete_PmFuses = type { [8 x i8], [8 x i8], [8 x i8], i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, [16 x i8], i16, i16, i16, i16, [16 x i8], i8, i8, [2 x i8], i16, i16, [3 x i16], i8, i8, [3 x %struct.SMU_QuadraticCoeffs], %struct.SMU_QuadraticCoeffs, %struct.SMU_QuadraticCoeffs, %struct.SMU_QuadraticCoeffs, i32, i16, i16, i32, %struct.SMU_QuadraticCoeffs }
%struct.vegam_range_table = type { i32, i32 }
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
%struct.pp_atomctrl_clock_dividers_vi = type { i32, i32, %union.pp_atomctrl_tcipll_fb_divider, i8, i8, i8 }
%union.pp_atomctrl_tcipll_fb_divider = type { %struct.anon.115 }
%struct.anon.115 = type { i32 }
%struct.pp_atomctrl_gpio_pin_assignment = type { i16, i8 }
%struct.phm_ppt_v1_voltage_lookup_table = type { i32, [0 x %struct.phm_ppt_v1_voltage_lookup_record] }
%struct.phm_ppt_v1_voltage_lookup_record = type { i16, i16, i16, i16, i16 }
%struct.phm_ppt_v1_mm_clock_voltage_dependency_table = type { i32, [0 x %struct.phm_ppt_v1_mm_clock_voltage_dependency_record] }
%struct.phm_ppt_v1_mm_clock_voltage_dependency_record = type { i32, i32, i32, i32, i32, i8, i16, i16, i16, i8 }
%struct.phm_cac_tdp_table = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8 }
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
%struct.pp_atom_ctrl_sclk_range_table = type { [8 x %struct.pp_atom_ctrl_sclk_range_table_entry] }
%struct.pp_atom_ctrl_sclk_range_table_entry = type { i8, i8, i16, i16, i16 }
%struct.amdgpu_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pp_atomctrl_memory_clock_param_ai = type { i32, i32, i16, i16 }
%struct.SMU75_Discrete_MCArbDramTimingTable = type { [8 x [4 x %struct.SMU75_Discrete_MCArbDramTimingTableEntry]] }
%struct.SMU75_Discrete_MCArbDramTimingTableEntry = type { i32, i32, i32, i32, i32 }
%struct.phm_ppt_v1_clock_voltage_dependency_table = type { i32, [0 x %struct.phm_ppt_v1_clock_voltage_dependency_record] }
%struct.pp_atom_ctrl__avfs_parameters = type { i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i16, i32, i16, i8, i8, i8, i8, i16, i8, i8 }
%struct.AVFS_meanNsigma_t = type { [3 x i32], i16, i16, i16, i16, [8 x i8] }
%struct.AVFS_Sclk_Offset_t = type { [8 x i16] }
%struct.pp_atomctrl_clock_dividers_ai = type { i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16 }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vegam_smu\00", [22 x i8] zeroinitializer }, align 32
@vegam_smu_funcs = dso_local constant { %struct.pp_smumgr_func, [48 x i8] } { %struct.pp_smumgr_func { ptr @.str, ptr @vegam_smu_init, ptr @smu7_smu_fini, ptr @vegam_start_smu, ptr @smu7_check_fw_load_finish, ptr @smu7_reload_firmware, ptr null, ptr @smu7_get_argument, ptr @smu7_send_msg_to_smc, ptr @smu7_send_msg_to_smc_with_parameter, ptr null, ptr null, ptr @vegam_update_smc_table, ptr @vegam_process_firmware_header, ptr @vegam_update_sclk_threshold, ptr @vegam_thermal_setup_fan_table, ptr @vegam_thermal_avfs_enable, ptr @vegam_init_smc_table, ptr @vegam_populate_all_graphic_levels, ptr @vegam_populate_all_memory_levels, ptr null, ptr @vegam_get_offsetof, ptr @vegam_get_mac_definition, ptr @vegam_is_dpm_running, ptr @vegam_is_hw_avfs_present, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vegam_start_smu._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.vegam_start_smu = private unnamed_addr constant [16 x i8] c"vegam_start_smu\00", align 1
@vegam_start_smu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_start_smu, ptr @.str.3, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\014amdgpu: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c\00", [63 x i8] zeroinitializer }, align 32
@vegam_start_smu._entry_ptr = internal global ptr @vegam_start_smu._entry, section ".printk_index", align 4
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to load SMU ucode.\00", [38 x i8] zeroinitializer }, align 32
@vegam_start_smu_in_protection_mode._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vegam_start_smu_in_protection_mode = private unnamed_addr constant [35 x i8] c"vegam_start_smu_in_protection_mode\00", align 1
@vegam_start_smu_in_protection_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_start_smu_in_protection_mode, ptr @.str.3, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_start_smu_in_protection_mode._entry_ptr = internal global ptr @vegam_start_smu_in_protection_mode._entry, section ".printk_index", align 4
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SMU Firmware start failed!\00", [37 x i8] zeroinitializer }, align 32
@vegam_update_sclk_threshold._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vegam_update_sclk_threshold = private unnamed_addr constant [28 x i8] c"vegam_update_sclk_threshold\00", align 1
@vegam_update_sclk_threshold._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_update_sclk_threshold, ptr @.str.3, i32 2239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_update_sclk_threshold._entry_ptr = internal global ptr @vegam_update_sclk_threshold._entry, section ".printk_index", align 4
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to update SCLK threshold!\00", [63 x i8] zeroinitializer }, align 32
@vegam_update_sclk_threshold._rs.7 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vegam_update_sclk_threshold._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_update_sclk_threshold, ptr @.str.3, i32 2244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_update_sclk_threshold._entry_ptr.9 = internal global ptr @vegam_update_sclk_threshold._entry.8, section ".printk_index", align 4
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to program memory timing parameters!\00", [52 x i8] zeroinitializer }, align 32
@vegam_populate_memory_timing_parameters._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vegam_populate_memory_timing_parameters = private unnamed_addr constant [40 x i8] c"vegam_populate_memory_timing_parameters\00", align 1
@vegam_populate_memory_timing_parameters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_populate_memory_timing_parameters, ptr @.str.3, i32 1261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_populate_memory_timing_parameters._entry_ptr = internal global ptr @vegam_populate_memory_timing_parameters._entry, section ".printk_index", align 4
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error calling VBIOS to set DRAM_TIMING.\00", [56 x i8] zeroinitializer }, align 32
@vegam_thermal_setup_fan_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vegam_thermal_setup_fan_table = private unnamed_addr constant [30 x i8] c"vegam_thermal_setup_fan_table\00", align 1
@vegam_thermal_setup_fan_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_thermal_setup_fan_table, ptr @.str.3, i32 2272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_thermal_setup_fan_table._entry_ptr = internal global ptr @vegam_thermal_setup_fan_table._entry, section ".printk_index", align 4
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VBIOS fan info is not correct!\00", [33 x i8] zeroinitializer }, align 32
@__func__.vegam_init_smc_table = private unnamed_addr constant [21 x i8] c"vegam_init_smc_table\00", align 1
@vegam_init_smc_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_init_smc_table, ptr @.str.3, i32 1956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry_ptr = internal global ptr @vegam_init_smc_table._entry, section ".printk_index", align 4
@vegam_init_smc_table._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_init_smc_table, ptr @.str.3, i32 1963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry_ptr.16 = internal global ptr @vegam_init_smc_table._entry.15, section ".printk_index", align 4
@vegam_init_smc_table._rs.18 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_init_smc_table, ptr @.str.3, i32 1967, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry_ptr.20 = internal global ptr @vegam_init_smc_table._entry.19, section ".printk_index", align 4
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to initialize Graphics Level!\00", [59 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._rs.22 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_init_smc_table, ptr @.str.3, i32 1971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry_ptr.24 = internal global ptr @vegam_init_smc_table._entry.23, section ".printk_index", align 4
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to initialize Memory Level!\00", [61 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._rs.26 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_init_smc_table, ptr @.str.3, i32 1975, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry_ptr.28 = internal global ptr @vegam_init_smc_table._entry.27, section ".printk_index", align 4
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialize ACPI Level!\00", [63 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._rs.30 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_init_smc_table, ptr @.str.3, i32 1979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry_ptr.32 = internal global ptr @vegam_init_smc_table._entry.31, section ".printk_index", align 4
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize VCE Level!\00", [32 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._rs.34 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_init_smc_table, ptr @.str.3, i32 1987, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry_ptr.36 = internal global ptr @vegam_init_smc_table._entry.35, section ".printk_index", align 4
@.str.37 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to Write ARB settings for the initial state.\00", [44 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._rs.38 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_init_smc_table, ptr @.str.3, i32 1991, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry_ptr.40 = internal global ptr @vegam_init_smc_table._entry.39, section ".printk_index", align 4
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize UVD Level!\00", [32 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._rs.42 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_init_smc_table, ptr @.str.3, i32 1995, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry_ptr.44 = internal global ptr @vegam_init_smc_table._entry.43, section ".printk_index", align 4
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialize Boot Level!\00", [63 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_init_smc_table, ptr @.str.3, i32 1999, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry_ptr.48 = internal global ptr @vegam_init_smc_table._entry.47, section ".printk_index", align 4
@vegam_init_smc_table._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_init_smc_table, ptr @.str.3, i32 2003, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry_ptr.52 = internal global ptr @vegam_init_smc_table._entry.51, section ".printk_index", align 4
@vegam_init_smc_table._rs.54 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_init_smc_table, ptr @.str.3, i32 2010, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry_ptr.56 = internal global ptr @vegam_init_smc_table._entry.55, section ".printk_index", align 4
@.str.57 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to populate Clock Stretcher Data Table!\00", [49 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._rs.58 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_init_smc_table, ptr @.str.3, i32 2015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry_ptr.60 = internal global ptr @vegam_init_smc_table._entry.59, section ".printk_index", align 4
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to populate AVFS Parameters!\00", [60 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._rs.62 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_init_smc_table, ptr @.str.3, i32 2037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry_ptr.64 = internal global ptr @vegam_init_smc_table._entry.63, section ".printk_index", align 4
@.str.65 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"There must be 1 or more PCIE levels defined in PPTable.\00", [40 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_init_smc_table, ptr @.str.3, i32 2045, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry_ptr.68 = internal global ptr @vegam_init_smc_table._entry.67, section ".printk_index", align 4
@vegam_init_smc_table._rs.70 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_init_smc_table, ptr @.str.3, i32 2109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry_ptr.72 = internal global ptr @vegam_init_smc_table._entry.71, section ".printk_index", align 4
@.str.73 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Can not find DFS divide id for Sclk\00", [60 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._rs.74 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_init_smc_table, ptr @.str.3, i32 2141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry_ptr.76 = internal global ptr @vegam_init_smc_table._entry.75, section ".printk_index", align 4
@.str.77 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to upload dpm data to SMC memory!\00", [55 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._rs.78 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_init_smc_table, ptr @.str.3, i32 2145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry_ptr.80 = internal global ptr @vegam_init_smc_table._entry.79, section ".printk_index", align 4
@.str.81 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to  populate PM fuses to SMC memory!\00", [52 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_init_smc_table, ptr @.str.3, i32 2149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_init_smc_table._entry_ptr.84 = internal global ptr @vegam_init_smc_table._entry.83, section ".printk_index", align 4
@vegam_power_tune_data_set_array = internal constant { [1 x %struct.vegam_pt_defaults], [52 x i8] } { [1 x %struct.vegam_pt_defaults] [%struct.vegam_pt_defaults { i8 1, i8 15, i8 -3, i8 25, i8 5, i8 45, i32 0, i32 720896, [15 x i16] [i16 121, i16 595, i16 605, i16 174, i16 114, i16 128, i16 131, i16 134, i16 111, i16 200, i16 201, i16 201, i16 47, i16 77, i16 97], [15 x i16] [i16 380, i16 370, i16 384, i16 444, i16 435, i16 445, i16 518, i16 512, i16 515, i16 605, i16 602, i16 597, i16 707, i16 709, i16 692] }], [52 x i8] zeroinitializer }, align 32
@vegam_populate_smc_acpi_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vegam_populate_smc_acpi_level = private unnamed_addr constant [30 x i8] c"vegam_populate_smc_acpi_level\00", align 1
@vegam_populate_smc_acpi_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_populate_smc_acpi_level, ptr @.str.3, i32 1134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_populate_smc_acpi_level._entry_ptr = internal global ptr @vegam_populate_smc_acpi_level._entry, section ".printk_index", align 4
@.str.86 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Cannot find ACPI VDDC voltage value in Clock Dependency Table\00", [34 x i8] zeroinitializer }, align 32
@vegam_populate_smc_acpi_level._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_populate_smc_acpi_level, ptr @.str.3, i32 1140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_populate_smc_acpi_level._entry_ptr.89 = internal global ptr @vegam_populate_smc_acpi_level._entry.88, section ".printk_index", align 4
@vegam_populate_smc_acpi_level._rs.91 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vegam_populate_smc_acpi_level._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_populate_smc_acpi_level, ptr @.str.3, i32 1172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_populate_smc_acpi_level._entry_ptr.93 = internal global ptr @vegam_populate_smc_acpi_level._entry.92, section ".printk_index", align 4
@.str.94 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Cannot find ACPI VDDCI voltage value in Clock Dependency Table\00", [33 x i8] zeroinitializer }, align 32
@vegam_populate_mvdd_value._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vegam_populate_mvdd_value = private unnamed_addr constant [26 x i8] c"vegam_populate_mvdd_value\00", align 1
@vegam_populate_mvdd_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_populate_mvdd_value, ptr @.str.3, i32 1104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_populate_mvdd_value._entry_ptr = internal global ptr @vegam_populate_mvdd_value._entry, section ".printk_index", align 4
@.str.95 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MVDD Voltage is outside the supported range.\00", [51 x i8] zeroinitializer }, align 32
@vegam_populate_smc_vce_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vegam_populate_smc_vce_level = private unnamed_addr constant [29 x i8] c"vegam_populate_smc_vce_level\00", align 1
@vegam_populate_smc_vce_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_populate_smc_vce_level, ptr @.str.3, i32 1235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_populate_smc_vce_level._entry_ptr = internal global ptr @vegam_populate_smc_vce_level._entry, section ".printk_index", align 4
@.str.96 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"can not find divide id for VCE engine clock\00", [52 x i8] zeroinitializer }, align 32
@vegam_populate_smc_uvd_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vegam_populate_smc_uvd_level = private unnamed_addr constant [29 x i8] c"vegam_populate_smc_uvd_level\00", align 1
@vegam_populate_smc_uvd_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_populate_smc_uvd_level, ptr @.str.3, i32 1346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_populate_smc_uvd_level._entry_ptr = internal global ptr @vegam_populate_smc_uvd_level._entry, section ".printk_index", align 4
@.str.97 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"can not find divide id for Vclk clock\00", [58 x i8] zeroinitializer }, align 32
@vegam_populate_smc_uvd_level._rs.98 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vegam_populate_smc_uvd_level._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_populate_smc_uvd_level, ptr @.str.3, i32 1353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_populate_smc_uvd_level._entry_ptr.100 = internal global ptr @vegam_populate_smc_uvd_level._entry.99, section ".printk_index", align 4
@.str.101 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"can not find divide id for Dclk clock\00", [58 x i8] zeroinitializer }, align 32
@vegam_populate_bapm_parameters_in_dpm_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vegam_populate_bapm_parameters_in_dpm_table = private unnamed_addr constant [44 x i8] c"vegam_populate_bapm_parameters_in_dpm_table\00", align 1
@vegam_populate_bapm_parameters_in_dpm_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_populate_bapm_parameters_in_dpm_table, ptr @.str.3, i32 1459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_populate_bapm_parameters_in_dpm_table._entry_ptr = internal global ptr @vegam_populate_bapm_parameters_in_dpm_table._entry, section ".printk_index", align 4
@.str.102 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Target Operating Temp is out of Range!\00", [57 x i8] zeroinitializer }, align 32
@vegam_populate_clock_stretcher_data_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vegam_populate_clock_stretcher_data_table = private unnamed_addr constant [42 x i8] c"vegam_populate_clock_stretcher_data_table\00", align 1
@vegam_populate_clock_stretcher_data_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_populate_clock_stretcher_data_table, ptr @.str.3, i32 1538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_populate_clock_stretcher_data_table._entry_ptr = internal global ptr @vegam_populate_clock_stretcher_data_table._entry, section ".printk_index", align 4
@.str.103 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Stretch Amount in PPTable not supported\0A\00", [55 x i8] zeroinitializer }, align 32
@vegam_populate_vr_config._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vegam_populate_vr_config = private unnamed_addr constant [25 x i8] c"vegam_populate_vr_config\00", align 1
@vegam_populate_vr_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_populate_vr_config, ptr @.str.3, i32 1686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_populate_vr_config._entry_ptr = internal global ptr @vegam_populate_vr_config._entry, section ".printk_index", align 4
@.str.104 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"VDDC should be on SVI2 control in merged mode!\00", [49 x i8] zeroinitializer }, align 32
@vegam_populate_vr_config._rs.105 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vegam_populate_vr_config._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_populate_vr_config, ptr @.str.3, i32 1711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_populate_vr_config._entry_ptr.107 = internal global ptr @vegam_populate_vr_config._entry.106, section ".printk_index", align 4
@.str.108 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"SVI2 Plane 2 is already taken, set MVDD as Static\00", [46 x i8] zeroinitializer }, align 32
@vegam_populate_pm_fuses._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vegam_populate_pm_fuses = private unnamed_addr constant [24 x i8] c"vegam_populate_pm_fuses\00", align 1
@vegam_populate_pm_fuses._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_populate_pm_fuses, ptr @.str.3, i32 1858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_populate_pm_fuses._entry_ptr = internal global ptr @vegam_populate_pm_fuses._entry, section ".printk_index", align 4
@.str.109 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Attempt to get pm_fuse_table_offset Failed!\00", [52 x i8] zeroinitializer }, align 32
@vegam_populate_pm_fuses._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_populate_pm_fuses, ptr @.str.3, i32 1863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_populate_pm_fuses._entry_ptr.112 = internal global ptr @vegam_populate_pm_fuses._entry.111, section ".printk_index", align 4
@vegam_populate_pm_fuses._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_populate_pm_fuses, ptr @.str.3, i32 1867, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_populate_pm_fuses._entry_ptr.116 = internal global ptr @vegam_populate_pm_fuses._entry.115, section ".printk_index", align 4
@vegam_populate_pm_fuses._rs.118 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vegam_populate_pm_fuses._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_populate_pm_fuses, ptr @.str.3, i32 1873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_populate_pm_fuses._entry_ptr.120 = internal global ptr @vegam_populate_pm_fuses._entry.119, section ".printk_index", align 4
@.str.121 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Attempt to populate TdcWaterfallCtl, LPMLTemperature Min and Max Failed!\00", [55 x i8] zeroinitializer }, align 32
@vegam_populate_pm_fuses._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_populate_pm_fuses, ptr @.str.3, i32 1878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_populate_pm_fuses._entry_ptr.124 = internal global ptr @vegam_populate_pm_fuses._entry.123, section ".printk_index", align 4
@vegam_populate_pm_fuses._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_populate_pm_fuses, ptr @.str.3, i32 1883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_populate_pm_fuses._entry_ptr.128 = internal global ptr @vegam_populate_pm_fuses._entry.127, section ".printk_index", align 4
@vegam_populate_pm_fuses._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_populate_pm_fuses, ptr @.str.3, i32 1888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_populate_pm_fuses._entry_ptr.132 = internal global ptr @vegam_populate_pm_fuses._entry.131, section ".printk_index", align 4
@vegam_populate_pm_fuses._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_populate_pm_fuses, ptr @.str.3, i32 1893, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_populate_pm_fuses._entry_ptr.136 = internal global ptr @vegam_populate_pm_fuses._entry.135, section ".printk_index", align 4
@vegam_populate_pm_fuses._rs.138 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vegam_populate_pm_fuses._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_populate_pm_fuses, ptr @.str.3, i32 1901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_populate_pm_fuses._entry_ptr.140 = internal global ptr @vegam_populate_pm_fuses._entry.139, section ".printk_index", align 4
@.str.141 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Attempt to download PmFuseTable Failed!\00", [56 x i8] zeroinitializer }, align 32
@vegam_populate_dw8._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vegam_populate_dw8 = private unnamed_addr constant [19 x i8] c"vegam_populate_dw8\00", align 1
@vegam_populate_dw8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_populate_dw8, ptr @.str.3, i32 1774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_populate_dw8._entry_ptr = internal global ptr @vegam_populate_dw8._entry, section ".printk_index", align 4
@.str.142 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Attempt to read PmFuses.DW6 (SviLoadLineEn) from SMC Failed!\00", [35 x i8] zeroinitializer }, align 32
@vegam_populate_all_graphic_levels._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vegam_populate_all_graphic_levels = private unnamed_addr constant [34 x i8] c"vegam_populate_all_graphic_levels\00", align 1
@vegam_populate_all_graphic_levels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_populate_all_graphic_levels, ptr @.str.3, i32 921, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_populate_all_graphic_levels._entry_ptr = internal global ptr @vegam_populate_all_graphic_levels._entry, section ".printk_index", align 4
@Range_Table = internal constant { [8 x %struct.sclkFcwRange_t], [32 x i8] } { [8 x %struct.sclkFcwRange_t] [%struct.sclkFcwRange_t { i8 3, i8 4, i16 75, i16 160, i16 112 }, %struct.sclkFcwRange_t { i8 1, i8 4, i16 112, i16 224, i16 160 }, %struct.sclkFcwRange_t { i8 3, i8 3, i16 75, i16 160, i16 112 }, %struct.sclkFcwRange_t { i8 1, i8 3, i16 112, i16 224, i16 160 }, %struct.sclkFcwRange_t { i8 3, i8 2, i16 75, i16 160, i16 112 }, %struct.sclkFcwRange_t { i8 1, i8 2, i16 112, i16 216, i16 160 }, %struct.sclkFcwRange_t { i8 3, i8 1, i16 75, i16 160, i16 108 }, %struct.sclkFcwRange_t { i8 1, i8 1, i16 112, i16 216, i16 160 }], [32 x i8] zeroinitializer }, align 32
@vegam_populate_single_graphic_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vegam_populate_single_graphic_level = private unnamed_addr constant [36 x i8] c"vegam_populate_single_graphic_level\00", align 1
@vegam_populate_single_graphic_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_populate_single_graphic_level, ptr @.str.3, i32 831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_populate_single_graphic_level._entry_ptr = internal global ptr @vegam_populate_single_graphic_level._entry, section ".printk_index", align 4
@.str.143 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"can not find VDDC voltage value for VDDC engine clock dependency table\00", [57 x i8] zeroinitializer }, align 32
@vegam_get_sleep_divider_id_from_clock._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vegam_get_sleep_divider_id_from_clock = private unnamed_addr constant [38 x i8] c"vegam_get_sleep_divider_id_from_clock\00", align 1
@vegam_get_sleep_divider_id_from_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_get_sleep_divider_id_from_clock, ptr @.str.3, i32 800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_get_sleep_divider_id_from_clock._entry_ptr = internal global ptr @vegam_get_sleep_divider_id_from_clock._entry, section ".printk_index", align 4
@.str.144 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Engine clock can't satisfy stutter requirement!\00", [48 x i8] zeroinitializer }, align 32
@vegam_populate_all_memory_levels._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vegam_populate_all_memory_levels = private unnamed_addr constant [33 x i8] c"vegam_populate_all_memory_levels\00", align 1
@vegam_populate_all_memory_levels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_populate_all_memory_levels, ptr @.str.3, i32 1053, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_populate_all_memory_levels._entry_ptr = internal global ptr @vegam_populate_all_memory_levels._entry, section ".printk_index", align 4
@.str.145 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"can not populate memory level as memory clock is zero\00", [42 x i8] zeroinitializer }, align 32
@vegam_populate_single_memory_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vegam_populate_single_memory_level = private unnamed_addr constant [35 x i8] c"vegam_populate_single_memory_level\00", align 1
@vegam_populate_single_memory_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_populate_single_memory_level, ptr @.str.3, i32 998, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_populate_single_memory_level._entry_ptr = internal global ptr @vegam_populate_single_memory_level._entry, section ".printk_index", align 4
@.str.146 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"can not find MinVddc voltage value from memory VDDC voltage dependency table\00", [51 x i8] zeroinitializer }, align 32
@vegam_populate_single_memory_level._rs.147 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vegam_populate_single_memory_level._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_populate_single_memory_level, ptr @.str.3, i32 1004, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_populate_single_memory_level._entry_ptr.149 = internal global ptr @vegam_populate_single_memory_level._entry.148, section ".printk_index", align 4
@.str.150 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to calculate mclk params.\00", [63 x i8] zeroinitializer }, align 32
@vegam_calculate_mclk_params._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vegam_calculate_mclk_params = private unnamed_addr constant [28 x i8] c"vegam_calculate_mclk_params\00", align 1
@vegam_calculate_mclk_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vegam_calculate_mclk_params, ptr @.str.3, i32 972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vegam_calculate_mclk_params._entry_ptr = internal global ptr @vegam_calculate_mclk_params._entry, section ".printk_index", align 4
@.str.151 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to retrieve memory pll parameter.\00", [55 x i8] zeroinitializer }, align 32
@vegam_get_offsetof._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.3, i32 2196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014amdgpu: can't get the offset of type %x member %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vegam_get_offsetof\00", [45 x i8] zeroinitializer }, align 32
@vegam_get_offsetof._entry_ptr = internal global ptr @vegam_get_offsetof._entry, section ".printk_index", align 4
@vegam_get_mac_definition._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.3, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014amdgpu: can't get the mac of %x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vegam_get_mac_definition\00", [39 x i8] zeroinitializer }, align 32
@vegam_get_mac_definition._entry_ptr = internal global ptr @vegam_get_mac_definition._entry, section ".printk_index", align 4
@switch.table.vegam_get_offsetof = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 48, i32 44, i32 60, i32 64, i32 12, i32 16, i32 108, i32 48, i32 48, i32 48, i32 80, i32 84, i32 88, i32 92, i32 96], [36 x i8] zeroinitializer }, align 32
@switch.table.vegam_get_offsetof.156 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1648, i32 1649, i32 1764], [20 x i8] zeroinitializer }, align 32
@switch.table.vegam_get_mac_definition = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 8, i32 4, i32 8, i32 32, i32 16, i32 16, i32 8, i32 4, i32 65792], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2279, i32 10 }
@___asan_gen_.164 = private unnamed_addr constant [16 x i8] c"vegam_smu_funcs\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2278, i32 29 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 211, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 139, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2238, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2242, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1259, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2270, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1955, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1962, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1966, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1970, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1974, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1978, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1986, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1990, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1994, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1998, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2002, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2008, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2014, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2035, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2044, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2107, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2140, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2144, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2148, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant [32 x i8] c"vegam_power_tune_data_set_array\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 64, i32 1 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1131, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1138, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1169, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1102, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1233, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1345, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1352, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1457, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1536, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1684, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1710, i32 4 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1856, i32 4 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1861, i32 4 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1866, i32 4 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1870, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1876, i32 4 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1881, i32 4 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1886, i32 4 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1891, i32 4 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1899, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1772, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 919, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant [12 x i8] c"Range_Table\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 72, i32 29 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 828, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 798, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1051, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 996, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1002, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 969, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2196, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.593 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.594 = private constant [68 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c\00", align 1
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 327, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant [32 x i8] c"switch.table.vegam_get_offsetof\00", align 1
@___asan_gen_.597 = private unnamed_addr constant [36 x i8] c"switch.table.vegam_get_offsetof.156\00", align 1
@___asan_gen_.598 = private unnamed_addr constant [38 x i8] c"switch.table.vegam_get_mac_definition\00", align 1
@llvm.compiler.used = appending global [203 x ptr] [ptr @vegam_calculate_mclk_params._entry, ptr @vegam_calculate_mclk_params._entry_ptr, ptr @vegam_get_mac_definition._entry, ptr @vegam_get_mac_definition._entry_ptr, ptr @vegam_get_offsetof._entry, ptr @vegam_get_offsetof._entry_ptr, ptr @vegam_get_sleep_divider_id_from_clock._entry, ptr @vegam_get_sleep_divider_id_from_clock._entry_ptr, ptr @vegam_init_smc_table._entry, ptr @vegam_init_smc_table._entry.15, ptr @vegam_init_smc_table._entry.19, ptr @vegam_init_smc_table._entry.23, ptr @vegam_init_smc_table._entry.27, ptr @vegam_init_smc_table._entry.31, ptr @vegam_init_smc_table._entry.35, ptr @vegam_init_smc_table._entry.39, ptr @vegam_init_smc_table._entry.43, ptr @vegam_init_smc_table._entry.47, ptr @vegam_init_smc_table._entry.51, ptr @vegam_init_smc_table._entry.55, ptr @vegam_init_smc_table._entry.59, ptr @vegam_init_smc_table._entry.63, ptr @vegam_init_smc_table._entry.67, ptr @vegam_init_smc_table._entry.71, ptr @vegam_init_smc_table._entry.75, ptr @vegam_init_smc_table._entry.79, ptr @vegam_init_smc_table._entry.83, ptr @vegam_init_smc_table._entry_ptr, ptr @vegam_init_smc_table._entry_ptr.16, ptr @vegam_init_smc_table._entry_ptr.20, ptr @vegam_init_smc_table._entry_ptr.24, ptr @vegam_init_smc_table._entry_ptr.28, ptr @vegam_init_smc_table._entry_ptr.32, ptr @vegam_init_smc_table._entry_ptr.36, ptr @vegam_init_smc_table._entry_ptr.40, ptr @vegam_init_smc_table._entry_ptr.44, ptr @vegam_init_smc_table._entry_ptr.48, ptr @vegam_init_smc_table._entry_ptr.52, ptr @vegam_init_smc_table._entry_ptr.56, ptr @vegam_init_smc_table._entry_ptr.60, ptr @vegam_init_smc_table._entry_ptr.64, ptr @vegam_init_smc_table._entry_ptr.68, ptr @vegam_init_smc_table._entry_ptr.72, ptr @vegam_init_smc_table._entry_ptr.76, ptr @vegam_init_smc_table._entry_ptr.80, ptr @vegam_init_smc_table._entry_ptr.84, ptr @vegam_populate_all_graphic_levels._entry, ptr @vegam_populate_all_graphic_levels._entry_ptr, ptr @vegam_populate_all_memory_levels._entry, ptr @vegam_populate_all_memory_levels._entry_ptr, ptr @vegam_populate_bapm_parameters_in_dpm_table._entry, ptr @vegam_populate_bapm_parameters_in_dpm_table._entry_ptr, ptr @vegam_populate_clock_stretcher_data_table._entry, ptr @vegam_populate_clock_stretcher_data_table._entry_ptr, ptr @vegam_populate_dw8._entry, ptr @vegam_populate_dw8._entry_ptr, ptr @vegam_populate_memory_timing_parameters._entry, ptr @vegam_populate_memory_timing_parameters._entry_ptr, ptr @vegam_populate_mvdd_value._entry, ptr @vegam_populate_mvdd_value._entry_ptr, ptr @vegam_populate_pm_fuses._entry, ptr @vegam_populate_pm_fuses._entry.111, ptr @vegam_populate_pm_fuses._entry.115, ptr @vegam_populate_pm_fuses._entry.119, ptr @vegam_populate_pm_fuses._entry.123, ptr @vegam_populate_pm_fuses._entry.127, ptr @vegam_populate_pm_fuses._entry.131, ptr @vegam_populate_pm_fuses._entry.135, ptr @vegam_populate_pm_fuses._entry.139, ptr @vegam_populate_pm_fuses._entry_ptr, ptr @vegam_populate_pm_fuses._entry_ptr.112, ptr @vegam_populate_pm_fuses._entry_ptr.116, ptr @vegam_populate_pm_fuses._entry_ptr.120, ptr @vegam_populate_pm_fuses._entry_ptr.124, ptr @vegam_populate_pm_fuses._entry_ptr.128, ptr @vegam_populate_pm_fuses._entry_ptr.132, ptr @vegam_populate_pm_fuses._entry_ptr.136, ptr @vegam_populate_pm_fuses._entry_ptr.140, ptr @vegam_populate_single_graphic_level._entry, ptr @vegam_populate_single_graphic_level._entry_ptr, ptr @vegam_populate_single_memory_level._entry, ptr @vegam_populate_single_memory_level._entry.148, ptr @vegam_populate_single_memory_level._entry_ptr, ptr @vegam_populate_single_memory_level._entry_ptr.149, ptr @vegam_populate_smc_acpi_level._entry, ptr @vegam_populate_smc_acpi_level._entry.88, ptr @vegam_populate_smc_acpi_level._entry.92, ptr @vegam_populate_smc_acpi_level._entry_ptr, ptr @vegam_populate_smc_acpi_level._entry_ptr.89, ptr @vegam_populate_smc_acpi_level._entry_ptr.93, ptr @vegam_populate_smc_uvd_level._entry, ptr @vegam_populate_smc_uvd_level._entry.99, ptr @vegam_populate_smc_uvd_level._entry_ptr, ptr @vegam_populate_smc_uvd_level._entry_ptr.100, ptr @vegam_populate_smc_vce_level._entry, ptr @vegam_populate_smc_vce_level._entry_ptr, ptr @vegam_populate_vr_config._entry, ptr @vegam_populate_vr_config._entry.106, ptr @vegam_populate_vr_config._entry_ptr, ptr @vegam_populate_vr_config._entry_ptr.107, ptr @vegam_start_smu._entry, ptr @vegam_start_smu._entry_ptr, ptr @vegam_start_smu_in_protection_mode._entry, ptr @vegam_start_smu_in_protection_mode._entry_ptr, ptr @vegam_thermal_setup_fan_table._entry, ptr @vegam_thermal_setup_fan_table._entry_ptr, ptr @vegam_update_sclk_threshold._entry, ptr @vegam_update_sclk_threshold._entry.8, ptr @vegam_update_sclk_threshold._entry_ptr, ptr @vegam_update_sclk_threshold._entry_ptr.9, ptr @.str, ptr @vegam_smu_funcs, ptr @vegam_start_smu._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @vegam_start_smu_in_protection_mode._rs, ptr @.str.5, ptr @vegam_update_sclk_threshold._rs, ptr @.str.6, ptr @vegam_update_sclk_threshold._rs.7, ptr @.str.10, ptr @vegam_populate_memory_timing_parameters._rs, ptr @.str.11, ptr @vegam_thermal_setup_fan_table._rs, ptr @.str.12, ptr @vegam_init_smc_table._rs.18, ptr @.str.21, ptr @vegam_init_smc_table._rs.22, ptr @.str.25, ptr @vegam_init_smc_table._rs.26, ptr @.str.29, ptr @vegam_init_smc_table._rs.30, ptr @.str.33, ptr @vegam_init_smc_table._rs.34, ptr @.str.37, ptr @vegam_init_smc_table._rs.38, ptr @.str.41, ptr @vegam_init_smc_table._rs.42, ptr @.str.45, ptr @vegam_init_smc_table._rs.54, ptr @.str.57, ptr @vegam_init_smc_table._rs.58, ptr @.str.61, ptr @vegam_init_smc_table._rs.62, ptr @.str.65, ptr @vegam_init_smc_table._rs.70, ptr @.str.73, ptr @vegam_init_smc_table._rs.74, ptr @.str.77, ptr @vegam_init_smc_table._rs.78, ptr @.str.81, ptr @vegam_power_tune_data_set_array, ptr @vegam_populate_smc_acpi_level._rs, ptr @.str.86, ptr @vegam_populate_smc_acpi_level._rs.91, ptr @.str.94, ptr @vegam_populate_mvdd_value._rs, ptr @.str.95, ptr @vegam_populate_smc_vce_level._rs, ptr @.str.96, ptr @vegam_populate_smc_uvd_level._rs, ptr @.str.97, ptr @vegam_populate_smc_uvd_level._rs.98, ptr @.str.101, ptr @vegam_populate_bapm_parameters_in_dpm_table._rs, ptr @.str.102, ptr @vegam_populate_clock_stretcher_data_table._rs, ptr @.str.103, ptr @vegam_populate_vr_config._rs, ptr @.str.104, ptr @vegam_populate_vr_config._rs.105, ptr @.str.108, ptr @vegam_populate_pm_fuses._rs, ptr @.str.109, ptr @vegam_populate_pm_fuses._rs.118, ptr @.str.121, ptr @vegam_populate_pm_fuses._rs.138, ptr @.str.141, ptr @vegam_populate_dw8._rs, ptr @.str.142, ptr @vegam_populate_all_graphic_levels._rs, ptr @Range_Table, ptr @vegam_populate_single_graphic_level._rs, ptr @.str.143, ptr @vegam_get_sleep_divider_id_from_clock._rs, ptr @.str.144, ptr @vegam_populate_all_memory_levels._rs, ptr @.str.145, ptr @vegam_populate_single_memory_level._rs, ptr @.str.146, ptr @vegam_populate_single_memory_level._rs.147, ptr @.str.150, ptr @vegam_calculate_mclk_params._rs, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @switch.table.vegam_get_offsetof, ptr @switch.table.vegam_get_offsetof.156, ptr @switch.table.vegam_get_mac_definition], section "llvm.metadata"
@0 = internal global [148 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_smu_funcs to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_start_smu._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_start_smu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_start_smu_in_protection_mode._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_start_smu_in_protection_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_update_sclk_threshold._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_update_sclk_threshold._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_update_sclk_threshold._rs.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_update_sclk_threshold._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_memory_timing_parameters._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_memory_timing_parameters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_thermal_setup_fan_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_thermal_setup_fan_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._rs.18 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._rs.22 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._rs.26 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._rs.30 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._rs.34 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._rs.38 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._rs.42 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._rs.54 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._rs.58 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._rs.62 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._rs.70 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._rs.74 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._rs.78 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_init_smc_table._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_power_tune_data_set_array to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_smc_acpi_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_smc_acpi_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_smc_acpi_level._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_smc_acpi_level._rs.91 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_smc_acpi_level._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_mvdd_value._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_mvdd_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_smc_vce_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_smc_vce_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_smc_uvd_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_smc_uvd_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_smc_uvd_level._rs.98 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_smc_uvd_level._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_bapm_parameters_in_dpm_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_bapm_parameters_in_dpm_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_clock_stretcher_data_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_clock_stretcher_data_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_vr_config._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_vr_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_vr_config._rs.105 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_vr_config._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_pm_fuses._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_pm_fuses._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_pm_fuses._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_pm_fuses._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_pm_fuses._rs.118 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_pm_fuses._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_pm_fuses._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_pm_fuses._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_pm_fuses._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_pm_fuses._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_pm_fuses._rs.138 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_pm_fuses._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_dw8._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_dw8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_all_graphic_levels._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_all_graphic_levels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Range_Table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_single_graphic_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_single_graphic_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_get_sleep_divider_id_from_clock._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_get_sleep_divider_id_from_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_all_memory_levels._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_all_memory_levels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_single_memory_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_single_memory_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_single_memory_level._rs.147 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_populate_single_memory_level._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_calculate_mclk_params._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_calculate_mclk_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_get_offsetof._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vegam_get_mac_definition._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vegam_get_offsetof to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vegam_get_offsetof.156 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vegam_get_mac_definition to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vegam_smu_init(ptr noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2352) #10
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
define internal i32 @vegam_start_smu(ptr noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %call = tail call zeroext i1 @smu7_is_smc_ram_running(ptr noundef %hwmgr) #7
  br i1 %call, label %entry.if.end29_crit_edge, label %land.lhs.true

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.lhs.true:                                    ; preds = %entry
  %not_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %2 = ptrtoint ptr %not_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %not_vf, align 4, !range !315
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true.if.end29_crit_edge, label %if.then

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

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
  %protected_mode = getelementptr inbounds %struct.vegam_smumgr, ptr %1, i32 0, i32 1
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
  br label %if.end29.sink.split

if.else:                                          ; preds = %if.then
  %44 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %write_ind_register.i50 = getelementptr inbounds %struct.cgs_ops, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %write_ind_register.i50 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_ind_register.i50, align 4
  %read_ind_register.i51 = getelementptr inbounds %struct.cgs_ops, ptr %47, i32 0, i32 2
  %50 = ptrtoint ptr %read_ind_register.i51 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read_ind_register.i51, align 4
  %call.i52 = tail call i32 %51(ptr noundef %45, i32 noundef 1, i32 noundef -2147483648) #7
  %or.i53 = or i32 %call.i52, 1
  tail call void %49(ptr noundef %45, i32 noundef 1, i32 noundef -2147483648, i32 noundef %or.i53) #7
  %call5.i = tail call i32 @smu7_upload_smu_firmware_image(ptr noundef %hwmgr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.not.i54 = icmp eq i32 %call5.i, 0
  br i1 %cmp.not.i54, label %if.end.i56, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.i56:                                       ; preds = %if.else
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
  %call34.i55 = tail call i32 @phm_wait_for_indirect_register_unequal(ptr noundef %hwmgr, i32 noundef 428, i32 noundef -536858488, i32 noundef 0, i32 noundef 1) #7
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

do.body.i:                                        ; preds = %if.end.i56
  %call43.i = tail call i32 @___ratelimit(ptr noundef nonnull @vegam_start_smu_in_protection_mode._rs, ptr noundef nonnull @__func__.vegam_start_smu_in_protection_mode) #7
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

if.end50.i:                                       ; preds = %if.end.i56
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
  br label %if.end29.sink.split

do.body:                                          ; preds = %do.end.i, %do.body.i.do.body_crit_edge, %if.else.do.body_crit_edge, %if.then14.do.body_crit_edge
  %result.0.ph = phi i32 [ -1, %do.body.i.do.body_crit_edge ], [ -1, %do.end.i ], [ %call5.i, %if.else.do.body_crit_edge ], [ %call10.i, %if.then14.do.body_crit_edge ]
  %call20 = tail call i32 @___ratelimit(ptr noundef nonnull @vegam_start_smu._rs, ptr noundef nonnull @__func__.vegam_start_smu) #7
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

if.end29.sink.split:                              ; preds = %if.end50.i, %if.end.i
  %95 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %95)
  %.sink = load ptr, ptr %device, align 4
  %96 = ptrtoint ptr %.sink to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %.sink, align 4
  %write_ind_register25.i = getelementptr inbounds %struct.cgs_ops, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %write_ind_register25.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write_ind_register25.i, align 4
  %read_ind_register29.i = getelementptr inbounds %struct.cgs_ops, ptr %97, i32 0, i32 2
  %100 = ptrtoint ptr %read_ind_register29.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %read_ind_register29.i, align 4
  %call31.i = tail call i32 %101(ptr noundef %.sink, i32 noundef 1, i32 noundef -2147483648) #7
  %and32.i = and i32 %call31.i, -2
  tail call void %99(ptr noundef %.sink, i32 noundef 1, i32 noundef -2147483648, i32 noundef %and32.i) #7
  %call34.i = tail call i32 @phm_wait_on_indirect_register(ptr noundef %hwmgr, i32 noundef 428, i32 noundef 258048, i32 noundef 1, i32 noundef 1) #7
  br label %if.end29

if.end29:                                         ; preds = %if.end29.sink.split, %land.lhs.true.if.end29_crit_edge, %entry.if.end29_crit_edge
  %soft_regs_start = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 3
  %call31 = tail call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131120, ptr noundef %soft_regs_start, i32 noundef 262144) #7
  %call32 = tail call i32 @smu7_request_smu_load_fw(ptr noundef %hwmgr) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %if.end29 ], [ %result.0.ph, %do.end ], [ %result.0.ph, %do.body.cleanup_crit_edge ]
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
define internal i32 @vegam_update_smc_table(ptr noundef %hwmgr, i32 noundef %type) #0 align 64 {
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
  %UvdBootLevel.i = getelementptr inbounds %struct.vegam_smumgr, ptr %2, i32 0, i32 2, i32 46
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
  %add.i = add i32 %13, 1648
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
  %43 = getelementptr inbounds %struct.vegam_smumgr, ptr %33, i32 0, i32 2, i32 47
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv.sink.i, ptr %43, align 1
  %dpm_table_start.i15 = getelementptr inbounds %struct.smu7_smumgr, ptr %33, i32 0, i32 4
  %45 = ptrtoint ptr %dpm_table_start.i15 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dpm_table_start.i15, align 8
  %add.i16 = add i32 %46, 1649
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
  %arrayidx4.i = getelementptr %struct.vegam_smumgr, ptr %64, i32 0, i32 8, i32 0
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
  %arrayidx4.i.1 = getelementptr %struct.vegam_smumgr, ptr %64, i32 0, i32 8, i32 1
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
  %arrayidx4.i.2 = getelementptr %struct.vegam_smumgr, ptr %64, i32 0, i32 8, i32 2
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
  %arrayidx4.i.3 = getelementptr %struct.vegam_smumgr, ptr %64, i32 0, i32 8, i32 3
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
  %arrayidx4.i.4 = getelementptr %struct.vegam_smumgr, ptr %64, i32 0, i32 8, i32 4
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
  %arrayidx4.i.5 = getelementptr %struct.vegam_smumgr, ptr %64, i32 0, i32 8, i32 5
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
  %arrayidx4.i.6 = getelementptr %struct.vegam_smumgr, ptr %64, i32 0, i32 8, i32 6
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
  %arrayidx4.i.7 = getelementptr %struct.vegam_smumgr, ptr %64, i32 0, i32 8, i32 7
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
define internal i32 @vegam_process_firmware_header(ptr noundef %hwmgr) #0 align 64 {
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
  store i32 -1, ptr %tmp, align 4, !annotation !316
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
define internal i32 @vegam_update_sclk_threshold(ptr noundef %hwmgr) #0 align 64 {
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
  %add = add i32 %11, 1764
  %call3 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add, ptr noundef nonnull %low_sclk_interrupt_threshold, i32 noundef 4, i32 noundef 262144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %do.body.do.end13_crit_edge, label %if.then5

do.body.do.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

if.then5:                                         ; preds = %do.body
  %call6 = call i32 @___ratelimit(ptr noundef nonnull @vegam_update_sclk_threshold._rs, ptr noundef nonnull @__func__.vegam_update_sclk_threshold) #7
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
  %and.i = and i32 %15, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end13.cleanup_crit_edge, label %vegam_program_mem_timing_parameters.exit

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

vegam_program_mem_timing_parameters.exit:         ; preds = %do.end13
  %call.i = call fastcc i32 @vegam_program_memory_timing_parameters(ptr noundef %hwmgr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp16 = icmp eq i32 %call.i, 0
  br i1 %cmp16, label %vegam_program_mem_timing_parameters.exit.cleanup_crit_edge, label %if.then17

vegam_program_mem_timing_parameters.exit.cleanup_crit_edge: ; preds = %vegam_program_mem_timing_parameters.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then17:                                        ; preds = %vegam_program_mem_timing_parameters.exit
  %call18 = call i32 @___ratelimit(ptr noundef nonnull @vegam_update_sclk_threshold._rs.7, ptr noundef nonnull @__func__.vegam_update_sclk_threshold) #7
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
  %.str.10.sink = phi ptr [ @.str.6, %if.then5.cleanup.sink.split_crit_edge ], [ @.str.10, %if.then17.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call3, %if.then5.cleanup.sink.split_crit_edge ], [ %call.i, %if.then17.cleanup.sink.split_crit_edge ]
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %.str.10.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then17.cleanup_crit_edge, %vegam_program_mem_timing_parameters.exit.cleanup_crit_edge, %do.end13.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then5.cleanup_crit_edge ], [ %call.i, %if.then17.cleanup_crit_edge ], [ 0, %vegam_program_mem_timing_parameters.exit.cleanup_crit_edge ], [ 0, %do.end13.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %low_sclk_interrupt_threshold) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vegam_thermal_setup_fan_table(ptr nocapture noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fanInfo = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4
  %0 = ptrtoint ptr %fanInfo to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fanInfo, align 4, !range !315
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @vegam_thermal_setup_fan_table._rs, ptr noundef nonnull @__func__.vegam_thermal_setup_fan_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.do.end6_crit_edge, label %do.end

if.then.do.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.12) #11
  br label %do.end6

do.end6:                                          ; preds = %do.end, %if.then.do.end6_crit_edge, %entry.do.end6_crit_edge
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %3, -1073741825
  store i32 %and1.i, ptr %arrayidx.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vegam_thermal_avfs_enable(ptr noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %avfs_supported = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 47
  %2 = ptrtoint ptr %avfs_supported to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %avfs_supported, align 4, !range !315
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 618, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %apply_avfs_cks_off_voltage = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 96
  %4 = ptrtoint ptr %apply_avfs_cks_off_voltage to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %apply_avfs_cks_off_voltage, align 4, !range !315
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %if.then4

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 1045, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call5, %if.then4 ], [ 0, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vegam_init_smc_table(ptr noundef %hwmgr) #0 align 64 {
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
  %smc_state_table = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_pin) #7
  %6 = ptrtoint ptr %gpio_pin to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %gpio_pin, align 4, !annotation !316
  %gpio_table1 = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %5, i32 0, i32 19
  %7 = ptrtoint ptr %gpio_table1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpio_table1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dividers) #7
  %9 = call ptr @memset(ptr %dividers, i32 255, i32 16)
  %platform_descriptor = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23
  %10 = ptrtoint ptr %platform_descriptor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %platform_descriptor, align 4
  %or.i = or i32 %11, 16777216
  store i32 %or.i, ptr %platform_descriptor, align 4
  %power_tune_defaults10.i = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %power_tune_defaults10.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @vegam_power_tune_data_set_array, ptr %power_tune_defaults10.i, align 4
  %voltage_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %voltage_control to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %voltage_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not = icmp eq i32 %14, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %15 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %backend, align 4
  %vddci_control.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %16, i32 0, i32 40
  %17 = ptrtoint ptr %vddci_control.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vddci_control.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i.i = icmp eq i32 %18, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.vegam_populate_smc_vddci_table.exit.i_crit_edge

if.then.vegam_populate_smc_vddci_table.exit.i_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %vegam_populate_smc_vddci_table.exit.i

if.then.i.i:                                      ; preds = %if.then
  %vddci_voltage_table.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %16, i32 0, i32 42
  %19 = ptrtoint ptr %vddci_voltage_table.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vddci_voltage_table.i.i, align 4
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp41.not.i.i = icmp eq i32 %21, 0
  br i1 %cmp41.not.i.i, label %if.then.i.i.vegam_populate_smc_vddci_table.exit.i_crit_edge, label %for.body.i.i

if.then.i.i.vegam_populate_smc_vddci_table.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vegam_populate_smc_vddci_table.exit.i

for.body.i.i:                                     ; preds = %if.then.i.i
  %SmioTable1.i.i = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 7
  %arrayidx.i.i = getelementptr %struct.smu7_hwmgr, ptr %16, i32 0, i32 42, i32 3, i32 0
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.i.i, align 4
  %mul.i.i = shl i16 %23, 2
  %24 = ptrtoint ptr %SmioTable1.i.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %mul.i.i, ptr %SmioTable1.i.i, align 1
  %Smio.i.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 7, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %Smio.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %Smio.i.i, align 1
  %smio_low.i.i = getelementptr %struct.smu7_hwmgr, ptr %16, i32 0, i32 42, i32 3, i32 0, i32 1
  %26 = ptrtoint ptr %smio_low.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %smio_low.i.i, align 4
  %arrayidx16.i.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 45, i32 0
  %28 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %arrayidx16.i.i, align 1
  %or.i.i = or i32 %29, %27
  store i32 %or.i.i, ptr %arrayidx16.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %exitcond.not.i.i = icmp eq i32 %21, 1
  br i1 %exitcond.not.i.i, label %for.body.i.i.vegam_populate_smc_vddci_table.exit.i_crit_edge, label %for.body.i.i.1

for.body.i.i.vegam_populate_smc_vddci_table.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vegam_populate_smc_vddci_table.exit.i

for.body.i.i.1:                                   ; preds = %for.body.i.i
  %arrayidx.i.i.1 = getelementptr %struct.smu7_hwmgr, ptr %16, i32 0, i32 42, i32 3, i32 1
  %30 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.i.i.1, align 4
  %mul.i.i.1 = shl i16 %31, 2
  %arrayidx7.i.i.1 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 7, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx7.i.i.1 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %mul.i.i.1, ptr %arrayidx7.i.i.1, align 1
  %Smio.i.i.1 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 7, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %Smio.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %Smio.i.i.1, align 1
  %smio_low.i.i.1 = getelementptr %struct.smu7_hwmgr, ptr %16, i32 0, i32 42, i32 3, i32 1, i32 1
  %34 = ptrtoint ptr %smio_low.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %smio_low.i.i.1, align 4
  %arrayidx16.i.i.1 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 45, i32 1
  %36 = ptrtoint ptr %arrayidx16.i.i.1 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %arrayidx16.i.i.1, align 1
  %or.i.i.1 = or i32 %37, %35
  store i32 %or.i.i.1, ptr %arrayidx16.i.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %exitcond.not.i.i.1 = icmp eq i32 %21, 2
  br i1 %exitcond.not.i.i.1, label %for.body.i.i.1.vegam_populate_smc_vddci_table.exit.i_crit_edge, label %for.body.i.i.2

for.body.i.i.1.vegam_populate_smc_vddci_table.exit.i_crit_edge: ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %vegam_populate_smc_vddci_table.exit.i

for.body.i.i.2:                                   ; preds = %for.body.i.i.1
  %arrayidx.i.i.2 = getelementptr %struct.smu7_hwmgr, ptr %16, i32 0, i32 42, i32 3, i32 2
  %38 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx.i.i.2, align 4
  %mul.i.i.2 = shl i16 %39, 2
  %arrayidx7.i.i.2 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 7, i32 0, i32 2
  %40 = ptrtoint ptr %arrayidx7.i.i.2 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %mul.i.i.2, ptr %arrayidx7.i.i.2, align 1
  %Smio.i.i.2 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 7, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %Smio.i.i.2 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 2, ptr %Smio.i.i.2, align 1
  %smio_low.i.i.2 = getelementptr %struct.smu7_hwmgr, ptr %16, i32 0, i32 42, i32 3, i32 2, i32 1
  %42 = ptrtoint ptr %smio_low.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %smio_low.i.i.2, align 4
  %arrayidx16.i.i.2 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 45, i32 2
  %44 = ptrtoint ptr %arrayidx16.i.i.2 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %arrayidx16.i.i.2, align 1
  %or.i.i.2 = or i32 %45, %43
  store i32 %or.i.i.2, ptr %arrayidx16.i.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %exitcond.not.i.i.2 = icmp eq i32 %21, 3
  br i1 %exitcond.not.i.i.2, label %for.body.i.i.2.vegam_populate_smc_vddci_table.exit.i_crit_edge, label %for.body.i.i.3

for.body.i.i.2.vegam_populate_smc_vddci_table.exit.i_crit_edge: ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %vegam_populate_smc_vddci_table.exit.i

for.body.i.i.3:                                   ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i.3 = getelementptr %struct.smu7_hwmgr, ptr %16, i32 0, i32 42, i32 3, i32 3
  %46 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx.i.i.3, align 4
  %mul.i.i.3 = shl i16 %47, 2
  %arrayidx7.i.i.3 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 7, i32 0, i32 3
  %48 = ptrtoint ptr %arrayidx7.i.i.3 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %mul.i.i.3, ptr %arrayidx7.i.i.3, align 1
  %Smio.i.i.3 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 7, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %Smio.i.i.3 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 3, ptr %Smio.i.i.3, align 1
  %smio_low.i.i.3 = getelementptr %struct.smu7_hwmgr, ptr %16, i32 0, i32 42, i32 3, i32 3, i32 1
  %50 = ptrtoint ptr %smio_low.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %smio_low.i.i.3, align 4
  %arrayidx16.i.i.3 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 45, i32 3
  %52 = ptrtoint ptr %arrayidx16.i.i.3 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %arrayidx16.i.i.3, align 1
  %or.i.i.3 = or i32 %53, %51
  store i32 %or.i.i.3, ptr %arrayidx16.i.i.3, align 1
  br label %vegam_populate_smc_vddci_table.exit.i

vegam_populate_smc_vddci_table.exit.i:            ; preds = %for.body.i.i.3, %for.body.i.i.2.vegam_populate_smc_vddci_table.exit.i_crit_edge, %for.body.i.i.1.vegam_populate_smc_vddci_table.exit.i_crit_edge, %for.body.i.i.vegam_populate_smc_vddci_table.exit.i_crit_edge, %if.then.i.i.vegam_populate_smc_vddci_table.exit.i_crit_edge, %if.then.vegam_populate_smc_vddci_table.exit.i_crit_edge
  %mask_low.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %16, i32 0, i32 42, i32 1
  %54 = ptrtoint ptr %mask_low.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mask_low.i.i, align 4
  %SmioMask1.i.i = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 5
  %56 = ptrtoint ptr %SmioMask1.i.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %55, ptr %SmioMask1.i.i, align 1
  %57 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %backend, align 4
  %mvdd_control.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %58, i32 0, i32 23
  %59 = ptrtoint ptr %mvdd_control.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mvdd_control.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp.i2.i = icmp eq i32 %60, 1
  br i1 %cmp.i2.i, label %if.then.i4.i, label %vegam_populate_smc_vddci_table.exit.i.vegam_populate_smc_mvdd_table.exit.i_crit_edge

vegam_populate_smc_vddci_table.exit.i.vegam_populate_smc_mvdd_table.exit.i_crit_edge: ; preds = %vegam_populate_smc_vddci_table.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vegam_populate_smc_mvdd_table.exit.i

if.then.i4.i:                                     ; preds = %vegam_populate_smc_vddci_table.exit.i
  %mvdd_voltage_table.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %58, i32 0, i32 43
  %61 = ptrtoint ptr %mvdd_voltage_table.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mvdd_voltage_table.i.i, align 4
  %63 = tail call i32 @llvm.umin.i32(i32 %62, i32 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp41.not.i3.i = icmp eq i32 %63, 0
  br i1 %cmp41.not.i3.i, label %if.then.i4.i.for.end.i.i_crit_edge, label %for.body.i17.i

if.then.i4.i.for.end.i.i_crit_edge:               ; preds = %if.then.i4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i17.i:                                   ; preds = %if.then.i4.i
  %SmioTable2.i.i = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 8
  %arrayidx.i7.i = getelementptr %struct.smu7_hwmgr, ptr %58, i32 0, i32 43, i32 3, i32 0
  %64 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx.i7.i, align 4
  %mul.i8.i = shl i16 %65, 2
  %66 = ptrtoint ptr %SmioTable2.i.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 2)
  store i16 %mul.i8.i, ptr %SmioTable2.i.i, align 1
  %Smio.i11.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 8, i32 0, i32 0, i32 1
  %67 = ptrtoint ptr %Smio.i11.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %Smio.i11.i, align 1
  %smio_low.i12.i = getelementptr %struct.smu7_hwmgr, ptr %58, i32 0, i32 43, i32 3, i32 0, i32 1
  %68 = ptrtoint ptr %smio_low.i12.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %smio_low.i12.i, align 4
  %arrayidx16.i13.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 45, i32 0
  %70 = ptrtoint ptr %arrayidx16.i13.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %arrayidx16.i13.i, align 1
  %or.i14.i = or i32 %71, %69
  store i32 %or.i14.i, ptr %arrayidx16.i13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %exitcond.not.i16.i = icmp eq i32 %63, 1
  br i1 %exitcond.not.i16.i, label %for.body.i17.i.for.end.i.i_crit_edge, label %for.body.i17.i.1

for.body.i17.i.for.end.i.i_crit_edge:             ; preds = %for.body.i17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i17.i.1:                                 ; preds = %for.body.i17.i
  %arrayidx.i7.i.1 = getelementptr %struct.smu7_hwmgr, ptr %58, i32 0, i32 43, i32 3, i32 1
  %72 = ptrtoint ptr %arrayidx.i7.i.1 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx.i7.i.1, align 4
  %mul.i8.i.1 = shl i16 %73, 2
  %arrayidx7.i9.i.1 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 8, i32 0, i32 1
  %74 = ptrtoint ptr %arrayidx7.i9.i.1 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 2)
  store i16 %mul.i8.i.1, ptr %arrayidx7.i9.i.1, align 1
  %Smio.i11.i.1 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 8, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %Smio.i11.i.1 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %Smio.i11.i.1, align 1
  %smio_low.i12.i.1 = getelementptr %struct.smu7_hwmgr, ptr %58, i32 0, i32 43, i32 3, i32 1, i32 1
  %76 = ptrtoint ptr %smio_low.i12.i.1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %smio_low.i12.i.1, align 4
  %arrayidx16.i13.i.1 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 45, i32 1
  %78 = ptrtoint ptr %arrayidx16.i13.i.1 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %arrayidx16.i13.i.1, align 1
  %or.i14.i.1 = or i32 %79, %77
  store i32 %or.i14.i.1, ptr %arrayidx16.i13.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %exitcond.not.i16.i.1 = icmp eq i32 %63, 2
  br i1 %exitcond.not.i16.i.1, label %for.body.i17.i.1.for.end.i.i_crit_edge, label %for.body.i17.i.2

for.body.i17.i.1.for.end.i.i_crit_edge:           ; preds = %for.body.i17.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i17.i.2:                                 ; preds = %for.body.i17.i.1
  %arrayidx.i7.i.2 = getelementptr %struct.smu7_hwmgr, ptr %58, i32 0, i32 43, i32 3, i32 2
  %80 = ptrtoint ptr %arrayidx.i7.i.2 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx.i7.i.2, align 4
  %mul.i8.i.2 = shl i16 %81, 2
  %arrayidx7.i9.i.2 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 8, i32 0, i32 2
  %82 = ptrtoint ptr %arrayidx7.i9.i.2 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 %mul.i8.i.2, ptr %arrayidx7.i9.i.2, align 1
  %Smio.i11.i.2 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 8, i32 0, i32 2, i32 1
  %83 = ptrtoint ptr %Smio.i11.i.2 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 2, ptr %Smio.i11.i.2, align 1
  %smio_low.i12.i.2 = getelementptr %struct.smu7_hwmgr, ptr %58, i32 0, i32 43, i32 3, i32 2, i32 1
  %84 = ptrtoint ptr %smio_low.i12.i.2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %smio_low.i12.i.2, align 4
  %arrayidx16.i13.i.2 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 45, i32 2
  %86 = ptrtoint ptr %arrayidx16.i13.i.2 to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %arrayidx16.i13.i.2, align 1
  %or.i14.i.2 = or i32 %87, %85
  store i32 %or.i14.i.2, ptr %arrayidx16.i13.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %63)
  %exitcond.not.i16.i.2 = icmp eq i32 %63, 3
  br i1 %exitcond.not.i16.i.2, label %for.body.i17.i.2.for.end.i.i_crit_edge, label %for.body.i17.i.3

for.body.i17.i.2.for.end.i.i_crit_edge:           ; preds = %for.body.i17.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i17.i.3:                                 ; preds = %for.body.i17.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i7.i.3 = getelementptr %struct.smu7_hwmgr, ptr %58, i32 0, i32 43, i32 3, i32 3
  %88 = ptrtoint ptr %arrayidx.i7.i.3 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx.i7.i.3, align 4
  %mul.i8.i.3 = shl i16 %89, 2
  %arrayidx7.i9.i.3 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 8, i32 0, i32 3
  %90 = ptrtoint ptr %arrayidx7.i9.i.3 to i32
  call void @__asan_storeN_noabort(i32 %90, i32 2)
  store i16 %mul.i8.i.3, ptr %arrayidx7.i9.i.3, align 1
  %Smio.i11.i.3 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 8, i32 0, i32 3, i32 1
  %91 = ptrtoint ptr %Smio.i11.i.3 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 3, ptr %Smio.i11.i.3, align 1
  %smio_low.i12.i.3 = getelementptr %struct.smu7_hwmgr, ptr %58, i32 0, i32 43, i32 3, i32 3, i32 1
  %92 = ptrtoint ptr %smio_low.i12.i.3 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %smio_low.i12.i.3, align 4
  %arrayidx16.i13.i.3 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 45, i32 3
  %94 = ptrtoint ptr %arrayidx16.i13.i.3 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %arrayidx16.i13.i.3, align 1
  %or.i14.i.3 = or i32 %95, %93
  store i32 %or.i14.i.3, ptr %arrayidx16.i13.i.3, align 1
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i17.i.3, %for.body.i17.i.2.for.end.i.i_crit_edge, %for.body.i17.i.1.for.end.i.i_crit_edge, %for.body.i17.i.for.end.i.i_crit_edge, %if.then.i4.i.for.end.i.i_crit_edge
  %mask_low.i18.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %58, i32 0, i32 43, i32 1
  %96 = ptrtoint ptr %mask_low.i18.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %mask_low.i18.i, align 4
  %SmioMask2.i.i = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 6
  %98 = ptrtoint ptr %SmioMask2.i.i to i32
  call void @__asan_storeN_noabort(i32 %98, i32 4)
  store i32 %97, ptr %SmioMask2.i.i, align 1
  %MvddLevelCount.i.i = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 9
  %99 = ptrtoint ptr %MvddLevelCount.i.i to i32
  call void @__asan_storeN_noabort(i32 %99, i32 4)
  store i32 %63, ptr %MvddLevelCount.i.i, align 1
  br label %vegam_populate_smc_mvdd_table.exit.i

vegam_populate_smc_mvdd_table.exit.i:             ; preds = %for.end.i.i, %vegam_populate_smc_vddci_table.exit.i.vegam_populate_smc_mvdd_table.exit.i_crit_edge
  %100 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %backend, align 4
  %102 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pptable, align 4
  %vddc_lookup_table.i.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %103, i32 0, i32 15
  %104 = ptrtoint ptr %vddc_lookup_table.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %vddc_lookup_table.i.i, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp1.not.i.i = icmp eq i32 %107, 0
  br i1 %cmp1.not.i.i, label %vegam_populate_smc_mvdd_table.exit.i.if.end_crit_edge, label %vegam_populate_smc_mvdd_table.exit.i.for.body.i23.i_crit_edge

vegam_populate_smc_mvdd_table.exit.i.for.body.i23.i_crit_edge: ; preds = %vegam_populate_smc_mvdd_table.exit.i
  br label %for.body.i23.i

vegam_populate_smc_mvdd_table.exit.i.if.end_crit_edge: ; preds = %vegam_populate_smc_mvdd_table.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.i23.i:                                   ; preds = %for.body.i23.i.for.body.i23.i_crit_edge, %vegam_populate_smc_mvdd_table.exit.i.for.body.i23.i_crit_edge
  %count.02.i.i = phi i32 [ %inc.i21.i, %for.body.i23.i.for.body.i23.i_crit_edge ], [ 0, %vegam_populate_smc_mvdd_table.exit.i.for.body.i23.i_crit_edge ]
  %arrayidx.i20.i = getelementptr %struct.smu7_hwmgr, ptr %101, i32 0, i32 41, i32 3, i32 %count.02.i.i
  %108 = ptrtoint ptr %arrayidx.i20.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %arrayidx.i20.i, align 4
  %call.i.i = tail call zeroext i8 @phm_get_voltage_index(ptr noundef %105, i16 noundef zeroext %109) #7
  %idxprom.i.i = zext i8 %call.i.i to i32
  %us_cac_low.i.i = getelementptr %struct.phm_ppt_v1_voltage_lookup_table, ptr %105, i32 0, i32 1, i32 %idxprom.i.i, i32 2
  %110 = ptrtoint ptr %us_cac_low.i.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %us_cac_low.i.i, align 2
  %call4.i.i = tail call zeroext i8 @convert_to_vid(i16 noundef zeroext %111) #7
  %arrayidx5.i.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 11, i32 %count.02.i.i
  %112 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %call4.i.i, ptr %arrayidx5.i.i, align 1
  %us_cac_mid.i.i = getelementptr %struct.phm_ppt_v1_voltage_lookup_table, ptr %105, i32 0, i32 1, i32 %idxprom.i.i, i32 3
  %113 = ptrtoint ptr %us_cac_mid.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %us_cac_mid.i.i, align 2
  %call9.i.i = tail call zeroext i8 @convert_to_vid(i16 noundef zeroext %114) #7
  %arrayidx10.i.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 10, i32 %count.02.i.i
  %115 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %call9.i.i, ptr %arrayidx10.i.i, align 1
  %us_cac_high.i.i = getelementptr %struct.phm_ppt_v1_voltage_lookup_table, ptr %105, i32 0, i32 1, i32 %idxprom.i.i, i32 4
  %116 = ptrtoint ptr %us_cac_high.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %us_cac_high.i.i, align 2
  %call14.i.i = tail call zeroext i8 @convert_to_vid(i16 noundef zeroext %117) #7
  %arrayidx15.i.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 12, i32 %count.02.i.i
  %118 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %call14.i.i, ptr %arrayidx15.i.i, align 1
  %inc.i21.i = add nuw i32 %count.02.i.i, 1
  %119 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %105, align 4
  %cmp.i22.i = icmp ult i32 %inc.i21.i, %120
  br i1 %cmp.i22.i, label %for.body.i23.i.for.body.i23.i_crit_edge, label %for.body.i23.i.if.end_crit_edge

for.body.i23.i.if.end_crit_edge:                  ; preds = %for.body.i23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.i23.i.for.body.i23.i_crit_edge:          ; preds = %for.body.i23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i23.i

if.end:                                           ; preds = %for.body.i23.i.if.end_crit_edge, %vegam_populate_smc_mvdd_table.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %SystemFlags = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 3
  %121 = ptrtoint ptr %SystemFlags to i32
  call void @__asan_storeN_noabort(i32 %121, i32 4)
  store i32 0, ptr %SystemFlags, align 1
  %122 = ptrtoint ptr %platform_descriptor to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %platform_descriptor, align 4
  %and1.i = lshr i32 %123, 24
  %and1.i.lobit = and i32 %and1.i, 1
  store i32 %and1.i.lobit, ptr %SystemFlags, align 1
  %124 = load i32, ptr %platform_descriptor, align 4
  %and1.i626 = and i32 %124, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i626)
  %cmp.i627.not = icmp eq i32 %and1.i626, 0
  br i1 %cmp.i627.not, label %if.end.if.end16_crit_edge, label %if.then13

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %125 = ptrtoint ptr %SystemFlags to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %SystemFlags, align 1
  %or15 = or i32 %126, 2
  store i32 %or15, ptr %SystemFlags, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end.if.end16_crit_edge
  %is_memory_gddr5 = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 12
  %127 = ptrtoint ptr %is_memory_gddr5 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %is_memory_gddr5, align 4, !range !315
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool.not = icmp eq i8 %128, 0
  br i1 %tobool.not, label %if.end16.if.end20_crit_edge, label %if.then17

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then17:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %129 = ptrtoint ptr %SystemFlags to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %130 = load i32, ptr %SystemFlags, align 1
  %or19 = or i32 %130, 4
  store i32 %or19, ptr %SystemFlags, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end16.if.end20_crit_edge
  %ulv_supported = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 55
  %131 = ptrtoint ptr %ulv_supported to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %ulv_supported, align 2, !range !315
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool21.not = icmp eq i8 %132, 0
  br i1 %tobool21.not, label %if.end20.if.end37_crit_edge, label %land.lhs.true

if.end20.if.end37_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

land.lhs.true:                                    ; preds = %if.end20
  %us_ulv_voltage_offset = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %5, i32 0, i32 20
  %133 = ptrtoint ptr %us_ulv_voltage_offset to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %us_ulv_voltage_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %134)
  %tobool22.not = icmp eq i16 %134, 0
  br i1 %tobool22.not, label %land.lhs.true.if.end37_crit_edge, label %if.then23

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %Ulv.i = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 42
  %135 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %backend, align 4
  %137 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %pptable, align 4
  %139 = ptrtoint ptr %Ulv.i to i32
  call void @__asan_storeN_noabort(i32 %139, i32 4)
  store i32 0, ptr %Ulv.i, align 1
  %CcPwrDynRm1.i.i = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 42, i32 1
  %140 = ptrtoint ptr %CcPwrDynRm1.i.i to i32
  call void @__asan_storeN_noabort(i32 %140, i32 4)
  store i32 0, ptr %CcPwrDynRm1.i.i, align 1
  %us_ulv_voltage_offset.i.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %138, i32 0, i32 20
  %141 = ptrtoint ptr %us_ulv_voltage_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %us_ulv_voltage_offset.i.i, align 4
  %VddcOffset.i.i = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 42, i32 2
  %143 = ptrtoint ptr %VddcOffset.i.i to i32
  call void @__asan_storeN_noabort(i32 %143, i32 2)
  store i16 %142, ptr %VddcOffset.i.i, align 1
  %144 = load i16, ptr %us_ulv_voltage_offset.i.i, align 4
  %conv.i.i = zext i16 %144 to i32
  %mul.i.i630 = mul nuw nsw i32 %conv.i.i, 100
  %div.i.i = udiv i32 %mul.i.i630, 625
  %conv2.i.i = trunc i32 %div.i.i to i8
  %VddcOffsetVid.i.i = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 42, i32 3
  %145 = ptrtoint ptr %VddcOffsetVid.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %conv2.i.i, ptr %VddcOffsetVid.i.i, align 1
  %vddc_phase_shed_control.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %136, i32 0, i32 67
  %146 = ptrtoint ptr %vddc_phase_shed_control.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %vddc_phase_shed_control.i.i, align 4
  %148 = xor i8 %147, 3
  %VddcPhase.i.i = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 42, i32 4
  %149 = ptrtoint ptr %VddcPhase.i.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %VddcPhase.i.i, align 1
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %150 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %device, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %151, align 4
  %write_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %153, i32 0, i32 3
  %154 = ptrtoint ptr %write_ind_register to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %write_ind_register, align 4
  tail call void %155(ptr noundef %151, i32 noundef 1, i32 noundef -1071644324, i32 noundef 262197) #7
  br label %if.end37

if.end37:                                         ; preds = %if.then23, %land.lhs.true.if.end37_crit_edge, %if.end20.if.end37_crit_edge
  %156 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %backend, align 4
  %158 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %smu_backend, align 4
  %pcie_speed_table.i = getelementptr inbounds %struct.smu7_dpm_table, ptr %157, i32 0, i32 2
  %pcie_spc_cap.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %157, i32 0, i32 19
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end37
  %i.01.i = phi i32 [ 0, %if.end37 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %value.i = getelementptr %struct.smu7_dpm_table, ptr %157, i32 0, i32 2, i32 1, i32 %i.01.i, i32 1
  %160 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %value.i, align 4
  %conv.i = trunc i32 %161 to i8
  %arrayidx3.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 36, i32 %i.01.i
  %162 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %conv.i, ptr %arrayidx3.i, align 1
  %param1.i = getelementptr %struct.smu7_dpm_table, ptr %157, i32 0, i32 2, i32 1, i32 %i.01.i, i32 2
  %163 = ptrtoint ptr %param1.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %param1.i, align 4
  %call.i = tail call zeroext i8 @encode_pcie_lane_width(i32 noundef %164) #7
  %PcieLaneCount.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 36, i32 %i.01.i, i32 1
  %165 = ptrtoint ptr %PcieLaneCount.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %call.i, ptr %PcieLaneCount.i, align 1
  %EnabledForActivity.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 36, i32 %i.01.i, i32 2
  %166 = ptrtoint ptr %EnabledForActivity.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 1, ptr %EnabledForActivity.i, align 1
  %167 = ptrtoint ptr %pcie_spc_cap.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %pcie_spc_cap.i, align 4
  %conv11.i = trunc i32 %168 to i8
  %SPC.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 36, i32 %i.01.i, i32 3
  %169 = ptrtoint ptr %SPC.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %conv11.i, ptr %SPC.i, align 1
  %DownThreshold.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 36, i32 %i.01.i, i32 4
  %170 = ptrtoint ptr %DownThreshold.i to i32
  call void @__asan_storeN_noabort(i32 %170, i32 4)
  store i32 5, ptr %DownThreshold.i, align 1
  %UpThreshold.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 36, i32 %i.01.i, i32 5
  %171 = ptrtoint ptr %UpThreshold.i to i32
  call void @__asan_storeN_noabort(i32 %171, i32 4)
  store i32 30, ptr %UpThreshold.i, align 1
  %inc.i = add i32 %i.01.i, 1
  %172 = ptrtoint ptr %pcie_speed_table.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %pcie_speed_table.i, align 4
  %cmp.not.i = icmp ugt i32 %inc.i, %173
  br i1 %cmp.not.i, label %vegam_populate_smc_link_level.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

vegam_populate_smc_link_level.exit:               ; preds = %for.body.i
  %conv20.i = trunc i32 %173 to i8
  %LinkLevelCount.i = getelementptr inbounds %struct.vegam_smumgr, ptr %159, i32 0, i32 2, i32 15
  %174 = ptrtoint ptr %LinkLevelCount.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %conv20.i, ptr %LinkLevelCount.i, align 1
  %call22.i = tail call i32 @phm_get_dpm_level_enable_mask_value(ptr noundef %pcie_speed_table.i) #7
  %pcie_dpm_enable_mask.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %157, i32 0, i32 70, i32 6
  %175 = ptrtoint ptr %pcie_dpm_enable_mask.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %call22.i, ptr %pcie_dpm_enable_mask.i, align 4
  %call54 = tail call i32 @vegam_populate_all_graphic_levels(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool56.not = icmp eq i32 %call54, 0
  br i1 %tobool56.not, label %do.end69, label %if.then57

if.then57:                                        ; preds = %vegam_populate_smc_link_level.exit
  %call58 = tail call i32 @___ratelimit(ptr noundef nonnull @vegam_init_smc_table._rs.18, ptr noundef nonnull @__func__.vegam_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then57.cleanup_crit_edge, label %do.end63

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end63:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.21) #11
  br label %cleanup

do.end69:                                         ; preds = %vegam_populate_smc_link_level.exit
  %call70 = tail call i32 @vegam_populate_all_memory_levels(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool72.not = icmp eq i32 %call70, 0
  br i1 %tobool72.not, label %do.end85, label %if.then73

if.then73:                                        ; preds = %do.end69
  %call74 = tail call i32 @___ratelimit(ptr noundef nonnull @vegam_init_smc_table._rs.22, ptr noundef nonnull @__func__.vegam_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then73.cleanup_crit_edge, label %do.end79

if.then73.cleanup_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end79:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.25) #11
  br label %cleanup

do.end85:                                         ; preds = %do.end69
  %176 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %backend, align 4
  %178 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %pptable, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvdd.i) #7
  %180 = ptrtoint ptr %mvdd.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 -1, ptr %mvdd.i, align 4, !annotation !316
  %ACPILevel.i = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 37
  %181 = ptrtoint ptr %ACPILevel.i to i32
  call void @__asan_loadN_noabort(i32 %181, i32 4)
  %182 = load i32, ptr %ACPILevel.i, align 1
  %and.i = and i32 %182, -2
  store i32 %and.i, ptr %ACPILevel.i, align 1
  %sclk_bootup_value.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %177, i32 0, i32 31, i32 4
  %183 = ptrtoint ptr %sclk_bootup_value.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %sclk_bootup_value.i, align 4
  %185 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %179, align 4
  %MinVoltage.i = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 37, i32 1
  %call.i633 = call fastcc i32 @vegam_get_dependency_volt_by_clk(ptr noundef %hwmgr, ptr noundef %186, i32 noundef %184, ptr noundef %MinVoltage.i, ptr noundef nonnull %mvdd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i633)
  %tobool.not.i = icmp eq i32 %call.i633, 0
  br i1 %tobool.not.i, label %do.end85.do.end9.i_crit_edge, label %if.then.i

do.end85.do.end9.i_crit_edge:                     ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9.i

if.then.i:                                        ; preds = %do.end85
  %call2.i = tail call i32 @___ratelimit(ptr noundef nonnull @vegam_populate_smc_acpi_level._rs, ptr noundef nonnull @__func__.vegam_populate_smc_acpi_level) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then.i.do.end9.i_crit_edge, label %do.end.i

if.then.i.do.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.86) #11
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i, %if.then.i.do.end9.i_crit_edge, %do.end85.do.end9.i_crit_edge
  %SclkSetting.i = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 37, i32 9
  tail call fastcc void @vegam_calculate_sclk_params(ptr noundef %hwmgr, i32 noundef %184, ptr noundef %SclkSetting.i) #7
  %DeepSleepDivId.i = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 37, i32 5
  %187 = ptrtoint ptr %DeepSleepDivId.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 0, ptr %DeepSleepDivId.i, align 1
  %CcPwrDynRm.i = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 37, i32 7
  %188 = ptrtoint ptr %CcPwrDynRm.i to i32
  call void @__asan_storeN_noabort(i32 %188, i32 4)
  store i32 0, ptr %CcPwrDynRm.i, align 1
  %CcPwrDynRm1.i = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 37, i32 8
  %189 = ptrtoint ptr %CcPwrDynRm1.i to i32
  call void @__asan_storeN_noabort(i32 %189, i32 4)
  store i32 0, ptr %CcPwrDynRm1.i, align 1
  %mclk_bootup_value.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %177, i32 0, i32 31, i32 5
  %190 = ptrtoint ptr %mclk_bootup_value.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %mclk_bootup_value.i, align 4
  %MemoryACPILevel.i = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 34
  %MclkFrequency.i = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 34, i32 2
  %192 = ptrtoint ptr %MclkFrequency.i to i32
  call void @__asan_storeN_noabort(i32 %192, i32 4)
  store i32 %191, ptr %MclkFrequency.i, align 1
  %vdd_dep_on_mclk.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %179, i32 0, i32 1
  %193 = ptrtoint ptr %vdd_dep_on_mclk.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %vdd_dep_on_mclk.i, align 4
  %call101.i = call fastcc i32 @vegam_get_dependency_volt_by_clk(ptr noundef %hwmgr, ptr noundef %194, i32 noundef %191, ptr noundef %MemoryACPILevel.i, ptr noundef nonnull %mvdd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101.i)
  %cmp.i634 = icmp eq i32 %call101.i, 0
  br i1 %cmp.i634, label %do.end9.i.do.end115.i_crit_edge, label %if.then103.i

do.end9.i.do.end115.i_crit_edge:                  ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end115.i

if.then103.i:                                     ; preds = %do.end9.i
  %call104.i = tail call i32 @___ratelimit(ptr noundef nonnull @vegam_populate_smc_acpi_level._rs.91, ptr noundef nonnull @__func__.vegam_populate_smc_acpi_level) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104.i)
  %tobool105.not.i = icmp eq i32 %call104.i, 0
  br i1 %tobool105.not.i, label %if.then103.i.do.end115.i_crit_edge, label %do.end109.i

if.then103.i.do.end115.i_crit_edge:               ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end115.i

do.end109.i:                                      ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #9
  %call111.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.94) #11
  br label %do.end115.i

do.end115.i:                                      ; preds = %do.end109.i, %if.then103.i.do.end115.i_crit_edge, %do.end9.i.do.end115.i_crit_edge
  %195 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %backend, align 4
  %mvdd_control.i.i635 = getelementptr inbounds %struct.smu7_hwmgr, ptr %196, i32 0, i32 23
  %197 = ptrtoint ptr %mvdd_control.i.i635 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %mvdd_control.i.i635, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %cmp.not.i.i = icmp eq i32 %198, 0
  br i1 %cmp.not.i.i, label %do.end115.i.vegam_populate_smc_acpi_level.exit_crit_edge, label %for.cond.i.i

do.end115.i.vegam_populate_smc_acpi_level.exit_crit_edge: ; preds = %do.end115.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vegam_populate_smc_acpi_level.exit

for.cond.i.i:                                     ; preds = %do.end115.i
  %199 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %pptable, align 4
  %vdd_dep_on_mclk.i.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %200, i32 0, i32 1
  %201 = ptrtoint ptr %vdd_dep_on_mclk.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %vdd_dep_on_mclk.i.i, align 4
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %202, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %cmp1.not.i.i636 = icmp eq i32 %204, 0
  br i1 %cmp1.not.i.i636, label %if.then10.i.i, label %if.then118.i

if.then10.i.i:                                    ; preds = %for.cond.i.i
  %call.i.i637 = tail call i32 @___ratelimit(ptr noundef nonnull @vegam_populate_mvdd_value._rs, ptr noundef nonnull @__func__.vegam_populate_mvdd_value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i637)
  %tobool.not.i.i = icmp eq i32 %call.i.i637, 0
  br i1 %tobool.not.i.i, label %if.then10.i.i.vegam_populate_smc_acpi_level.exit_crit_edge, label %do.end.i.i

if.then10.i.i.vegam_populate_smc_acpi_level.exit_crit_edge: ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vegam_populate_smc_acpi_level.exit

do.end.i.i:                                       ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.95) #11
  br label %vegam_populate_smc_acpi_level.exit

if.then118.i:                                     ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx6.i.i = getelementptr %struct.smu7_hwmgr, ptr %196, i32 0, i32 43, i32 3, i32 0
  %205 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %arrayidx6.i.i, align 4
  %conv.i638 = zext i16 %206 to i32
  br label %vegam_populate_smc_acpi_level.exit

vegam_populate_smc_acpi_level.exit:               ; preds = %if.then118.i, %do.end.i.i, %if.then10.i.i.vegam_populate_smc_acpi_level.exit_crit_edge, %do.end115.i.vegam_populate_smc_acpi_level.exit_crit_edge
  %.sink.i = phi i32 [ %conv.i638, %if.then118.i ], [ 0, %do.end.i.i ], [ 0, %if.then10.i.i.vegam_populate_smc_acpi_level.exit_crit_edge ], [ 0, %do.end115.i.vegam_populate_smc_acpi_level.exit_crit_edge ]
  %MinMvdd121.i = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 34, i32 1
  %207 = ptrtoint ptr %MinMvdd121.i to i32
  call void @__asan_storeN_noabort(i32 %207, i32 4)
  store i32 %.sink.i, ptr %MinMvdd121.i, align 1
  %StutterEnable.i = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 34, i32 3
  %208 = ptrtoint ptr %StutterEnable.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 0, ptr %StutterEnable.i, align 1
  %EnabledForThrottle.i = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 34, i32 4
  %209 = ptrtoint ptr %EnabledForThrottle.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 0, ptr %EnabledForThrottle.i, align 1
  %EnabledForActivity.i639 = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 34, i32 5
  %210 = ptrtoint ptr %EnabledForActivity.i639 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 0, ptr %EnabledForActivity.i639, align 1
  %UpHyst.i = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 34, i32 7
  %211 = ptrtoint ptr %UpHyst.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 0, ptr %UpHyst.i, align 1
  %DownHyst.i = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 34, i32 8
  %212 = ptrtoint ptr %DownHyst.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 100, ptr %DownHyst.i, align 1
  %VoltageDownHyst.i = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 34, i32 9
  %213 = ptrtoint ptr %VoltageDownHyst.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 0, ptr %VoltageDownHyst.i, align 1
  %mclk_activity.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %177, i32 0, i32 102, i32 7
  %214 = ptrtoint ptr %mclk_activity.i to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %mclk_activity.i, align 2
  %ActivityLevel.i = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 34, i32 11
  %216 = ptrtoint ptr %ActivityLevel.i to i32
  call void @__asan_storeN_noabort(i32 %216, i32 2)
  store i16 %215, ptr %ActivityLevel.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvdd.i) #7
  br i1 %cmp.i634, label %do.end101, label %if.then89

if.then89:                                        ; preds = %vegam_populate_smc_acpi_level.exit
  %call90 = tail call i32 @___ratelimit(ptr noundef nonnull @vegam_init_smc_table._rs.26, ptr noundef nonnull @__func__.vegam_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.then89.cleanup_crit_edge, label %do.end95

if.then89.cleanup_crit_edge:                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end95:                                         ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.29) #11
  br label %cleanup

do.end101:                                        ; preds = %vegam_populate_smc_acpi_level.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dividers.i) #7
  %217 = call ptr @memset(ptr %dividers.i, i32 255, i32 16)
  %218 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %pptable, align 4
  %mm_dep_table.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %219, i32 0, i32 14
  %220 = ptrtoint ptr %mm_dep_table.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %mm_dep_table.i, align 4
  %222 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %backend, align 4
  %224 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %221, align 4
  %conv.i642 = trunc i32 %225 to i8
  %VceLevelCount.i = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 18
  %226 = ptrtoint ptr %VceLevelCount.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %conv.i642, ptr %VceLevelCount.i, align 1
  %VceBootLevel.i = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 47
  %227 = ptrtoint ptr %VceBootLevel.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 0, ptr %VceBootLevel.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i642)
  %cmp138.not.i = icmp eq i8 %conv.i642, 0
  br i1 %cmp138.not.i, label %do.end101.if.then105_crit_edge, label %for.body.lr.ph.i

do.end101.if.then105_crit_edge:                   ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then105

for.body.lr.ph.i:                                 ; preds = %do.end101
  %vddci_control.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %223, i32 0, i32 40
  %vddci_voltage_table.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %223, i32 0, i32 42
  br label %for.body.i644

for.body.i644:                                    ; preds = %do.end70.i.for.body.i644_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %do.end70.i.for.body.i644_crit_edge ]
  %eclk.i = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %221, i32 0, i32 1, i32 %indvars.iv.i, i32 2
  %228 = ptrtoint ptr %eclk.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %eclk.i, align 4
  %arrayidx7.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 39, i32 %indvars.iv.i
  %230 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_storeN_noabort(i32 %230, i32 4)
  store i32 %229, ptr %arrayidx7.i, align 1
  %MinVoltage.i643 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 39, i32 %indvars.iv.i, i32 1
  %231 = ptrtoint ptr %MinVoltage.i643 to i32
  call void @__asan_storeN_noabort(i32 %231, i32 4)
  store i32 0, ptr %MinVoltage.i643, align 1
  %vddc.i = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %221, i32 0, i32 1, i32 %indvars.iv.i, i32 7
  %232 = ptrtoint ptr %vddc.i to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %vddc.i, align 4
  %conv14.i = zext i16 %233 to i32
  %mul.i = shl nuw nsw i32 %conv14.i, 2
  store i32 %mul.i, ptr %MinVoltage.i643, align 1
  %234 = ptrtoint ptr %vddci_control.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %vddci_control.i, align 4
  %236 = zext i32 %235 to i64
  call void @__sanitizer_cov_trace_switch(i64 %236, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %235, label %for.body.i644.if.end42.i_crit_edge [
    i32 1, label %if.then.i646
    i32 2, label %if.then31.i
  ]

for.body.i644.if.end42.i_crit_edge:               ; preds = %for.body.i644
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

if.then.i646:                                     ; preds = %for.body.i644
  call void @__sanitizer_cov_trace_pc() #9
  %237 = ptrtoint ptr %vddc.i to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %vddc.i, align 4
  %sub.i = add i16 %238, -200
  %call.i645 = call zeroext i16 @phm_find_closest_vddci(ptr noundef %vddci_voltage_table.i, i16 noundef zeroext %sub.i) #7
  %conv27.i = zext i16 %call.i645 to i32
  br label %if.end42.i

if.then31.i:                                      ; preds = %for.body.i644
  call void @__sanitizer_cov_trace_pc() #9
  %239 = ptrtoint ptr %vddc.i to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %vddc.i, align 4
  %conv36.i = zext i16 %240 to i32
  %sub37.i = add nsw i32 %conv36.i, -200
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then31.i, %if.then.i646, %for.body.i644.if.end42.i_crit_edge
  %vddci.0.i = phi i32 [ %conv27.i, %if.then.i646 ], [ %sub37.i, %if.then31.i ], [ 0, %for.body.i644.if.end42.i_crit_edge ]
  %mul43.i = shl i32 %vddci.0.i, 17
  %241 = ptrtoint ptr %MinVoltage.i643 to i32
  call void @__asan_loadN_noabort(i32 %241, i32 4)
  %242 = load i32, ptr %MinVoltage.i643, align 1
  %or49.i = or i32 %242, %mul43.i
  %or54.i = or i32 %or49.i, 1073741824
  store i32 %or54.i, ptr %MinVoltage.i643, align 1
  %243 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_loadN_noabort(i32 %243, i32 4)
  %244 = load i32, ptr %arrayidx7.i, align 1
  %call59.i = call i32 @atomctrl_get_dfs_pll_dividers_vi(ptr noundef %hwmgr, i32 noundef %244, ptr noundef nonnull %dividers.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %cmp60.i = icmp eq i32 %call59.i, 0
  br i1 %cmp60.i, label %do.end70.i, label %if.then62.i

if.then62.i:                                      ; preds = %if.end42.i
  %call63.i = call i32 @___ratelimit(ptr noundef nonnull @vegam_populate_smc_vce_level._rs, ptr noundef nonnull @__func__.vegam_populate_smc_vce_level) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool.not.i647 = icmp eq i32 %call63.i, 0
  br i1 %tobool.not.i647, label %if.then62.i.if.then105_crit_edge, label %do.end.i648

if.then62.i.if.then105_crit_edge:                 ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then105

do.end.i648:                                      ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #9
  %call66.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.96) #11
  br label %if.then105

do.end70.i:                                       ; preds = %if.end42.i
  %245 = ptrtoint ptr %dividers.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %dividers.i, align 4
  %conv71.i = trunc i32 %246 to i8
  %Divider.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 39, i32 %indvars.iv.i, i32 2
  %247 = ptrtoint ptr %Divider.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %conv71.i, ptr %Divider.i, align 1
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %248 = ptrtoint ptr %VceLevelCount.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %VceLevelCount.i, align 1
  %250 = zext i8 %249 to i32
  %cmp.i649 = icmp ult i32 %indvars.iv.next.i, %250
  br i1 %cmp.i649, label %do.end70.i.for.body.i644_crit_edge, label %do.end117

do.end70.i.for.body.i644_crit_edge:               ; preds = %do.end70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i644

if.then105:                                       ; preds = %do.end.i648, %if.then62.i.if.then105_crit_edge, %do.end101.if.then105_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %do.end101.if.then105_crit_edge ], [ %call59.i, %if.then62.i.if.then105_crit_edge ], [ %call59.i, %do.end.i648 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers.i) #7
  %call106 = call i32 @___ratelimit(ptr noundef nonnull @vegam_init_smc_table._rs.30, ptr noundef nonnull @__func__.vegam_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.then105.cleanup_crit_edge, label %do.end111

if.then105.cleanup_crit_edge:                     ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end111:                                        ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  %call113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.33) #11
  br label %cleanup

do.end117:                                        ; preds = %do.end70.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers.i) #7
  %call118 = call fastcc i32 @vegam_program_memory_timing_parameters(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool120.not = icmp eq i32 %call118, 0
  br i1 %tobool120.not, label %do.end133, label %if.then121

if.then121:                                       ; preds = %do.end117
  %call122 = call i32 @___ratelimit(ptr noundef nonnull @vegam_init_smc_table._rs.34, ptr noundef nonnull @__func__.vegam_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.then121.cleanup_crit_edge, label %do.end127

if.then121.cleanup_crit_edge:                     ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end127:                                        ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #9
  %call129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.37) #11
  br label %cleanup

do.end133:                                        ; preds = %do.end117
  %call134 = call fastcc i32 @vegam_populate_smc_uvd_level(ptr noundef %hwmgr, ptr noundef %smc_state_table)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool136.not = icmp eq i32 %call134, 0
  br i1 %tobool136.not, label %do.end149, label %if.then137

if.then137:                                       ; preds = %do.end133
  %call138 = call i32 @___ratelimit(ptr noundef nonnull @vegam_init_smc_table._rs.38, ptr noundef nonnull @__func__.vegam_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.then137.cleanup_crit_edge, label %do.end143

if.then137.cleanup_crit_edge:                     ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end143:                                        ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #9
  %call145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.41) #11
  br label %cleanup

do.end149:                                        ; preds = %do.end133
  %call150 = call fastcc i32 @vegam_populate_smc_boot_level(ptr noundef %hwmgr, ptr noundef %smc_state_table)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool152.not = icmp eq i32 %call150, 0
  br i1 %tobool152.not, label %do.end165, label %if.then153

if.then153:                                       ; preds = %do.end149
  %call154 = call i32 @___ratelimit(ptr noundef nonnull @vegam_init_smc_table._rs.42, ptr noundef nonnull @__func__.vegam_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.then153.cleanup_crit_edge, label %do.end159

if.then153.cleanup_crit_edge:                     ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end159:                                        ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #9
  %call161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.45) #11
  br label %cleanup

do.end165:                                        ; preds = %do.end149
  call fastcc void @vegam_populate_smc_initial_state(ptr noundef %hwmgr)
  call fastcc void @vegam_populate_bapm_parameters_in_dpm_table(ptr noundef %hwmgr)
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 5
  %251 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %arrayidx.i, align 4
  %and1.i650 = and i32 %252, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i650)
  %cmp.i651.not = icmp eq i32 %and1.i650, 0
  br i1 %cmp.i651.not, label %do.end165.if.end219_crit_edge, label %if.then202

do.end165.if.end219_crit_edge:                    ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end219

if.then202:                                       ; preds = %do.end165
  %call203 = call fastcc i32 @vegam_populate_clock_stretcher_data_table(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %tobool205.not = icmp eq i32 %call203, 0
  br i1 %tobool205.not, label %if.then202.if.end219_crit_edge, label %if.then206

if.then202.if.end219_crit_edge:                   ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end219

if.then206:                                       ; preds = %if.then202
  %call207 = call i32 @___ratelimit(ptr noundef nonnull @vegam_init_smc_table._rs.54, ptr noundef nonnull @__func__.vegam_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %if.then206.cleanup_crit_edge, label %do.end212

if.then206.cleanup_crit_edge:                     ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end212:                                        ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #9
  %call214 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.57) #11
  br label %cleanup

if.end219:                                        ; preds = %if.then202.if.end219_crit_edge, %do.end165.if.end219_crit_edge
  %call220 = call fastcc i32 @vegam_populate_avfs_parameters(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220)
  %tobool222.not = icmp eq i32 %call220, 0
  br i1 %tobool222.not, label %do.end235, label %if.then223

if.then223:                                       ; preds = %if.end219
  %call224 = call i32 @___ratelimit(ptr noundef nonnull @vegam_init_smc_table._rs.58, ptr noundef nonnull @__func__.vegam_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %if.then223.cleanup_crit_edge, label %do.end229

if.then223.cleanup_crit_edge:                     ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end229:                                        ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #9
  %call231 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.61) #11
  br label %cleanup

do.end235:                                        ; preds = %if.end219
  %CurrSclkPllRange = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 96
  %253 = ptrtoint ptr %CurrSclkPllRange to i32
  call void @__asan_storeN_noabort(i32 %253, i32 4)
  store i32 255, ptr %CurrSclkPllRange, align 1
  %GraphicsVoltageChangeEnable = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 51
  %cac_dtp_table = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %5, i32 0, i32 12
  %254 = call ptr @memset(ptr %GraphicsVoltageChangeEnable, i32 1, i32 5)
  %255 = ptrtoint ptr %cac_dtp_table to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %cac_dtp_table, align 4
  %usTargetOperatingTemp = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %256, i32 0, i32 14
  %257 = ptrtoint ptr %usTargetOperatingTemp to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %usTargetOperatingTemp, align 4
  %mul = shl i16 %258, 8
  %TemperatureLimitHigh = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 56
  %259 = ptrtoint ptr %TemperatureLimitHigh to i32
  call void @__asan_storeN_noabort(i32 %259, i32 2)
  store i16 %mul, ptr %TemperatureLimitHigh, align 1
  %260 = load ptr, ptr %cac_dtp_table, align 4
  %usTargetOperatingTemp239 = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %260, i32 0, i32 14
  %261 = ptrtoint ptr %usTargetOperatingTemp239 to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %usTargetOperatingTemp239, align 4
  %sub = shl i16 %262, 8
  %mul241 = add i16 %sub, -256
  %TemperatureLimitLow = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 57
  %263 = ptrtoint ptr %TemperatureLimitLow to i32
  call void @__asan_storeN_noabort(i32 %263, i32 2)
  store i16 %mul241, ptr %TemperatureLimitLow, align 1
  %MemoryVoltageChangeEnable = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 59
  %264 = ptrtoint ptr %MemoryVoltageChangeEnable to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 1, ptr %MemoryVoltageChangeEnable, align 1
  %MemoryInterval = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 61
  %265 = ptrtoint ptr %MemoryInterval to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 1, ptr %MemoryInterval, align 1
  %VoltageResponseTime = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 63
  %266 = ptrtoint ptr %VoltageResponseTime to i32
  call void @__asan_storeN_noabort(i32 %266, i32 2)
  store i16 0, ptr %VoltageResponseTime, align 1
  %PhaseResponseTime = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 64
  %267 = ptrtoint ptr %PhaseResponseTime to i32
  call void @__asan_storeN_noabort(i32 %267, i32 2)
  store i16 0, ptr %PhaseResponseTime, align 1
  %MemoryThermThrottleEnable = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 62
  %268 = ptrtoint ptr %MemoryThermThrottleEnable to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 1, ptr %MemoryThermThrottleEnable, align 1
  %pcie_speed_table = getelementptr inbounds %struct.smu7_dpm_table, ptr %1, i32 0, i32 2
  %269 = ptrtoint ptr %pcie_speed_table to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %pcie_speed_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %270)
  %cmp244.not = icmp eq i32 %270, 0
  br i1 %cmp244.not, label %if.then246, label %do.end258

if.then246:                                       ; preds = %do.end235
  %call247 = call i32 @___ratelimit(ptr noundef nonnull @vegam_init_smc_table._rs.62, ptr noundef nonnull @__func__.vegam_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call247)
  %tobool248.not = icmp eq i32 %call247, 0
  br i1 %tobool248.not, label %if.then246.cleanup_crit_edge, label %do.end252

if.then246.cleanup_crit_edge:                     ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end252:                                        ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #9
  %call254 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.65) #11
  br label %cleanup

do.end258:                                        ; preds = %do.end235
  %conv262 = trunc i32 %270 to i8
  %PCIeBootLinkLevel = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 65
  %271 = ptrtoint ptr %PCIeBootLinkLevel to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 %conv262, ptr %PCIeBootLinkLevel, align 1
  %PCIeGenInterval = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 66
  %272 = ptrtoint ptr %PCIeGenInterval to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 1, ptr %PCIeGenInterval, align 1
  %VRConfig = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 4
  %273 = ptrtoint ptr %VRConfig to i32
  call void @__asan_storeN_noabort(i32 %273, i32 4)
  store i32 0, ptr %VRConfig, align 1
  call fastcc void @vegam_populate_vr_config(ptr noundef %hwmgr, ptr noundef %smc_state_table)
  %ThermGpio = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 72
  %274 = ptrtoint ptr %ThermGpio to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 17, ptr %ThermGpio, align 1
  %SclkStepSize = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 44
  %275 = ptrtoint ptr %SclkStepSize to i32
  call void @__asan_storeN_noabort(i32 %275, i32 4)
  store i32 16384, ptr %SclkStepSize, align 1
  %call279 = call zeroext i1 @atomctrl_get_pp_assign_pin(ptr noundef %hwmgr, i32 noundef 61, ptr noundef nonnull %gpio_pin) #7
  br i1 %call279, label %if.then280, label %if.else

if.then280:                                       ; preds = %do.end258
  %uc_gpio_pin_bit_shift = getelementptr inbounds %struct.pp_atomctrl_gpio_pin_assignment, ptr %gpio_pin, i32 0, i32 1
  %276 = ptrtoint ptr %uc_gpio_pin_bit_shift to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %uc_gpio_pin_bit_shift, align 2
  %VRHotGpio = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 70
  %278 = ptrtoint ptr %VRHotGpio to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 %277, ptr %VRHotGpio, align 1
  %tobool281.not = icmp eq ptr %8, null
  br i1 %tobool281.not, label %if.then280.if.end289_crit_edge, label %if.then282

if.then280.if.end289_crit_edge:                   ; preds = %if.then280
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end289

if.then282:                                       ; preds = %if.then280
  call void @__sanitizer_cov_trace_pc() #9
  %279 = ptrtoint ptr %gpio_table1 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %gpio_table1, align 4
  %281 = ptrtoint ptr %280 to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %280, align 1
  %VRHotLevel = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 25
  %283 = ptrtoint ptr %VRHotLevel to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 %282, ptr %VRHotLevel, align 1
  br label %if.end289

if.else:                                          ; preds = %do.end258
  call void @__sanitizer_cov_trace_pc() #9
  %VRHotGpio285 = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 70
  %284 = ptrtoint ptr %VRHotGpio285 to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 127, ptr %VRHotGpio285, align 1
  %arrayidx.i652 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %285 = ptrtoint ptr %arrayidx.i652 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %arrayidx.i652, align 4
  %and1.i653 = and i32 %286, -5
  store i32 %and1.i653, ptr %arrayidx.i652, align 4
  br label %if.end289

if.end289:                                        ; preds = %if.else, %if.then282, %if.then280.if.end289_crit_edge
  %call290 = call zeroext i1 @atomctrl_get_pp_assign_pin(ptr noundef %hwmgr, i32 noundef 60, ptr noundef nonnull %gpio_pin) #7
  br i1 %call290, label %if.then291, label %if.else306

if.then291:                                       ; preds = %if.end289
  %uc_gpio_pin_bit_shift292 = getelementptr inbounds %struct.pp_atomctrl_gpio_pin_assignment, ptr %gpio_pin, i32 0, i32 1
  %287 = ptrtoint ptr %uc_gpio_pin_bit_shift292 to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %uc_gpio_pin_bit_shift292, align 2
  %AcDcGpio = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 71
  %289 = ptrtoint ptr %AcDcGpio to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 %288, ptr %AcDcGpio, align 1
  %290 = ptrtoint ptr %platform_descriptor to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %platform_descriptor, align 4
  %and1.i654 = and i32 %291, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i654)
  %cmp.i655.not = icmp eq i32 %and1.i654, 0
  br i1 %cmp.i655.not, label %if.then291.if.end311_crit_edge, label %land.lhs.true298

if.then291.if.end311_crit_edge:                   ; preds = %if.then291
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end311

land.lhs.true298:                                 ; preds = %if.then291
  %call299 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 631, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call299)
  %tobool300.not = icmp eq i32 %call299, 0
  br i1 %tobool300.not, label %if.then301, label %land.lhs.true298.if.end311_crit_edge

land.lhs.true298.if.end311_crit_edge:             ; preds = %land.lhs.true298
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end311

if.then301:                                       ; preds = %land.lhs.true298
  call void @__sanitizer_cov_trace_pc() #9
  %292 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %arrayidx.i, align 4
  %or.i657 = or i32 %293, 2048
  store i32 %or.i657, ptr %arrayidx.i, align 4
  br label %if.end311

if.else306:                                       ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #9
  %AcDcGpio307 = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 71
  %294 = ptrtoint ptr %AcDcGpio307 to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 127, ptr %AcDcGpio307, align 1
  %295 = ptrtoint ptr %platform_descriptor to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %platform_descriptor, align 4
  %and1.i658 = and i32 %296, -16777217
  store i32 %and1.i658, ptr %platform_descriptor, align 4
  br label %if.end311

if.end311:                                        ; preds = %if.else306, %if.then301, %land.lhs.true298.if.end311_crit_edge, %if.then291.if.end311_crit_edge
  %call312 = call zeroext i1 @atomctrl_get_pp_assign_pin(ptr noundef %hwmgr, i32 noundef 65, ptr noundef nonnull %gpio_pin) #7
  br i1 %call312, label %if.then313, label %if.else338

if.then313:                                       ; preds = %if.end311
  %uc_gpio_pin_bit_shift314 = getelementptr inbounds %struct.pp_atomctrl_gpio_pin_assignment, ptr %gpio_pin, i32 0, i32 1
  %297 = ptrtoint ptr %uc_gpio_pin_bit_shift314 to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %uc_gpio_pin_bit_shift314, align 2
  %ThermOutGpio = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 21
  %299 = ptrtoint ptr %ThermOutGpio to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 %298, ptr %ThermOutGpio, align 1
  %device315 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %300 = ptrtoint ptr %device315 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %device315, align 4
  %302 = ptrtoint ptr %301 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %301, align 4
  %304 = ptrtoint ptr %303 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %303, align 4
  %call318 = call i32 %305(ptr noundef %301, i32 noundef 387) #7
  %306 = ptrtoint ptr %uc_gpio_pin_bit_shift314 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %uc_gpio_pin_bit_shift314, align 2
  %conv320 = zext i8 %307 to i32
  %shl = shl nuw i32 1, %conv320
  %and = and i32 %shl, %call318
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp321 = icmp eq i32 %and, 0
  %conv323 = zext i1 %cmp321 to i8
  %ThermOutPolarity = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 22
  %308 = ptrtoint ptr %ThermOutPolarity to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 %conv323, ptr %ThermOutPolarity, align 1
  %ThermOutMode = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 23
  %309 = ptrtoint ptr %ThermOutMode to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 1, ptr %ThermOutMode, align 1
  %arrayidx.i659 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %310 = ptrtoint ptr %arrayidx.i659 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %arrayidx.i659, align 4
  %and1.i660 = and i32 %311, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i660)
  %cmp.i661.not = icmp eq i32 %and1.i660, 0
  br i1 %cmp.i661.not, label %if.then313.if.end342_crit_edge, label %land.lhs.true329

if.then313.if.end342_crit_edge:                   ; preds = %if.then313
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end342

land.lhs.true329:                                 ; preds = %if.then313
  %arrayidx.i662 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 4
  %312 = ptrtoint ptr %arrayidx.i662 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %arrayidx.i662, align 4
  %and1.i663 = and i32 %313, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i663)
  %cmp.i664.not = icmp eq i32 %and1.i663, 0
  br i1 %cmp.i664.not, label %land.lhs.true329.if.end342_crit_edge, label %if.then335

land.lhs.true329.if.end342_crit_edge:             ; preds = %land.lhs.true329
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end342

if.then335:                                       ; preds = %land.lhs.true329
  call void @__sanitizer_cov_trace_pc() #9
  %314 = ptrtoint ptr %ThermOutMode to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 2, ptr %ThermOutMode, align 1
  br label %if.end342

if.else338:                                       ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #9
  %ThermOutGpio339 = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 21
  %315 = ptrtoint ptr %ThermOutGpio339 to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 17, ptr %ThermOutGpio339, align 1
  %ThermOutPolarity340 = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 22
  %316 = ptrtoint ptr %ThermOutPolarity340 to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 1, ptr %ThermOutPolarity340, align 1
  %ThermOutMode341 = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 23
  %317 = ptrtoint ptr %ThermOutMode341 to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 0, ptr %ThermOutMode341, align 1
  br label %if.end342

if.end342:                                        ; preds = %if.else338, %if.then335, %land.lhs.true329.if.end342_crit_edge, %if.then313.if.end342_crit_edge
  %BifSclkDfs = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 42, i32 5
  br label %for.body

for.body:                                         ; preds = %do.end364.for.body_crit_edge, %if.end342
  %conv343671 = phi i32 [ 0, %if.end342 ], [ %conv343, %do.end364.for.body_crit_edge ]
  %i.0670 = phi i8 [ 0, %if.end342 ], [ %inc, %do.end364.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 8, i32 %conv343671
  %318 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %arrayidx, align 4
  %call349 = call i32 @atomctrl_get_dfs_pll_dividers_vi(ptr noundef %hwmgr, i32 noundef %319, ptr noundef nonnull %dividers) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call349)
  %tobool351.not = icmp eq i32 %call349, 0
  br i1 %tobool351.not, label %do.end364, label %if.then352

if.then352:                                       ; preds = %for.body
  %call353 = call i32 @___ratelimit(ptr noundef nonnull @vegam_init_smc_table._rs.70, ptr noundef nonnull @__func__.vegam_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call353)
  %tobool354.not = icmp eq i32 %call353, 0
  br i1 %tobool354.not, label %if.then352.cleanup_crit_edge, label %do.end358

if.then352.cleanup_crit_edge:                     ; preds = %if.then352
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end358:                                        ; preds = %if.then352
  call void @__sanitizer_cov_trace_pc() #9
  %call360 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.73) #11
  br label %cleanup

do.end364:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %i.0670)
  %cmp366 = icmp eq i8 %i.0670, 0
  %320 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %dividers, align 4
  %conv369 = trunc i32 %321 to i16
  %sub374 = add nsw i32 %conv343671, -1
  %BifSclkDfs376 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 36, i32 %sub374, i32 6
  %BifSclkDfs.sink = select i1 %cmp366, ptr %BifSclkDfs, ptr %BifSclkDfs376
  %322 = ptrtoint ptr %BifSclkDfs.sink to i32
  call void @__asan_storeN_noabort(i32 %322, i32 2)
  store i16 %conv369, ptr %BifSclkDfs.sink, align 1
  %inc = add i8 %i.0670, 1
  %conv343 = zext i8 %inc to i32
  %323 = ptrtoint ptr %pcie_speed_table to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %pcie_speed_table, align 4
  %cmp347.not = icmp ult i32 %324, %conv343
  br i1 %cmp347.not, label %for.cond378.preheader, label %do.end364.for.body_crit_edge

do.end364.for.body_crit_edge:                     ; preds = %do.end364
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond378.preheader:                            ; preds = %do.end364
  %dpm_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 4
  %325 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %dpm_table_start, align 8
  %add = add i32 %326, 108
  %call410 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add, ptr noundef %SystemFlags, i32 noundef 1848, i32 noundef 262144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call410)
  %tobool412.not = icmp eq i32 %call410, 0
  br i1 %tobool412.not, label %do.end425, label %if.then413

if.then413:                                       ; preds = %for.cond378.preheader
  %call414 = call i32 @___ratelimit(ptr noundef nonnull @vegam_init_smc_table._rs.74, ptr noundef nonnull @__func__.vegam_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call414)
  %tobool415.not = icmp eq i32 %call414, 0
  br i1 %tobool415.not, label %if.then413.cleanup_crit_edge, label %do.end419

if.then413.cleanup_crit_edge:                     ; preds = %if.then413
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end419:                                        ; preds = %if.then413
  call void @__sanitizer_cov_trace_pc() #9
  %call421 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.77) #11
  br label %cleanup

do.end425:                                        ; preds = %for.cond378.preheader
  %call426 = call fastcc i32 @vegam_populate_pm_fuses(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call426)
  %tobool428.not = icmp eq i32 %call426, 0
  br i1 %tobool428.not, label %do.end441, label %if.then429

if.then429:                                       ; preds = %do.end425
  %call430 = call i32 @___ratelimit(ptr noundef nonnull @vegam_init_smc_table._rs.78, ptr noundef nonnull @__func__.vegam_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call430)
  %tobool431.not = icmp eq i32 %call430, 0
  br i1 %tobool431.not, label %if.then429.cleanup_crit_edge, label %do.end435

if.then429.cleanup_crit_edge:                     ; preds = %if.then429
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end435:                                        ; preds = %if.then429
  call void @__sanitizer_cov_trace_pc() #9
  %call437 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.81) #11
  br label %cleanup

do.end441:                                        ; preds = %do.end425
  call void @__sanitizer_cov_trace_pc() #9
  %327 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %hwmgr, align 4
  %number.i = getelementptr inbounds %struct.amdgpu_device, ptr %328, i32 0, i32 106, i32 48, i32 5
  %329 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %number.i, align 4
  %call.i665 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 773, i32 noundef %330, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end441, %do.end435, %if.then429.cleanup_crit_edge, %do.end419, %if.then413.cleanup_crit_edge, %do.end358, %if.then352.cleanup_crit_edge, %do.end252, %if.then246.cleanup_crit_edge, %do.end229, %if.then223.cleanup_crit_edge, %do.end212, %if.then206.cleanup_crit_edge, %do.end159, %if.then153.cleanup_crit_edge, %do.end143, %if.then137.cleanup_crit_edge, %do.end127, %if.then121.cleanup_crit_edge, %do.end111, %if.then105.cleanup_crit_edge, %do.end95, %if.then89.cleanup_crit_edge, %do.end79, %if.then73.cleanup_crit_edge, %do.end63, %if.then57.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end441 ], [ %call54, %do.end63 ], [ %call54, %if.then57.cleanup_crit_edge ], [ %call70, %do.end79 ], [ %call70, %if.then73.cleanup_crit_edge ], [ %call101.i, %do.end95 ], [ %call101.i, %if.then89.cleanup_crit_edge ], [ %retval.0.i.ph, %do.end111 ], [ %retval.0.i.ph, %if.then105.cleanup_crit_edge ], [ %call118, %do.end127 ], [ %call118, %if.then121.cleanup_crit_edge ], [ %call134, %do.end143 ], [ %call134, %if.then137.cleanup_crit_edge ], [ %call150, %do.end159 ], [ %call150, %if.then153.cleanup_crit_edge ], [ %call203, %do.end212 ], [ %call203, %if.then206.cleanup_crit_edge ], [ %call220, %do.end229 ], [ %call220, %if.then223.cleanup_crit_edge ], [ -22, %do.end252 ], [ -22, %if.then246.cleanup_crit_edge ], [ %call349, %do.end358 ], [ %call349, %if.then352.cleanup_crit_edge ], [ %call410, %do.end419 ], [ %call410, %if.then413.cleanup_crit_edge ], [ %call426, %do.end435 ], [ %call426, %if.then429.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_pin) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vegam_populate_all_graphic_levels(ptr noundef %hwmgr) #0 align 64 {
entry:
  %mvdd.i = alloca i32, align 4
  %curr_sclk_setting.i = alloca %struct.SMU_SclkSetting, align 1
  %range_table_from_vbios.i = alloca %struct.pp_atom_ctrl_sclk_range_table, align 2
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
  %GraphicsLevel = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 33
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %range_table_from_vbios.i) #7
  %12 = call ptr @memset(ptr %range_table_from_vbios.i, i32 0, i32 64)
  %13 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hwmgr, align 4
  %asic_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %asic_funcs.i, align 4
  %get_xclk.i = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %get_xclk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_xclk.i, align 4
  %call.i = tail call i32 %18(ptr noundef %14) #7
  %call2.i = call i32 @atomctrl_get_smc_sclk_range_table(ptr noundef %hwmgr, ptr noundef nonnull %range_table_from_vbios.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %for.body.preheader.i, label %entry.for.body42.i_crit_edge

entry.for.body42.i_crit_edge:                     ; preds = %entry
  br label %for.body42.i

for.body.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %range_table_from_vbios.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %range_table_from_vbios.i, align 2
  %arrayidx5.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97
  %21 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx5.i, align 1
  %ucPostdiv.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %ucPostdiv.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ucPostdiv.i, align 1
  %postdiv.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 0, i32 1
  %24 = ptrtoint ptr %postdiv.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %postdiv.i, align 1
  %usFcw_pcc.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 0, i32 2
  %25 = ptrtoint ptr %usFcw_pcc.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %usFcw_pcc.i, align 2
  %fcw_pcc.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 0, i32 2
  %27 = ptrtoint ptr %fcw_pcc.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %26, ptr %fcw_pcc.i, align 1
  %usFcw_trans_upper.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 0, i32 3
  %28 = ptrtoint ptr %usFcw_trans_upper.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %usFcw_trans_upper.i, align 2
  %fcw_trans_upper.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 0, i32 3
  %30 = ptrtoint ptr %fcw_trans_upper.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 %29, ptr %fcw_trans_upper.i, align 1
  %usRcw_trans_lower.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 0, i32 4
  %31 = ptrtoint ptr %usRcw_trans_lower.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %usRcw_trans_lower.i, align 2
  %fcw_trans_lower.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 0, i32 4
  %33 = ptrtoint ptr %fcw_trans_lower.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %32, ptr %fcw_trans_lower.i, align 1
  %arrayidx.1.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.1.i, align 2
  %arrayidx5.1.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 1
  %36 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx5.1.i, align 1
  %ucPostdiv.1.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %ucPostdiv.1.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ucPostdiv.1.i, align 1
  %postdiv.1.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 1, i32 1
  %39 = ptrtoint ptr %postdiv.1.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %postdiv.1.i, align 1
  %usFcw_pcc.1.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 1, i32 2
  %40 = ptrtoint ptr %usFcw_pcc.1.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %usFcw_pcc.1.i, align 2
  %fcw_pcc.1.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 1, i32 2
  %42 = ptrtoint ptr %fcw_pcc.1.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 %41, ptr %fcw_pcc.1.i, align 1
  %usFcw_trans_upper.1.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 1, i32 3
  %43 = ptrtoint ptr %usFcw_trans_upper.1.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %usFcw_trans_upper.1.i, align 2
  %fcw_trans_upper.1.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 1, i32 3
  %45 = ptrtoint ptr %fcw_trans_upper.1.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 %44, ptr %fcw_trans_upper.1.i, align 1
  %usRcw_trans_lower.1.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 1, i32 4
  %46 = ptrtoint ptr %usRcw_trans_lower.1.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %usRcw_trans_lower.1.i, align 2
  %fcw_trans_lower.1.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 1, i32 4
  %48 = ptrtoint ptr %fcw_trans_lower.1.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %47, ptr %fcw_trans_lower.1.i, align 1
  %arrayidx.2.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 2
  %49 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.2.i, align 2
  %arrayidx5.2.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 2
  %51 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx5.2.i, align 1
  %ucPostdiv.2.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %ucPostdiv.2.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ucPostdiv.2.i, align 1
  %postdiv.2.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 2, i32 1
  %54 = ptrtoint ptr %postdiv.2.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %postdiv.2.i, align 1
  %usFcw_pcc.2.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 2, i32 2
  %55 = ptrtoint ptr %usFcw_pcc.2.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %usFcw_pcc.2.i, align 2
  %fcw_pcc.2.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 2, i32 2
  %57 = ptrtoint ptr %fcw_pcc.2.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 %56, ptr %fcw_pcc.2.i, align 1
  %usFcw_trans_upper.2.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 2, i32 3
  %58 = ptrtoint ptr %usFcw_trans_upper.2.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %usFcw_trans_upper.2.i, align 2
  %fcw_trans_upper.2.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 2, i32 3
  %60 = ptrtoint ptr %fcw_trans_upper.2.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 %59, ptr %fcw_trans_upper.2.i, align 1
  %usRcw_trans_lower.2.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 2, i32 4
  %61 = ptrtoint ptr %usRcw_trans_lower.2.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %usRcw_trans_lower.2.i, align 2
  %fcw_trans_lower.2.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 2, i32 4
  %63 = ptrtoint ptr %fcw_trans_lower.2.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 %62, ptr %fcw_trans_lower.2.i, align 1
  %arrayidx.3.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 3
  %64 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.3.i, align 2
  %arrayidx5.3.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 3
  %66 = ptrtoint ptr %arrayidx5.3.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx5.3.i, align 1
  %ucPostdiv.3.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 3, i32 1
  %67 = ptrtoint ptr %ucPostdiv.3.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %ucPostdiv.3.i, align 1
  %postdiv.3.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 3, i32 1
  %69 = ptrtoint ptr %postdiv.3.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %postdiv.3.i, align 1
  %usFcw_pcc.3.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 3, i32 2
  %70 = ptrtoint ptr %usFcw_pcc.3.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %usFcw_pcc.3.i, align 2
  %fcw_pcc.3.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 3, i32 2
  %72 = ptrtoint ptr %fcw_pcc.3.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 2)
  store i16 %71, ptr %fcw_pcc.3.i, align 1
  %usFcw_trans_upper.3.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 3, i32 3
  %73 = ptrtoint ptr %usFcw_trans_upper.3.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %usFcw_trans_upper.3.i, align 2
  %fcw_trans_upper.3.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 3, i32 3
  %75 = ptrtoint ptr %fcw_trans_upper.3.i to i32
  call void @__asan_storeN_noabort(i32 %75, i32 2)
  store i16 %74, ptr %fcw_trans_upper.3.i, align 1
  %usRcw_trans_lower.3.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 3, i32 4
  %76 = ptrtoint ptr %usRcw_trans_lower.3.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %usRcw_trans_lower.3.i, align 2
  %fcw_trans_lower.3.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 3, i32 4
  %78 = ptrtoint ptr %fcw_trans_lower.3.i to i32
  call void @__asan_storeN_noabort(i32 %78, i32 2)
  store i16 %77, ptr %fcw_trans_lower.3.i, align 1
  %arrayidx.4.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 4
  %79 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.4.i, align 2
  %arrayidx5.4.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 4
  %81 = ptrtoint ptr %arrayidx5.4.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %arrayidx5.4.i, align 1
  %ucPostdiv.4.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 4, i32 1
  %82 = ptrtoint ptr %ucPostdiv.4.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %ucPostdiv.4.i, align 1
  %postdiv.4.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 4, i32 1
  %84 = ptrtoint ptr %postdiv.4.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %postdiv.4.i, align 1
  %usFcw_pcc.4.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 4, i32 2
  %85 = ptrtoint ptr %usFcw_pcc.4.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %usFcw_pcc.4.i, align 2
  %fcw_pcc.4.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 4, i32 2
  %87 = ptrtoint ptr %fcw_pcc.4.i to i32
  call void @__asan_storeN_noabort(i32 %87, i32 2)
  store i16 %86, ptr %fcw_pcc.4.i, align 1
  %usFcw_trans_upper.4.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 4, i32 3
  %88 = ptrtoint ptr %usFcw_trans_upper.4.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %usFcw_trans_upper.4.i, align 2
  %fcw_trans_upper.4.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 4, i32 3
  %90 = ptrtoint ptr %fcw_trans_upper.4.i to i32
  call void @__asan_storeN_noabort(i32 %90, i32 2)
  store i16 %89, ptr %fcw_trans_upper.4.i, align 1
  %usRcw_trans_lower.4.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 4, i32 4
  %91 = ptrtoint ptr %usRcw_trans_lower.4.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %usRcw_trans_lower.4.i, align 2
  %fcw_trans_lower.4.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 4, i32 4
  %93 = ptrtoint ptr %fcw_trans_lower.4.i to i32
  call void @__asan_storeN_noabort(i32 %93, i32 2)
  store i16 %92, ptr %fcw_trans_lower.4.i, align 1
  %arrayidx.5.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 5
  %94 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx.5.i, align 2
  %arrayidx5.5.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 5
  %96 = ptrtoint ptr %arrayidx5.5.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %arrayidx5.5.i, align 1
  %ucPostdiv.5.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 5, i32 1
  %97 = ptrtoint ptr %ucPostdiv.5.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %ucPostdiv.5.i, align 1
  %postdiv.5.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 5, i32 1
  %99 = ptrtoint ptr %postdiv.5.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %postdiv.5.i, align 1
  %usFcw_pcc.5.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 5, i32 2
  %100 = ptrtoint ptr %usFcw_pcc.5.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %usFcw_pcc.5.i, align 2
  %fcw_pcc.5.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 5, i32 2
  %102 = ptrtoint ptr %fcw_pcc.5.i to i32
  call void @__asan_storeN_noabort(i32 %102, i32 2)
  store i16 %101, ptr %fcw_pcc.5.i, align 1
  %usFcw_trans_upper.5.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 5, i32 3
  %103 = ptrtoint ptr %usFcw_trans_upper.5.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %usFcw_trans_upper.5.i, align 2
  %fcw_trans_upper.5.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 5, i32 3
  %105 = ptrtoint ptr %fcw_trans_upper.5.i to i32
  call void @__asan_storeN_noabort(i32 %105, i32 2)
  store i16 %104, ptr %fcw_trans_upper.5.i, align 1
  %usRcw_trans_lower.5.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 5, i32 4
  %106 = ptrtoint ptr %usRcw_trans_lower.5.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %usRcw_trans_lower.5.i, align 2
  %fcw_trans_lower.5.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 5, i32 4
  %108 = ptrtoint ptr %fcw_trans_lower.5.i to i32
  call void @__asan_storeN_noabort(i32 %108, i32 2)
  store i16 %107, ptr %fcw_trans_lower.5.i, align 1
  %arrayidx.6.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 6
  %109 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx.6.i, align 2
  %arrayidx5.6.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 6
  %111 = ptrtoint ptr %arrayidx5.6.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %arrayidx5.6.i, align 1
  %ucPostdiv.6.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 6, i32 1
  %112 = ptrtoint ptr %ucPostdiv.6.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %ucPostdiv.6.i, align 1
  %postdiv.6.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 6, i32 1
  %114 = ptrtoint ptr %postdiv.6.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %postdiv.6.i, align 1
  %usFcw_pcc.6.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 6, i32 2
  %115 = ptrtoint ptr %usFcw_pcc.6.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %usFcw_pcc.6.i, align 2
  %fcw_pcc.6.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 6, i32 2
  %117 = ptrtoint ptr %fcw_pcc.6.i to i32
  call void @__asan_storeN_noabort(i32 %117, i32 2)
  store i16 %116, ptr %fcw_pcc.6.i, align 1
  %usFcw_trans_upper.6.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 6, i32 3
  %118 = ptrtoint ptr %usFcw_trans_upper.6.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %usFcw_trans_upper.6.i, align 2
  %fcw_trans_upper.6.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 6, i32 3
  %120 = ptrtoint ptr %fcw_trans_upper.6.i to i32
  call void @__asan_storeN_noabort(i32 %120, i32 2)
  store i16 %119, ptr %fcw_trans_upper.6.i, align 1
  %usRcw_trans_lower.6.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 6, i32 4
  %121 = ptrtoint ptr %usRcw_trans_lower.6.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %usRcw_trans_lower.6.i, align 2
  %fcw_trans_lower.6.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 6, i32 4
  %123 = ptrtoint ptr %fcw_trans_lower.6.i to i32
  call void @__asan_storeN_noabort(i32 %123, i32 2)
  store i16 %122, ptr %fcw_trans_lower.6.i, align 1
  %arrayidx.7.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 7
  %124 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx.7.i, align 2
  %arrayidx5.7.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 7
  %126 = ptrtoint ptr %arrayidx5.7.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %arrayidx5.7.i, align 1
  %ucPostdiv.7.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 7, i32 1
  %127 = ptrtoint ptr %ucPostdiv.7.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %ucPostdiv.7.i, align 1
  %postdiv.7.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 7, i32 1
  %129 = ptrtoint ptr %postdiv.7.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %postdiv.7.i, align 1
  %usFcw_pcc.7.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 7, i32 2
  %130 = ptrtoint ptr %usFcw_pcc.7.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %usFcw_pcc.7.i, align 2
  %fcw_pcc.7.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 7, i32 2
  %132 = ptrtoint ptr %fcw_pcc.7.i to i32
  call void @__asan_storeN_noabort(i32 %132, i32 2)
  store i16 %131, ptr %fcw_pcc.7.i, align 1
  %usFcw_trans_upper.7.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 7, i32 3
  %133 = ptrtoint ptr %usFcw_trans_upper.7.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %usFcw_trans_upper.7.i, align 2
  %fcw_trans_upper.7.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 7, i32 3
  %135 = ptrtoint ptr %fcw_trans_upper.7.i to i32
  call void @__asan_storeN_noabort(i32 %135, i32 2)
  store i16 %134, ptr %fcw_trans_upper.7.i, align 1
  %usRcw_trans_lower.7.i = getelementptr inbounds [8 x %struct.pp_atom_ctrl_sclk_range_table_entry], ptr %range_table_from_vbios.i, i32 0, i32 7, i32 4
  %136 = ptrtoint ptr %usRcw_trans_lower.7.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %usRcw_trans_lower.7.i, align 2
  %fcw_trans_lower.7.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 7, i32 4
  %138 = ptrtoint ptr %fcw_trans_lower.7.i to i32
  call void @__asan_storeN_noabort(i32 %138, i32 2)
  store i16 %137, ptr %fcw_trans_lower.7.i, align 1
  br label %vegam_get_sclk_range_table.exit

for.body42.i:                                     ; preds = %for.body42.i.for.body42.i_crit_edge, %entry.for.body42.i_crit_edge
  %i.1176.i = phi i32 [ %inc103.i, %for.body42.i.for.body42.i_crit_edge ], [ 0, %entry.for.body42.i_crit_edge ]
  %arrayidx43.i = getelementptr [8 x %struct.sclkFcwRange_t], ptr @Range_Table, i32 0, i32 %i.1176.i
  %fcw_trans_lower44.i = getelementptr [8 x %struct.sclkFcwRange_t], ptr @Range_Table, i32 0, i32 %i.1176.i, i32 4
  %139 = ptrtoint ptr %fcw_trans_lower44.i to i32
  call void @__asan_loadN_noabort(i32 %139, i32 2)
  %140 = load i16, ptr %fcw_trans_lower44.i, align 1
  %conv.i = zext i16 %140 to i32
  %mul.i = mul i32 %call.i, %conv.i
  %postdiv46.i = getelementptr [8 x %struct.sclkFcwRange_t], ptr @Range_Table, i32 0, i32 %i.1176.i, i32 1
  %141 = ptrtoint ptr %postdiv46.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %postdiv46.i, align 1
  %conv47.i = zext i8 %142 to i32
  %shr.i = lshr i32 %mul.i, %conv47.i
  %arrayidx48.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 6, i32 %i.1176.i
  %143 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %shr.i, ptr %arrayidx48.i, align 4
  %fcw_trans_upper50.i = getelementptr [8 x %struct.sclkFcwRange_t], ptr @Range_Table, i32 0, i32 %i.1176.i, i32 3
  %144 = ptrtoint ptr %fcw_trans_upper50.i to i32
  call void @__asan_loadN_noabort(i32 %144, i32 2)
  %145 = load i16, ptr %fcw_trans_upper50.i, align 1
  %conv51.i = zext i16 %145 to i32
  %mul52.i = mul i32 %call.i, %conv51.i
  %shr56.i = lshr i32 %mul52.i, %conv47.i
  %trans_upper_frequency.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 6, i32 %i.1176.i, i32 1
  %146 = ptrtoint ptr %trans_upper_frequency.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %shr56.i, ptr %trans_upper_frequency.i, align 4
  %147 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx43.i, align 1
  %arrayidx62.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 %i.1176.i
  %149 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %arrayidx62.i, align 1
  %postdiv68.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 %i.1176.i, i32 1
  %150 = ptrtoint ptr %postdiv68.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %142, ptr %postdiv68.i, align 1
  %fcw_pcc70.i = getelementptr [8 x %struct.sclkFcwRange_t], ptr @Range_Table, i32 0, i32 %i.1176.i, i32 2
  %151 = ptrtoint ptr %fcw_pcc70.i to i32
  call void @__asan_loadN_noabort(i32 %151, i32 2)
  %152 = load i16, ptr %fcw_pcc70.i, align 1
  %fcw_pcc73.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 %i.1176.i, i32 2
  %153 = ptrtoint ptr %fcw_pcc73.i to i32
  call void @__asan_storeN_noabort(i32 %153, i32 2)
  store i16 %152, ptr %fcw_pcc73.i, align 1
  %fcw_trans_upper78.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 %i.1176.i, i32 3
  %154 = ptrtoint ptr %fcw_trans_upper78.i to i32
  call void @__asan_storeN_noabort(i32 %154, i32 2)
  store i16 %145, ptr %fcw_trans_upper78.i, align 1
  %fcw_trans_lower83.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 97, i32 %i.1176.i, i32 4
  %155 = ptrtoint ptr %fcw_trans_lower83.i to i32
  call void @__asan_storeN_noabort(i32 %155, i32 2)
  store i16 %140, ptr %fcw_trans_lower83.i, align 1
  %inc103.i = add nuw nsw i32 %i.1176.i, 1
  %exitcond.not.i = icmp eq i32 %inc103.i, 8
  br i1 %exitcond.not.i, label %for.body42.i.vegam_get_sclk_range_table.exit_crit_edge, label %for.body42.i.for.body42.i_crit_edge

for.body42.i.for.body42.i_crit_edge:              ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body42.i

for.body42.i.vegam_get_sclk_range_table.exit_crit_edge: ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vegam_get_sclk_range_table.exit

vegam_get_sclk_range_table.exit:                  ; preds = %for.body42.i.vegam_get_sclk_range_table.exit_crit_edge, %for.body.preheader.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %range_table_from_vbios.i) #7
  %156 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp246.not = icmp eq i32 %157, 0
  br i1 %cmp246.not, label %vegam_get_sclk_range_table.exit.for.end_crit_edge, label %for.body.lr.ph

vegam_get_sclk_range_table.exit.for.end_crit_edge: ; preds = %vegam_get_sclk_range_table.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %vegam_get_sclk_range_table.exit
  %display_config.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 45
  %arrayidx.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0247 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %value = getelementptr %struct.smu7_single_dpm_table, ptr %1, i32 0, i32 1, i32 %i.0247, i32 1
  %158 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %value, align 4
  %arrayidx11 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 33, i32 %i.0247
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvdd.i) #7
  %160 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %backend, align 4
  %162 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %pptable, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %curr_sclk_setting.i) #7
  %164 = call ptr @memset(ptr %curr_sclk_setting.i, i32 0, i32 24)
  call fastcc void @vegam_calculate_sclk_params(ptr noundef %hwmgr, i32 noundef %159, ptr noundef nonnull %curr_sclk_setting.i) #7
  %165 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %163, align 4
  %call1.i = call fastcc i32 @vegam_get_dependency_volt_by_clk(ptr noundef %hwmgr, ptr noundef %166, i32 noundef %159, ptr noundef %arrayidx11, ptr noundef nonnull %mvdd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i241 = icmp eq i32 %call1.i, 0
  br i1 %cmp.i241, label %do.end8.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %call2.i242 = call i32 @___ratelimit(ptr noundef nonnull @vegam_populate_single_graphic_level._rs, ptr noundef nonnull @__func__.vegam_populate_single_graphic_level) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i242)
  %tobool.not.i = icmp eq i32 %call2.i242, 0
  br i1 %tobool.not.i, label %if.then.i.vegam_populate_single_graphic_level.exit.thread_crit_edge, label %do.end.i

if.then.i.vegam_populate_single_graphic_level.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vegam_populate_single_graphic_level.exit.thread

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.143) #11
  br label %vegam_populate_single_graphic_level.exit.thread

do.end8.i:                                        ; preds = %for.body
  %ActivityLevel.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 33, i32 %i.0247, i32 3
  %167 = ptrtoint ptr %ActivityLevel.i to i32
  call void @__asan_storeN_noabort(i32 %167, i32 2)
  store i16 45, ptr %ActivityLevel.i, align 1
  %CcPwrDynRm.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 33, i32 %i.0247, i32 6
  %168 = ptrtoint ptr %CcPwrDynRm.i to i32
  call void @__asan_storeN_noabort(i32 %168, i32 4)
  store i32 0, ptr %CcPwrDynRm.i, align 1
  %CcPwrDynRm1.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 33, i32 %i.0247, i32 7
  %169 = ptrtoint ptr %CcPwrDynRm1.i to i32
  call void @__asan_storeN_noabort(i32 %169, i32 4)
  store i32 0, ptr %CcPwrDynRm1.i, align 1
  %EnabledForActivity.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 33, i32 %i.0247, i32 10
  %170 = ptrtoint ptr %EnabledForActivity.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 0, ptr %EnabledForActivity.i, align 1
  %EnabledForThrottle.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 33, i32 %i.0247, i32 11
  %171 = ptrtoint ptr %EnabledForThrottle.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 1, ptr %EnabledForThrottle.i, align 1
  %VoltageDownHyst.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 33, i32 %i.0247, i32 14
  %172 = ptrtoint ptr %VoltageDownHyst.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 0, ptr %VoltageDownHyst.i, align 1
  %PowerThrottle.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 33, i32 %i.0247, i32 15
  %173 = ptrtoint ptr %PowerThrottle.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 0, ptr %PowerThrottle.i, align 1
  %174 = ptrtoint ptr %display_config.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %display_config.i, align 4
  %min_core_set_clock_in_sr.i = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %175, i32 0, i32 10
  %176 = ptrtoint ptr %min_core_set_clock_in_sr.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %min_core_set_clock_in_sr.i, align 4
  %display_timing.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %161, i32 0, i32 68
  %178 = ptrtoint ptr %display_timing.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %display_timing.i, align 4
  %179 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx.i.i, align 4
  %and1.i.i = and i32 %180, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.i.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %cmp.i.not.i, label %do.end8.i.if.end_crit_edge, label %if.then10.i

do.end8.i.if.end_crit_edge:                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then10.i:                                      ; preds = %do.end8.i
  %181 = ptrtoint ptr %display_config.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %display_config.i, align 4
  %min_core_set_clock_in_sr12.i = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %182, i32 0, i32 10
  %183 = ptrtoint ptr %min_core_set_clock_in_sr12.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %min_core_set_clock_in_sr12.i, align 4
  %185 = call i32 @llvm.umax.i32(i32 %184, i32 2500) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %185, i32 %159)
  %cmp1.not.i.i = icmp ugt i32 %185, %159
  br i1 %cmp1.not.i.i, label %if.then.i.i, label %if.then10.i.for.cond.i.i_crit_edge

if.then10.i.for.cond.i.i_crit_edge:               ; preds = %if.then10.i
  br label %for.cond.i.i

if.then.i.i:                                      ; preds = %if.then10.i
  %call.i.i = call i32 @___ratelimit(ptr noundef nonnull @vegam_get_sleep_divider_id_from_clock._rs, ptr noundef nonnull @__func__.vegam_get_sleep_divider_id_from_clock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.vegam_get_sleep_divider_id_from_clock.exit.i_crit_edge, label %do.end.i.i

if.then.i.i.vegam_get_sleep_divider_id_from_clock.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vegam_get_sleep_divider_id_from_clock.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.144) #11
  br label %vegam_get_sleep_divider_id_from_clock.exit.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.then10.i.for.cond.i.i_crit_edge
  %i.0.i.i = phi i8 [ %dec.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ], [ 31, %if.then10.i.for.cond.i.i_crit_edge ]
  %conv.i.i = zext i8 %i.0.i.i to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 1
  %div.i.i = udiv i32 %159, %add.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %185)
  %cmp9.not.i.i = icmp uge i32 %div.i.i, %185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %i.0.i.i)
  %cmp12.i.i = icmp eq i8 %i.0.i.i, 0
  %or.cond.i.i = select i1 %cmp9.not.i.i, i1 true, i1 %cmp12.i.i
  %dec.i.i = add nsw i8 %i.0.i.i, -1
  br i1 %or.cond.i.i, label %for.cond.i.i.vegam_get_sleep_divider_id_from_clock.exit.i_crit_edge, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

for.cond.i.i.vegam_get_sleep_divider_id_from_clock.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vegam_get_sleep_divider_id_from_clock.exit.i

vegam_get_sleep_divider_id_from_clock.exit.i:     ; preds = %for.cond.i.i.vegam_get_sleep_divider_id_from_clock.exit.i_crit_edge, %do.end.i.i, %if.then.i.i.vegam_get_sleep_divider_id_from_clock.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ 0, %do.end.i.i ], [ 0, %if.then.i.i.vegam_get_sleep_divider_id_from_clock.exit.i_crit_edge ], [ %i.0.i.i, %for.cond.i.i.vegam_get_sleep_divider_id_from_clock.exit.i_crit_edge ]
  %DeepSleepDivId.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 33, i32 %i.0247, i32 2
  %186 = ptrtoint ptr %DeepSleepDivId.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %retval.0.i.i, ptr %DeepSleepDivId.i, align 1
  br label %if.end

vegam_populate_single_graphic_level.exit.thread:  ; preds = %do.end.i, %if.then.i.vegam_populate_single_graphic_level.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %curr_sclk_setting.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvdd.i) #7
  br label %cleanup

if.end:                                           ; preds = %vegam_get_sleep_divider_id_from_clock.exit.i, %do.end8.i.if.end_crit_edge
  %SclkSetting.i = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 33, i32 %i.0247, i32 16
  %187 = call ptr @memcpy(ptr %SclkSetting.i, ptr %curr_sclk_setting.i, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %curr_sclk_setting.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvdd.i) #7
  %UpHyst = getelementptr %struct.SMU75_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0247, i32 12
  %188 = ptrtoint ptr %UpHyst to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 10, ptr %UpHyst, align 1
  %DownHyst = getelementptr %struct.SMU75_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0247, i32 13
  %189 = ptrtoint ptr %DownHyst to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 0, ptr %DownHyst, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0247)
  %cmp14 = icmp ugt i32 %i.0247, 1
  br i1 %cmp14, label %if.then16, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %DeepSleepDivId = getelementptr %struct.SMU75_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0247, i32 2
  %190 = ptrtoint ptr %DeepSleepDivId to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 0, ptr %DeepSleepDivId, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %i.0247, 1
  %191 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %1, align 4
  %cmp = icmp ult i32 %inc, %192
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %vegam_get_sclk_range_table.exit.for.end_crit_edge
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 5
  %193 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %194, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i243.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i243.not, label %for.end.if.end25_crit_edge, label %if.then21

for.end.if.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %SSc_En = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 33, i32 0, i32 16, i32 5
  %195 = ptrtoint ptr %SSc_En to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 0, ptr %SSc_En, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %for.end.if.end25_crit_edge
  %196 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %1, align 4
  %conv28 = trunc i32 %197 to i8
  %GraphicsDpmLevelCount = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 13
  %198 = ptrtoint ptr %GraphicsDpmLevelCount to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %conv28, ptr %GraphicsDpmLevelCount, align 1
  %call31 = call i32 @phm_get_dpm_level_enable_mask_value(ptr noundef %1) #7
  %sclk_dpm_enable_mask = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 70, i32 4
  %199 = ptrtoint ptr %sclk_dpm_enable_mask to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %call31, ptr %sclk_dpm_enable_mask, align 4
  %200 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %cmp35249.not = icmp eq i32 %201, 0
  br i1 %cmp35249.not, label %if.end25.for.end44_crit_edge, label %if.end25.for.body37_crit_edge

if.end25.for.body37_crit_edge:                    ; preds = %if.end25
  br label %for.body37

if.end25.for.end44_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end44

for.body37:                                       ; preds = %for.body37.for.body37_crit_edge, %if.end25.for.body37_crit_edge
  %i.1250 = phi i32 [ %inc43, %for.body37.for.body37_crit_edge ], [ 0, %if.end25.for.body37_crit_edge ]
  %202 = ptrtoint ptr %sclk_dpm_enable_mask to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %sclk_dpm_enable_mask, align 4
  %shr = lshr i32 %203, %i.1250
  %204 = trunc i32 %shr to i8
  %conv40 = and i8 %204, 1
  %EnabledForActivity = getelementptr %struct.SMU75_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.1250, i32 10
  %205 = ptrtoint ptr %EnabledForActivity to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %conv40, ptr %EnabledForActivity, align 1
  %inc43 = add nuw i32 %i.1250, 1
  %206 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %1, align 4
  %cmp35 = icmp ult i32 %inc43, %207
  br i1 %cmp35, label %for.body37.for.body37_crit_edge, label %for.body37.for.end44_crit_edge

for.body37.for.end44_crit_edge:                   ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end44

for.body37.for.body37_crit_edge:                  ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body37

for.end44:                                        ; preds = %for.body37.for.end44_crit_edge, %if.end25.for.end44_crit_edge
  %cmp45.not = icmp eq ptr %7, null
  br i1 %cmp45.not, label %while.cond.preheader, label %do.body

while.cond.preheader:                             ; preds = %for.end44
  %pcie_dpm_enable_mask = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 70, i32 6
  %208 = ptrtoint ptr %pcie_dpm_enable_mask to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %pcie_dpm_enable_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %tobool76.not = icmp eq i32 %209, 0
  br i1 %tobool76.not, label %while.cond.preheader.while.end120_crit_edge, label %while.cond.preheader.land.rhs_crit_edge

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

while.cond.preheader.while.end120_crit_edge:      ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end120

do.body:                                          ; preds = %for.end44
  %conv48 = and i32 %9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv48)
  %cmp49.not = icmp eq i32 %conv48, 0
  br i1 %cmp49.not, label %if.then51, label %do.end60

if.then51:                                        ; preds = %do.body
  %call52 = call i32 @___ratelimit(ptr noundef nonnull @vegam_populate_all_graphic_levels._rs, ptr noundef nonnull @__func__.vegam_populate_all_graphic_levels) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then51.cleanup_crit_edge, label %do.end

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.65) #11
  br label %cleanup

do.end60:                                         ; preds = %do.body
  %sub = add nsw i32 %conv48, -1
  %210 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %cmp65251.not = icmp eq i32 %211, 0
  br i1 %cmp65251.not, label %do.end60.if.end153_crit_edge, label %do.end60.for.body67_crit_edge

do.end60.for.body67_crit_edge:                    ; preds = %do.end60
  br label %for.body67

do.end60.if.end153_crit_edge:                     ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153

for.body67:                                       ; preds = %for.body67.for.body67_crit_edge, %do.end60.for.body67_crit_edge
  %i.2252 = phi i32 [ %inc73, %for.body67.for.body67_crit_edge ], [ 0, %do.end60.for.body67_crit_edge ]
  %212 = call i32 @llvm.umin.i32(i32 %i.2252, i32 %sub)
  %conv70 = trunc i32 %212 to i8
  %pcieDpmLevel = getelementptr %struct.SMU75_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.2252, i32 1
  %213 = ptrtoint ptr %pcieDpmLevel to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %conv70, ptr %pcieDpmLevel, align 1
  %inc73 = add nuw i32 %i.2252, 1
  %214 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %1, align 4
  %cmp65 = icmp ult i32 %inc73, %215
  br i1 %cmp65, label %for.body67.for.body67_crit_edge, label %for.body67.if.end153_crit_edge

for.body67.if.end153_crit_edge:                   ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153

for.body67.for.body67_crit_edge:                  ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body67

land.rhs:                                         ; preds = %land.rhs.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %hightest_pcie_level_enabled.0253 = phi i8 [ %inc84, %land.rhs.land.rhs_crit_edge ], [ 0, %while.cond.preheader.land.rhs_crit_edge ]
  %conv79 = zext i8 %hightest_pcie_level_enabled.0253 to i32
  %shl = shl i32 2, %conv79
  %and81 = and i32 %shl, %209
  %cmp82.not = icmp eq i32 %and81, 0
  %inc84 = add i8 %hightest_pcie_level_enabled.0253, 1
  br i1 %cmp82.not, label %while.end, label %land.rhs.land.rhs_crit_edge

land.rhs.land.rhs_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

while.end:                                        ; preds = %land.rhs
  br i1 %tobool76.not, label %while.end.while.end100_crit_edge, label %while.end.land.rhs89_crit_edge

while.end.land.rhs89_crit_edge:                   ; preds = %while.end
  br label %land.rhs89

while.end.while.end100_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end100

land.rhs89:                                       ; preds = %land.rhs89.land.rhs89_crit_edge, %while.end.land.rhs89_crit_edge
  %lowest_pcie_level_enabled.0259 = phi i8 [ %inc99, %land.rhs89.land.rhs89_crit_edge ], [ 0, %while.end.land.rhs89_crit_edge ]
  %conv92 = zext i8 %lowest_pcie_level_enabled.0259 to i32
  %shl93 = shl nuw i32 1, %conv92
  %and94 = and i32 %shl93, %209
  %cmp95 = icmp eq i32 %and94, 0
  %inc99 = add i8 %lowest_pcie_level_enabled.0259, 1
  br i1 %cmp95, label %land.rhs89.land.rhs89_crit_edge, label %land.rhs89.while.end100_crit_edge

land.rhs89.while.end100_crit_edge:                ; preds = %land.rhs89
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end100

land.rhs89.land.rhs89_crit_edge:                  ; preds = %land.rhs89
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs89

while.end100:                                     ; preds = %land.rhs89.while.end100_crit_edge, %while.end.while.end100_crit_edge
  %lowest_pcie_level_enabled.0.lcssa = phi i8 [ 0, %while.end.while.end100_crit_edge ], [ %lowest_pcie_level_enabled.0259, %land.rhs89.while.end100_crit_edge ]
  %conv109 = zext i8 %lowest_pcie_level_enabled.0.lcssa to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %hightest_pcie_level_enabled.0253)
  %cmp104262.not = icmp eq i8 %hightest_pcie_level_enabled.0253, 0
  br i1 %cmp104262.not, label %while.end100.while.end120_crit_edge, label %land.rhs106.preheader

while.end100.while.end120_crit_edge:              ; preds = %while.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end120

land.rhs106.preheader:                            ; preds = %while.end100
  %216 = add i8 %hightest_pcie_level_enabled.0253, -1
  %217 = zext i8 %216 to i32
  %218 = add nuw nsw i32 %217, 1
  %wide.trip.count = zext i8 %hightest_pcie_level_enabled.0253 to i32
  br label %land.rhs106

while.cond101:                                    ; preds = %land.rhs106
  %exitcond.not = icmp eq i32 %add110, %wide.trip.count
  br i1 %exitcond.not, label %while.cond101.while.end120_crit_edge, label %while.cond101.land.rhs106_crit_edge

while.cond101.land.rhs106_crit_edge:              ; preds = %while.cond101
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs106

while.cond101.while.end120_crit_edge:             ; preds = %while.cond101
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end120

land.rhs106:                                      ; preds = %while.cond101.land.rhs106_crit_edge, %land.rhs106.preheader
  %indvars.iv = phi i32 [ 0, %land.rhs106.preheader ], [ %add110, %while.cond101.land.rhs106_crit_edge ]
  %add110 = add nuw nsw i32 %indvars.iv, 1
  %add112 = add nuw nsw i32 %add110, %conv109
  %shl113 = shl nuw i32 1, %add112
  %and114 = and i32 %shl113, %209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %cmp115 = icmp eq i32 %and114, 0
  br i1 %cmp115, label %while.cond101, label %land.rhs106.while.end120_crit_edge

land.rhs106.while.end120_crit_edge:               ; preds = %land.rhs106
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end120

while.end120:                                     ; preds = %land.rhs106.while.end120_crit_edge, %while.cond101.while.end120_crit_edge, %while.end100.while.end120_crit_edge, %while.cond.preheader.while.end120_crit_edge
  %conv109281 = phi i32 [ %conv109, %while.end100.while.end120_crit_edge ], [ 0, %while.cond.preheader.while.end120_crit_edge ], [ %conv109, %while.cond101.while.end120_crit_edge ], [ %conv109, %land.rhs106.while.end120_crit_edge ]
  %lowest_pcie_level_enabled.0.lcssa279 = phi i8 [ %lowest_pcie_level_enabled.0.lcssa, %while.end100.while.end120_crit_edge ], [ 0, %while.cond.preheader.while.end120_crit_edge ], [ %lowest_pcie_level_enabled.0.lcssa, %while.cond101.while.end120_crit_edge ], [ %lowest_pcie_level_enabled.0.lcssa, %land.rhs106.while.end120_crit_edge ]
  %hightest_pcie_level_enabled.0.lcssa271277 = phi i8 [ 0, %while.end100.while.end120_crit_edge ], [ 0, %while.cond.preheader.while.end120_crit_edge ], [ %hightest_pcie_level_enabled.0253, %while.cond101.while.end120_crit_edge ], [ %hightest_pcie_level_enabled.0253, %land.rhs106.while.end120_crit_edge ]
  %conv103.le.pre-phi = phi i32 [ 0, %while.end100.while.end120_crit_edge ], [ 0, %while.cond.preheader.while.end120_crit_edge ], [ %wide.trip.count, %while.cond101.while.end120_crit_edge ], [ %wide.trip.count, %land.rhs106.while.end120_crit_edge ]
  %conv102.lcssa = phi i32 [ 0, %while.end100.while.end120_crit_edge ], [ 0, %while.cond.preheader.while.end120_crit_edge ], [ %indvars.iv, %land.rhs106.while.end120_crit_edge ], [ %218, %while.cond101.while.end120_crit_edge ]
  %add122 = add nsw i32 %conv102.lcssa, 1
  %add124 = add nsw i32 %add122, %conv109281
  %219 = call i32 @llvm.umin.i32(i32 %add124, i32 %conv103.le.pre-phi)
  %conv137 = trunc i32 %219 to i8
  %220 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %221)
  %cmp141267 = icmp ugt i32 %221, 2
  br i1 %cmp141267, label %while.end120.for.body143_crit_edge, label %while.end120.for.end148_crit_edge

while.end120.for.end148_crit_edge:                ; preds = %while.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end148

while.end120.for.body143_crit_edge:               ; preds = %while.end120
  br label %for.body143

for.body143:                                      ; preds = %for.body143.for.body143_crit_edge, %while.end120.for.body143_crit_edge
  %i.3268 = phi i32 [ %inc147, %for.body143.for.body143_crit_edge ], [ 2, %while.end120.for.body143_crit_edge ]
  %pcieDpmLevel145 = getelementptr %struct.SMU75_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.3268, i32 1
  %222 = ptrtoint ptr %pcieDpmLevel145 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %hightest_pcie_level_enabled.0.lcssa271277, ptr %pcieDpmLevel145, align 1
  %inc147 = add nuw i32 %i.3268, 1
  %223 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %1, align 4
  %cmp141 = icmp ult i32 %inc147, %224
  br i1 %cmp141, label %for.body143.for.body143_crit_edge, label %for.body143.for.end148_crit_edge

for.body143.for.end148_crit_edge:                 ; preds = %for.body143
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end148

for.body143.for.body143_crit_edge:                ; preds = %for.body143
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body143

for.end148:                                       ; preds = %for.body143.for.end148_crit_edge, %while.end120.for.end148_crit_edge
  %pcieDpmLevel150 = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 33, i32 0, i32 1
  %225 = ptrtoint ptr %pcieDpmLevel150 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %lowest_pcie_level_enabled.0.lcssa279, ptr %pcieDpmLevel150, align 1
  %pcieDpmLevel152 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 33, i32 1, i32 1
  %226 = ptrtoint ptr %pcieDpmLevel152 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %conv137, ptr %pcieDpmLevel152, align 1
  br label %if.end153

if.end153:                                        ; preds = %for.end148, %for.body67.if.end153_crit_edge, %do.end60.if.end153_crit_edge
  %call154 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add, ptr noundef %GraphicsLevel, i32 noundef 480, i32 noundef 262144) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end153, %do.end, %if.then51.cleanup_crit_edge, %vegam_populate_single_graphic_level.exit.thread
  %retval.0 = phi i32 [ %call154, %if.end153 ], [ -22, %do.end ], [ -22, %if.then51.cleanup_crit_edge ], [ %call1.i, %vegam_populate_single_graphic_level.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vegam_populate_all_memory_levels(ptr noundef %hwmgr) #0 align 64 {
entry:
  %mpll_param.i.i = alloca %struct.pp_atomctrl_memory_clock_param_ai, align 4
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
  %add = add i32 %5, 748
  %MemoryLevel = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 35
  %mclk_table = getelementptr inbounds %struct.smu7_dpm_table, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mclk_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp91.not = icmp eq i32 %7, 0
  br i1 %cmp91.not, label %entry.for.end_crit_edge, label %do.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %pptable.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %8 = getelementptr inbounds %struct.pp_atomctrl_memory_clock_param_ai, ptr %mpll_param.i.i, i32 0, i32 3
  %9 = getelementptr inbounds %struct.pp_atomctrl_memory_clock_param_ai, ptr %mpll_param.i.i, i32 0, i32 2
  %10 = getelementptr inbounds %struct.pp_atomctrl_memory_clock_param_ai, ptr %mpll_param.i.i, i32 0, i32 1
  %display_config.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 45
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  br label %do.body

do.body:                                          ; preds = %if.end18.do.body_crit_edge, %do.body.lr.ph
  %i.092 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %if.end18.do.body_crit_edge ]
  %value = getelementptr %struct.smu7_dpm_table, ptr %1, i32 0, i32 1, i32 1, i32 %i.092, i32 1
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp3.not = icmp eq i32 %12, 0
  br i1 %cmp3.not, label %if.then, label %do.end9

if.then:                                          ; preds = %do.body
  %call = call i32 @___ratelimit(ptr noundef nonnull @vegam_populate_all_memory_levels._rs, ptr noundef nonnull @__func__.vegam_populate_all_memory_levels) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.145) #11
  br label %cleanup

do.end9:                                          ; preds = %do.body
  %13 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %backend, align 4
  %15 = ptrtoint ptr %pptable.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pptable.i, align 4
  %vdd_dep_on_mclk.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %vdd_dep_on_mclk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vdd_dep_on_mclk.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %do.end9.if.end12.i_crit_edge, label %if.then.i

do.end9.if.end12.i_crit_edge:                     ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then.i:                                        ; preds = %do.end9
  %arrayidx14 = getelementptr %struct.SMU75_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.092
  %MinMvdd.i = getelementptr %struct.SMU75_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.092, i32 1
  %call.i = call fastcc i32 @vegam_get_dependency_volt_by_clk(ptr noundef %hwmgr, ptr noundef nonnull %18, i32 noundef %12, ptr noundef %arrayidx14, ptr noundef %MinMvdd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end12.i_crit_edge, label %if.then3.i

if.then.i.if.end12.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then3.i:                                       ; preds = %if.then.i
  %call4.i = call i32 @___ratelimit(ptr noundef nonnull @vegam_populate_single_memory_level._rs, ptr noundef nonnull @__func__.vegam_populate_single_memory_level) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then3.i.cleanup_crit_edge, label %do.end.i

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.146) #11
  br label %cleanup

if.end12.i:                                       ; preds = %if.then.i.if.end12.i_crit_edge, %do.end9.if.end12.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mpll_param.i.i) #7
  %19 = call ptr @memset(ptr %mpll_param.i.i, i32 255, i32 12)
  %call.i.i = call i32 @atomctrl_get_memory_pll_dividers_ai(ptr noundef %hwmgr, i32 noundef %12, ptr noundef nonnull %mpll_param.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %do.end28.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end12.i
  %call1.i.i = call i32 @___ratelimit(ptr noundef nonnull @vegam_calculate_mclk_params._rs, ptr noundef nonnull @__func__.vegam_calculate_mclk_params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.then.i.i.if.then16.i_crit_edge, label %do.end.i.i

if.then.i.i.if.then16.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.151) #11
  br label %if.then16.i

if.then16.i:                                      ; preds = %do.end.i.i, %if.then.i.i.if.then16.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mpll_param.i.i) #7
  %call17.i = call i32 @___ratelimit(ptr noundef nonnull @vegam_populate_single_memory_level._rs.147, ptr noundef nonnull @__func__.vegam_populate_single_memory_level) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.then16.i.cleanup_crit_edge, label %do.end22.i

if.then16.i.cleanup_crit_edge:                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end22.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.150) #11
  br label %cleanup

do.end28.i:                                       ; preds = %if.end12.i
  %20 = ptrtoint ptr %mpll_param.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mpll_param.i.i, align 4
  %MclkFrequency.i.i = getelementptr %struct.SMU75_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.092, i32 2
  %22 = ptrtoint ptr %MclkFrequency.i.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %MclkFrequency.i.i, align 1
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %8, align 2
  %Fcw_int.i.i = getelementptr %struct.SMU75_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.092, i32 14
  %25 = ptrtoint ptr %Fcw_int.i.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %24, ptr %Fcw_int.i.i, align 1
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %9, align 4
  %Fcw_frac.i.i = getelementptr %struct.SMU75_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.092, i32 15
  %28 = ptrtoint ptr %Fcw_frac.i.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %27, ptr %Fcw_frac.i.i, align 1
  %29 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %10, align 4
  %conv.i.i = trunc i32 %30 to i8
  %Postdiv.i.i = getelementptr %struct.SMU75_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.092, i32 16
  %31 = ptrtoint ptr %Postdiv.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv.i.i, ptr %Postdiv.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mpll_param.i.i) #7
  %EnabledForThrottle.i = getelementptr %struct.SMU75_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.092, i32 4
  %32 = ptrtoint ptr %EnabledForThrottle.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %EnabledForThrottle.i, align 1
  %EnabledForActivity.i = getelementptr %struct.SMU75_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.092, i32 5
  %33 = ptrtoint ptr %EnabledForActivity.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %EnabledForActivity.i, align 1
  %VoltageDownHyst.i = getelementptr %struct.SMU75_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.092, i32 9
  %34 = ptrtoint ptr %VoltageDownHyst.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %VoltageDownHyst.i, align 1
  %ActivityLevel.i = getelementptr %struct.SMU75_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.092, i32 11
  %35 = ptrtoint ptr %ActivityLevel.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 15, ptr %ActivityLevel.i, align 1
  %StutterEnable.i = getelementptr %struct.SMU75_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.092, i32 3
  %36 = ptrtoint ptr %StutterEnable.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %StutterEnable.i, align 1
  %DisplayWatermark.i = getelementptr %struct.SMU75_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.092, i32 12
  %37 = ptrtoint ptr %DisplayWatermark.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %DisplayWatermark.i, align 1
  %38 = ptrtoint ptr %display_config.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %display_config.i, align 4
  %num_display.i = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %num_display.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_display.i, align 4
  %num_existing_displays.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %14, i32 0, i32 68, i32 1
  %42 = ptrtoint ptr %num_existing_displays.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %num_existing_displays.i, align 4
  %43 = load ptr, ptr %display_config.i, align 4
  %vrefresh.i = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %vrefresh.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vrefresh.i, align 4
  %vrefresh31.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %14, i32 0, i32 68, i32 2
  %46 = ptrtoint ptr %vrefresh31.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %vrefresh31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60001, i32 %12)
  %cmp.i = icmp ult i32 %12, 60001
  br i1 %cmp.i, label %land.lhs.true33.i, label %do.end28.i.if.end18_crit_edge

do.end28.i.if.end18_crit_edge:                    ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

land.lhs.true33.i:                                ; preds = %do.end28.i
  %47 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %call35.i = call i32 %52(ptr noundef %48, i32 noundef 6965) #7
  %and.i = and i32 %call35.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool37.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool37.not.i, label %land.lhs.true33.i.if.end18_crit_edge, label %if.then38.i

land.lhs.true33.i.if.end18_crit_edge:             ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then38.i:                                      ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %StutterEnable.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %StutterEnable.i, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then38.i, %land.lhs.true33.i.if.end18_crit_edge, %do.end28.i.if.end18_crit_edge
  %UpHyst = getelementptr %struct.SMU75_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.092, i32 7
  %54 = ptrtoint ptr %UpHyst to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 10, ptr %UpHyst, align 1
  %DownHyst = getelementptr %struct.SMU75_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.092, i32 8
  %55 = ptrtoint ptr %DownHyst to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 60, ptr %DownHyst, align 1
  %inc = add nuw i32 %i.092, 1
  %56 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mclk_table, align 4
  %cmp = icmp ult i32 %inc, %57
  br i1 %cmp, label %if.end18.do.body_crit_edge, label %for.end.loopexit

if.end18.do.body_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.end.loopexit:                                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast = trunc i32 %57 to i8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %.lcssa84 = phi i8 [ 0, %entry.for.end_crit_edge ], [ %phi.cast, %for.end.loopexit ]
  %MemoryDpmLevelCount = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 14
  %58 = ptrtoint ptr %MemoryDpmLevelCount to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %.lcssa84, ptr %MemoryDpmLevelCount, align 1
  %call25 = call i32 @phm_get_dpm_level_enable_mask_value(ptr noundef %mclk_table) #7
  %mclk_dpm_enable_mask = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 70, i32 5
  %59 = ptrtoint ptr %mclk_dpm_enable_mask to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call25, ptr %mclk_dpm_enable_mask, align 4
  %60 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mclk_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp2994.not = icmp eq i32 %61, 0
  br i1 %cmp2994.not, label %for.end.for.end38_crit_edge, label %for.end.for.body31_crit_edge

for.end.for.body31_crit_edge:                     ; preds = %for.end
  br label %for.body31

for.end.for.end38_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end38

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %for.end.for.body31_crit_edge
  %i.195 = phi i32 [ %inc37, %for.body31.for.body31_crit_edge ], [ 0, %for.end.for.body31_crit_edge ]
  %62 = ptrtoint ptr %mclk_dpm_enable_mask to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mclk_dpm_enable_mask, align 4
  %shr = lshr i32 %63, %i.195
  %64 = trunc i32 %shr to i8
  %conv34 = and i8 %64, 1
  %EnabledForActivity = getelementptr %struct.SMU75_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.195, i32 5
  %65 = ptrtoint ptr %EnabledForActivity to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv34, ptr %EnabledForActivity, align 1
  %inc37 = add nuw i32 %i.195, 1
  %66 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mclk_table, align 4
  %cmp29 = icmp ult i32 %inc37, %67
  br i1 %cmp29, label %for.body31.for.body31_crit_edge, label %for.end38.loopexit

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body31

for.end38.loopexit:                               ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo = add i32 %67, -1
  br label %for.end38

for.end38:                                        ; preds = %for.end38.loopexit, %for.end.for.end38_crit_edge
  %.lcssa = phi i32 [ -1, %for.end.for.end38_crit_edge ], [ %phi.bo, %for.end38.loopexit ]
  %DisplayWatermark = getelementptr %struct.SMU75_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %.lcssa, i32 12
  %68 = ptrtoint ptr %DisplayWatermark to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %DisplayWatermark, align 1
  %call42 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add, ptr noundef %MemoryLevel, i32 noundef 128, i32 noundef 262144) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end38, %do.end22.i, %if.then16.i.cleanup_crit_edge, %do.end.i, %if.then3.i.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %for.end38 ], [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.then16.i.cleanup_crit_edge ], [ -22, %do.end22.i ], [ %call.i, %if.then3.i.cleanup_crit_edge ], [ %call.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vegam_get_offsetof(i32 noundef %type, i32 noundef %member) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.158)
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, i32 noundef %type, i32 noundef %member) #11
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
  %switch.gep = getelementptr inbounds [15 x i32], ptr @switch.table.vegam_get_offsetof, i32 0, i32 %member
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

switch.lookup22:                                  ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep23 = getelementptr inbounds [3 x i32], ptr @switch.table.vegam_get_offsetof.156, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep23 to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load24 = load i32, ptr %switch.gep23, align 4
  br label %return

return:                                           ; preds = %switch.lookup22, %switch.lookup, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %switch.load, %switch.lookup ], [ %switch.load24, %switch.lookup22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vegam_get_mac_definition(i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %value)
  %0 = icmp ult i32 %value, 9
  br i1 %0, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, i32 noundef %value) #11
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.vegam_get_mac_definition, i32 0, i32 %value
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @vegam_is_dpm_running(ptr nocapture noundef readonly %hwmgr) #0 align 64 {
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
define internal zeroext i1 @vegam_is_hw_avfs_present(ptr nocapture noundef readonly %hwmgr) #0 align 64 {
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
declare dso_local i32 @smum_send_msg_to_smc_with_parameter(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_copy_bytes_to_smc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vegam_program_memory_timing_parameters(ptr noundef %hwmgr) unnamed_addr #0 align 64 {
entry:
  %arb_regs = alloca %struct.SMU75_Discrete_MCArbDramTimingTable, align 1
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
  call void @llvm.lifetime.start.p0(i64 640, ptr nonnull %arb_regs) #7
  %4 = call ptr @memset(ptr %arb_regs, i32 0, i32 640)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp40.not = icmp eq i32 %6, 0
  br i1 %cmp40.not, label %entry.for.end17_crit_edge, label %for.cond1.preheader.lr.ph

entry.for.end17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end17

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %mclk_table = getelementptr inbounds %struct.smu7_dpm_table, ptr %1, i32 0, i32 1
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc15.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %i.041 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc16, %for.inc15.for.cond1.preheader_crit_edge ]
  %7 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mclk_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp438.not = icmp eq i32 %8, 0
  br i1 %cmp438.not, label %for.cond1.preheader.for.inc15_crit_edge, label %for.body5.lr.ph

for.cond1.preheader.for.inc15_crit_edge:          ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc15

for.body5.lr.ph:                                  ; preds = %for.cond1.preheader
  %value = getelementptr %struct.smu7_single_dpm_table, ptr %1, i32 0, i32 1, i32 %i.041, i32 1
  br label %for.body5

for.body5:                                        ; preds = %for.inc.for.body5_crit_edge, %for.body5.lr.ph
  %j.039 = phi i32 [ 0, %for.body5.lr.ph ], [ %inc, %for.inc.for.body5_crit_edge ]
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %value12 = getelementptr %struct.smu7_dpm_table, ptr %1, i32 0, i32 1, i32 1, i32 %j.039, i32 1
  %11 = ptrtoint ptr %value12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value12, align 4
  %call.i = tail call i32 @atomctrl_set_engine_dram_timings_rv770(ptr noundef %hwmgr, i32 noundef %10, i32 noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %for.inc, label %if.then.i

if.then.i:                                        ; preds = %for.body5
  %call1.i = tail call i32 @___ratelimit(ptr noundef nonnull @vegam_populate_memory_timing_parameters._rs, ptr noundef nonnull @__func__.vegam_populate_memory_timing_parameters) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i.cleanup_crit_edge, label %do.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11) #11
  br label %cleanup

for.inc:                                          ; preds = %for.body5
  %arrayidx14 = getelementptr [8 x [4 x %struct.SMU75_Discrete_MCArbDramTimingTableEntry]], ptr %arb_regs, i32 0, i32 %i.041, i32 %j.039
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
  %31 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %call24.i = tail call i32 %36(ptr noundef %32, i32 noundef 2540) #7
  %37 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %call29.i = tail call i32 %42(ptr noundef %38, i32 noundef 2509) #7
  %43 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %call9.i, ptr %arrayidx14, align 1
  %McArbDramTiming2.i = getelementptr [8 x [4 x %struct.SMU75_Discrete_MCArbDramTimingTableEntry]], ptr %arb_regs, i32 0, i32 %i.041, i32 %j.039, i32 1
  %44 = ptrtoint ptr %McArbDramTiming2.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %call14.i, ptr %McArbDramTiming2.i, align 1
  %McArbBurstTime.i = getelementptr [8 x [4 x %struct.SMU75_Discrete_MCArbDramTimingTableEntry]], ptr %arb_regs, i32 0, i32 %i.041, i32 %j.039, i32 2
  %45 = ptrtoint ptr %McArbBurstTime.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %call19.i, ptr %McArbBurstTime.i, align 1
  %McArbRfshRate.i = getelementptr [8 x [4 x %struct.SMU75_Discrete_MCArbDramTimingTableEntry]], ptr %arb_regs, i32 0, i32 %i.041, i32 %j.039, i32 3
  %46 = ptrtoint ptr %McArbRfshRate.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %call24.i, ptr %McArbRfshRate.i, align 1
  %McArbMisc3.i = getelementptr [8 x [4 x %struct.SMU75_Discrete_MCArbDramTimingTableEntry]], ptr %arb_regs, i32 0, i32 %i.041, i32 %j.039, i32 4
  %47 = ptrtoint ptr %McArbMisc3.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %call29.i, ptr %McArbMisc3.i, align 1
  %inc = add nuw i32 %j.039, 1
  %48 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mclk_table, align 4
  %cmp4 = icmp ult i32 %inc, %49
  br i1 %cmp4, label %for.inc.for.body5_crit_edge, label %for.inc.for.inc15_crit_edge

for.inc.for.inc15_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc15

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body5

for.inc15:                                        ; preds = %for.inc.for.inc15_crit_edge, %for.cond1.preheader.for.inc15_crit_edge
  %inc16 = add nuw i32 %i.041, 1
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %1, align 4
  %cmp = icmp ult i32 %inc16, %51
  br i1 %cmp, label %for.inc15.for.cond1.preheader_crit_edge, label %for.inc15.for.end17_crit_edge

for.inc15.for.end17_crit_edge:                    ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end17

for.inc15.for.cond1.preheader_crit_edge:          ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader

for.end17:                                        ; preds = %for.inc15.for.end17_crit_edge, %entry.for.end17_crit_edge
  %arb_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 7
  %52 = ptrtoint ptr %arb_table_start to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arb_table_start, align 4
  %call18 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %53, ptr noundef nonnull %arb_regs, i32 noundef 640, i32 noundef 262144) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end17, %do.end.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %for.end17 ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 640, ptr nonnull %arb_regs) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_set_engine_dram_timings_rv770(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vegam_populate_smc_uvd_level(ptr noundef %hwmgr, ptr nocapture noundef %table) unnamed_addr #0 align 64 {
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
  %UvdLevelCount = getelementptr inbounds %struct.SMU75_Discrete_DpmTable, ptr %table, i32 0, i32 17
  %9 = ptrtoint ptr %UvdLevelCount to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %UvdLevelCount, align 1
  %UvdBootLevel = getelementptr inbounds %struct.SMU75_Discrete_DpmTable, ptr %table, i32 0, i32 46
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
  %arrayidx = getelementptr %struct.SMU75_Discrete_DpmTable, ptr %table, i32 0, i32 38, i32 %indvars.iv
  %MinVoltage = getelementptr %struct.SMU75_Discrete_DpmTable, ptr %table, i32 0, i32 38, i32 %indvars.iv, i32 2
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
  %DclkFrequency = getelementptr %struct.SMU75_Discrete_DpmTable, ptr %table, i32 0, i32 38, i32 %indvars.iv, i32 1
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
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.159)
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
  %call69 = call i32 @___ratelimit(ptr noundef nonnull @vegam_populate_smc_uvd_level._rs, ptr noundef nonnull @__func__.vegam_populate_smc_uvd_level) #7
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
  %VclkDivider = getelementptr %struct.SMU75_Discrete_DpmTable, ptr %table, i32 0, i32 38, i32 %indvars.iv, i32 3
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
  %call90 = call i32 @___ratelimit(ptr noundef nonnull @vegam_populate_smc_uvd_level._rs.98, ptr noundef nonnull @__func__.vegam_populate_smc_uvd_level) #7
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
  %DclkDivider = getelementptr %struct.SMU75_Discrete_DpmTable, ptr %table, i32 0, i32 38, i32 %indvars.iv, i32 4
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
  %.str.101.sink = phi ptr [ @.str.97, %if.then68.cleanup.sink.split_crit_edge ], [ @.str.101, %if.then89.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call65, %if.then68.cleanup.sink.split_crit_edge ], [ %call85, %if.then89.cleanup.sink.split_crit_edge ]
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %.str.101.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end101.cleanup_crit_edge, %if.then89.cleanup_crit_edge, %if.then68.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call65, %if.then68.cleanup_crit_edge ], [ %call85, %if.then89.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %do.end101.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vegam_populate_smc_boot_level(ptr nocapture noundef readonly %hwmgr, ptr noundef %table) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %GraphicsBootLevel = getelementptr inbounds %struct.SMU75_Discrete_DpmTable, ptr %table, i32 0, i32 50
  %2 = ptrtoint ptr %GraphicsBootLevel to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %GraphicsBootLevel, align 1
  %MemoryBootLevel = getelementptr inbounds %struct.SMU75_Discrete_DpmTable, ptr %table, i32 0, i32 58
  %3 = ptrtoint ptr %MemoryBootLevel to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %MemoryBootLevel, align 1
  %vbios_boot_state = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31
  %sclk_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 4
  %4 = ptrtoint ptr %sclk_bootup_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sclk_bootup_value, align 4
  %call = tail call i32 @phm_find_boot_level(ptr noundef %1, i32 noundef %5, ptr noundef %GraphicsBootLevel) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mclk_table = getelementptr inbounds %struct.smu7_dpm_table, ptr %1, i32 0, i32 1
  %mclk_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 5
  %6 = ptrtoint ptr %mclk_bootup_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mclk_bootup_value, align 4
  %call5 = tail call i32 @phm_find_boot_level(ptr noundef %mclk_table, i32 noundef %7, ptr noundef %MemoryBootLevel) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %vddc_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 1
  %8 = ptrtoint ptr %vddc_bootup_value to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vddc_bootup_value, align 2
  %mul = shl i16 %9, 2
  %BootVddc = getelementptr inbounds %struct.SMU75_Discrete_DpmTable, ptr %table, i32 0, i32 83
  %10 = ptrtoint ptr %BootVddc to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %mul, ptr %BootVddc, align 1
  %vddci_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 2
  %11 = ptrtoint ptr %vddci_bootup_value to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vddci_bootup_value, align 4
  %mul13 = shl i16 %12, 2
  %BootVddci = getelementptr inbounds %struct.SMU75_Discrete_DpmTable, ptr %table, i32 0, i32 84
  %13 = ptrtoint ptr %BootVddci to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %mul13, ptr %BootVddci, align 1
  %14 = ptrtoint ptr %vbios_boot_state to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vbios_boot_state, align 4
  %mul17 = shl i16 %15, 2
  %BootMVdd = getelementptr inbounds %struct.SMU75_Discrete_DpmTable, ptr %table, i32 0, i32 60
  %16 = ptrtoint ptr %BootMVdd to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %mul17, ptr %BootMVdd, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %call, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vegam_populate_smc_initial_state(ptr nocapture noundef readonly %hwmgr) unnamed_addr #5 align 64 {
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
  %GraphicsBootLevel = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 50
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
  %MemoryBootLevel = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 58
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
define internal fastcc void @vegam_populate_bapm_parameters_in_dpm_table(ptr nocapture noundef readonly %hwmgr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %power_tune_defaults = getelementptr inbounds %struct.vegam_smumgr, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %power_tune_defaults to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %power_tune_defaults, align 4
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
  %DefaultTdp = getelementptr inbounds %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 75
  %10 = ptrtoint ptr %DefaultTdp to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %mul, ptr %DefaultTdp, align 1
  %11 = load i16, ptr %7, align 4
  %mul5 = shl i16 %11, 7
  %TargetTdp = getelementptr inbounds %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 76
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
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @vegam_populate_bapm_parameters_in_dpm_table._rs, ptr noundef nonnull @__func__.vegam_populate_bapm_parameters_in_dpm_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.do.end14_crit_edge, label %do.end

if.then.do.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.102) #11
  br label %do.end14

do.end14:                                         ; preds = %do.end, %if.then.do.end14_crit_edge, %entry.do.end14_crit_edge
  %15 = ptrtoint ptr %usTargetOperatingTemp to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %usTargetOperatingTemp, align 4
  %mul17 = shl i16 %16, 8
  %TemperatureLimitEdge = getelementptr inbounds %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 81
  %17 = ptrtoint ptr %TemperatureLimitEdge to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %mul17, ptr %TemperatureLimitEdge, align 1
  %usTemperatureLimitHotspot = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %7, i32 0, i32 18
  %18 = ptrtoint ptr %usTemperatureLimitHotspot to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %usTemperatureLimitHotspot, align 4
  %mul20 = shl i16 %19, 8
  %TemperatureLimitHotspot = getelementptr inbounds %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 82
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
  %FanGainEdge = getelementptr inbounds %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 85
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
  %FanGainHotspot = getelementptr inbounds %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 86
  %26 = ptrtoint ptr %FanGainHotspot to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %conv1.i4, ptr %FanGainHotspot, align 1
  %BAPMTI_R = getelementptr inbounds %struct.vegam_pt_defaults, ptr %3, i32 0, i32 8
  %BAPMTI_RC = getelementptr inbounds %struct.vegam_pt_defaults, ptr %3, i32 0, i32 9
  %arrayidx36 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 79, i32 0, i32 0
  %arrayidx40 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 0, i32 0
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
  %incdec.ptr = getelementptr %struct.vegam_pt_defaults, ptr %3, i32 0, i32 8, i32 1
  %incdec.ptr42 = getelementptr %struct.vegam_pt_defaults, ptr %3, i32 0, i32 9, i32 1
  %arrayidx36.1 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 79, i32 0, i32 1
  %arrayidx40.1 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 0, i32 1
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
  %incdec.ptr.1 = getelementptr %struct.vegam_pt_defaults, ptr %3, i32 0, i32 8, i32 2
  %incdec.ptr42.1 = getelementptr %struct.vegam_pt_defaults, ptr %3, i32 0, i32 9, i32 2
  %arrayidx36.2 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 79, i32 0, i32 2
  %arrayidx40.2 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 0, i32 2
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
  %incdec.ptr.2 = getelementptr %struct.vegam_pt_defaults, ptr %3, i32 0, i32 8, i32 3
  %incdec.ptr42.2 = getelementptr %struct.vegam_pt_defaults, ptr %3, i32 0, i32 9, i32 3
  %arrayidx36.113 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 79, i32 1, i32 0
  %arrayidx40.114 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 1, i32 0
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
  %incdec.ptr.115 = getelementptr %struct.vegam_pt_defaults, ptr %3, i32 0, i32 8, i32 4
  %incdec.ptr42.116 = getelementptr %struct.vegam_pt_defaults, ptr %3, i32 0, i32 9, i32 4
  %arrayidx36.1.1 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 79, i32 1, i32 1
  %arrayidx40.1.1 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 1, i32 1
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
  %incdec.ptr.1.1 = getelementptr %struct.vegam_pt_defaults, ptr %3, i32 0, i32 8, i32 5
  %incdec.ptr42.1.1 = getelementptr %struct.vegam_pt_defaults, ptr %3, i32 0, i32 9, i32 5
  %arrayidx36.2.1 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 79, i32 1, i32 2
  %arrayidx40.2.1 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 1, i32 2
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
  %incdec.ptr.2.1 = getelementptr %struct.vegam_pt_defaults, ptr %3, i32 0, i32 8, i32 6
  %incdec.ptr42.2.1 = getelementptr %struct.vegam_pt_defaults, ptr %3, i32 0, i32 9, i32 6
  %arrayidx36.217 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 79, i32 2, i32 0
  %arrayidx40.218 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 2, i32 0
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
  %incdec.ptr.219 = getelementptr %struct.vegam_pt_defaults, ptr %3, i32 0, i32 8, i32 7
  %incdec.ptr42.220 = getelementptr %struct.vegam_pt_defaults, ptr %3, i32 0, i32 9, i32 7
  %arrayidx36.1.2 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 79, i32 2, i32 1
  %arrayidx40.1.2 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 2, i32 1
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
  %incdec.ptr.1.2 = getelementptr %struct.vegam_pt_defaults, ptr %3, i32 0, i32 8, i32 8
  %incdec.ptr42.1.2 = getelementptr %struct.vegam_pt_defaults, ptr %3, i32 0, i32 9, i32 8
  %arrayidx36.2.2 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 79, i32 2, i32 2
  %arrayidx40.2.2 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 2, i32 2
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
  %incdec.ptr.2.2 = getelementptr %struct.vegam_pt_defaults, ptr %3, i32 0, i32 8, i32 9
  %incdec.ptr42.2.2 = getelementptr %struct.vegam_pt_defaults, ptr %3, i32 0, i32 9, i32 9
  %arrayidx36.3 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 79, i32 3, i32 0
  %arrayidx40.3 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 3, i32 0
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
  %incdec.ptr.3 = getelementptr %struct.vegam_pt_defaults, ptr %3, i32 0, i32 8, i32 10
  %incdec.ptr42.3 = getelementptr %struct.vegam_pt_defaults, ptr %3, i32 0, i32 9, i32 10
  %arrayidx36.1.3 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 79, i32 3, i32 1
  %arrayidx40.1.3 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 3, i32 1
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
  %incdec.ptr.1.3 = getelementptr %struct.vegam_pt_defaults, ptr %3, i32 0, i32 8, i32 11
  %incdec.ptr42.1.3 = getelementptr %struct.vegam_pt_defaults, ptr %3, i32 0, i32 9, i32 11
  %arrayidx36.2.3 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 79, i32 3, i32 2
  %arrayidx40.2.3 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 3, i32 2
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
  %incdec.ptr.2.3 = getelementptr %struct.vegam_pt_defaults, ptr %3, i32 0, i32 8, i32 12
  %incdec.ptr42.2.3 = getelementptr %struct.vegam_pt_defaults, ptr %3, i32 0, i32 9, i32 12
  %arrayidx36.4 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 79, i32 4, i32 0
  %arrayidx40.4 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 4, i32 0
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
  %incdec.ptr.4 = getelementptr %struct.vegam_pt_defaults, ptr %3, i32 0, i32 8, i32 13
  %incdec.ptr42.4 = getelementptr %struct.vegam_pt_defaults, ptr %3, i32 0, i32 9, i32 13
  %arrayidx36.1.4 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 79, i32 4, i32 1
  %arrayidx40.1.4 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 4, i32 1
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
  %incdec.ptr.1.4 = getelementptr %struct.vegam_pt_defaults, ptr %3, i32 0, i32 8, i32 14
  %incdec.ptr42.1.4 = getelementptr %struct.vegam_pt_defaults, ptr %3, i32 0, i32 9, i32 14
  %arrayidx36.2.4 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 79, i32 4, i32 2
  %arrayidx40.2.4 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 80, i32 4, i32 2
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
define internal fastcc i32 @vegam_populate_clock_stretcher_data_table(ptr noundef %hwmgr) unnamed_addr #0 align 64 {
entry:
  %efuse = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %efuse) #7
  %0 = ptrtoint ptr %efuse to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %efuse, align 4, !annotation !316
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %1 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %smu_backend, align 4
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %3 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pptable, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %cac_dtp_table = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %4, i32 0, i32 12
  %7 = ptrtoint ptr %cac_dtp_table to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cac_dtp_table, align 4
  %usClockStretchAmount = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %8, i32 0, i32 17
  %9 = ptrtoint ptr %usClockStretchAmount to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %usClockStretchAmount, align 2
  %call = call i32 @atomctrl_read_efuse(ptr noundef %hwmgr, i16 noundef zeroext 2168, i16 noundef zeroext 2175, ptr noundef nonnull %efuse) #7
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp149.not = icmp eq i32 %12, 0
  br i1 %cmp149.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %13 = ptrtoint ptr %efuse to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %efuse, align 4
  %mul = mul i32 %14, 1300
  %div = udiv i32 %mul, 255
  %Sclk_CKS_masterEn0_7 = getelementptr inbounds %struct.vegam_smumgr, ptr %2, i32 0, i32 2, i32 90
  %.neg = mul i32 %div, -1000000
  %add12 = add i32 %.neg, 1623594000
  %add31 = add i32 %.neg, 1662202000
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %conv1152 = phi i32 [ 0, %for.body.lr.ph ], [ %conv1, %if.end.for.body_crit_edge ]
  %volt_offset.0151 = phi i8 [ 0, %for.body.lr.ph ], [ %volt_offset.1, %if.end.for.body_crit_edge ]
  %i.0150 = phi i8 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %6, i32 0, i32 1, i32 %conv1152
  %cks_enable = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %6, i32 0, i32 1, i32 %conv1152, i32 10
  %15 = ptrtoint ptr %cks_enable to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cks_enable, align 1
  %conv3 = zext i8 %16 to i32
  %shl = shl i32 %conv3, %conv1152
  %17 = ptrtoint ptr %Sclk_CKS_masterEn0_7 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %Sclk_CKS_masterEn0_7, align 1
  %19 = trunc i32 %shl to i8
  %conv6 = or i8 %18, %19
  store i8 %conv6, ptr %Sclk_CKS_masterEn0_7, align 1
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %div10 = udiv i32 %21, 100
  %mul11 = mul i32 %div10, 136418
  %sub15 = add i32 %add12, %mul11
  %mul21 = mul i32 %div10, 1132925
  %div22 = udiv i32 %mul21, 1000
  %sub23 = sub nsw i32 2424180, %div22
  %div24 = udiv i32 %sub15, %sub23
  %mul30 = mul i32 %div10, 3232
  %sub34 = add i32 %add31, %mul30
  %mul40 = mul i32 %div10, 115764
  %div41 = udiv i32 %mul40, 100
  %sub42 = sub nsw i32 2522480, %div41
  %div43 = udiv i32 %sub34, %sub42
  call void @__sanitizer_cov_trace_cmp4(i32 %div24, i32 %div43)
  %cmp44.not = icmp ult i32 %div24, %div43
  br i1 %cmp44.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %sub46 = sub i32 %div24, %div43
  %cks_voffset = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %6, i32 0, i32 1, i32 %conv1152, i32 11
  %22 = ptrtoint ptr %cks_voffset to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cks_voffset, align 4
  %conv50 = zext i8 %23 to i32
  %add51 = add i32 %sub46, %conv50
  %mul52 = mul i32 %add51, 100
  %add53 = add i32 %mul52, 624
  %div54 = udiv i32 %add53, 625
  %conv55 = trunc i32 %div54 to i8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %volt_offset.1 = phi i8 [ %conv55, %if.then ], [ %volt_offset.0151, %for.body.if.end_crit_edge ]
  %arrayidx58 = getelementptr %struct.vegam_smumgr, ptr %2, i32 0, i32 2, i32 93, i32 %conv1152
  %24 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %volt_offset.1, ptr %arrayidx58, align 1
  %inc = add i8 %i.0150, 1
  %conv1 = zext i8 %inc to i32
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %6, align 4
  %cmp = icmp ugt i32 %26, %conv1
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %27 = ptrtoint ptr %cac_dtp_table to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cac_dtp_table, align 4
  %ucCKS_LDO_REFSEL = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %28, i32 0, i32 32
  %29 = ptrtoint ptr %ucCKS_LDO_REFSEL to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ucCKS_LDO_REFSEL, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp61.not = icmp eq i8 %30, 0
  %spec.select = select i1 %cmp61.not, i8 5, i8 %30
  %LdoRefSel = getelementptr inbounds %struct.vegam_smumgr, ptr %2, i32 0, i32 2, i32 26
  %31 = ptrtoint ptr %LdoRefSel to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %spec.select, ptr %LdoRefSel, align 1
  %32 = and i16 %10, 255
  %.off = add nsw i16 %32, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %.off)
  %switch = icmp ult i16 %.off, 5
  br i1 %switch, label %if.end94, label %if.then86

if.then86:                                        ; preds = %for.end
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 5
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %34, -3
  store i32 %and1.i, ptr %arrayidx.i, align 4
  %call87 = call i32 @___ratelimit(ptr noundef nonnull @vegam_populate_clock_stretcher_data_table._rs, ptr noundef nonnull @__func__.vegam_populate_clock_stretcher_data_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool.not = icmp eq i32 %call87, 0
  br i1 %tobool.not, label %if.then86.cleanup_crit_edge, label %do.end

if.then86.cleanup_crit_edge:                      ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.103) #11
  br label %cleanup

if.end94:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %35 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %read_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %read_ind_register to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read_ind_register, align 4
  %call96 = call i32 %40(ptr noundef %36, i32 noundef 1, i32 noundef -1071643824) #7
  %and = and i32 %call96, -2
  %41 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %write_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %write_ind_register to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_ind_register, align 4
  call void %46(ptr noundef %42, i32 noundef 1, i32 noundef -1071643824, i32 noundef %and) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %do.end, %if.then86.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end94 ], [ -22, %do.end ], [ -22, %if.then86.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %efuse) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vegam_populate_avfs_parameters(ptr noundef %hwmgr) unnamed_addr #0 align 64 {
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
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %avfs_params) #7
  %4 = call ptr @memset(ptr %avfs_params, i32 0, i32 80)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %AVFS_meanNsigma) #7
  %5 = getelementptr inbounds i8, ptr %AVFS_meanNsigma, i32 20
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %AVFS_SclkOffset) #7
  %7 = call ptr @memset(ptr %AVFS_SclkOffset, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #7
  %8 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %tmp, align 4, !annotation !316
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %9 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pptable, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %avfs_supported = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 47
  %13 = ptrtoint ptr %avfs_supported to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %avfs_supported, align 4, !range !315
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @atomctrl_get_avfs_information(ptr noundef %hwmgr, ptr noundef nonnull %avfs_params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then1:                                         ; preds = %if.end
  %ulGB_VDROOP_TABLE_CKSON_a0 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 9
  %15 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSON_a0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ulGB_VDROOP_TABLE_CKSON_a0, align 4
  %BTCGB_VDROOP_TABLE = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 98
  %17 = ptrtoint ptr %BTCGB_VDROOP_TABLE to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %BTCGB_VDROOP_TABLE, align 1
  %ulGB_VDROOP_TABLE_CKSON_a1 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 10
  %18 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSON_a1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ulGB_VDROOP_TABLE_CKSON_a1, align 4
  %a1 = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 0, i32 1
  %20 = ptrtoint ptr %a1 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %a1, align 1
  %ulGB_VDROOP_TABLE_CKSON_a2 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 11
  %21 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSON_a2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ulGB_VDROOP_TABLE_CKSON_a2, align 4
  %a2 = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 0, i32 2
  %23 = ptrtoint ptr %a2 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %a2, align 1
  %ulGB_VDROOP_TABLE_CKSOFF_a0 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 6
  %24 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSOFF_a0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ulGB_VDROOP_TABLE_CKSOFF_a0, align 4
  %arrayidx7 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 1
  %26 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %arrayidx7, align 1
  %ulGB_VDROOP_TABLE_CKSOFF_a1 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 7
  %27 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSOFF_a1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ulGB_VDROOP_TABLE_CKSOFF_a1, align 4
  %a111 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 1, i32 1
  %29 = ptrtoint ptr %a111 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %a111, align 1
  %ulGB_VDROOP_TABLE_CKSOFF_a2 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 8
  %30 = ptrtoint ptr %ulGB_VDROOP_TABLE_CKSOFF_a2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ulGB_VDROOP_TABLE_CKSOFF_a2, align 4
  %a214 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 98, i32 1, i32 2
  %32 = ptrtoint ptr %a214 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %a214, align 1
  %ulAVFSGB_FUSE_TABLE_CKSON_m1 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 15
  %33 = ptrtoint ptr %ulAVFSGB_FUSE_TABLE_CKSON_m1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ulAVFSGB_FUSE_TABLE_CKSON_m1, align 4
  %AVFSGB_FUSE_TABLE = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 99
  %35 = ptrtoint ptr %AVFSGB_FUSE_TABLE to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %AVFSGB_FUSE_TABLE, align 1
  %usAVFSGB_FUSE_TABLE_CKSON_m2 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 16
  %36 = ptrtoint ptr %usAVFSGB_FUSE_TABLE_CKSON_m2 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %usAVFSGB_FUSE_TABLE_CKSON_m2, align 4
  %m2 = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 99, i32 0, i32 2
  %38 = ptrtoint ptr %m2 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %37, ptr %m2, align 1
  %ulAVFSGB_FUSE_TABLE_CKSON_b = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 17
  %39 = ptrtoint ptr %ulAVFSGB_FUSE_TABLE_CKSON_b to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ulAVFSGB_FUSE_TABLE_CKSON_b, align 4
  %b = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 99, i32 0, i32 1
  %41 = ptrtoint ptr %b to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %b, align 1
  %m1_shift = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 99, i32 0, i32 3
  %42 = ptrtoint ptr %m1_shift to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 24, ptr %m1_shift, align 1
  %m2_shift = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 99, i32 0, i32 4
  %43 = ptrtoint ptr %m2_shift to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 12, ptr %m2_shift, align 1
  %ulAVFSGB_FUSE_TABLE_CKSOFF_m1 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 12
  %44 = ptrtoint ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_m1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_m1, align 4
  %arrayidx25 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 99, i32 1
  %46 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %45, ptr %arrayidx25, align 1
  %usAVFSGB_FUSE_TABLE_CKSOFF_m2 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 13
  %47 = ptrtoint ptr %usAVFSGB_FUSE_TABLE_CKSOFF_m2 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %usAVFSGB_FUSE_TABLE_CKSOFF_m2, align 4
  %m229 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 99, i32 1, i32 2
  %49 = ptrtoint ptr %m229 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 %48, ptr %m229, align 1
  %ulAVFSGB_FUSE_TABLE_CKSOFF_b = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 14
  %50 = ptrtoint ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_b to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ulAVFSGB_FUSE_TABLE_CKSOFF_b, align 4
  %b32 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 99, i32 1, i32 1
  %52 = ptrtoint ptr %b32 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %51, ptr %b32, align 1
  %m1_shift35 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 99, i32 1, i32 3
  %53 = ptrtoint ptr %m1_shift35 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 24, ptr %m1_shift35, align 1
  %m2_shift38 = getelementptr %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 99, i32 1, i32 4
  %54 = ptrtoint ptr %m2_shift38 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 12, ptr %m2_shift38, align 1
  %usMaxVoltage_0_25mv = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 18
  %55 = ptrtoint ptr %usMaxVoltage_0_25mv to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %usMaxVoltage_0_25mv, align 4
  %MaxVoltage = getelementptr inbounds %struct.vegam_smumgr, ptr %3, i32 0, i32 2, i32 30
  %57 = ptrtoint ptr %MaxVoltage to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 %56, ptr %MaxVoltage, align 1
  %58 = ptrtoint ptr %avfs_params to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %avfs_params, align 4
  %60 = ptrtoint ptr %AVFS_meanNsigma to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %AVFS_meanNsigma, align 4
  %ulAVFS_meanNsigma_Acontant1 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 1
  %61 = ptrtoint ptr %ulAVFS_meanNsigma_Acontant1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ulAVFS_meanNsigma_Acontant1, align 4
  %arrayidx41 = getelementptr inbounds [3 x i32], ptr %AVFS_meanNsigma, i32 0, i32 1
  %63 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %arrayidx41, align 4
  %ulAVFS_meanNsigma_Acontant2 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 2
  %64 = ptrtoint ptr %ulAVFS_meanNsigma_Acontant2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ulAVFS_meanNsigma_Acontant2, align 4
  %arrayidx43 = getelementptr inbounds [3 x i32], ptr %AVFS_meanNsigma, i32 0, i32 2
  %66 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %arrayidx43, align 4
  %usAVFS_meanNsigma_DC_tol_sigma = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 3
  %67 = ptrtoint ptr %usAVFS_meanNsigma_DC_tol_sigma to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %usAVFS_meanNsigma_DC_tol_sigma, align 4
  %DC_tol_sigma = getelementptr inbounds %struct.AVFS_meanNsigma_t, ptr %AVFS_meanNsigma, i32 0, i32 1
  %69 = ptrtoint ptr %DC_tol_sigma to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %DC_tol_sigma, align 4
  %usAVFS_meanNsigma_Platform_mean = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 4
  %70 = ptrtoint ptr %usAVFS_meanNsigma_Platform_mean to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %usAVFS_meanNsigma_Platform_mean, align 2
  %Platform_mean = getelementptr inbounds %struct.AVFS_meanNsigma_t, ptr %AVFS_meanNsigma, i32 0, i32 2
  %72 = ptrtoint ptr %Platform_mean to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %Platform_mean, align 2
  %usPSM_Age_ComFactor = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 23
  %73 = ptrtoint ptr %usPSM_Age_ComFactor to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %usPSM_Age_ComFactor, align 2
  %PSM_Age_CompFactor = getelementptr inbounds %struct.AVFS_meanNsigma_t, ptr %AVFS_meanNsigma, i32 0, i32 4
  %75 = ptrtoint ptr %PSM_Age_CompFactor to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %PSM_Age_CompFactor, align 2
  %usAVFS_meanNsigma_Platform_sigma = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 5
  %76 = ptrtoint ptr %usAVFS_meanNsigma_Platform_sigma to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %usAVFS_meanNsigma_Platform_sigma, align 4
  %Platform_sigma = getelementptr inbounds %struct.AVFS_meanNsigma_t, ptr %AVFS_meanNsigma, i32 0, i32 3
  %78 = ptrtoint ptr %Platform_sigma to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %Platform_sigma, align 4
  %79 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp44117.not = icmp eq i32 %80, 0
  br i1 %cmp44117.not, label %if.then1.for.end_crit_edge, label %if.then1.for.body_crit_edge

if.then1.for.body_crit_edge:                      ; preds = %if.then1
  br label %for.body

if.then1.for.end_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then1.for.body_crit_edge
  %i.0118 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then1.for.body_crit_edge ]
  %cks_voffset = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %12, i32 0, i32 1, i32 %i.0118, i32 11
  %81 = ptrtoint ptr %cks_voffset to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %cks_voffset, align 4
  %conv = zext i8 %82 to i16
  %mul = mul nuw nsw i16 %conv, 100
  %div = udiv i16 %mul, 625
  %conv46 = trunc i16 %div to i8
  %arrayidx47 = getelementptr %struct.AVFS_meanNsigma_t, ptr %AVFS_meanNsigma, i32 0, i32 5, i32 %i.0118
  %83 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv46, ptr %arrayidx47, align 1
  %sclk_offset = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %12, i32 0, i32 1, i32 %i.0118, i32 12
  %84 = ptrtoint ptr %sclk_offset to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %sclk_offset, align 4
  %86 = trunc i32 %85 to i16
  %div52116 = udiv i16 %86, 100
  %arrayidx54 = getelementptr [8 x i16], ptr %AVFS_SclkOffset, i32 0, i32 %i.0118
  %87 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %div52116, ptr %arrayidx54, align 2
  %inc = add nuw i32 %i.0118, 1
  %88 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %12, align 4
  %cmp44 = icmp ult i32 %inc, %89
  br i1 %cmp44, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then1.for.end_crit_edge
  %call55 = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131192, ptr noundef nonnull %tmp, i32 noundef 262144) #7
  %90 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tmp, align 4
  %call56 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %91, ptr noundef nonnull %AVFS_meanNsigma, i32 noundef 28, i32 noundef 262144) #7
  %call57 = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131196, ptr noundef nonnull %tmp, i32 noundef 262144) #7
  %92 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tmp, align 4
  %call58 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %93, ptr noundef nonnull %AVFS_SclkOffset, i32 noundef 16, i32 noundef 262144) #7
  %ucEnableGB_VDROOP_TABLE_CKSON = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 20
  %94 = ptrtoint ptr %ucEnableGB_VDROOP_TABLE_CKSON to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %ucEnableGB_VDROOP_TABLE_CKSON, align 1
  %conv59 = zext i8 %95 to i32
  %ucEnableGB_VDROOP_TABLE_CKSOFF = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 19
  %96 = ptrtoint ptr %ucEnableGB_VDROOP_TABLE_CKSOFF to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %ucEnableGB_VDROOP_TABLE_CKSOFF, align 2
  %conv60 = zext i8 %97 to i32
  %shl61 = shl nuw nsw i32 %conv60, 1
  %or = or i32 %shl61, %conv59
  %ucEnableGB_FUSE_TABLE_CKSON = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 22
  %98 = ptrtoint ptr %ucEnableGB_FUSE_TABLE_CKSON to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %ucEnableGB_FUSE_TABLE_CKSON, align 1
  %conv62 = zext i8 %99 to i32
  %shl63 = shl nuw nsw i32 %conv62, 2
  %or64 = or i32 %or, %shl63
  %ucEnableGB_FUSE_TABLE_CKSOFF = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 21
  %100 = ptrtoint ptr %ucEnableGB_FUSE_TABLE_CKSOFF to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %ucEnableGB_FUSE_TABLE_CKSOFF, align 4
  %conv65 = zext i8 %101 to i32
  %shl66 = shl nuw nsw i32 %conv65, 3
  %or67 = or i32 %or64, %shl66
  %avfs_vdroop_override_setting = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 95
  %102 = ptrtoint ptr %avfs_vdroop_override_setting to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %or67, ptr %avfs_vdroop_override_setting, align 4
  %ucEnableApplyAVFS_CKS_OFF_Voltage = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, ptr %avfs_params, i32 0, i32 24
  %103 = ptrtoint ptr %ucEnableApplyAVFS_CKS_OFF_Voltage to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %ucEnableApplyAVFS_CKS_OFF_Voltage, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %104)
  %cmp69 = icmp eq i8 %104, 1
  %apply_avfs_cks_off_voltage = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 96
  %frombool = zext i1 %cmp69 to i8
  %105 = ptrtoint ptr %apply_avfs_cks_off_voltage to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %frombool, ptr %apply_avfs_cks_off_voltage, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call57, %for.end ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %AVFS_SclkOffset) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %AVFS_meanNsigma) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %avfs_params) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vegam_populate_vr_config(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef %table) unnamed_addr #0 align 64 {
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
  %VRConfig = getelementptr inbounds %struct.SMU75_Discrete_DpmTable, ptr %table, i32 0, i32 4
  %voltage_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %voltage_control to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %voltage_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %VRConfig to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %VRConfig, align 1
  %or4 = or i32 %7, 1
  store i32 %or4, ptr %VRConfig, align 1
  br label %if.end10

do.body:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @vegam_populate_vr_config._rs, ptr noundef nonnull @__func__.vegam_populate_vr_config) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.if.end10_crit_edge, label %do.end

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.104) #11
  br label %if.end10

if.end10:                                         ; preds = %do.end, %do.body.if.end10_crit_edge, %if.then
  %vddci_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 40
  %8 = ptrtoint ptr %vddci_control to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vddci_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp11 = icmp eq i32 %9, 2
  br i1 %cmp11, label %if.then13, label %if.else18

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %VRConfig to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %VRConfig, align 1
  %or17 = or i32 %11, 131072
  br label %if.end33

if.else18:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp20 = icmp eq i32 %9, 1
  %12 = ptrtoint ptr %VRConfig to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %VRConfig, align 1
  br i1 %cmp20, label %if.then22, label %if.else27

if.then22:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #9
  %or26 = or i32 %13, 196608
  br label %if.end33

if.else27:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #9
  %or31 = or i32 %13, 327680
  br label %if.end33

if.end33:                                         ; preds = %if.else27, %if.then22, %if.then13
  %or26.sink = phi i32 [ %or26, %if.then22 ], [ %or31, %if.else27 ], [ %or17, %if.then13 ]
  %14 = ptrtoint ptr %VRConfig to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %or26.sink, ptr %VRConfig, align 1
  %mvdd_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 23
  %15 = ptrtoint ptr %mvdd_control to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mvdd_control, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %16, label %if.else78 [
    i32 2, label %if.then36
    i32 1, label %if.then67
  ]

if.then36:                                        ; preds = %if.end33
  br i1 %cmp11, label %do.body47, label %if.then40

if.then40:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %VRConfig to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %VRConfig, align 1
  %or44 = or i32 %19, 33554432
  store i32 %or44, ptr %VRConfig, align 1
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %20 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %write_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %write_ind_register to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_ind_register, align 4
  %soft_regs_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 3
  %26 = ptrtoint ptr %soft_regs_start to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %soft_regs_start, align 4
  %add = add i32 %27, 112
  tail call void %25(ptr noundef %21, i32 noundef 1, i32 noundef %add, i32 noundef 1) #7
  br label %if.end84

do.body47:                                        ; preds = %if.then36
  %call48 = tail call i32 @___ratelimit(ptr noundef nonnull @vegam_populate_vr_config._rs.105, ptr noundef nonnull @__func__.vegam_populate_vr_config) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %do.body47.do.end58_crit_edge, label %do.end53

do.body47.do.end58_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end58

do.end53:                                         ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.108) #11
  br label %do.end58

do.end58:                                         ; preds = %do.end53, %do.body47.do.end58_crit_edge
  %28 = ptrtoint ptr %VRConfig to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 83886080, ptr %VRConfig, align 1
  br label %if.end84

if.then67:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %VRConfig to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 67108864, ptr %VRConfig, align 1
  %device71 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %30 = ptrtoint ptr %device71 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device71, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %write_ind_register73 = getelementptr inbounds %struct.cgs_ops, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %write_ind_register73 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_ind_register73, align 4
  %soft_regs_start76 = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 3
  %36 = ptrtoint ptr %soft_regs_start76 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %soft_regs_start76, align 4
  %add77 = add i32 %37, 112
  tail call void %35(ptr noundef %31, i32 noundef 1, i32 noundef %add77, i32 noundef 1) #7
  br label %if.end84

if.else78:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %VRConfig to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %VRConfig, align 1
  %or82 = or i32 %39, 83886080
  store i32 %or82, ptr %VRConfig, align 1
  br label %if.end84

if.end84:                                         ; preds = %if.else78, %if.then67, %do.end58, %if.then40
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @atomctrl_get_pp_assign_pin(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_dfs_pll_dividers_vi(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vegam_populate_pm_fuses(ptr noundef %hwmgr) unnamed_addr #0 align 64 {
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
  store i32 -1, ptr %pm_fuse_table_offset, align 4, !annotation !316
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
  %call3 = call i32 @___ratelimit(ptr noundef nonnull @vegam_populate_pm_fuses._rs, ptr noundef nonnull @__func__.vegam_populate_pm_fuses) #7
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
  %power_tune_defaults.i = getelementptr inbounds %struct.vegam_smumgr, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %power_tune_defaults.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %power_tune_defaults.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4
  %SviLoadLineEn1.i = getelementptr inbounds %struct.vegam_smumgr, ptr %6, i32 0, i32 4, i32 3
  %11 = ptrtoint ptr %SviLoadLineEn1.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %SviLoadLineEn1.i, align 1
  %SviLoadLineVddC.i = getelementptr inbounds %struct.vegam_pt_defaults, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %SviLoadLineVddC.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %SviLoadLineVddC.i, align 1
  %SviLoadLineVddC3.i = getelementptr inbounds %struct.vegam_smumgr, ptr %6, i32 0, i32 4, i32 4
  %14 = ptrtoint ptr %SviLoadLineVddC3.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %SviLoadLineVddC3.i, align 1
  %SviLoadLineTrimVddC.i = getelementptr inbounds %struct.vegam_smumgr, ptr %6, i32 0, i32 4, i32 5
  %15 = ptrtoint ptr %SviLoadLineTrimVddC.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %SviLoadLineTrimVddC.i, align 1
  %SviLoadLineOffsetVddC.i = getelementptr inbounds %struct.vegam_smumgr, ptr %6, i32 0, i32 4, i32 6
  %16 = ptrtoint ptr %SviLoadLineOffsetVddC.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %SviLoadLineOffsetVddC.i, align 1
  %17 = load ptr, ptr %smu_backend, align 4
  %pptable.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %18 = ptrtoint ptr %pptable.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pptable.i, align 4
  %power_tune_defaults.i151 = getelementptr inbounds %struct.vegam_smumgr, ptr %17, i32 0, i32 7
  %20 = ptrtoint ptr %power_tune_defaults.i151 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %power_tune_defaults.i151, align 4
  %cac_dtp_table.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %19, i32 0, i32 12
  %22 = ptrtoint ptr %cac_dtp_table.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cac_dtp_table.i, align 4
  %usTDC.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %usTDC.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %usTDC.i, align 4
  %mul.i = shl i16 %25, 7
  %TDC_VDDC_PkgLimit.i = getelementptr inbounds %struct.vegam_smumgr, ptr %17, i32 0, i32 4, i32 7
  %26 = ptrtoint ptr %TDC_VDDC_PkgLimit.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %mul.i, ptr %TDC_VDDC_PkgLimit.i, align 1
  %TDC_VDDC_ThrottleReleaseLimitPerc.i = getelementptr inbounds %struct.vegam_pt_defaults, ptr %21, i32 0, i32 2
  %27 = ptrtoint ptr %TDC_VDDC_ThrottleReleaseLimitPerc.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %TDC_VDDC_ThrottleReleaseLimitPerc.i, align 2
  %TDC_VDDC_ThrottleReleaseLimitPerc3.i = getelementptr inbounds %struct.vegam_smumgr, ptr %17, i32 0, i32 4, i32 8
  %29 = ptrtoint ptr %TDC_VDDC_ThrottleReleaseLimitPerc3.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %TDC_VDDC_ThrottleReleaseLimitPerc3.i, align 1
  %TDC_MAWt.i = getelementptr inbounds %struct.vegam_pt_defaults, ptr %21, i32 0, i32 3
  %30 = ptrtoint ptr %TDC_MAWt.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %TDC_MAWt.i, align 1
  %TDC_MAWt5.i = getelementptr inbounds %struct.vegam_smumgr, ptr %17, i32 0, i32 4, i32 9
  %32 = ptrtoint ptr %TDC_MAWt5.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %TDC_MAWt5.i, align 1
  %33 = ptrtoint ptr %pm_fuse_table_offset to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pm_fuse_table_offset, align 4
  %35 = load ptr, ptr %smu_backend, align 4
  %power_tune_defaults.i153 = getelementptr inbounds %struct.vegam_smumgr, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %power_tune_defaults.i153 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %power_tune_defaults.i153, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #7
  %38 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %temp.i, align 4, !annotation !316
  %add.i = add i32 %34, 32
  %call.i = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef %add.i, ptr noundef nonnull %temp.i, i32 noundef 262144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end58, label %do.body.i

do.body.i:                                        ; preds = %if.end10
  %call1.i = call i32 @___ratelimit(ptr noundef nonnull @vegam_populate_dw8._rs, ptr noundef nonnull @__func__.vegam_populate_dw8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body.i.do.body46_crit_edge, label %do.end.i

do.body.i.do.body46_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body46

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.142) #11
  br label %do.body46

do.body46:                                        ; preds = %do.end.i, %do.body.i.do.body46_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #7
  %call47 = call i32 @___ratelimit(ptr noundef nonnull @vegam_populate_pm_fuses._rs.118, ptr noundef nonnull @__func__.vegam_populate_pm_fuses) #7
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
  %TdcWaterfallCtl.i = getelementptr inbounds %struct.vegam_pt_defaults, ptr %37, i32 0, i32 4
  %39 = ptrtoint ptr %TdcWaterfallCtl.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %TdcWaterfallCtl.i, align 4
  %TdcWaterfallCtl8.i = getelementptr inbounds %struct.vegam_smumgr, ptr %35, i32 0, i32 4, i32 10
  %41 = ptrtoint ptr %TdcWaterfallCtl8.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %TdcWaterfallCtl8.i, align 1
  %42 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %temp.i, align 4
  %shr.i = lshr i32 %43, 16
  %conv.i = trunc i32 %shr.i to i8
  %LPMLTemperatureMin.i = getelementptr inbounds %struct.vegam_smumgr, ptr %35, i32 0, i32 4, i32 11
  %44 = ptrtoint ptr %LPMLTemperatureMin.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv.i, ptr %LPMLTemperatureMin.i, align 1
  %shr10.i = lshr i32 %43, 8
  %conv12.i = trunc i32 %shr10.i to i8
  %LPMLTemperatureMax.i = getelementptr inbounds %struct.vegam_smumgr, ptr %35, i32 0, i32 4, i32 12
  %45 = ptrtoint ptr %LPMLTemperatureMax.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv12.i, ptr %LPMLTemperatureMax.i, align 1
  %conv15.i = trunc i32 %43 to i8
  %Reserved.i = getelementptr inbounds %struct.vegam_smumgr, ptr %35, i32 0, i32 4, i32 13
  %46 = ptrtoint ptr %Reserved.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv15.i, ptr %Reserved.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #7
  %47 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %smu_backend, align 4
  %uglygep.i = getelementptr i8, ptr %48, i32 2097
  %49 = call ptr @memset(ptr %uglygep.i, i32 0, i32 16)
  %50 = load ptr, ptr %smu_backend, align 4
  %usFanOutputSensitivity.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 14
  %51 = ptrtoint ptr %usFanOutputSensitivity.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %usFanOutputSensitivity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %52)
  %53 = icmp slt i16 %52, 1
  br i1 %53, label %if.then.i, label %if.end58.vegam_populate_fuzzy_fan.exit_crit_edge

if.end58.vegam_populate_fuzzy_fan.exit_crit_edge: ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %vegam_populate_fuzzy_fan.exit

if.then.i:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %usDefaultFanOutputSensitivity.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 15
  %54 = ptrtoint ptr %usDefaultFanOutputSensitivity.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %usDefaultFanOutputSensitivity.i, align 2
  %56 = ptrtoint ptr %usFanOutputSensitivity.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %usFanOutputSensitivity.i, align 4
  br label %vegam_populate_fuzzy_fan.exit

vegam_populate_fuzzy_fan.exit:                    ; preds = %if.then.i, %if.end58.vegam_populate_fuzzy_fan.exit_crit_edge
  %57 = ptrtoint ptr %usFanOutputSensitivity.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %usFanOutputSensitivity.i, align 4
  %FuzzyFan_PwmSetDelta.i = getelementptr inbounds %struct.vegam_smumgr, ptr %50, i32 0, i32 4, i32 17
  %59 = ptrtoint ptr %FuzzyFan_PwmSetDelta.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 %58, ptr %FuzzyFan_PwmSetDelta.i, align 1
  %60 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %smu_backend, align 4
  %uglygep.i157 = getelementptr i8, ptr %61, i32 2121
  %62 = call ptr @memset(ptr %uglygep.i157, i32 0, i32 16)
  %63 = load ptr, ptr %smu_backend, align 4
  %64 = ptrtoint ptr %pptable.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pptable.i, align 4
  %BapmVddCBaseLeakageHiSidd.i = getelementptr inbounds %struct.vegam_smumgr, ptr %63, i32 0, i32 4, i32 23
  %BapmVddCBaseLeakageLoSidd.i = getelementptr inbounds %struct.vegam_smumgr, ptr %63, i32 0, i32 4, i32 24
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
  %power_tune_table = getelementptr inbounds %struct.vegam_smumgr, ptr %1, i32 0, i32 4
  %call122 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %77, ptr noundef %power_tune_table, i32 noundef 84, i32 noundef 262144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %vegam_populate_fuzzy_fan.exit.cleanup_crit_edge, label %do.body125

vegam_populate_fuzzy_fan.exit.cleanup_crit_edge:  ; preds = %vegam_populate_fuzzy_fan.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body125:                                       ; preds = %vegam_populate_fuzzy_fan.exit
  %call126 = call i32 @___ratelimit(ptr noundef nonnull @vegam_populate_pm_fuses._rs.138, ptr noundef nonnull @__func__.vegam_populate_pm_fuses) #7
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
  %.str.141.sink = phi ptr [ @.str.109, %do.body.cleanup.sink.split_crit_edge ], [ @.str.121, %do.body46.cleanup.sink.split_crit_edge ], [ @.str.141, %do.body125.cleanup.sink.split_crit_edge ]
  %call133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %.str.141.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body125.cleanup_crit_edge, %vegam_populate_fuzzy_fan.exit.cleanup_crit_edge, %do.body46.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.body46.cleanup_crit_edge ], [ -22, %do.body125.cleanup_crit_edge ], [ 0, %vegam_populate_fuzzy_fan.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
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
define internal fastcc i32 @vegam_get_dependency_volt_by_clk(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef readonly %dep_table, i32 noundef %clock, ptr nocapture noundef %voltage, ptr nocapture noundef writeonly %mvdd) unnamed_addr #0 align 64 {
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
  %i.0186 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %i.0186
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %clock)
  %cmp3.not = icmp ult i32 %7, %clock
  br i1 %cmp3.not, label %for.inc, label %if.then4

if.then4:                                         ; preds = %for.body
  %vddc = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %i.0186, i32 5
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
  %vddci16 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %i.0186, i32 7
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
  %mvdd46 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %i.0186, i32 8
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
  %inc = add nuw i32 %i.0186, 1
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
  br label %if.end106

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
  br label %if.end106

if.else91:                                        ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #9
  %vddci_voltage_table92 = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 42
  %40 = ptrtoint ptr %vddc61 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vddc61, align 2
  %sub98 = add i16 %41, -200
  %call100 = tail call zeroext i16 @phm_find_closest_vddci(ptr noundef %vddci_voltage_table92, i16 noundef zeroext %sub98) #7
  %conv101 = zext i16 %call100 to i32
  %mul102 = shl i32 %conv101, 17
  %42 = ptrtoint ptr %voltage to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %voltage, align 4
  %or104 = or i32 %mul102, %43
  br label %if.end106

if.end106:                                        ; preds = %if.else91, %if.then82, %if.then69
  %or90.sink = phi i32 [ %or90, %if.then82 ], [ %or104, %if.else91 ], [ %or75, %if.then69 ]
  %44 = ptrtoint ptr %voltage to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or90.sink, ptr %voltage, align 4
  %mvdd_control107 = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 23
  %45 = ptrtoint ptr %mvdd_control107 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mvdd_control107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp108 = icmp eq i32 %46, 0
  br i1 %cmp108, label %if.then110, label %if.else115

if.then110:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  %vbios_boot_state111 = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31
  %47 = ptrtoint ptr %vbios_boot_state111 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vbios_boot_state111, align 4
  %conv113 = zext i16 %48 to i32
  %mul114 = shl nuw nsw i32 %conv113, 2
  %49 = ptrtoint ptr %mvdd to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %mul114, ptr %mvdd, align 4
  br label %cleanup

if.else115:                                       ; preds = %if.end106
  %mvdd118 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %5, i32 8
  %50 = ptrtoint ptr %mvdd118 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %mvdd118, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool119.not = icmp eq i16 %51, 0
  br i1 %tobool119.not, label %if.else115.cleanup_crit_edge, label %if.then120

if.else115.cleanup_crit_edge:                     ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then120:                                       ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #9
  %mvdd124 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %sub59, i32 8
  %52 = ptrtoint ptr %mvdd124 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %mvdd124, align 4
  %conv125 = zext i16 %53 to i32
  %mul126 = shl nuw nsw i32 %conv125, 2
  %54 = ptrtoint ptr %mvdd to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %mul126, ptr %mvdd, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then120, %if.else115.cleanup_crit_edge, %if.then110, %if.end55, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end55 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else115.cleanup_crit_edge ], [ 0, %if.then120 ], [ 0, %if.then110 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vegam_calculate_sclk_params(ptr noundef %hwmgr, i32 noundef %clock, ptr nocapture noundef %sclk_setting) unnamed_addr #0 align 64 {
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
  %arrayidx = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 6, i32 0
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %clock)
  %cmp5 = icmp ult i32 %48, %clock
  br i1 %cmp5, label %land.lhs.true, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %trans_upper_frequency = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 6, i32 0, i32 1
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
  %arrayidx.1 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 6, i32 1
  %52 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %clock)
  %cmp5.1 = icmp ult i32 %53, %clock
  br i1 %cmp5.1, label %land.lhs.true.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %trans_upper_frequency.1 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 6, i32 1, i32 1
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
  %arrayidx.2 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 6, i32 2
  %56 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %clock)
  %cmp5.2 = icmp ult i32 %57, %clock
  br i1 %cmp5.2, label %land.lhs.true.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %trans_upper_frequency.2 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 6, i32 2, i32 1
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
  %arrayidx.3 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 6, i32 3
  %60 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %clock)
  %cmp5.3 = icmp ult i32 %61, %clock
  br i1 %cmp5.3, label %land.lhs.true.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %trans_upper_frequency.3 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 6, i32 3, i32 1
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
  %arrayidx.4 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 6, i32 4
  %64 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %clock)
  %cmp5.4 = icmp ult i32 %65, %clock
  br i1 %cmp5.4, label %land.lhs.true.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %trans_upper_frequency.4 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 6, i32 4, i32 1
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
  %arrayidx.5 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 6, i32 5
  %68 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %clock)
  %cmp5.5 = icmp ult i32 %69, %clock
  br i1 %cmp5.5, label %land.lhs.true.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %trans_upper_frequency.5 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 6, i32 5, i32 1
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
  %arrayidx.6 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 6, i32 6
  %72 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %clock)
  %cmp5.6 = icmp ult i32 %73, %clock
  br i1 %cmp5.6, label %land.lhs.true.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  %trans_upper_frequency.6 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 6, i32 6, i32 1
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
  %arrayidx.7 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 6, i32 7
  %76 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %clock)
  %cmp5.7 = icmp ult i32 %77, %clock
  br i1 %cmp5.7, label %land.lhs.true.7, label %for.inc.6.for.end_crit_edge

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true.7:                                  ; preds = %for.inc.6
  %trans_upper_frequency.7 = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 6, i32 7, i32 1
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
  %postdiv = getelementptr %struct.vegam_smumgr, ptr %1, i32 0, i32 2, i32 97, i32 %idxprom16, i32 1
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
  br i1 %cmp202, label %if.then206, label %if.else212, !prof !317

if.then206:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv207 = trunc i64 %shl29 to i32
  %div210 = udiv i32 %conv207, %call2
  %extract.t76 = trunc i32 %div210 to i16
  br label %if.end216

if.else212:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %86 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call2, i64 %shl29) #12, !srcloc !318
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
  br i1 %cmp461, label %if.then469, label %if.else475, !prof !317

if.then469:                                       ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #9
  %conv470 = trunc i64 %shl259 to i32
  %div473 = udiv i32 %conv470, %call2
  %extract.t80 = trunc i32 %div473 to i16
  br label %if.end479

if.else475:                                       ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #9
  %95 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call2, i64 %shl259) #12, !srcloc !318
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
declare dso_local i32 @atomctrl_get_smc_sclk_range_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_memory_pll_dividers_ai(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 148)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 148)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !36, !38, !39, !40, !41, !42, !44, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !142, !143, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !161, !162, !164, !165, !166, !167, !168, !170, !171, !172, !173, !174, !176, !177, !178, !179, !181, !182, !183, !184, !185, !187, !188, !189, !190, !191, !193, !194, !195, !196, !197, !199, !200, !201, !202, !204, !205, !206, !207, !208, !210, !211, !212, !213, !215, !216, !217, !218, !220, !221, !222, !223, !225, !226, !227, !228, !230, !231, !232, !233, !235, !236, !237, !238, !240, !241, !242, !243, !245, !246, !247, !248, !250, !251, !252, !253, !254, !256, !257, !258, !259, !261, !263, !264, !265, !266, !267, !269, !270, !271, !272, !273, !275, !276, !277, !278, !279, !281, !282, !283, !284, !285, !287, !288, !289, !290, !292, !293, !294, !295, !296, !298, !299, !300, !301, !303, !304, !305}
!llvm.module.flags = !{!306, !307, !308, !309, !310, !311, !312, !313}
!llvm.ident = !{!314}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 2279, i32 10}
!2 = !{ptr @vegam_smu_funcs, !3, !"vegam_smu_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 2278, i32 29}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 211, i32 4}
!6 = !{ptr @vegam_start_smu._rs, !5, !"_rs", i1 false, i1 false}
!7 = !{ptr @__func__.vegam_start_smu, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @vegam_start_smu._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @vegam_start_smu._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @vegam_start_smu_in_protection_mode._rs, !14, !"_rs", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 139, i32 3}
!15 = !{ptr @__func__.vegam_start_smu_in_protection_mode, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @vegam_start_smu_in_protection_mode._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @vegam_start_smu_in_protection_mode._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @vegam_update_sclk_threshold._rs, !20, !"_rs", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 2238, i32 2}
!21 = !{ptr @__func__.vegam_update_sclk_threshold, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @vegam_update_sclk_threshold._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @vegam_update_sclk_threshold._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @vegam_update_sclk_threshold._rs.7, !26, !"_rs", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 2242, i32 2}
!27 = !{ptr @vegam_update_sclk_threshold._entry.8, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @vegam_update_sclk_threshold._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @vegam_populate_memory_timing_parameters._rs, !31, !"_rs", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1259, i32 2}
!32 = !{ptr @__func__.vegam_populate_memory_timing_parameters, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @vegam_populate_memory_timing_parameters._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @vegam_populate_memory_timing_parameters._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @vegam_thermal_setup_fan_table._rs, !37, !"_rs", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 2270, i32 2}
!38 = !{ptr @__func__.vegam_thermal_setup_fan_table, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @vegam_thermal_setup_fan_table._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @vegam_thermal_setup_fan_table._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"_rs", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1955, i32 3}
!44 = !{ptr @__func__.vegam_init_smc_table, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @vegam_init_smc_table._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @vegam_init_smc_table._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = distinct !{null, !43, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"_rs", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1962, i32 2}
!50 = !{ptr @vegam_init_smc_table._entry.15, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @vegam_init_smc_table._entry_ptr.16, !49, !"_entry_ptr", i1 false, i1 false}
!52 = distinct !{null, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @vegam_init_smc_table._rs.18, !54, !"_rs", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1966, i32 2}
!55 = !{ptr @vegam_init_smc_table._entry.19, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @vegam_init_smc_table._entry_ptr.20, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @vegam_init_smc_table._rs.22, !59, !"_rs", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1970, i32 2}
!60 = !{ptr @vegam_init_smc_table._entry.23, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @vegam_init_smc_table._entry_ptr.24, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @vegam_init_smc_table._rs.26, !64, !"_rs", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1974, i32 2}
!65 = !{ptr @vegam_init_smc_table._entry.27, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @vegam_init_smc_table._entry_ptr.28, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @vegam_init_smc_table._rs.30, !69, !"_rs", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1978, i32 2}
!70 = !{ptr @vegam_init_smc_table._entry.31, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @vegam_init_smc_table._entry_ptr.32, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @vegam_init_smc_table._rs.34, !74, !"_rs", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1986, i32 2}
!75 = !{ptr @vegam_init_smc_table._entry.35, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @vegam_init_smc_table._entry_ptr.36, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @vegam_init_smc_table._rs.38, !79, !"_rs", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1990, i32 2}
!80 = !{ptr @vegam_init_smc_table._entry.39, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @vegam_init_smc_table._entry_ptr.40, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @vegam_init_smc_table._rs.42, !84, !"_rs", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1994, i32 2}
!85 = !{ptr @vegam_init_smc_table._entry.43, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @vegam_init_smc_table._entry_ptr.44, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!88 = distinct !{null, !89, !"_rs", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1998, i32 2}
!90 = !{ptr @vegam_init_smc_table._entry.47, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @vegam_init_smc_table._entry_ptr.48, !89, !"_entry_ptr", i1 false, i1 false}
!92 = distinct !{null, !89, !"<string literal>", i1 false, i1 false}
!93 = distinct !{null, !94, !"_rs", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 2002, i32 2}
!95 = !{ptr @vegam_init_smc_table._entry.51, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @vegam_init_smc_table._entry_ptr.52, !94, !"_entry_ptr", i1 false, i1 false}
!97 = distinct !{null, !94, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @vegam_init_smc_table._rs.54, !99, !"_rs", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 2008, i32 3}
!100 = !{ptr @vegam_init_smc_table._entry.55, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @vegam_init_smc_table._entry_ptr.56, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.57, !99, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @vegam_init_smc_table._rs.58, !104, !"_rs", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 2014, i32 2}
!105 = !{ptr @vegam_init_smc_table._entry.59, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @vegam_init_smc_table._entry_ptr.60, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.61, !104, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @vegam_init_smc_table._rs.62, !109, !"_rs", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 2035, i32 2}
!110 = !{ptr @vegam_init_smc_table._entry.63, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @vegam_init_smc_table._entry_ptr.64, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.65, !109, !"<string literal>", i1 false, i1 false}
!113 = distinct !{null, !114, !"_rs", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 2044, i32 2}
!115 = !{ptr @vegam_init_smc_table._entry.67, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @vegam_init_smc_table._entry_ptr.68, !114, !"_entry_ptr", i1 false, i1 false}
!117 = distinct !{null, !114, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @vegam_init_smc_table._rs.70, !119, !"_rs", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 2107, i32 3}
!120 = !{ptr @vegam_init_smc_table._entry.71, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @vegam_init_smc_table._entry_ptr.72, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.73, !119, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @vegam_init_smc_table._rs.74, !124, !"_rs", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 2140, i32 2}
!125 = !{ptr @vegam_init_smc_table._entry.75, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @vegam_init_smc_table._entry_ptr.76, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.77, !124, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @vegam_init_smc_table._rs.78, !129, !"_rs", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 2144, i32 2}
!130 = !{ptr @vegam_init_smc_table._entry.79, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @vegam_init_smc_table._entry_ptr.80, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.81, !129, !"<string literal>", i1 false, i1 false}
!133 = distinct !{null, !134, !"_rs", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 2148, i32 2}
!135 = !{ptr @vegam_init_smc_table._entry.83, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @vegam_init_smc_table._entry_ptr.84, !134, !"_entry_ptr", i1 false, i1 false}
!137 = distinct !{null, !134, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @vegam_power_tune_data_set_array, !139, !"vegam_power_tune_data_set_array", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 64, i32 1}
!140 = !{ptr @vegam_populate_smc_acpi_level._rs, !141, !"_rs", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1131, i32 2}
!142 = !{ptr @__func__.vegam_populate_smc_acpi_level, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @vegam_populate_smc_acpi_level._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @vegam_populate_smc_acpi_level._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.86, !141, !"<string literal>", i1 false, i1 false}
!146 = distinct !{null, !147, !"_rs", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1138, i32 2}
!148 = !{ptr @vegam_populate_smc_acpi_level._entry.88, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @vegam_populate_smc_acpi_level._entry_ptr.89, !147, !"_entry_ptr", i1 false, i1 false}
!150 = distinct !{null, !147, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @vegam_populate_smc_acpi_level._rs.91, !152, !"_rs", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1169, i32 2}
!153 = !{ptr @vegam_populate_smc_acpi_level._entry.92, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @vegam_populate_smc_acpi_level._entry_ptr.93, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.94, !152, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @vegam_populate_mvdd_value._rs, !157, !"_rs", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1102, i32 3}
!158 = !{ptr @__func__.vegam_populate_mvdd_value, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @vegam_populate_mvdd_value._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @vegam_populate_mvdd_value._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.95, !157, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @vegam_populate_smc_vce_level._rs, !163, !"_rs", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1233, i32 3}
!164 = !{ptr @__func__.vegam_populate_smc_vce_level, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @vegam_populate_smc_vce_level._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @vegam_populate_smc_vce_level._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.96, !163, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @vegam_populate_smc_uvd_level._rs, !169, !"_rs", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1345, i32 3}
!170 = !{ptr @__func__.vegam_populate_smc_uvd_level, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @vegam_populate_smc_uvd_level._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @vegam_populate_smc_uvd_level._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.97, !169, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @vegam_populate_smc_uvd_level._rs.98, !175, !"_rs", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1352, i32 3}
!176 = !{ptr @vegam_populate_smc_uvd_level._entry.99, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @vegam_populate_smc_uvd_level._entry_ptr.100, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.101, !175, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @vegam_populate_bapm_parameters_in_dpm_table._rs, !180, !"_rs", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1457, i32 2}
!181 = !{ptr @__func__.vegam_populate_bapm_parameters_in_dpm_table, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @vegam_populate_bapm_parameters_in_dpm_table._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @vegam_populate_bapm_parameters_in_dpm_table._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.102, !180, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @vegam_populate_clock_stretcher_data_table._rs, !186, !"_rs", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1536, i32 3}
!187 = !{ptr @__func__.vegam_populate_clock_stretcher_data_table, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @vegam_populate_clock_stretcher_data_table._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @vegam_populate_clock_stretcher_data_table._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.103, !186, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @vegam_populate_vr_config._rs, !192, !"_rs", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1684, i32 3}
!193 = !{ptr @__func__.vegam_populate_vr_config, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @vegam_populate_vr_config._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @vegam_populate_vr_config._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.104, !192, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @vegam_populate_vr_config._rs.105, !198, !"_rs", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1710, i32 4}
!199 = !{ptr @vegam_populate_vr_config._entry.106, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @vegam_populate_vr_config._entry_ptr.107, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.108, !198, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @vegam_populate_pm_fuses._rs, !203, !"_rs", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1856, i32 4}
!204 = !{ptr @__func__.vegam_populate_pm_fuses, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @vegam_populate_pm_fuses._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @vegam_populate_pm_fuses._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.109, !203, !"<string literal>", i1 false, i1 false}
!208 = distinct !{null, !209, !"_rs", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1861, i32 4}
!210 = !{ptr @vegam_populate_pm_fuses._entry.111, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @vegam_populate_pm_fuses._entry_ptr.112, !209, !"_entry_ptr", i1 false, i1 false}
!212 = distinct !{null, !209, !"<string literal>", i1 false, i1 false}
!213 = distinct !{null, !214, !"_rs", i1 false, i1 false}
!214 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1866, i32 4}
!215 = !{ptr @vegam_populate_pm_fuses._entry.115, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @vegam_populate_pm_fuses._entry_ptr.116, !214, !"_entry_ptr", i1 false, i1 false}
!217 = distinct !{null, !214, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @vegam_populate_pm_fuses._rs.118, !219, !"_rs", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1870, i32 4}
!220 = !{ptr @vegam_populate_pm_fuses._entry.119, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @vegam_populate_pm_fuses._entry_ptr.120, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.121, !219, !"<string literal>", i1 false, i1 false}
!223 = distinct !{null, !224, !"_rs", i1 false, i1 false}
!224 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1876, i32 4}
!225 = !{ptr @vegam_populate_pm_fuses._entry.123, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @vegam_populate_pm_fuses._entry_ptr.124, !224, !"_entry_ptr", i1 false, i1 false}
!227 = distinct !{null, !224, !"<string literal>", i1 false, i1 false}
!228 = distinct !{null, !229, !"_rs", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1881, i32 4}
!230 = !{ptr @vegam_populate_pm_fuses._entry.127, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @vegam_populate_pm_fuses._entry_ptr.128, !229, !"_entry_ptr", i1 false, i1 false}
!232 = distinct !{null, !229, !"<string literal>", i1 false, i1 false}
!233 = distinct !{null, !234, !"_rs", i1 false, i1 false}
!234 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1886, i32 4}
!235 = !{ptr @vegam_populate_pm_fuses._entry.131, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @vegam_populate_pm_fuses._entry_ptr.132, !234, !"_entry_ptr", i1 false, i1 false}
!237 = distinct !{null, !234, !"<string literal>", i1 false, i1 false}
!238 = distinct !{null, !239, !"_rs", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1891, i32 4}
!240 = !{ptr @vegam_populate_pm_fuses._entry.135, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @vegam_populate_pm_fuses._entry_ptr.136, !239, !"_entry_ptr", i1 false, i1 false}
!242 = distinct !{null, !239, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @vegam_populate_pm_fuses._rs.138, !244, !"_rs", i1 false, i1 false}
!244 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1899, i32 4}
!245 = !{ptr @vegam_populate_pm_fuses._entry.139, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @vegam_populate_pm_fuses._entry_ptr.140, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.141, !244, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @vegam_populate_dw8._rs, !249, !"_rs", i1 false, i1 false}
!249 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1772, i32 3}
!250 = !{ptr @__func__.vegam_populate_dw8, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @vegam_populate_dw8._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @vegam_populate_dw8._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.142, !249, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @vegam_populate_all_graphic_levels._rs, !255, !"_rs", i1 false, i1 false}
!255 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 919, i32 3}
!256 = !{ptr @__func__.vegam_populate_all_graphic_levels, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @vegam_populate_all_graphic_levels._entry, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @vegam_populate_all_graphic_levels._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @Range_Table, !260, !"Range_Table", i1 false, i1 false}
!260 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 72, i32 29}
!261 = !{ptr @vegam_populate_single_graphic_level._rs, !262, !"_rs", i1 false, i1 false}
!262 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 828, i32 2}
!263 = !{ptr @__func__.vegam_populate_single_graphic_level, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @vegam_populate_single_graphic_level._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @vegam_populate_single_graphic_level._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.143, !262, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @vegam_get_sleep_divider_id_from_clock._rs, !268, !"_rs", i1 false, i1 false}
!268 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 798, i32 2}
!269 = !{ptr @__func__.vegam_get_sleep_divider_id_from_clock, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @vegam_get_sleep_divider_id_from_clock._entry, !268, !"_entry", i1 false, i1 false}
!271 = !{ptr @vegam_get_sleep_divider_id_from_clock._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.144, !268, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @vegam_populate_all_memory_levels._rs, !274, !"_rs", i1 false, i1 false}
!274 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1051, i32 3}
!275 = !{ptr @__func__.vegam_populate_all_memory_levels, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @vegam_populate_all_memory_levels._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @vegam_populate_all_memory_levels._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.145, !274, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @vegam_populate_single_memory_level._rs, !280, !"_rs", i1 false, i1 false}
!280 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 996, i32 3}
!281 = !{ptr @__func__.vegam_populate_single_memory_level, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @vegam_populate_single_memory_level._entry, !280, !"_entry", i1 false, i1 false}
!283 = !{ptr @vegam_populate_single_memory_level._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.146, !280, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @vegam_populate_single_memory_level._rs.147, !286, !"_rs", i1 false, i1 false}
!286 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 1002, i32 2}
!287 = !{ptr @vegam_populate_single_memory_level._entry.148, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @vegam_populate_single_memory_level._entry_ptr.149, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.150, !286, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @vegam_calculate_mclk_params._rs, !291, !"_rs", i1 false, i1 false}
!291 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 969, i32 2}
!292 = !{ptr @__func__.vegam_calculate_mclk_params, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @vegam_calculate_mclk_params._entry, !291, !"_entry", i1 false, i1 false}
!294 = !{ptr @vegam_calculate_mclk_params._entry_ptr, !291, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.151, !291, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @.str.152, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 2196, i32 2}
!298 = !{ptr @.str.153, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @vegam_get_offsetof._entry, !297, !"_entry", i1 false, i1 false}
!300 = !{ptr @vegam_get_offsetof._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.154, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vegam_smumgr.c", i32 327, i32 2}
!303 = !{ptr @.str.155, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @vegam_get_mac_definition._entry, !302, !"_entry", i1 false, i1 false}
!305 = !{ptr @vegam_get_mac_definition._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!306 = !{i32 1, !"wchar_size", i32 2}
!307 = !{i32 1, !"min_enum_size", i32 4}
!308 = !{i32 8, !"branch-target-enforcement", i32 0}
!309 = !{i32 8, !"sign-return-address", i32 0}
!310 = !{i32 8, !"sign-return-address-all", i32 0}
!311 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!312 = !{i32 7, !"uwtable", i32 1}
!313 = !{i32 7, !"frame-pointer", i32 2}
!314 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!315 = !{i8 0, i8 2}
!316 = !{!"auto-init"}
!317 = !{!"branch_weights", i32 2000, i32 1}
!318 = !{i64 2148679679, i64 2148679959, i64 2148680293, i64 2148680627}
