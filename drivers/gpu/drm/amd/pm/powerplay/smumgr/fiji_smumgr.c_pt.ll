; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/smumgr/fiji_smumgr.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c"
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
%struct.SMU73_Discrete_GraphicsLevel = type { i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.fiji_pt_defaults = type { i8, i8, i8, i8, i8, i8 }
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
%struct.smu7_smumgr = type { %struct.smu7_buffer_entry, %struct.smu7_buffer_entry, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32 }
%struct.smu7_buffer_entry = type { i32, i64, ptr, ptr }
%struct.fiji_smumgr = type { %struct.smu7_smumgr, %struct.SMU73_Discrete_DpmTable, %struct.SMU73_Discrete_Ulv, %struct.SMU73_Discrete_PmFuses, ptr }
%struct.SMU73_Discrete_DpmTable = type { %struct.SMU73_PIDController, %struct.SMU73_PIDController, %struct.SMU73_PIDController, i32, i32, i32, i32, %struct.SMIO_Table, %struct.SMIO_Table, i32, [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i32], [8 x %struct.SMU73_Discrete_GraphicsLevel], %struct.SMU73_Discrete_MemoryLevel, [4 x %struct.SMU73_Discrete_MemoryLevel], [8 x %struct.SMU73_Discrete_LinkLevel], %struct.SMU73_Discrete_ACPILevel, [8 x %struct.SMU73_Discrete_UvdLevel], [8 x %struct.SMU73_Discrete_ExtClkLevel], [8 x %struct.SMU73_Discrete_ExtClkLevel], [8 x %struct.SMU73_Discrete_ExtClkLevel], %struct.SMU73_Discrete_Ulv, i32, [32 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i16, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, [3 x i8], i32, i32, i8, i8, i8, i8, i8, i8, [2 x i8], [2 x i32], i8, i8, i8, i8, i16, i16, i32, i32, i32, i8, i8, i8, i8, [8 x i8], %struct.SMU_ClockStretcherDataTable, %struct.SMU_CKS_LOOKUPTable }
%struct.SMU73_PIDController = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SMIO_Table = type { [4 x %struct.SMIO_Pattern] }
%struct.SMIO_Pattern = type { i16, i8, i8 }
%struct.SMU73_Discrete_MemoryLevel = type { i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8 }
%struct.SMU73_Discrete_LinkLevel = type { i8, i8, i8, i8, i32, i32, i32 }
%struct.SMU73_Discrete_ACPILevel = type { i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SMU73_Discrete_UvdLevel = type { i32, i32, i32, i8, i8, [2 x i8] }
%struct.SMU73_Discrete_ExtClkLevel = type { i32, i32, i8, [3 x i8] }
%struct.SMU_ClockStretcherDataTable = type { [4 x %struct.SMU_ClockStretcherDataTableEntry] }
%struct.SMU_ClockStretcherDataTableEntry = type { i8, i8, i16 }
%struct.SMU_CKS_LOOKUPTable = type { [4 x %struct.SMU_CKS_LOOKUPTableEntry] }
%struct.SMU_CKS_LOOKUPTableEntry = type { i16, i16, i8, [3 x i8] }
%struct.SMU73_Discrete_Ulv = type { i32, i32, i16, i8, i8, i32 }
%struct.SMU73_Discrete_PmFuses = type { [8 x i8], [8 x i8], [8 x i8], i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, [16 x i8], i16, i16, i16, i16, [16 x i8], i8, i8, [2 x i8], i16, i16, [3 x i16], i16, [3 x %struct.SMU_QuadraticCoeffs], %struct.SMU_QuadraticCoeffs, %struct.SMU_QuadraticCoeffs, %struct.SMU_QuadraticCoeffs, i32, i16, i16, i32 }
%struct.SMU_QuadraticCoeffs = type { i32, i32, i16, i8, i8 }
%struct.phm_ppt_v1_information = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16, i16, i16 }
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
%struct.SMU73_Discrete_FanTable = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i8, i8 }
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
%struct.phm_ppt_v1_clock_voltage_dependency_table = type { i32, [0 x %struct.phm_ppt_v1_clock_voltage_dependency_record] }
%struct.phm_ppt_v1_mm_clock_voltage_dependency_table = type { i32, [0 x %struct.phm_ppt_v1_mm_clock_voltage_dependency_record] }
%struct.phm_ppt_v1_mm_clock_voltage_dependency_record = type { i32, i32, i32, i32, i32, i8, i16, i16, i16, i8 }
%struct.phm_cac_tdp_table = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8 }
%struct.pp_atomctrl_internal_ss_info = type { i32, i32, i32 }
%struct.pp_atomctrl_memory_clock_param = type { %union.pp_atomctrl_s_mpll_fb_divider, i32, i32, i32, i32, i32, i32, i32 }
%union.pp_atomctrl_s_mpll_fb_divider = type { %struct.anon.116 }
%struct.anon.116 = type { i32 }
%struct.SMU73_Discrete_MCArbDramTimingTable = type { [8 x [4 x %struct.SMU73_Discrete_MCArbDramTimingTableEntry]] }
%struct.SMU73_Discrete_MCArbDramTimingTableEntry = type { i32, i32, i8, i8, i8, i8 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fiji_smu\00", [23 x i8] zeroinitializer }, align 32
@fiji_smu_funcs = dso_local constant { %struct.pp_smumgr_func, [48 x i8] } { %struct.pp_smumgr_func { ptr @.str, ptr @fiji_smu_init, ptr @smu7_smu_fini, ptr @fiji_start_smu, ptr @smu7_check_fw_load_finish, ptr @smu7_reload_firmware, ptr null, ptr @smu7_get_argument, ptr @smu7_send_msg_to_smc, ptr @smu7_send_msg_to_smc_with_parameter, ptr null, ptr null, ptr @fiji_update_smc_table, ptr @fiji_process_firmware_header, ptr @fiji_update_sclk_threshold, ptr @fiji_thermal_setup_fan_table, ptr @fiji_thermal_avfs_enable, ptr @fiji_init_smc_table, ptr @fiji_populate_all_graphic_levels, ptr @fiji_populate_all_memory_levels, ptr @fiji_initialize_mc_reg_table, ptr @fiji_get_offsetof, ptr @fiji_get_mac_definition, ptr @fiji_is_dpm_running, ptr @fiji_is_hw_avfs_present, ptr @fiji_update_dpm_settings, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fiji_start_smu_in_protection_mode._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.fiji_start_smu_in_protection_mode = private unnamed_addr constant [34 x i8] c"fiji_start_smu_in_protection_mode\00", align 1
@fiji_start_smu_in_protection_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_start_smu_in_protection_mode, ptr @.str.3, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\014amdgpu: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c\00", [32 x i8] zeroinitializer }, align 32
@fiji_start_smu_in_protection_mode._entry_ptr = internal global ptr @fiji_start_smu_in_protection_mode._entry, section ".printk_index", align 4
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SMU Firmware start failed!\00", [37 x i8] zeroinitializer }, align 32
@fiji_avfs_event_mgr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.fiji_avfs_event_mgr = private unnamed_addr constant [20 x i8] c"fiji_avfs_event_mgr\00", align 1
@fiji_avfs_event_mgr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_avfs_event_mgr, ptr @.str.3, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_avfs_event_mgr._entry_ptr = internal global ptr @fiji_avfs_event_mgr._entry, section ".printk_index", align 4
@.str.5 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"[AVFS][fiji_avfs_event_mgr] Could not Copy Graphics Level table over to SMU\00", [52 x i8] zeroinitializer }, align 32
@fiji_avfs_event_mgr._rs.6 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@fiji_avfs_event_mgr._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_avfs_event_mgr, ptr @.str.3, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_avfs_event_mgr._entry_ptr.8 = internal global ptr @fiji_avfs_event_mgr._entry.7, section ".printk_index", align 4
@.str.9 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"[AVFS][fiji_avfs_event_mgr] Could not setup Pwr Virus for AVFS \00", [32 x i8] zeroinitializer }, align 32
@fiji_avfs_event_mgr._rs.10 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@fiji_avfs_event_mgr._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_avfs_event_mgr, ptr @.str.3, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_avfs_event_mgr._entry_ptr.12 = internal global ptr @fiji_avfs_event_mgr._entry.11, section ".printk_index", align 4
@.str.13 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"[AVFS][fiji_avfs_event_mgr] Failure at fiji_start_avfs_btc. AVFS Disabled\00", [54 x i8] zeroinitializer }, align 32
@fiji_setup_graphics_level_structure._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.fiji_setup_graphics_level_structure = private unnamed_addr constant [36 x i8] c"fiji_setup_graphics_level_structure\00", align 1
@fiji_setup_graphics_level_structure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_setup_graphics_level_structure, ptr @.str.3, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_setup_graphics_level_structure._entry_ptr = internal global ptr @fiji_setup_graphics_level_structure._entry, section ".printk_index", align 4
@.str.14 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"[AVFS][Fiji_SetupGfxLvlStruct] SMU could not communicate starting address of DPM table\00", [41 x i8] zeroinitializer }, align 32
@fiji_setup_graphics_level_structure._rs.15 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@fiji_setup_graphics_level_structure._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_setup_graphics_level_structure, ptr @.str.3, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_setup_graphics_level_structure._entry_ptr.17 = internal global ptr @fiji_setup_graphics_level_structure._entry.16, section ".printk_index", align 4
@.str.18 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"[AVFS][Fiji_SetupGfxLvlStruct] Problems copying vr_config value over to SMC\00", [52 x i8] zeroinitializer }, align 32
@avfs_graphics_level = internal constant { [8 x %struct.SMU73_Discrete_GraphicsLevel], [64 x i8] } { [8 x %struct.SMU73_Discrete_GraphicsLevel] [%struct.SMU73_Discrete_GraphicsLevel { i32 1007669319, i32 812974080, i8 0, i8 3, i16 7680, i32 2098192, i32 -2029912064, i32 560463872, i32 201326592, i32 0, i32 0, i8 22, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0 }, %struct.SMU73_Discrete_GraphicsLevel { i32 -1609576377, i32 1083965440, i8 1, i8 4, i16 7680, i32 8389904, i32 -2029912064, i32 560463872, i32 285212672, i32 0, i32 0, i8 22, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0 }, %struct.SMU73_Discrete_GraphicsLevel { i32 68210759, i32 1354956800, i8 1, i8 0, i16 7680, i32 6292496, i32 -2029912064, i32 560463872, i32 218103808, i32 0, i32 0, i8 14, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0 }, %struct.SMU73_Discrete_GraphicsLevel { i32 1745932359, i32 1625948160, i8 1, i8 0, i16 7680, i32 8389648, i32 -2029912064, i32 560463872, i32 234881024, i32 0, i32 0, i8 12, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0 }, %struct.SMU73_Discrete_GraphicsLevel { i32 -871313337, i32 -386072576, i8 1, i8 0, i16 7680, i32 14681104, i32 -2029912064, i32 560463872, i32 251658240, i32 0, i32 0, i8 12, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0 }, %struct.SMU73_Discrete_GraphicsLevel { i32 806473799, i32 1880162560, i8 1, i8 0, i16 7680, i32 4195600, i32 -2029912064, i32 560463872, i32 268435456, i32 0, i32 0, i8 12, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0 }, %struct.SMU73_Discrete_GraphicsLevel { i32 -1810771897, i32 -131858176, i8 1, i8 0, i16 7680, i32 10487056, i32 -2029912064, i32 560463872, i32 285212672, i32 0, i32 0, i8 12, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0 }, %struct.SMU73_Discrete_GraphicsLevel { i32 -133050297, i32 -2143813376, i8 1, i8 0, i16 7680, i32 1552, i32 -2029912064, i32 560463872, i32 301989888, i32 0, i32 0, i8 12, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0 }], [64 x i8] zeroinitializer }, align 32
@fiji_setup_graphics_level_structure._rs.19 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@fiji_setup_graphics_level_structure._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_setup_graphics_level_structure, ptr @.str.3, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_setup_graphics_level_structure._entry_ptr.21 = internal global ptr @fiji_setup_graphics_level_structure._entry.20, section ".printk_index", align 4
@.str.22 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[AVFS][Fiji_SetupGfxLvlStruct] Copying of DPM table failed!\00", [36 x i8] zeroinitializer }, align 32
@fiji_start_avfs_btc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016amdgpu: [AVFS][Fiji_PerformBtc] PerformBTC SMU msg failed\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fiji_start_avfs_btc\00", [44 x i8] zeroinitializer }, align 32
@fiji_start_avfs_btc._entry_ptr = internal global ptr @fiji_start_avfs_btc._entry, section ".printk_index", align 4
@fiji_update_sclk_threshold._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.fiji_update_sclk_threshold = private unnamed_addr constant [27 x i8] c"fiji_update_sclk_threshold\00", align 1
@fiji_update_sclk_threshold._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_update_sclk_threshold, ptr @.str.3, i32 2289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_update_sclk_threshold._entry_ptr = internal global ptr @fiji_update_sclk_threshold._entry, section ".printk_index", align 4
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to program memory timing parameters!\00", [52 x i8] zeroinitializer }, align 32
@fiji_populate_memory_timing_parameters._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.fiji_populate_memory_timing_parameters = private unnamed_addr constant [39 x i8] c"fiji_populate_memory_timing_parameters\00", align 1
@fiji_populate_memory_timing_parameters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_populate_memory_timing_parameters, ptr @.str.3, i32 1506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_populate_memory_timing_parameters._entry_ptr = internal global ptr @fiji_populate_memory_timing_parameters._entry, section ".printk_index", align 4
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error calling VBIOS to set DRAM_TIMING.\00", [56 x i8] zeroinitializer }, align 32
@__func__.fiji_init_smc_table = private unnamed_addr constant [20 x i8] c"fiji_init_smc_table\00", align 1
@fiji_init_smc_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_init_smc_table, ptr @.str.3, i32 1950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry_ptr = internal global ptr @fiji_init_smc_table._entry, section ".printk_index", align 4
@fiji_init_smc_table._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_init_smc_table, ptr @.str.3, i32 1957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry_ptr.30 = internal global ptr @fiji_init_smc_table._entry.29, section ".printk_index", align 4
@fiji_init_smc_table._rs.32 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_init_smc_table, ptr @.str.3, i32 1961, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry_ptr.34 = internal global ptr @fiji_init_smc_table._entry.33, section ".printk_index", align 4
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to initialize Graphics Level!\00", [59 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._rs.36 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_init_smc_table, ptr @.str.3, i32 1965, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry_ptr.38 = internal global ptr @fiji_init_smc_table._entry.37, section ".printk_index", align 4
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to initialize Memory Level!\00", [61 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._rs.40 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_init_smc_table, ptr @.str.3, i32 1969, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry_ptr.42 = internal global ptr @fiji_init_smc_table._entry.41, section ".printk_index", align 4
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialize ACPI Level!\00", [63 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._rs.44 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_init_smc_table, ptr @.str.3, i32 1973, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry_ptr.46 = internal global ptr @fiji_init_smc_table._entry.45, section ".printk_index", align 4
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize VCE Level!\00", [32 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._rs.48 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_init_smc_table, ptr @.str.3, i32 1977, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry_ptr.50 = internal global ptr @fiji_init_smc_table._entry.49, section ".printk_index", align 4
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize ACP Level!\00", [32 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._rs.52 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_init_smc_table, ptr @.str.3, i32 1985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry_ptr.54 = internal global ptr @fiji_init_smc_table._entry.53, section ".printk_index", align 4
@.str.55 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to Write ARB settings for the initial state.\00", [44 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._rs.56 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_init_smc_table, ptr @.str.3, i32 1989, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry_ptr.58 = internal global ptr @fiji_init_smc_table._entry.57, section ".printk_index", align 4
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize UVD Level!\00", [32 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_init_smc_table, ptr @.str.3, i32 1993, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry_ptr.62 = internal global ptr @fiji_init_smc_table._entry.61, section ".printk_index", align 4
@fiji_init_smc_table._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_init_smc_table, ptr @.str.3, i32 1997, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry_ptr.66 = internal global ptr @fiji_init_smc_table._entry.65, section ".printk_index", align 4
@fiji_init_smc_table._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_init_smc_table, ptr @.str.3, i32 2001, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry_ptr.70 = internal global ptr @fiji_init_smc_table._entry.69, section ".printk_index", align 4
@fiji_init_smc_table._rs.72 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_init_smc_table, ptr @.str.3, i32 2008, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry_ptr.74 = internal global ptr @fiji_init_smc_table._entry.73, section ".printk_index", align 4
@.str.75 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to populate Clock Stretcher Data Table!\00", [49 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_init_smc_table, ptr @.str.3, i32 2033, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry_ptr.78 = internal global ptr @fiji_init_smc_table._entry.77, section ".printk_index", align 4
@fiji_init_smc_table._rs.80 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_init_smc_table, ptr @.str.3, i32 2111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry_ptr.82 = internal global ptr @fiji_init_smc_table._entry.81, section ".printk_index", align 4
@.str.83 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to upload dpm data to SMC memory!\00", [55 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._rs.84 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_init_smc_table, ptr @.str.3, i32 2115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry_ptr.86 = internal global ptr @fiji_init_smc_table._entry.85, section ".printk_index", align 4
@.str.87 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to upload arb data to SMC memory!\00", [55 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._rs.88 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_init_smc_table, ptr @.str.3, i32 2119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry_ptr.90 = internal global ptr @fiji_init_smc_table._entry.89, section ".printk_index", align 4
@.str.91 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to  populate PM fuses to SMC memory!\00", [52 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_init_smc_table, ptr @.str.3, i32 2123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_init_smc_table._entry_ptr.94 = internal global ptr @fiji_init_smc_table._entry.93, section ".printk_index", align 4
@fiji_power_tune_data_set_array = internal constant { [1 x %struct.fiji_pt_defaults], [26 x i8] } { [1 x %struct.fiji_pt_defaults] [%struct.fiji_pt_defaults { i8 1, i8 15, i8 -3, i8 25, i8 5, i8 45 }], [26 x i8] zeroinitializer }, align 32
@__func__.fiji_populate_smc_voltage_tables = private unnamed_addr constant [33 x i8] c"fiji_populate_smc_voltage_tables\00", align 1
@fiji_populate_smc_voltage_tables._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_populate_smc_voltage_tables, ptr @.str.3, i32 790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_populate_smc_voltage_tables._entry_ptr = internal global ptr @fiji_populate_smc_voltage_tables._entry, section ".printk_index", align 4
@fiji_populate_smc_acpi_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.fiji_populate_smc_acpi_level = private unnamed_addr constant [29 x i8] c"fiji_populate_smc_acpi_level\00", align 1
@fiji_populate_smc_acpi_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_populate_smc_acpi_level, ptr @.str.3, i32 1324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_populate_smc_acpi_level._entry_ptr = internal global ptr @fiji_populate_smc_acpi_level._entry, section ".printk_index", align 4
@.str.97 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Cannot find ACPI VDDC voltage value in Clock Dependency Table\00", [34 x i8] zeroinitializer }, align 32
@fiji_populate_smc_acpi_level._rs.98 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@fiji_populate_smc_acpi_level._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_populate_smc_acpi_level, ptr @.str.3, i32 1337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_populate_smc_acpi_level._entry_ptr.100 = internal global ptr @fiji_populate_smc_acpi_level._entry.99, section ".printk_index", align 4
@.str.101 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Error retrieving Engine Clock dividers from VBIOS.\00", [45 x i8] zeroinitializer }, align 32
@fiji_populate_smc_acpi_level._rs.102 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@fiji_populate_smc_acpi_level._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_populate_smc_acpi_level, ptr @.str.3, i32 1381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_populate_smc_acpi_level._entry_ptr.104 = internal global ptr @fiji_populate_smc_acpi_level._entry.103, section ".printk_index", align 4
@.str.105 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Cannot find ACPI VDDCI voltage value in Clock Dependency Table\00", [33 x i8] zeroinitializer }, align 32
@fiji_populate_mvdd_value._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.fiji_populate_mvdd_value = private unnamed_addr constant [25 x i8] c"fiji_populate_mvdd_value\00", align 1
@fiji_populate_mvdd_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_populate_mvdd_value, ptr @.str.3, i32 1289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_populate_mvdd_value._entry_ptr = internal global ptr @fiji_populate_mvdd_value._entry, section ".printk_index", align 4
@.str.106 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MVDD Voltage is outside the supported range.\00", [51 x i8] zeroinitializer }, align 32
@fiji_populate_smc_vce_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.fiji_populate_smc_vce_level = private unnamed_addr constant [28 x i8] c"fiji_populate_smc_vce_level\00", align 1
@fiji_populate_smc_vce_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_populate_smc_vce_level, ptr @.str.3, i32 1447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_populate_smc_vce_level._entry_ptr = internal global ptr @fiji_populate_smc_vce_level._entry, section ".printk_index", align 4
@.str.107 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"can not find divide id for VCE engine clock\00", [52 x i8] zeroinitializer }, align 32
@fiji_populate_smc_acp_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.fiji_populate_smc_acp_level = private unnamed_addr constant [28 x i8] c"fiji_populate_smc_acp_level\00", align 1
@fiji_populate_smc_acp_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_populate_smc_acp_level, ptr @.str.3, i32 1483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_populate_smc_acp_level._entry_ptr = internal global ptr @fiji_populate_smc_acp_level._entry, section ".printk_index", align 4
@.str.108 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"can not find divide id for engine clock\00", [56 x i8] zeroinitializer }, align 32
@fiji_populate_smc_uvd_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.fiji_populate_smc_uvd_level = private unnamed_addr constant [28 x i8] c"fiji_populate_smc_uvd_level\00", align 1
@fiji_populate_smc_uvd_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_populate_smc_uvd_level, ptr @.str.3, i32 1581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_populate_smc_uvd_level._entry_ptr = internal global ptr @fiji_populate_smc_uvd_level._entry, section ".printk_index", align 4
@.str.109 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"can not find divide id for Vclk clock\00", [58 x i8] zeroinitializer }, align 32
@fiji_populate_smc_uvd_level._rs.110 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@fiji_populate_smc_uvd_level._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_populate_smc_uvd_level, ptr @.str.3, i32 1588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_populate_smc_uvd_level._entry_ptr.112 = internal global ptr @fiji_populate_smc_uvd_level._entry.111, section ".printk_index", align 4
@.str.113 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"can not find divide id for Dclk clock\00", [58 x i8] zeroinitializer }, align 32
@fiji_populate_bapm_parameters_in_dpm_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.fiji_populate_bapm_parameters_in_dpm_table = private unnamed_addr constant [43 x i8] c"fiji_populate_bapm_parameters_in_dpm_table\00", align 1
@fiji_populate_bapm_parameters_in_dpm_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_populate_bapm_parameters_in_dpm_table, ptr @.str.3, i32 509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_populate_bapm_parameters_in_dpm_table._entry_ptr = internal global ptr @fiji_populate_bapm_parameters_in_dpm_table._entry, section ".printk_index", align 4
@.str.114 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Target Operating Temp is out of Range!\00", [57 x i8] zeroinitializer }, align 32
@fiji_populate_clock_stretcher_data_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.fiji_populate_clock_stretcher_data_table = private unnamed_addr constant [41 x i8] c"fiji_populate_clock_stretcher_data_table\00", align 1
@fiji_populate_clock_stretcher_data_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_populate_clock_stretcher_data_table, ptr @.str.3, i32 1734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_populate_clock_stretcher_data_table._entry_ptr = internal global ptr @fiji_populate_clock_stretcher_data_table._entry, section ".printk_index", align 4
@.str.115 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Stretch Amount in PPTable not supported\00", [56 x i8] zeroinitializer }, align 32
@fiji_clock_stretcher_lookup_table = internal constant { [2 x [4 x i16]], [16 x i8] } { [2 x [4 x i16]] [[4 x i16] [i16 600, i16 1050, i16 3, i16 0], [4 x i16] [i16 600, i16 1050, i16 6, i16 1]], [16 x i8] zeroinitializer }, align 32
@fiji_clock_stretch_amount_conversion = internal constant { [2 x [6 x i8]], [20 x i8] } { [2 x [6 x i8]] [[6 x i8] c"\00\01\03\02\04\05", [6 x i8] c"\00\02\04\05\06\05"], [20 x i8] zeroinitializer }, align 32
@fiji_clock_stretcher_ddt_table = internal constant { [2 x [4 x [4 x i32]]], [32 x i8] } { [2 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 265, i32 529, i32 120, i32 128], [4 x i32] [i32 325, i32 650, i32 96, i32 119], [4 x i32] [i32 430, i32 860, i32 32, i32 95], [4 x i32] [i32 0, i32 0, i32 0, i32 31]], [4 x [4 x i32]] [[4 x i32] [i32 275, i32 550, i32 104, i32 112], [4 x i32] [i32 319, i32 638, i32 96, i32 103], [4 x i32] [i32 360, i32 720, i32 64, i32 95], [4 x i32] [i32 384, i32 768, i32 32, i32 63]]], [32 x i8] zeroinitializer }, align 32
@fiji_populate_vr_config._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.fiji_populate_vr_config = private unnamed_addr constant [24 x i8] c"fiji_populate_vr_config\00", align 1
@fiji_populate_vr_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_populate_vr_config, ptr @.str.3, i32 1833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_populate_vr_config._entry_ptr = internal global ptr @fiji_populate_vr_config._entry, section ".printk_index", align 4
@.str.116 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"VDDC should be on SVI2 control in merged mode!\00", [49 x i8] zeroinitializer }, align 32
@fiji_populate_pm_fuses._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.fiji_populate_pm_fuses = private unnamed_addr constant [23 x i8] c"fiji_populate_pm_fuses\00", align 1
@fiji_populate_pm_fuses._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_populate_pm_fuses, ptr @.str.3, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_populate_pm_fuses._entry_ptr = internal global ptr @fiji_populate_pm_fuses._entry, section ".printk_index", align 4
@.str.117 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Attempt to get pm_fuse_table_offset Failed!\00", [52 x i8] zeroinitializer }, align 32
@fiji_populate_pm_fuses._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_populate_pm_fuses, ptr @.str.3, i32 708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_populate_pm_fuses._entry_ptr.120 = internal global ptr @fiji_populate_pm_fuses._entry.119, section ".printk_index", align 4
@fiji_populate_pm_fuses._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_populate_pm_fuses, ptr @.str.3, i32 712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_populate_pm_fuses._entry_ptr.124 = internal global ptr @fiji_populate_pm_fuses._entry.123, section ".printk_index", align 4
@fiji_populate_pm_fuses._rs.126 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@fiji_populate_pm_fuses._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_populate_pm_fuses, ptr @.str.3, i32 718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_populate_pm_fuses._entry_ptr.128 = internal global ptr @fiji_populate_pm_fuses._entry.127, section ".printk_index", align 4
@.str.129 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Attempt to populate TdcWaterfallCtl, LPMLTemperature Min and Max Failed!\00", [55 x i8] zeroinitializer }, align 32
@fiji_populate_pm_fuses._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_populate_pm_fuses, ptr @.str.3, i32 724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_populate_pm_fuses._entry_ptr.132 = internal global ptr @fiji_populate_pm_fuses._entry.131, section ".printk_index", align 4
@fiji_populate_pm_fuses._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_populate_pm_fuses, ptr @.str.3, i32 730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_populate_pm_fuses._entry_ptr.136 = internal global ptr @fiji_populate_pm_fuses._entry.135, section ".printk_index", align 4
@fiji_populate_pm_fuses._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_populate_pm_fuses, ptr @.str.3, i32 736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_populate_pm_fuses._entry_ptr.140 = internal global ptr @fiji_populate_pm_fuses._entry.139, section ".printk_index", align 4
@fiji_populate_pm_fuses._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_populate_pm_fuses, ptr @.str.3, i32 742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_populate_pm_fuses._entry_ptr.144 = internal global ptr @fiji_populate_pm_fuses._entry.143, section ".printk_index", align 4
@fiji_populate_pm_fuses._rs.146 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@fiji_populate_pm_fuses._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_populate_pm_fuses, ptr @.str.3, i32 749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_populate_pm_fuses._entry_ptr.148 = internal global ptr @fiji_populate_pm_fuses._entry.147, section ".printk_index", align 4
@.str.149 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Attempt to download PmFuseTable Failed!\00", [56 x i8] zeroinitializer }, align 32
@fiji_populate_dw8._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.fiji_populate_dw8 = private unnamed_addr constant [18 x i8] c"fiji_populate_dw8\00", align 1
@fiji_populate_dw8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_populate_dw8, ptr @.str.3, i32 615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_populate_dw8._entry_ptr = internal global ptr @fiji_populate_dw8._entry, section ".printk_index", align 4
@.str.150 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Attempt to read PmFuses.DW6 (SviLoadLineEn) from SMC Failed!\00", [35 x i8] zeroinitializer }, align 32
@fiji_populate_all_graphic_levels._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.fiji_populate_all_graphic_levels = private unnamed_addr constant [33 x i8] c"fiji_populate_all_graphic_levels\00", align 1
@fiji_populate_all_graphic_levels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_populate_all_graphic_levels, ptr @.str.3, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_populate_all_graphic_levels._entry_ptr = internal global ptr @fiji_populate_all_graphic_levels._entry, section ".printk_index", align 4
@.str.151 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"There must be 1 or more PCIE levels defined in PPTable.\00", [40 x i8] zeroinitializer }, align 32
@fiji_populate_single_graphic_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.fiji_populate_single_graphic_level = private unnamed_addr constant [35 x i8] c"fiji_populate_single_graphic_level\00", align 1
@fiji_populate_single_graphic_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_populate_single_graphic_level, ptr @.str.3, i32 961, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_populate_single_graphic_level._entry_ptr = internal global ptr @fiji_populate_single_graphic_level._entry, section ".printk_index", align 4
@.str.152 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"can not find VDDC voltage value for VDDC engine clock dependency table\00", [57 x i8] zeroinitializer }, align 32
@fiji_calculate_sclk_params._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.fiji_calculate_sclk_params = private unnamed_addr constant [27 x i8] c"fiji_calculate_sclk_params\00", align 1
@fiji_calculate_sclk_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_calculate_sclk_params, ptr @.str.3, i32 875, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_calculate_sclk_params._entry_ptr = internal global ptr @fiji_calculate_sclk_params._entry, section ".printk_index", align 4
@fiji_populate_all_memory_levels._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.fiji_populate_all_memory_levels = private unnamed_addr constant [32 x i8] c"fiji_populate_all_memory_levels\00", align 1
@fiji_populate_all_memory_levels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_populate_all_memory_levels, ptr @.str.3, i32 1237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_populate_all_memory_levels._entry_ptr = internal global ptr @fiji_populate_all_memory_levels._entry, section ".printk_index", align 4
@.str.153 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"can not populate memory level as memory clock is zero\00", [42 x i8] zeroinitializer }, align 32
@fiji_populate_single_memory_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.fiji_populate_single_memory_level = private unnamed_addr constant [34 x i8] c"fiji_populate_single_memory_level\00", align 1
@fiji_populate_single_memory_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_populate_single_memory_level, ptr @.str.3, i32 1182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_populate_single_memory_level._entry_ptr = internal global ptr @fiji_populate_single_memory_level._entry, section ".printk_index", align 4
@.str.154 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"can not find MinVddc voltage value from memory VDDC voltage dependency table\00", [51 x i8] zeroinitializer }, align 32
@fiji_calculate_mclk_params._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.fiji_calculate_mclk_params = private unnamed_addr constant [27 x i8] c"fiji_calculate_mclk_params\00", align 1
@fiji_calculate_mclk_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.fiji_calculate_mclk_params, ptr @.str.3, i32 1151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fiji_calculate_mclk_params._entry_ptr = internal global ptr @fiji_calculate_mclk_params._entry, section ".printk_index", align 4
@.str.155 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get Memory PLL Dividers.\00", [61 x i8] zeroinitializer }, align 32
@fiji_get_offsetof._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.157, ptr @.str.3, i32 2335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014amdgpu: can't get the offset of type %x member %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fiji_get_offsetof\00", [46 x i8] zeroinitializer }, align 32
@fiji_get_offsetof._entry_ptr = internal global ptr @fiji_get_offsetof._entry, section ".printk_index", align 4
@fiji_get_mac_definition._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.3, i32 2360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014amdgpu: can't get the mac of %x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fiji_get_mac_definition\00", [40 x i8] zeroinitializer }, align 32
@fiji_get_mac_definition._entry_ptr = internal global ptr @fiji_get_mac_definition._entry, section ".printk_index", align 4
@switch.table.fiji_get_offsetof = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 48, i32 44, i32 60, i32 64, i32 12, i32 16, i32 108, i32 48, i32 48, i32 48, i32 80, i32 84, i32 88, i32 92, i32 96], [36 x i8] zeroinitializer }, align 32
@switch.table.fiji_get_offsetof.160 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1448, i32 1449, i32 1564], [20 x i8] zeroinitializer }, align 32
@switch.table.fiji_get_mac_definition = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 4, i32 8, i32 32, i32 16, i32 16, i32 8, i32 4], [32 x i8] zeroinitializer }, align 32
@switch.table.fiji_populate_bapm_parameters_in_dpm_table = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\03\05BIK)M", [24 x i8] zeroinitializer }, align 32
@switch.table.fiji_populate_bapm_parameters_in_dpm_table.161 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\02\04AHJ(L", [24 x i8] zeroinitializer }, align 32
@switch.table.fiji_populate_bapm_parameters_in_dpm_table.162 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\03\05BIK)M", [24 x i8] zeroinitializer }, align 32
@switch.table.fiji_populate_bapm_parameters_in_dpm_table.163 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\02\04AHJ(L", [24 x i8] zeroinitializer }, align 32
@switch.table.fiji_populate_bapm_parameters_in_dpm_table.164 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\03\05BIK)M", [24 x i8] zeroinitializer }, align 32
@switch.table.fiji_populate_bapm_parameters_in_dpm_table.165 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\02\04AHJ(L", [24 x i8] zeroinitializer }, align 32
@switch.table.fiji_populate_clock_stretcher_data_table = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 1, i32 1, i32 0], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2645, i32 10 }
@___asan_gen_.170 = private unnamed_addr constant [15 x i8] c"fiji_smu_funcs\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2644, i32 29 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 149, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 265, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 269, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 273, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 229, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 244, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [20 x i8] c"avfs_graphics_level\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 86, i32 50 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 252, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 207, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2287, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1505, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1949, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1956, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1960, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1964, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1968, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1972, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1976, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1984, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1988, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1992, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1996, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2000, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2006, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2032, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2110, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2114, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2118, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2122, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant [31 x i8] c"fiji_power_tune_data_set_array\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 79, i32 38 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 788, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1321, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1335, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1379, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1287, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1445, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1482, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1580, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1587, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 507, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1732, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant [34 x i8] c"fiji_clock_stretcher_lookup_table\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 63, i32 23 }
@___asan_gen_.494 = private unnamed_addr constant [37 x i8] c"fiji_clock_stretch_amount_conversion\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 76, i32 22 }
@___asan_gen_.497 = private unnamed_addr constant [31 x i8] c"fiji_clock_stretcher_ddt_table\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 69, i32 23 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1831, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 700, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 706, i32 4 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 711, i32 4 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 715, i32 4 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 722, i32 4 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 728, i32 4 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 734, i32 4 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 740, i32 4 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 747, i32 4 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 613, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1047, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 958, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 873, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1235, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1180, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1149, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2335, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.629 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.630 = private constant [67 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c\00", align 1
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2360, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant [31 x i8] c"switch.table.fiji_get_offsetof\00", align 1
@___asan_gen_.633 = private unnamed_addr constant [35 x i8] c"switch.table.fiji_get_offsetof.160\00", align 1
@___asan_gen_.634 = private unnamed_addr constant [37 x i8] c"switch.table.fiji_get_mac_definition\00", align 1
@___asan_gen_.635 = private unnamed_addr constant [56 x i8] c"switch.table.fiji_populate_bapm_parameters_in_dpm_table\00", align 1
@___asan_gen_.636 = private unnamed_addr constant [60 x i8] c"switch.table.fiji_populate_bapm_parameters_in_dpm_table.161\00", align 1
@___asan_gen_.637 = private unnamed_addr constant [60 x i8] c"switch.table.fiji_populate_bapm_parameters_in_dpm_table.162\00", align 1
@___asan_gen_.638 = private unnamed_addr constant [60 x i8] c"switch.table.fiji_populate_bapm_parameters_in_dpm_table.163\00", align 1
@___asan_gen_.639 = private unnamed_addr constant [60 x i8] c"switch.table.fiji_populate_bapm_parameters_in_dpm_table.164\00", align 1
@___asan_gen_.640 = private unnamed_addr constant [60 x i8] c"switch.table.fiji_populate_bapm_parameters_in_dpm_table.165\00", align 1
@___asan_gen_.641 = private unnamed_addr constant [54 x i8] c"switch.table.fiji_populate_clock_stretcher_data_table\00", align 1
@llvm.compiler.used = appending global [223 x ptr] [ptr @fiji_avfs_event_mgr._entry, ptr @fiji_avfs_event_mgr._entry.11, ptr @fiji_avfs_event_mgr._entry.7, ptr @fiji_avfs_event_mgr._entry_ptr, ptr @fiji_avfs_event_mgr._entry_ptr.12, ptr @fiji_avfs_event_mgr._entry_ptr.8, ptr @fiji_calculate_mclk_params._entry, ptr @fiji_calculate_mclk_params._entry_ptr, ptr @fiji_calculate_sclk_params._entry, ptr @fiji_calculate_sclk_params._entry_ptr, ptr @fiji_get_mac_definition._entry, ptr @fiji_get_mac_definition._entry_ptr, ptr @fiji_get_offsetof._entry, ptr @fiji_get_offsetof._entry_ptr, ptr @fiji_init_smc_table._entry, ptr @fiji_init_smc_table._entry.29, ptr @fiji_init_smc_table._entry.33, ptr @fiji_init_smc_table._entry.37, ptr @fiji_init_smc_table._entry.41, ptr @fiji_init_smc_table._entry.45, ptr @fiji_init_smc_table._entry.49, ptr @fiji_init_smc_table._entry.53, ptr @fiji_init_smc_table._entry.57, ptr @fiji_init_smc_table._entry.61, ptr @fiji_init_smc_table._entry.65, ptr @fiji_init_smc_table._entry.69, ptr @fiji_init_smc_table._entry.73, ptr @fiji_init_smc_table._entry.77, ptr @fiji_init_smc_table._entry.81, ptr @fiji_init_smc_table._entry.85, ptr @fiji_init_smc_table._entry.89, ptr @fiji_init_smc_table._entry.93, ptr @fiji_init_smc_table._entry_ptr, ptr @fiji_init_smc_table._entry_ptr.30, ptr @fiji_init_smc_table._entry_ptr.34, ptr @fiji_init_smc_table._entry_ptr.38, ptr @fiji_init_smc_table._entry_ptr.42, ptr @fiji_init_smc_table._entry_ptr.46, ptr @fiji_init_smc_table._entry_ptr.50, ptr @fiji_init_smc_table._entry_ptr.54, ptr @fiji_init_smc_table._entry_ptr.58, ptr @fiji_init_smc_table._entry_ptr.62, ptr @fiji_init_smc_table._entry_ptr.66, ptr @fiji_init_smc_table._entry_ptr.70, ptr @fiji_init_smc_table._entry_ptr.74, ptr @fiji_init_smc_table._entry_ptr.78, ptr @fiji_init_smc_table._entry_ptr.82, ptr @fiji_init_smc_table._entry_ptr.86, ptr @fiji_init_smc_table._entry_ptr.90, ptr @fiji_init_smc_table._entry_ptr.94, ptr @fiji_populate_all_graphic_levels._entry, ptr @fiji_populate_all_graphic_levels._entry_ptr, ptr @fiji_populate_all_memory_levels._entry, ptr @fiji_populate_all_memory_levels._entry_ptr, ptr @fiji_populate_bapm_parameters_in_dpm_table._entry, ptr @fiji_populate_bapm_parameters_in_dpm_table._entry_ptr, ptr @fiji_populate_clock_stretcher_data_table._entry, ptr @fiji_populate_clock_stretcher_data_table._entry_ptr, ptr @fiji_populate_dw8._entry, ptr @fiji_populate_dw8._entry_ptr, ptr @fiji_populate_memory_timing_parameters._entry, ptr @fiji_populate_memory_timing_parameters._entry_ptr, ptr @fiji_populate_mvdd_value._entry, ptr @fiji_populate_mvdd_value._entry_ptr, ptr @fiji_populate_pm_fuses._entry, ptr @fiji_populate_pm_fuses._entry.119, ptr @fiji_populate_pm_fuses._entry.123, ptr @fiji_populate_pm_fuses._entry.127, ptr @fiji_populate_pm_fuses._entry.131, ptr @fiji_populate_pm_fuses._entry.135, ptr @fiji_populate_pm_fuses._entry.139, ptr @fiji_populate_pm_fuses._entry.143, ptr @fiji_populate_pm_fuses._entry.147, ptr @fiji_populate_pm_fuses._entry_ptr, ptr @fiji_populate_pm_fuses._entry_ptr.120, ptr @fiji_populate_pm_fuses._entry_ptr.124, ptr @fiji_populate_pm_fuses._entry_ptr.128, ptr @fiji_populate_pm_fuses._entry_ptr.132, ptr @fiji_populate_pm_fuses._entry_ptr.136, ptr @fiji_populate_pm_fuses._entry_ptr.140, ptr @fiji_populate_pm_fuses._entry_ptr.144, ptr @fiji_populate_pm_fuses._entry_ptr.148, ptr @fiji_populate_single_graphic_level._entry, ptr @fiji_populate_single_graphic_level._entry_ptr, ptr @fiji_populate_single_memory_level._entry, ptr @fiji_populate_single_memory_level._entry_ptr, ptr @fiji_populate_smc_acp_level._entry, ptr @fiji_populate_smc_acp_level._entry_ptr, ptr @fiji_populate_smc_acpi_level._entry, ptr @fiji_populate_smc_acpi_level._entry.103, ptr @fiji_populate_smc_acpi_level._entry.99, ptr @fiji_populate_smc_acpi_level._entry_ptr, ptr @fiji_populate_smc_acpi_level._entry_ptr.100, ptr @fiji_populate_smc_acpi_level._entry_ptr.104, ptr @fiji_populate_smc_uvd_level._entry, ptr @fiji_populate_smc_uvd_level._entry.111, ptr @fiji_populate_smc_uvd_level._entry_ptr, ptr @fiji_populate_smc_uvd_level._entry_ptr.112, ptr @fiji_populate_smc_vce_level._entry, ptr @fiji_populate_smc_vce_level._entry_ptr, ptr @fiji_populate_smc_voltage_tables._entry, ptr @fiji_populate_smc_voltage_tables._entry_ptr, ptr @fiji_populate_vr_config._entry, ptr @fiji_populate_vr_config._entry_ptr, ptr @fiji_setup_graphics_level_structure._entry, ptr @fiji_setup_graphics_level_structure._entry.16, ptr @fiji_setup_graphics_level_structure._entry.20, ptr @fiji_setup_graphics_level_structure._entry_ptr, ptr @fiji_setup_graphics_level_structure._entry_ptr.17, ptr @fiji_setup_graphics_level_structure._entry_ptr.21, ptr @fiji_start_avfs_btc._entry, ptr @fiji_start_avfs_btc._entry_ptr, ptr @fiji_start_smu_in_protection_mode._entry, ptr @fiji_start_smu_in_protection_mode._entry_ptr, ptr @fiji_update_sclk_threshold._entry, ptr @fiji_update_sclk_threshold._entry_ptr, ptr @.str, ptr @fiji_smu_funcs, ptr @fiji_start_smu_in_protection_mode._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @fiji_avfs_event_mgr._rs, ptr @.str.5, ptr @fiji_avfs_event_mgr._rs.6, ptr @.str.9, ptr @fiji_avfs_event_mgr._rs.10, ptr @.str.13, ptr @fiji_setup_graphics_level_structure._rs, ptr @.str.14, ptr @fiji_setup_graphics_level_structure._rs.15, ptr @.str.18, ptr @avfs_graphics_level, ptr @fiji_setup_graphics_level_structure._rs.19, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @fiji_update_sclk_threshold._rs, ptr @.str.25, ptr @fiji_populate_memory_timing_parameters._rs, ptr @.str.26, ptr @fiji_init_smc_table._rs.32, ptr @.str.35, ptr @fiji_init_smc_table._rs.36, ptr @.str.39, ptr @fiji_init_smc_table._rs.40, ptr @.str.43, ptr @fiji_init_smc_table._rs.44, ptr @.str.47, ptr @fiji_init_smc_table._rs.48, ptr @.str.51, ptr @fiji_init_smc_table._rs.52, ptr @.str.55, ptr @fiji_init_smc_table._rs.56, ptr @.str.59, ptr @fiji_init_smc_table._rs.72, ptr @.str.75, ptr @fiji_init_smc_table._rs.80, ptr @.str.83, ptr @fiji_init_smc_table._rs.84, ptr @.str.87, ptr @fiji_init_smc_table._rs.88, ptr @.str.91, ptr @fiji_power_tune_data_set_array, ptr @fiji_populate_smc_acpi_level._rs, ptr @.str.97, ptr @fiji_populate_smc_acpi_level._rs.98, ptr @.str.101, ptr @fiji_populate_smc_acpi_level._rs.102, ptr @.str.105, ptr @fiji_populate_mvdd_value._rs, ptr @.str.106, ptr @fiji_populate_smc_vce_level._rs, ptr @.str.107, ptr @fiji_populate_smc_acp_level._rs, ptr @.str.108, ptr @fiji_populate_smc_uvd_level._rs, ptr @.str.109, ptr @fiji_populate_smc_uvd_level._rs.110, ptr @.str.113, ptr @fiji_populate_bapm_parameters_in_dpm_table._rs, ptr @.str.114, ptr @fiji_populate_clock_stretcher_data_table._rs, ptr @.str.115, ptr @fiji_clock_stretcher_lookup_table, ptr @fiji_clock_stretch_amount_conversion, ptr @fiji_clock_stretcher_ddt_table, ptr @fiji_populate_vr_config._rs, ptr @.str.116, ptr @fiji_populate_pm_fuses._rs, ptr @.str.117, ptr @fiji_populate_pm_fuses._rs.126, ptr @.str.129, ptr @fiji_populate_pm_fuses._rs.146, ptr @.str.149, ptr @fiji_populate_dw8._rs, ptr @.str.150, ptr @fiji_populate_all_graphic_levels._rs, ptr @.str.151, ptr @fiji_populate_single_graphic_level._rs, ptr @.str.152, ptr @fiji_calculate_sclk_params._rs, ptr @fiji_populate_all_memory_levels._rs, ptr @.str.153, ptr @fiji_populate_single_memory_level._rs, ptr @.str.154, ptr @fiji_calculate_mclk_params._rs, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @switch.table.fiji_get_offsetof, ptr @switch.table.fiji_get_offsetof.160, ptr @switch.table.fiji_get_mac_definition, ptr @switch.table.fiji_populate_bapm_parameters_in_dpm_table, ptr @switch.table.fiji_populate_bapm_parameters_in_dpm_table.161, ptr @switch.table.fiji_populate_bapm_parameters_in_dpm_table.162, ptr @switch.table.fiji_populate_bapm_parameters_in_dpm_table.163, ptr @switch.table.fiji_populate_bapm_parameters_in_dpm_table.164, ptr @switch.table.fiji_populate_bapm_parameters_in_dpm_table.165, ptr @switch.table.fiji_populate_clock_stretcher_data_table], section "llvm.metadata"
@0 = internal global [165 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_smu_funcs to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_start_smu_in_protection_mode._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_start_smu_in_protection_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_avfs_event_mgr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_avfs_event_mgr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_avfs_event_mgr._rs.6 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_avfs_event_mgr._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_avfs_event_mgr._rs.10 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_avfs_event_mgr._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_setup_graphics_level_structure._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_setup_graphics_level_structure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_setup_graphics_level_structure._rs.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_setup_graphics_level_structure._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avfs_graphics_level to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_setup_graphics_level_structure._rs.19 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_setup_graphics_level_structure._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_start_avfs_btc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_update_sclk_threshold._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_update_sclk_threshold._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_memory_timing_parameters._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_memory_timing_parameters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_init_smc_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_init_smc_table._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_init_smc_table._rs.32 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_init_smc_table._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_init_smc_table._rs.36 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_init_smc_table._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_init_smc_table._rs.40 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_init_smc_table._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_init_smc_table._rs.44 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_init_smc_table._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_init_smc_table._rs.48 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_init_smc_table._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_init_smc_table._rs.52 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_init_smc_table._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_init_smc_table._rs.56 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_init_smc_table._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_init_smc_table._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_init_smc_table._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_init_smc_table._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_init_smc_table._rs.72 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_init_smc_table._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_init_smc_table._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_init_smc_table._rs.80 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_init_smc_table._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_init_smc_table._rs.84 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_init_smc_table._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_init_smc_table._rs.88 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_init_smc_table._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_init_smc_table._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_power_tune_data_set_array to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_smc_voltage_tables._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_smc_acpi_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_smc_acpi_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_smc_acpi_level._rs.98 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_smc_acpi_level._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_smc_acpi_level._rs.102 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_smc_acpi_level._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_mvdd_value._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_mvdd_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_smc_vce_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_smc_vce_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_smc_acp_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_smc_acp_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_smc_uvd_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_smc_uvd_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_smc_uvd_level._rs.110 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_smc_uvd_level._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_bapm_parameters_in_dpm_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_bapm_parameters_in_dpm_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_clock_stretcher_data_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_clock_stretcher_data_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_clock_stretcher_lookup_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_clock_stretch_amount_conversion to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_clock_stretcher_ddt_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_vr_config._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_vr_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_pm_fuses._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_pm_fuses._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_pm_fuses._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_pm_fuses._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_pm_fuses._rs.126 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_pm_fuses._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_pm_fuses._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_pm_fuses._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_pm_fuses._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_pm_fuses._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_pm_fuses._rs.146 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_pm_fuses._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_dw8._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_dw8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_all_graphic_levels._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_all_graphic_levels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_single_graphic_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_single_graphic_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_calculate_sclk_params._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_calculate_sclk_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_all_memory_levels._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_all_memory_levels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_single_memory_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_populate_single_memory_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_calculate_mclk_params._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_calculate_mclk_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_get_offsetof._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_get_mac_definition._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fiji_get_offsetof to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fiji_get_offsetof.160 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fiji_get_mac_definition to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fiji_populate_bapm_parameters_in_dpm_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fiji_populate_bapm_parameters_in_dpm_table.161 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fiji_populate_bapm_parameters_in_dpm_table.162 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fiji_populate_bapm_parameters_in_dpm_table.163 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fiji_populate_bapm_parameters_in_dpm_table.164 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fiji_populate_bapm_parameters_in_dpm_table.165 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fiji_populate_clock_stretcher_data_table to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fiji_smu_init(ptr noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1920) #10
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
define internal i32 @fiji_start_smu(ptr noundef %hwmgr) #0 align 64 {
entry:
  %vr_config.i.i = alloca i32, align 4
  %table_start.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %call = tail call zeroext i1 @smu7_is_smc_ram_running(ptr noundef %hwmgr) #7
  br i1 %call, label %entry.if.end16_crit_edge, label %land.lhs.true

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true:                                    ; preds = %entry
  %not_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %2 = ptrtoint ptr %not_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %not_vf, align 4, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true.if.end16_crit_edge, label %if.then

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

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
  %10 = and i32 %call2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %call.i = tail call i32 @phm_wait_for_indirect_register_unequal(ptr noundef %hwmgr, i32 noundef 428, i32 noundef -1073741820, i32 noundef 0, i32 noundef 128) #7
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %write_ind_register.i = getelementptr inbounds %struct.cgs_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %write_ind_register.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_ind_register.i, align 4
  tail call void %16(ptr noundef %12, i32 noundef 1, i32 noundef 258048, i32 noundef 0) #7
  %17 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %write_ind_register4.i = getelementptr inbounds %struct.cgs_ops, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %write_ind_register4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_ind_register4.i, align 4
  %read_ind_register.i = getelementptr inbounds %struct.cgs_ops, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %read_ind_register.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_ind_register.i, align 4
  %call9.i = tail call i32 %24(ptr noundef %18, i32 noundef 1, i32 noundef -2147483648) #7
  %or.i = or i32 %call9.i, 1
  tail call void %22(ptr noundef %18, i32 noundef 1, i32 noundef -2147483648, i32 noundef %or.i) #7
  %call10.i = tail call i32 @smu7_upload_smu_firmware_image(ptr noundef %hwmgr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %fiji_start_smu_in_non_protection_mode.exit.thread, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

fiji_start_smu_in_non_protection_mode.exit.thread: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = tail call i32 @smu7_program_jump_on_start(ptr noundef %hwmgr) #7
  %25 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %write_ind_register14.i = getelementptr inbounds %struct.cgs_ops, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %write_ind_register14.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_ind_register14.i, align 4
  %read_ind_register18.i = getelementptr inbounds %struct.cgs_ops, ptr %28, i32 0, i32 2
  %31 = ptrtoint ptr %read_ind_register18.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read_ind_register18.i, align 4
  %call20.i = tail call i32 %32(ptr noundef %26, i32 noundef 1, i32 noundef -2147483644) #7
  %and21.i = and i32 %call20.i, -2
  tail call void %30(ptr noundef %26, i32 noundef 1, i32 noundef -2147483644, i32 noundef %and21.i) #7
  %33 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %write_ind_register25.i = getelementptr inbounds %struct.cgs_ops, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %write_ind_register25.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_ind_register25.i, align 4
  %read_ind_register29.i = getelementptr inbounds %struct.cgs_ops, ptr %36, i32 0, i32 2
  %39 = ptrtoint ptr %read_ind_register29.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read_ind_register29.i, align 4
  %call31.i = tail call i32 %40(ptr noundef %34, i32 noundef 1, i32 noundef -2147483648) #7
  %and32.i = and i32 %call31.i, -2
  tail call void %38(ptr noundef %34, i32 noundef 1, i32 noundef -2147483648, i32 noundef %and32.i) #7
  br label %if.end11

if.else:                                          ; preds = %if.then
  %41 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %write_ind_register.i35 = getelementptr inbounds %struct.cgs_ops, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %write_ind_register.i35 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_ind_register.i35, align 4
  %read_ind_register.i36 = getelementptr inbounds %struct.cgs_ops, ptr %44, i32 0, i32 2
  %47 = ptrtoint ptr %read_ind_register.i36 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read_ind_register.i36, align 4
  %call.i37 = tail call i32 %48(ptr noundef %42, i32 noundef 1, i32 noundef -2147483648) #7
  %or.i38 = or i32 %call.i37, 1
  tail call void %46(ptr noundef %42, i32 noundef 1, i32 noundef -2147483648, i32 noundef %or.i38) #7
  %call5.i = tail call i32 @smu7_upload_smu_firmware_image(ptr noundef %hwmgr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i39 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i39, label %if.end.i40, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i40:                                       ; preds = %if.else
  %49 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %write_ind_register8.i = getelementptr inbounds %struct.cgs_ops, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %write_ind_register8.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write_ind_register8.i, align 4
  tail call void %54(ptr noundef %50, i32 noundef 1, i32 noundef -536858488, i32 noundef 0) #7
  %55 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %device, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %write_ind_register12.i = getelementptr inbounds %struct.cgs_ops, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %write_ind_register12.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write_ind_register12.i, align 4
  %read_ind_register16.i = getelementptr inbounds %struct.cgs_ops, ptr %58, i32 0, i32 2
  %61 = ptrtoint ptr %read_ind_register16.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read_ind_register16.i, align 4
  %call18.i = tail call i32 %62(ptr noundef %56, i32 noundef 1, i32 noundef -2147483644) #7
  %and19.i = and i32 %call18.i, -2
  tail call void %60(ptr noundef %56, i32 noundef 1, i32 noundef -2147483644, i32 noundef %and19.i) #7
  %63 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %write_ind_register23.i = getelementptr inbounds %struct.cgs_ops, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %write_ind_register23.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write_ind_register23.i, align 4
  %read_ind_register27.i = getelementptr inbounds %struct.cgs_ops, ptr %66, i32 0, i32 2
  %69 = ptrtoint ptr %read_ind_register27.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read_ind_register27.i, align 4
  %call29.i = tail call i32 %70(ptr noundef %64, i32 noundef 1, i32 noundef -2147483648) #7
  %and30.i = and i32 %call29.i, -2
  tail call void %68(ptr noundef %64, i32 noundef 1, i32 noundef -2147483648, i32 noundef %and30.i) #7
  %71 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %device, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %write_ind_register34.i = getelementptr inbounds %struct.cgs_ops, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %write_ind_register34.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write_ind_register34.i, align 4
  %read_ind_register38.i = getelementptr inbounds %struct.cgs_ops, ptr %74, i32 0, i32 2
  %77 = ptrtoint ptr %read_ind_register38.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %read_ind_register38.i, align 4
  %call40.i = tail call i32 %78(ptr noundef %72, i32 noundef 1, i32 noundef -536858440) #7
  %or42.i = or i32 %call40.i, -2147483648
  tail call void %76(ptr noundef %72, i32 noundef 1, i32 noundef -536858440, i32 noundef %or42.i) #7
  %79 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %device, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %write_ind_register45.i = getelementptr inbounds %struct.cgs_ops, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %write_ind_register45.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %write_ind_register45.i, align 4
  tail call void %84(ptr noundef %80, i32 noundef 1, i32 noundef 258048, i32 noundef 0) #7
  %call47.i = tail call i32 @phm_wait_on_indirect_register(ptr noundef %hwmgr, i32 noundef 428, i32 noundef -1073741820, i32 noundef 65536, i32 noundef 65536) #7
  %call48.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 256, i32 noundef 131072, ptr noundef null) #7
  %call49.i = tail call i32 @phm_wait_for_indirect_register_unequal(ptr noundef %hwmgr, i32 noundef 428, i32 noundef -536858488, i32 noundef 0, i32 noundef 1) #7
  %85 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %device, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %read_ind_register52.i = getelementptr inbounds %struct.cgs_ops, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %read_ind_register52.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %read_ind_register52.i, align 4
  %call54.i = tail call i32 %90(ptr noundef %86, i32 noundef 1, i32 noundef -536858488) #7
  %91 = and i32 %call54.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp.not.not.i = icmp eq i32 %91, 0
  br i1 %cmp.not.not.i, label %do.body.i, label %if.end.i40.if.end11_crit_edge

if.end.i40.if.end11_crit_edge:                    ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

do.body.i:                                        ; preds = %if.end.i40
  %call57.i = tail call i32 @___ratelimit(ptr noundef nonnull @fiji_start_smu_in_protection_mode._rs, ptr noundef nonnull @__func__.fiji_start_smu_in_protection_mode) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call61.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end.i40.if.end11_crit_edge, %fiji_start_smu_in_non_protection_mode.exit.thread
  %call66.i = tail call i32 @phm_wait_on_indirect_register(ptr noundef %hwmgr, i32 noundef 428, i32 noundef 258048, i32 noundef 1, i32 noundef 1) #7
  %avfs_supported.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 47
  %92 = ptrtoint ptr %avfs_supported.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %avfs_supported.i, align 4, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i41 = icmp eq i8 %93, 0
  br i1 %tobool.not.i41, label %if.end11.if.end16_crit_edge, label %do.body.i42

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

do.body.i42:                                      ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vr_config.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %table_start.i.i) #7
  %94 = ptrtoint ptr %table_start.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1, ptr %table_start.i.i, align 4, !annotation !339
  %call.i.i = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131124, ptr noundef nonnull %table_start.i.i, i32 noundef 262144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end7.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %do.body.i42
  %call1.i.i = call i32 @___ratelimit(ptr noundef nonnull @fiji_setup_graphics_level_structure._rs, ptr noundef nonnull @__func__.fiji_setup_graphics_level_structure) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.then1.i_crit_edge, label %if.then.i.i.cleanup.sink.split.i.i_crit_edge

if.then.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

if.then.i.i.if.then1.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1.i

do.end7.i.i:                                      ; preds = %do.body.i42
  %95 = ptrtoint ptr %vr_config.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 16778496, ptr %vr_config.i.i, align 4
  %96 = ptrtoint ptr %table_start.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %table_start.i.i, align 4
  %add.i.i = add i32 %97, 112
  %call9.i.i = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add.i.i, ptr noundef nonnull %vr_config.i.i, i32 noundef 4, i32 noundef 262144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %cmp10.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %cmp10.i.i, label %do.end23.i.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %do.end7.i.i
  %call12.i.i = call i32 @___ratelimit(ptr noundef nonnull @fiji_setup_graphics_level_structure._rs.15, ptr noundef nonnull @__func__.fiji_setup_graphics_level_structure) #7
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
  %98 = ptrtoint ptr %table_start.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %table_start.i.i, align 4
  %add24.i.i = add i32 %99, 236
  %call26.i.i = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add24.i.i, ptr noundef nonnull @avfs_graphics_level, i32 noundef 352, i32 noundef 262144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %cmp27.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %cmp27.i.i, label %do.body10.i, label %if.then28.i.i

if.then28.i.i:                                    ; preds = %do.end23.i.i
  %call29.i.i = call i32 @___ratelimit(ptr noundef nonnull @fiji_setup_graphics_level_structure._rs.19, ptr noundef nonnull @__func__.fiji_setup_graphics_level_structure) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %tobool30.not.i.i = icmp eq i32 %call29.i.i, 0
  br i1 %tobool30.not.i.i, label %if.then28.i.i.if.then1.i_crit_edge, label %if.then28.i.i.cleanup.sink.split.i.i_crit_edge

if.then28.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

if.then28.i.i.if.then1.i_crit_edge:               ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1.i

cleanup.sink.split.i.i:                           ; preds = %if.then28.i.i.cleanup.sink.split.i.i_crit_edge, %if.then11.i.i.cleanup.sink.split.i.i_crit_edge, %if.then.i.i.cleanup.sink.split.i.i_crit_edge
  %.str.22.sink.i.i = phi ptr [ @.str.14, %if.then.i.i.cleanup.sink.split.i.i_crit_edge ], [ @.str.18, %if.then11.i.i.cleanup.sink.split.i.i_crit_edge ], [ @.str.22, %if.then28.i.i.cleanup.sink.split.i.i_crit_edge ]
  %call36.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %.str.22.sink.i.i) #11
  br label %if.then1.i

if.then1.i:                                       ; preds = %cleanup.sink.split.i.i, %if.then28.i.i.if.then1.i_crit_edge, %if.then11.i.i.if.then1.i_crit_edge, %if.then.i.i.if.then1.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %table_start.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vr_config.i.i) #7
  %call2.i = call i32 @___ratelimit(ptr noundef nonnull @fiji_avfs_event_mgr._rs, ptr noundef nonnull @__func__.fiji_avfs_event_mgr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then1.i.if.then14_crit_edge, label %if.then1.i.return.sink.split.i_crit_edge

if.then1.i.return.sink.split.i_crit_edge:         ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i

if.then1.i.if.then14_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

do.body10.i:                                      ; preds = %do.end23.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %table_start.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vr_config.i.i) #7
  %call11.i43 = call i32 @smu7_setup_pwr_virus(ptr noundef %hwmgr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i43)
  %cmp12.i = icmp eq i32 %call11.i43, 0
  br i1 %cmp12.i, label %do.body24.i, label %if.then13.i

if.then13.i:                                      ; preds = %do.body10.i
  %call14.i = call i32 @___ratelimit(ptr noundef nonnull @fiji_avfs_event_mgr._rs.6, ptr noundef nonnull @__func__.fiji_avfs_event_mgr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.then13.i.if.then14_crit_edge, label %if.then13.i.return.sink.split.i_crit_edge

if.then13.i.return.sink.split.i_crit_edge:        ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i

if.then13.i.if.then14_crit_edge:                  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

do.body24.i:                                      ; preds = %do.body10.i
  %100 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %smu_backend, align 4
  %avfs_btc_param.i.i = getelementptr inbounds %struct.smu7_smumgr, ptr %101, i32 0, i32 11
  %102 = ptrtoint ptr %avfs_btc_param.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %avfs_btc_param.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp.not.i.i = icmp eq i32 %103, 0
  br i1 %cmp.not.i.i, label %do.body24.i.fiji_start_avfs_btc.exit.i_crit_edge, label %if.then.i42.i

do.body24.i.fiji_start_avfs_btc.exit.i_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fiji_start_avfs_btc.exit.i

if.then.i42.i:                                    ; preds = %do.body24.i
  %call.i41.i = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 620, i32 noundef %103, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %cmp2.not.i.i = icmp eq i32 %call.i41.i, 0
  br i1 %cmp2.not.i.i, label %if.then.i42.i.fiji_start_avfs_btc.exit.i_crit_edge, label %do.end.i.i

if.then.i42.i.fiji_start_avfs_btc.exit.i_crit_edge: ; preds = %if.then.i42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fiji_start_avfs_btc.exit.i

do.end.i.i:                                       ; preds = %if.then.i42.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #11
  br label %fiji_start_avfs_btc.exit.i

fiji_start_avfs_btc.exit.i:                       ; preds = %do.end.i.i, %if.then.i42.i.fiji_start_avfs_btc.exit.i_crit_edge, %do.body24.i.fiji_start_avfs_btc.exit.i_crit_edge
  %cmp26.i = phi i1 [ true, %do.body24.i.fiji_start_avfs_btc.exit.i_crit_edge ], [ true, %if.then.i42.i.fiji_start_avfs_btc.exit.i_crit_edge ], [ false, %do.end.i.i ]
  %104 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %device, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %write_register.i.i = getelementptr inbounds %struct.cgs_ops, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %write_register.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %write_register.i.i, align 4
  call void %109(ptr noundef %105, i32 noundef 8333, i32 noundef 1342177280) #7
  %110 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %device, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %write_register9.i.i = getelementptr inbounds %struct.cgs_ops, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %write_register9.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %write_register9.i.i, align 4
  call void %115(ptr noundef %111, i32 noundef 8200, i32 noundef -1) #7
  %116 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %device, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %write_register13.i.i = getelementptr inbounds %struct.cgs_ops, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %write_register13.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %write_register13.i.i, align 4
  call void %121(ptr noundef %117, i32 noundef 8200, i32 noundef 0) #7
  br i1 %cmp26.i, label %fiji_start_avfs_btc.exit.i.if.end16_crit_edge, label %if.then27.i

fiji_start_avfs_btc.exit.i.if.end16_crit_edge:    ; preds = %fiji_start_avfs_btc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then27.i:                                      ; preds = %fiji_start_avfs_btc.exit.i
  %call28.i = call i32 @___ratelimit(ptr noundef nonnull @fiji_avfs_event_mgr._rs.10, ptr noundef nonnull @__func__.fiji_avfs_event_mgr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.then27.i.if.then14_crit_edge, label %if.then27.i.return.sink.split.i_crit_edge

if.then27.i.return.sink.split.i_crit_edge:        ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i

if.then27.i.if.then14_crit_edge:                  ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

return.sink.split.i:                              ; preds = %if.then27.i.return.sink.split.i_crit_edge, %if.then13.i.return.sink.split.i_crit_edge, %if.then1.i.return.sink.split.i_crit_edge
  %.str.13.sink.i = phi ptr [ @.str.5, %if.then1.i.return.sink.split.i_crit_edge ], [ @.str.9, %if.then13.i.return.sink.split.i_crit_edge ], [ @.str.13, %if.then27.i.return.sink.split.i_crit_edge ]
  %call34.i44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %.str.13.sink.i) #11
  br label %if.then14

if.then14:                                        ; preds = %return.sink.split.i, %if.then27.i.if.then14_crit_edge, %if.then13.i.if.then14_crit_edge, %if.then1.i.if.then14_crit_edge
  %122 = ptrtoint ptr %avfs_supported.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %avfs_supported.i, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %fiji_start_avfs_btc.exit.i.if.end16_crit_edge, %if.end11.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %entry.if.end16_crit_edge
  %soft_regs_start = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 3
  %call17 = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131120, ptr noundef %soft_regs_start, i32 noundef 262144) #7
  %call18 = call i32 @smu7_request_smu_load_fw(ptr noundef %hwmgr) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end.i, %do.body.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then3.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end16 ], [ %call10.i, %if.then3.cleanup_crit_edge ], [ -1, %do.body.i.cleanup_crit_edge ], [ -1, %do.end.i ], [ %call5.i, %if.else.cleanup_crit_edge ]
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
define internal i32 @fiji_update_smc_table(ptr noundef %hwmgr, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
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
  %UvdBootLevel.i = getelementptr inbounds %struct.fiji_smumgr, ptr %2, i32 0, i32 1, i32 38
  %5 = ptrtoint ptr %UvdBootLevel.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %UvdBootLevel.i, align 8
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
  store i8 %conv.i, ptr %UvdBootLevel.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.if.end.i_crit_edge
  %dpm_table_start.i = getelementptr inbounds %struct.smu7_smumgr, ptr %2, i32 0, i32 4
  %12 = ptrtoint ptr %dpm_table_start.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dpm_table_start.i, align 8
  %add.i = add i32 %13, 1448
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
  %21 = load i8, ptr %UvdBootLevel.i, align 8
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
  %smu_backend.i4 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %32 = ptrtoint ptr %smu_backend.i4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %smu_backend.i4, align 4
  %arrayidx.i.i5 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 4
  %34 = ptrtoint ptr %arrayidx.i.i5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i5, align 4
  %and1.i.i6 = and i32 %35, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i6)
  %cmp.i.not.i7 = icmp eq i32 %and1.i.i6, 0
  br i1 %cmp.i.not.i7, label %sw.bb1.if.end.i23_crit_edge, label %if.then.i11

sw.bb1.if.end.i23_crit_edge:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i23

if.then.i11:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %pptable.i8 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %36 = ptrtoint ptr %pptable.i8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pptable.i8, align 4
  %mm_dep_table.i9 = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %37, i32 0, i32 14
  %38 = ptrtoint ptr %mm_dep_table.i9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mm_dep_table.i9, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %42 = trunc i32 %41 to i8
  %conv.i10 = add i8 %42, -1
  br label %if.end.i23

if.end.i23:                                       ; preds = %if.then.i11, %sw.bb1.if.end.i23_crit_edge
  %conv.sink.i = phi i8 [ %conv.i10, %if.then.i11 ], [ 0, %sw.bb1.if.end.i23_crit_edge ]
  %43 = getelementptr inbounds %struct.fiji_smumgr, ptr %33, i32 0, i32 1, i32 39
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv.sink.i, ptr %43, align 1
  %dpm_table_start.i12 = getelementptr inbounds %struct.smu7_smumgr, ptr %33, i32 0, i32 4
  %45 = ptrtoint ptr %dpm_table_start.i12 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dpm_table_start.i12, align 8
  %add.i13 = add i32 %46, 1449
  %div1.i14 = and i32 %add.i13, -4
  %device.i15 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %47 = ptrtoint ptr %device.i15 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device.i15, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %read_ind_register.i16 = getelementptr inbounds %struct.cgs_ops, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %read_ind_register.i16 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read_ind_register.i16, align 4
  %call4.i = tail call i32 %52(ptr noundef %48, i32 noundef 1, i32 noundef %div1.i14) #7
  %and.i17 = and i32 %call4.i, -16711681
  %53 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %43, align 1
  %conv7.i = zext i8 %54 to i32
  %shl.i18 = shl nuw nsw i32 %conv7.i, 16
  %or.i19 = or i32 %shl.i18, %and.i17
  %55 = ptrtoint ptr %device.i15 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %device.i15, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %write_ind_register.i20 = getelementptr inbounds %struct.cgs_ops, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %write_ind_register.i20 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write_ind_register.i20, align 4
  tail call void %60(ptr noundef %56, i32 noundef 1, i32 noundef %div1.i14, i32 noundef %or.i19) #7
  %61 = ptrtoint ptr %arrayidx.i.i5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i.i5, align 4
  %and1.i3.i21 = and i32 %62, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i3.i21)
  %cmp.i4.not.i22 = icmp eq i32 %and1.i3.i21, 0
  br i1 %cmp.i4.not.i22, label %if.end.i23.sw.epilog_crit_edge, label %if.end.i23.sw.epilog.sink.split_crit_edge

if.end.i23.sw.epilog.sink.split_crit_edge:        ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.end.i23.sw.epilog_crit_edge:                   ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %if.end.i23.sw.epilog.sink.split_crit_edge, %lor.lhs.false.i.sw.epilog.sink.split_crit_edge, %if.end.i.sw.epilog.sink.split_crit_edge
  %.sink24.in = phi ptr [ %UvdBootLevel.i, %lor.lhs.false.i.sw.epilog.sink.split_crit_edge ], [ %UvdBootLevel.i, %if.end.i.sw.epilog.sink.split_crit_edge ], [ %43, %if.end.i23.sw.epilog.sink.split_crit_edge ]
  %.sink = phi i16 [ 301, %lor.lhs.false.i.sw.epilog.sink.split_crit_edge ], [ 301, %if.end.i.sw.epilog.sink.split_crit_edge ], [ 302, %if.end.i23.sw.epilog.sink.split_crit_edge ]
  %63 = ptrtoint ptr %.sink24.in to i32
  call void @__asan_load1_noabort(i32 %63)
  %.sink24 = load i8, ptr %.sink24.in, align 1
  %conv18.i = zext i8 %.sink24 to i32
  %shl19.i = shl nuw i32 1, %conv18.i
  %call20.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext %.sink, i32 noundef %shl19.i, ptr noundef null) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.i23.sw.epilog_crit_edge, %lor.lhs.false.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fiji_process_firmware_header(ptr noundef %hwmgr) #0 align 64 {
entry:
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #7
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tmp, align 4, !annotation !339
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
  %dpm_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 4
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
  %soft_regs_start = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 39
  %10 = ptrtoint ptr %soft_regs_start to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %soft_regs_start, align 4
  %soft_regs_start8 = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 3
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
  %mc_reg_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 5
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
  %fan_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 6
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
  %arb_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 7
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
define internal i32 @fiji_update_sclk_threshold(ptr noundef %hwmgr) #0 align 64 {
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
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %low_sclk_interrupt_threshold1 = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 83
  %7 = ptrtoint ptr %low_sclk_interrupt_threshold1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %low_sclk_interrupt_threshold1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %low_sclk_interrupt_threshold to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %low_sclk_interrupt_threshold, align 4
  %dpm_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dpm_table_start, align 8
  %add = add i32 %11, 1564
  %call3 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add, ptr noundef nonnull %low_sclk_interrupt_threshold, i32 noundef 4, i32 noundef 262144) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
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
  br i1 %tobool.not.i, label %if.end.do.end14_crit_edge, label %fiji_program_mem_timing_parameters.exit

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

fiji_program_mem_timing_parameters.exit:          ; preds = %if.end
  %call.i = call fastcc i32 @fiji_program_memory_timing_parameters(ptr noundef %hwmgr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp eq i32 %call.i, 0
  br i1 %cmp5, label %fiji_program_mem_timing_parameters.exit.do.end14_crit_edge, label %if.then6

fiji_program_mem_timing_parameters.exit.do.end14_crit_edge: ; preds = %fiji_program_mem_timing_parameters.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

if.then6:                                         ; preds = %fiji_program_mem_timing_parameters.exit
  %call7 = call i32 @___ratelimit(ptr noundef nonnull @fiji_update_sclk_threshold._rs, ptr noundef nonnull @__func__.fiji_update_sclk_threshold) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then6.do.end14_crit_edge, label %do.end

if.then6.do.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.25) #11
  br label %do.end14

do.end14:                                         ; preds = %do.end, %if.then6.do.end14_crit_edge, %fiji_program_mem_timing_parameters.exit.do.end14_crit_edge, %if.end.do.end14_crit_edge
  %retval.0.i23 = phi i32 [ %call.i, %if.then6.do.end14_crit_edge ], [ %call.i, %do.end ], [ 0, %fiji_program_mem_timing_parameters.exit.do.end14_crit_edge ], [ 0, %if.end.do.end14_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %low_sclk_interrupt_threshold) #7
  ret i32 %retval.0.i23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fiji_thermal_setup_fan_table(ptr noundef %hwmgr) #0 align 64 {
entry:
  %fan_table = alloca %struct.SMU73_Discrete_FanTable, align 1
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
  %4 = load i8, ptr %fanInfo, align 4, !range !338
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
  %advanceFanControlParameters = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5
  %usPWMMin = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 3
  %13 = ptrtoint ptr %usPWMMin to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %usPWMMin, align 2
  %conv = zext i16 %14 to i32
  %mul = mul nuw nsw i32 %and, %conv
  %conv14 = zext i32 %mul to i64
  %15 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3777893186295716171, i64 %conv14) #12, !srcloc !340
  %16 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3777893186295716171, i64 %conv14, i64 %15) #12, !srcloc !341
  %div182449 = lshr i64 %16, 11
  %conv204 = trunc i64 %div182449 to i16
  %usTMed = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 1
  %17 = ptrtoint ptr %usTMed to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %usTMed, align 2
  %conv207 = zext i16 %18 to i32
  %19 = ptrtoint ptr %advanceFanControlParameters to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %advanceFanControlParameters, align 4
  %conv210 = zext i16 %20 to i32
  %sub211 = sub nsw i32 %conv207, %conv210
  %usTHigh = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 2
  %21 = ptrtoint ptr %usTHigh to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %usTHigh, align 4
  %conv214 = zext i16 %22 to i32
  %sub219 = sub nsw i32 %conv214, %conv207
  %usPWMMed = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 4
  %23 = ptrtoint ptr %usPWMMed to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %usPWMMed, align 4
  %conv222 = zext i16 %24 to i32
  %sub227 = sub nsw i32 %conv222, %conv
  %usPWMHigh = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 5
  %25 = ptrtoint ptr %usPWMHigh to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %usPWMHigh, align 2
  %conv230 = zext i16 %26 to i32
  %sub235 = sub nsw i32 %conv230, %conv222
  %mul236 = shl nuw nsw i32 %and, 4
  %mul237 = mul nsw i32 %sub227, %mul236
  %div238 = udiv i32 %mul237, %sub211
  %add239 = add i32 %div238, 50
  %div240 = udiv i32 %add239, 100
  %conv241 = trunc i32 %div240 to i16
  %mul243 = mul nsw i32 %sub235, %mul236
  %div244 = udiv i32 %mul243, %sub219
  %add245 = add i32 %div244, 50
  %div246 = udiv i32 %add245, 100
  %conv247 = trunc i32 %div246 to i16
  %add252 = add nuw nsw i32 %conv210, 50
  %div253 = udiv i32 %add252, 100
  %conv254 = trunc i32 %div253 to i16
  %TempMin = getelementptr inbounds %struct.SMU73_Discrete_FanTable, ptr %fan_table, i32 0, i32 1
  %27 = ptrtoint ptr %TempMin to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %conv254, ptr %TempMin, align 1
  %add259 = add nuw nsw i32 %conv207, 50
  %div260 = udiv i32 %add259, 100
  %conv261 = trunc i32 %div260 to i16
  %TempMed = getelementptr inbounds %struct.SMU73_Discrete_FanTable, ptr %fan_table, i32 0, i32 2
  %28 = ptrtoint ptr %TempMed to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %conv261, ptr %TempMed, align 1
  %usTMax = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 8
  %29 = ptrtoint ptr %usTMax to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %usTMax, align 4
  %conv264 = zext i16 %30 to i32
  %add265 = add nuw nsw i32 %conv264, 50
  %div266 = udiv i32 %add265, 100
  %conv267 = trunc i32 %div266 to i16
  %TempMax = getelementptr inbounds %struct.SMU73_Discrete_FanTable, ptr %fan_table, i32 0, i32 3
  %31 = ptrtoint ptr %TempMax to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %conv267, ptr %TempMax, align 1
  %Slope1 = getelementptr inbounds %struct.SMU73_Discrete_FanTable, ptr %fan_table, i32 0, i32 4
  %32 = ptrtoint ptr %Slope1 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %conv241, ptr %Slope1, align 1
  %Slope2 = getelementptr inbounds %struct.SMU73_Discrete_FanTable, ptr %fan_table, i32 0, i32 5
  %33 = ptrtoint ptr %Slope2 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %conv247, ptr %Slope2, align 1
  %FdoMin = getelementptr inbounds %struct.SMU73_Discrete_FanTable, ptr %fan_table, i32 0, i32 6
  %34 = ptrtoint ptr %FdoMin to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %conv204, ptr %FdoMin, align 1
  %ucTHyst = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 6
  %35 = ptrtoint ptr %ucTHyst to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ucTHyst, align 4
  %conv270 = zext i8 %36 to i16
  %HystDown = getelementptr inbounds %struct.SMU73_Discrete_FanTable, ptr %fan_table, i32 0, i32 8
  %37 = ptrtoint ptr %HystDown to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %conv270, ptr %HystDown, align 1
  %HystUp = getelementptr inbounds %struct.SMU73_Discrete_FanTable, ptr %fan_table, i32 0, i32 7
  %38 = ptrtoint ptr %HystUp to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 1, ptr %HystUp, align 1
  %HystSlope = getelementptr inbounds %struct.SMU73_Discrete_FanTable, ptr %fan_table, i32 0, i32 9
  %39 = ptrtoint ptr %HystSlope to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 1, ptr %HystSlope, align 1
  %TempRespLim = getelementptr inbounds %struct.SMU73_Discrete_FanTable, ptr %fan_table, i32 0, i32 10
  %40 = ptrtoint ptr %TempRespLim to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 5, ptr %TempRespLim, align 1
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
  %call272 = tail call i32 %46(ptr noundef %42) #7
  %ulCycleDelay = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 7
  %47 = ptrtoint ptr %ulCycleDelay to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ulCycleDelay, align 4
  %mul275 = mul i32 %48, %call272
  %div276 = udiv i32 %mul275, 1600
  %RefreshPeriod = getelementptr inbounds %struct.SMU73_Discrete_FanTable, ptr %fan_table, i32 0, i32 14
  %49 = ptrtoint ptr %RefreshPeriod to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %div276, ptr %RefreshPeriod, align 1
  %conv277 = trunc i32 %and to i16
  %FdoMax = getelementptr inbounds %struct.SMU73_Discrete_FanTable, ptr %fan_table, i32 0, i32 15
  %50 = ptrtoint ptr %FdoMax to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %conv277, ptr %FdoMax, align 1
  %51 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %read_ind_register280 = getelementptr inbounds %struct.cgs_ops, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %read_ind_register280 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read_ind_register280, align 4
  %call282 = tail call i32 %56(ptr noundef %52, i32 noundef 1, i32 noundef -1070596080) #7
  %and283 = lshr i32 %call282, 20
  %conv285 = trunc i32 %and283 to i8
  %TempSrc = getelementptr inbounds %struct.SMU73_Discrete_FanTable, ptr %fan_table, i32 0, i32 16
  %57 = ptrtoint ptr %TempSrc to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv285, ptr %TempSrc, align 1
  %58 = ptrtoint ptr %fan_table_start to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fan_table_start, align 8
  %call288 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %59, ptr noundef nonnull %fan_table, i32 noundef 36, i32 noundef 262144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call288)
  %tobool289.not = icmp eq i32 %call288, 0
  br i1 %tobool289.not, label %land.lhs.true290, label %if.end12.cleanup.sink.split_crit_edge

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

land.lhs.true290:                                 ; preds = %if.end12
  %ucMinimumPWMLimit = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 28
  %60 = ptrtoint ptr %ucMinimumPWMLimit to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ucMinimumPWMLimit, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool294.not = icmp eq i8 %61, 0
  br i1 %tobool294.not, label %land.lhs.true290.land.lhs.true303_crit_edge, label %if.end301

land.lhs.true290.land.lhs.true303_crit_edge:      ; preds = %land.lhs.true290
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true303

if.end301:                                        ; preds = %land.lhs.true290
  %conv293 = zext i8 %61 to i32
  %call300 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 521, i32 noundef %conv293, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call300)
  %tobool302.not = icmp eq i32 %call300, 0
  br i1 %tobool302.not, label %if.end301.land.lhs.true303_crit_edge, label %if.end301.cleanup.sink.split_crit_edge

if.end301.cleanup.sink.split_crit_edge:           ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end301.land.lhs.true303_crit_edge:             ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true303

land.lhs.true303:                                 ; preds = %if.end301.land.lhs.true303_crit_edge, %land.lhs.true290.land.lhs.true303_crit_edge
  %ulMinFanSCLKAcousticLimit = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 26
  %62 = ptrtoint ptr %ulMinFanSCLKAcousticLimit to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ulMinFanSCLKAcousticLimit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool306.not = icmp eq i32 %63, 0
  br i1 %tobool306.not, label %land.lhs.true303.cleanup_crit_edge, label %if.end312

land.lhs.true303.cleanup_crit_edge:               ; preds = %land.lhs.true303
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end312:                                        ; preds = %land.lhs.true303
  %call311 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 518, i32 noundef %63, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call311)
  %tobool313.not = icmp eq i32 %call311, 0
  br i1 %tobool313.not, label %if.end312.cleanup_crit_edge, label %if.end312.cleanup.sink.split_crit_edge

if.end312.cleanup.sink.split_crit_edge:           ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end312.cleanup_crit_edge:                      ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end312.cleanup.sink.split_crit_edge, %if.end301.cleanup.sink.split_crit_edge, %if.end12.cleanup.sink.split_crit_edge, %if.end5.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 1
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i, align 4
  %and1.i455 = and i32 %65, -1073741825
  store i32 %and1.i455, ptr %arrayidx.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end312.cleanup_crit_edge, %land.lhs.true303.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fan_table) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fiji_thermal_avfs_enable(ptr noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %avfs_supported = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 47
  %0 = ptrtoint ptr %avfs_supported to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %avfs_supported, align 4, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 618, ptr noundef null) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fiji_init_smc_table(ptr noundef %hwmgr) #0 align 64 {
entry:
  %dividers.i586 = alloca %struct.pp_atomctrl_clock_dividers_vi, align 4
  %dividers.i = alloca %struct.pp_atomctrl_clock_dividers_vi, align 4
  %mvdd.i = alloca i32, align 4
  %gpio_pin = alloca %struct.pp_atomctrl_gpio_pin_assignment, align 4
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
  %smc_state_table = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_pin) #7
  %6 = ptrtoint ptr %gpio_pin to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %gpio_pin, align 4, !annotation !339
  %power_tune_defaults10.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %power_tune_defaults10.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @fiji_power_tune_data_set_array, ptr %power_tune_defaults10.i, align 8
  %voltage_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %voltage_control to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %voltage_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %backend, align 4
  %12 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pptable, align 4
  %vddc_lookup_table.i.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %vddc_lookup_table.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vddc_lookup_table.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1.not.i.i = icmp eq i32 %17, 0
  br i1 %cmp1.not.i.i, label %if.then.if.end_crit_edge, label %if.then.for.body.i.i_crit_edge

if.then.for.body.i.i_crit_edge:                   ; preds = %if.then
  br label %for.body.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.for.body.i.i_crit_edge
  %count.02.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.smu7_hwmgr, ptr %11, i32 0, i32 41, i32 3, i32 %count.02.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call zeroext i8 @phm_get_voltage_index(ptr noundef %15, i16 noundef zeroext %19) #7
  %idxprom.i.i = zext i8 %call.i.i to i32
  %us_cac_low.i.i = getelementptr %struct.phm_ppt_v1_voltage_lookup_table, ptr %15, i32 0, i32 1, i32 %idxprom.i.i, i32 2
  %20 = ptrtoint ptr %us_cac_low.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %us_cac_low.i.i, align 2
  %call4.i.i = tail call zeroext i8 @convert_to_vid(i16 noundef zeroext %21) #7
  %arrayidx5.i.i = getelementptr %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 11, i32 %count.02.i.i
  %22 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %call4.i.i, ptr %arrayidx5.i.i, align 1
  %us_cac_high.i.i = getelementptr %struct.phm_ppt_v1_voltage_lookup_table, ptr %15, i32 0, i32 1, i32 %idxprom.i.i, i32 4
  %23 = ptrtoint ptr %us_cac_high.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %us_cac_high.i.i, align 2
  %call9.i.i = tail call zeroext i8 @convert_to_vid(i16 noundef zeroext %24) #7
  %arrayidx10.i.i = getelementptr %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 10, i32 %count.02.i.i
  %25 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %call9.i.i, ptr %arrayidx10.i.i, align 1
  %inc.i.i = add nuw i32 %count.02.i.i, 1
  %26 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %15, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %27
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end_crit_edge

for.body.i.i.if.end_crit_edge:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.end:                                           ; preds = %for.body.i.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %SystemFlags = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %SystemFlags to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 0, ptr %SystemFlags, align 1
  %platform_descriptor = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23
  %29 = ptrtoint ptr %platform_descriptor to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %platform_descriptor, align 4
  %and1.i = lshr i32 %30, 24
  %and1.i.lobit = and i32 %and1.i, 1
  store i32 %and1.i.lobit, ptr %SystemFlags, align 1
  %31 = load i32, ptr %platform_descriptor, align 4
  %and1.i572 = and i32 %31, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i572)
  %cmp.i573.not = icmp eq i32 %and1.i572, 0
  br i1 %cmp.i573.not, label %if.end.if.end12_crit_edge, label %if.then9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %SystemFlags to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %SystemFlags, align 1
  %or11 = or i32 %33, 2
  store i32 %or11, ptr %SystemFlags, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
  %is_memory_gddr5 = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 12
  %34 = ptrtoint ptr %is_memory_gddr5 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %is_memory_gddr5, align 4, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not = icmp eq i8 %35, 0
  br i1 %tobool.not, label %if.end12.if.end16_crit_edge, label %if.then13

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then13:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %SystemFlags to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %SystemFlags, align 1
  %or15 = or i32 %37, 4
  store i32 %or15, ptr %SystemFlags, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end12.if.end16_crit_edge
  %ulv_supported = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 55
  %38 = ptrtoint ptr %ulv_supported to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ulv_supported, align 2, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool17.not = icmp eq i8 %39, 0
  br i1 %tobool17.not, label %if.end16.if.end34_crit_edge, label %land.lhs.true

if.end16.if.end34_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end16
  %us_ulv_voltage_offset = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %5, i32 0, i32 20
  %40 = ptrtoint ptr %us_ulv_voltage_offset to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %us_ulv_voltage_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool18.not = icmp eq i16 %41, 0
  br i1 %tobool18.not, label %land.lhs.true.if.end34_crit_edge, label %if.then19

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %Ulv.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 35
  %42 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pptable, align 4
  %44 = ptrtoint ptr %Ulv.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 0, ptr %Ulv.i, align 1
  %CcPwrDynRm1.i.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 1
  %45 = ptrtoint ptr %CcPwrDynRm1.i.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 0, ptr %CcPwrDynRm1.i.i, align 1
  %us_ulv_voltage_offset.i.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %43, i32 0, i32 20
  %46 = ptrtoint ptr %us_ulv_voltage_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %us_ulv_voltage_offset.i.i, align 4
  %VddcOffset.i.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 2
  %48 = ptrtoint ptr %VddcOffset.i.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %47, ptr %VddcOffset.i.i, align 1
  %49 = load i16, ptr %us_ulv_voltage_offset.i.i, align 4
  %conv.i.i = zext i16 %49 to i32
  %mul.i.i = mul nuw nsw i32 %conv.i.i, 100
  %div.i.i = udiv i32 %mul.i.i, 625
  %conv2.i.i = trunc i32 %div.i.i to i8
  %VddcOffsetVid.i.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 3
  %50 = ptrtoint ptr %VddcOffsetVid.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv2.i.i, ptr %VddcOffsetVid.i.i, align 1
  %VddcPhase.i.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 4
  %51 = ptrtoint ptr %VddcPhase.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %VddcPhase.i.i, align 1
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %52 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %write_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %write_ind_register to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_ind_register, align 4
  tail call void %57(ptr noundef %53, i32 noundef 1, i32 noundef -1071644324, i32 noundef 262197) #7
  br label %if.end34

if.end34:                                         ; preds = %if.then19, %land.lhs.true.if.end34_crit_edge, %if.end16.if.end34_crit_edge
  %58 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %backend, align 4
  %60 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %smu_backend, align 4
  %pcie_speed_table.i = getelementptr inbounds %struct.smu7_dpm_table, ptr %59, i32 0, i32 2
  %pcie_spc_cap.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %59, i32 0, i32 19
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end34
  %i.01.i = phi i32 [ 0, %if.end34 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %value.i = getelementptr %struct.smu7_dpm_table, ptr %59, i32 0, i32 2, i32 1, i32 %i.01.i, i32 1
  %62 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %value.i, align 4
  %conv.i = trunc i32 %63 to i8
  %arrayidx3.i = getelementptr %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 29, i32 %i.01.i
  %64 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv.i, ptr %arrayidx3.i, align 1
  %param1.i = getelementptr %struct.smu7_dpm_table, ptr %59, i32 0, i32 2, i32 1, i32 %i.01.i, i32 2
  %65 = ptrtoint ptr %param1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %param1.i, align 4
  %call.i = tail call zeroext i8 @encode_pcie_lane_width(i32 noundef %66) #7
  %PcieLaneCount.i = getelementptr %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 29, i32 %i.01.i, i32 1
  %67 = ptrtoint ptr %PcieLaneCount.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %call.i, ptr %PcieLaneCount.i, align 1
  %EnabledForActivity.i = getelementptr %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 29, i32 %i.01.i, i32 2
  %68 = ptrtoint ptr %EnabledForActivity.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %EnabledForActivity.i, align 1
  %69 = ptrtoint ptr %pcie_spc_cap.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pcie_spc_cap.i, align 4
  %conv11.i = trunc i32 %70 to i8
  %SPC.i = getelementptr %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 29, i32 %i.01.i, i32 3
  %71 = ptrtoint ptr %SPC.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv11.i, ptr %SPC.i, align 1
  %DownThreshold.i = getelementptr %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 29, i32 %i.01.i, i32 4
  %72 = ptrtoint ptr %DownThreshold.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 5, ptr %DownThreshold.i, align 1
  %UpThreshold.i = getelementptr %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 29, i32 %i.01.i, i32 5
  %73 = ptrtoint ptr %UpThreshold.i to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 30, ptr %UpThreshold.i, align 1
  %inc.i = add i32 %i.01.i, 1
  %74 = ptrtoint ptr %pcie_speed_table.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pcie_speed_table.i, align 4
  %cmp.not.i = icmp ugt i32 %inc.i, %75
  br i1 %cmp.not.i, label %fiji_populate_smc_link_level.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

fiji_populate_smc_link_level.exit:                ; preds = %for.body.i
  %conv20.i = trunc i32 %75 to i8
  %LinkLevelCount.i = getelementptr inbounds %struct.fiji_smumgr, ptr %61, i32 0, i32 1, i32 15
  %76 = ptrtoint ptr %LinkLevelCount.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv20.i, ptr %LinkLevelCount.i, align 2
  %call22.i = tail call i32 @phm_get_dpm_level_enable_mask_value(ptr noundef %pcie_speed_table.i) #7
  %pcie_dpm_enable_mask.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %59, i32 0, i32 70, i32 6
  %77 = ptrtoint ptr %pcie_dpm_enable_mask.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call22.i, ptr %pcie_dpm_enable_mask.i, align 4
  %call52 = tail call i32 @fiji_populate_all_graphic_levels(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp54 = icmp eq i32 %call52, 0
  br i1 %cmp54, label %do.end68, label %if.then56

if.then56:                                        ; preds = %fiji_populate_smc_link_level.exit
  %call57 = tail call i32 @___ratelimit(ptr noundef nonnull @fiji_init_smc_table._rs.32, ptr noundef nonnull @__func__.fiji_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then56.cleanup_crit_edge, label %do.end62

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end62:                                         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.35) #11
  br label %cleanup

do.end68:                                         ; preds = %fiji_populate_smc_link_level.exit
  %call69 = tail call i32 @fiji_populate_all_memory_levels(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp71 = icmp eq i32 %call69, 0
  br i1 %cmp71, label %do.end85, label %if.then73

if.then73:                                        ; preds = %do.end68
  %call74 = tail call i32 @___ratelimit(ptr noundef nonnull @fiji_init_smc_table._rs.36, ptr noundef nonnull @__func__.fiji_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then73.cleanup_crit_edge, label %do.end79

if.then73.cleanup_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end79:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.39) #11
  br label %cleanup

do.end85:                                         ; preds = %do.end68
  %78 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %backend, align 4
  %80 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pptable, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dividers.i) #7
  %82 = call ptr @memset(ptr %dividers.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvdd.i) #7
  %clock_registers.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %79, i32 0, i32 11
  %83 = ptrtoint ptr %clock_registers.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %clock_registers.i, align 4
  %vCG_SPLL_FUNC_CNTL_2.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %79, i32 0, i32 11, i32 1
  %85 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_2.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %vCG_SPLL_FUNC_CNTL_2.i, align 4
  %ACPILevel.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 30
  %87 = ptrtoint ptr %ACPILevel.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %ACPILevel.i, align 1
  %and.i = and i32 %88, -2
  store i32 %and.i, ptr %ACPILevel.i, align 1
  %sclk_dpm_key_disabled.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %79, i32 0, i32 72
  %89 = ptrtoint ptr %sclk_dpm_key_disabled.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sclk_dpm_key_disabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i = icmp eq i32 %90, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end85
  %value.i577 = getelementptr inbounds %struct.smu7_single_dpm_table, ptr %79, i32 0, i32 1, i32 0, i32 1
  %91 = ptrtoint ptr %value.i577 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %value.i577, align 4
  %SclkFrequency.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 30, i32 2
  %93 = ptrtoint ptr %SclkFrequency.i to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 %92, ptr %SclkFrequency.i, align 1
  %94 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %81, align 4
  %MinVoltage.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 30, i32 1
  %call.i578 = call fastcc i32 @fiji_get_dependency_volt_by_clk(ptr noundef %hwmgr, ptr noundef %95, i32 noundef %92, ptr noundef %MinVoltage.i, ptr noundef nonnull %mvdd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i578)
  %cmp.i579 = icmp eq i32 %call.i578, 0
  br i1 %cmp.i579, label %if.then.i.if.end20.i_crit_edge, label %if.then6.i

if.then.i.if.end20.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.then6.i:                                       ; preds = %if.then.i
  %call7.i = tail call i32 @___ratelimit(ptr noundef nonnull @fiji_populate_smc_acpi_level._rs, ptr noundef nonnull @__func__.fiji_populate_smc_acpi_level) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then6.i.if.end20.i_crit_edge, label %do.end.i

if.then6.i.if.end20.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

do.end.i:                                         ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.97) #11
  br label %if.end20.i

if.else.i:                                        ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #9
  %sclk_bootup_value.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %79, i32 0, i32 31, i32 4
  %96 = ptrtoint ptr %sclk_bootup_value.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %sclk_bootup_value.i, align 4
  %SclkFrequency16.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 30, i32 2
  %98 = ptrtoint ptr %SclkFrequency16.i to i32
  call void @__asan_storeN_noabort(i32 %98, i32 4)
  store i32 %97, ptr %SclkFrequency16.i, align 1
  %vddc_bootup_value.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %79, i32 0, i32 31, i32 1
  %99 = ptrtoint ptr %vddc_bootup_value.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %vddc_bootup_value.i, align 2
  %conv.i580 = zext i16 %100 to i32
  %mul.i = shl nuw nsw i32 %conv.i580, 2
  %MinVoltage19.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 30, i32 1
  %101 = ptrtoint ptr %MinVoltage19.i to i32
  call void @__asan_storeN_noabort(i32 %101, i32 4)
  store i32 %mul.i, ptr %MinVoltage19.i, align 1
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i, %do.end.i, %if.then6.i.if.end20.i_crit_edge, %if.then.i.if.end20.i_crit_edge
  %SclkFrequency22.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 30, i32 2
  %102 = ptrtoint ptr %SclkFrequency22.i to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %SclkFrequency22.i, align 1
  %call23.i = call i32 @atomctrl_get_engine_pll_dividers_vi(ptr noundef %hwmgr, i32 noundef %103, ptr noundef nonnull %dividers.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp25.i = icmp eq i32 %call23.i, 0
  br i1 %cmp25.i, label %do.end39.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.end20.i
  %call28.i = call i32 @___ratelimit(ptr noundef nonnull @fiji_populate_smc_acpi_level._rs.98, ptr noundef nonnull @__func__.fiji_populate_smc_acpi_level) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.then27.i.fiji_populate_smc_acpi_level.exit.thread_crit_edge, label %do.end33.i

if.then27.i.fiji_populate_smc_acpi_level.exit.thread_crit_edge: ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fiji_populate_smc_acpi_level.exit.thread

do.end33.i:                                       ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #9
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.101) #11
  br label %fiji_populate_smc_acpi_level.exit.thread

do.end39.i:                                       ; preds = %if.end20.i
  %104 = ptrtoint ptr %dividers.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dividers.i, align 4
  %conv40.i = trunc i32 %105 to i8
  %SclkDid.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 30, i32 3
  %106 = ptrtoint ptr %SclkDid.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv40.i, ptr %SclkDid.i, align 1
  %DisplayWatermark.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 30, i32 4
  %107 = ptrtoint ptr %DisplayWatermark.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %DisplayWatermark.i, align 1
  %DeepSleepDivId.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 30, i32 5
  %108 = ptrtoint ptr %DeepSleepDivId.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %DeepSleepDivId.i, align 1
  %and45.i = and i32 %84, -4
  %or46.i = or i32 %and45.i, 1
  %and47.i = and i32 %86, -512
  %or48.i = or i32 %and47.i, 4
  %CgSpllFuncCntl.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 30, i32 7
  %109 = ptrtoint ptr %CgSpllFuncCntl.i to i32
  call void @__asan_storeN_noabort(i32 %109, i32 4)
  store i32 %or46.i, ptr %CgSpllFuncCntl.i, align 1
  %CgSpllFuncCntl2.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 30, i32 8
  %110 = ptrtoint ptr %CgSpllFuncCntl2.i to i32
  call void @__asan_storeN_noabort(i32 %110, i32 4)
  store i32 %or48.i, ptr %CgSpllFuncCntl2.i, align 1
  %vCG_SPLL_FUNC_CNTL_3.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %79, i32 0, i32 11, i32 2
  %111 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_3.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %vCG_SPLL_FUNC_CNTL_3.i, align 4
  %CgSpllFuncCntl3.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 30, i32 9
  %113 = ptrtoint ptr %CgSpllFuncCntl3.i to i32
  call void @__asan_storeN_noabort(i32 %113, i32 4)
  store i32 %112, ptr %CgSpllFuncCntl3.i, align 1
  %vCG_SPLL_FUNC_CNTL_4.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %79, i32 0, i32 11, i32 3
  %114 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_4.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %vCG_SPLL_FUNC_CNTL_4.i, align 4
  %CgSpllFuncCntl4.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 30, i32 10
  %116 = ptrtoint ptr %CgSpllFuncCntl4.i to i32
  call void @__asan_storeN_noabort(i32 %116, i32 4)
  store i32 %115, ptr %CgSpllFuncCntl4.i, align 1
  %vCG_SPLL_SPREAD_SPECTRUM.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %79, i32 0, i32 11, i32 4
  %117 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %vCG_SPLL_SPREAD_SPECTRUM.i, align 4
  %SpllSpreadSpectrum.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 30, i32 11
  %119 = ptrtoint ptr %SpllSpreadSpectrum.i to i32
  call void @__asan_storeN_noabort(i32 %119, i32 4)
  store i32 %118, ptr %SpllSpreadSpectrum.i, align 1
  %vCG_SPLL_SPREAD_SPECTRUM_2.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %79, i32 0, i32 11, i32 5
  %120 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM_2.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %vCG_SPLL_SPREAD_SPECTRUM_2.i, align 4
  %SpllSpreadSpectrum2.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 30, i32 12
  %122 = ptrtoint ptr %SpllSpreadSpectrum2.i to i32
  call void @__asan_storeN_noabort(i32 %122, i32 4)
  store i32 %121, ptr %SpllSpreadSpectrum2.i, align 1
  %CcPwrDynRm.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 30, i32 13
  %123 = ptrtoint ptr %CcPwrDynRm.i to i32
  call void @__asan_storeN_noabort(i32 %123, i32 4)
  store i32 0, ptr %CcPwrDynRm.i, align 1
  %CcPwrDynRm1.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 30, i32 14
  %124 = ptrtoint ptr %CcPwrDynRm1.i to i32
  call void @__asan_storeN_noabort(i32 %124, i32 4)
  store i32 0, ptr %CcPwrDynRm1.i, align 1
  %mclk_dpm_key_disabled.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %79, i32 0, i32 73
  %125 = ptrtoint ptr %mclk_dpm_key_disabled.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %mclk_dpm_key_disabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool105.not.i = icmp eq i32 %126, 0
  br i1 %tobool105.not.i, label %if.then106.i, label %if.else132.i

if.then106.i:                                     ; preds = %do.end39.i
  %value110.i = getelementptr inbounds %struct.smu7_dpm_table, ptr %79, i32 0, i32 1, i32 1, i32 0, i32 1
  %127 = ptrtoint ptr %value110.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %value110.i, align 4
  %MemoryACPILevel.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 27
  %MclkFrequency.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 27, i32 2
  %129 = ptrtoint ptr %MclkFrequency.i to i32
  call void @__asan_storeN_noabort(i32 %129, i32 4)
  store i32 %128, ptr %MclkFrequency.i, align 1
  %vdd_dep_on_mclk.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %81, i32 0, i32 1
  %130 = ptrtoint ptr %vdd_dep_on_mclk.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %vdd_dep_on_mclk.i, align 4
  %call115.i = call fastcc i32 @fiji_get_dependency_volt_by_clk(ptr noundef %hwmgr, ptr noundef %131, i32 noundef %128, ptr noundef %MemoryACPILevel.i, ptr noundef nonnull %mvdd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.i)
  %cmp117.i = icmp eq i32 %call115.i, 0
  br i1 %cmp117.i, label %if.then106.i.if.end141.i_crit_edge, label %if.then119.i

if.then106.i.if.end141.i_crit_edge:               ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141.i

if.then119.i:                                     ; preds = %if.then106.i
  %call120.i = call i32 @___ratelimit(ptr noundef nonnull @fiji_populate_smc_acpi_level._rs.102, ptr noundef nonnull @__func__.fiji_populate_smc_acpi_level) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120.i)
  %tobool121.not.i = icmp eq i32 %call120.i, 0
  br i1 %tobool121.not.i, label %if.then119.i.if.end141.i_crit_edge, label %do.end125.i

if.then119.i.if.end141.i_crit_edge:               ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141.i

do.end125.i:                                      ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #9
  %call127.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.105) #11
  br label %if.end141.i

if.else132.i:                                     ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  %mclk_bootup_value.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %79, i32 0, i32 31, i32 5
  %132 = ptrtoint ptr %mclk_bootup_value.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %mclk_bootup_value.i, align 4
  %MemoryACPILevel134.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 27
  %MclkFrequency135.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 27, i32 2
  %134 = ptrtoint ptr %MclkFrequency135.i to i32
  call void @__asan_storeN_noabort(i32 %134, i32 4)
  store i32 %133, ptr %MclkFrequency135.i, align 1
  %vddci_bootup_value.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %79, i32 0, i32 31, i32 2
  %135 = ptrtoint ptr %vddci_bootup_value.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %vddci_bootup_value.i, align 4
  %conv137.i = zext i16 %136 to i32
  %mul138.i = shl nuw nsw i32 %conv137.i, 2
  %137 = ptrtoint ptr %MemoryACPILevel134.i to i32
  call void @__asan_storeN_noabort(i32 %137, i32 4)
  store i32 %mul138.i, ptr %MemoryACPILevel134.i, align 1
  br label %if.end141.i

if.end141.i:                                      ; preds = %if.else132.i, %do.end125.i, %if.then119.i.if.end141.i_crit_edge, %if.then106.i.if.end141.i_crit_edge
  %result.0.i = phi i32 [ 0, %if.else132.i ], [ 0, %if.then106.i.if.end141.i_crit_edge ], [ %call115.i, %do.end125.i ], [ %call115.i, %if.then119.i.if.end141.i_crit_edge ]
  %mvdd_control.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %79, i32 0, i32 23
  %138 = ptrtoint ptr %mvdd_control.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %mvdd_control.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp142.i = icmp eq i32 %139, 0
  br i1 %cmp142.i, label %if.end141.i.if.then146.i_crit_edge, label %lor.lhs.false.i

if.end141.i.if.then146.i_crit_edge:               ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then146.i

lor.lhs.false.i:                                  ; preds = %if.end141.i
  %140 = ptrtoint ptr %mclk_dpm_key_disabled.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %mclk_dpm_key_disabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool145.not.i = icmp eq i32 %141, 0
  br i1 %tobool145.not.i, label %if.else148.i, label %lor.lhs.false.i.if.then146.i_crit_edge

lor.lhs.false.i.if.then146.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then146.i

if.then146.i:                                     ; preds = %lor.lhs.false.i.if.then146.i_crit_edge, %if.end141.i.if.then146.i_crit_edge
  %vbios_boot_state147.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %79, i32 0, i32 31
  %142 = ptrtoint ptr %vbios_boot_state147.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %vbios_boot_state147.i, align 4
  br label %fiji_populate_smc_acpi_level.exit

if.else148.i:                                     ; preds = %lor.lhs.false.i
  %value153.i = getelementptr inbounds %struct.smu7_dpm_table, ptr %79, i32 0, i32 1, i32 1, i32 0, i32 1
  %144 = ptrtoint ptr %value153.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %value153.i, align 4
  %146 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %backend, align 4
  %mvdd_control.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %147, i32 0, i32 23
  %148 = ptrtoint ptr %mvdd_control.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %mvdd_control.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %cmp.not.i.i = icmp eq i32 %149, 0
  br i1 %cmp.not.i.i, label %if.else148.i.fiji_populate_smc_acpi_level.exit_crit_edge, label %for.cond.preheader.i.i

if.else148.i.fiji_populate_smc_acpi_level.exit_crit_edge: ; preds = %if.else148.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fiji_populate_smc_acpi_level.exit

for.cond.preheader.i.i:                           ; preds = %if.else148.i
  %150 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pptable, align 4
  %vdd_dep_on_mclk.i.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %vdd_dep_on_mclk.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %vdd_dep_on_mclk.i.i, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %153, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %cmp134.not.i.i = icmp eq i32 %155, 0
  br i1 %cmp134.not.i.i, label %for.cond.preheader.i.i.do.body.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i582_crit_edge

for.cond.preheader.i.i.for.body.i.i582_crit_edge: ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i582

for.cond.preheader.i.i.do.body.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

for.body.i.i582:                                  ; preds = %for.inc.i.i.for.body.i.i582_crit_edge, %for.cond.preheader.i.i.for.body.i.i582_crit_edge
  %i.035.i.i = phi i32 [ %inc.i.i583, %for.inc.i.i.for.body.i.i582_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i582_crit_edge ]
  %arrayidx.i.i581 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %153, i32 0, i32 1, i32 %i.035.i.i
  %156 = ptrtoint ptr %arrayidx.i.i581 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx.i.i581, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %157, i32 %145)
  %cmp3.not.i.i = icmp ult i32 %157, %145
  br i1 %cmp3.not.i.i, label %for.inc.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %for.body.i.i582
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx6.i.i = getelementptr %struct.smu7_hwmgr, ptr %147, i32 0, i32 43, i32 3, i32 %i.035.i.i
  %158 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %arrayidx6.i.i, align 4
  br label %do.body.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i582
  %inc.i.i583 = add nuw i32 %i.035.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i583, %155
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.then10.i.i_crit_edge, label %for.inc.i.i.for.body.i.i582_crit_edge

for.inc.i.i.for.body.i.i582_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i582

for.inc.i.i.if.then10.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i.i

do.body.i.i:                                      ; preds = %if.then4.i.i, %for.cond.preheader.i.i.do.body.i.i_crit_edge
  %vol_level.sroa.0.0.i = phi i16 [ -1, %for.cond.preheader.i.i.do.body.i.i_crit_edge ], [ %159, %if.then4.i.i ]
  %i.032.i.i = phi i32 [ 0, %for.cond.preheader.i.i.do.body.i.i_crit_edge ], [ %i.035.i.i, %if.then4.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.032.i.i, i32 %155)
  %cmp9.i.i = icmp ult i32 %i.032.i.i, %155
  br i1 %cmp9.i.i, label %do.body.i.i.fiji_populate_smc_acpi_level.exit_crit_edge, label %do.body.i.i.if.then10.i.i_crit_edge

do.body.i.i.if.then10.i.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i.i

do.body.i.i.fiji_populate_smc_acpi_level.exit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fiji_populate_smc_acpi_level.exit

if.then10.i.i:                                    ; preds = %do.body.i.i.if.then10.i.i_crit_edge, %for.inc.i.i.if.then10.i.i_crit_edge
  %call.i.i584 = call i32 @___ratelimit(ptr noundef nonnull @fiji_populate_mvdd_value._rs, ptr noundef nonnull @__func__.fiji_populate_mvdd_value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i584)
  %tobool.not.i.i = icmp eq i32 %call.i.i584, 0
  br i1 %tobool.not.i.i, label %if.then10.i.i.fiji_populate_smc_acpi_level.exit_crit_edge, label %do.end.i.i

if.then10.i.i.fiji_populate_smc_acpi_level.exit_crit_edge: ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fiji_populate_smc_acpi_level.exit

do.end.i.i:                                       ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.106) #11
  br label %fiji_populate_smc_acpi_level.exit

fiji_populate_smc_acpi_level.exit.thread:         ; preds = %do.end33.i, %if.then27.i.fiji_populate_smc_acpi_level.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvdd.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers.i) #7
  br label %if.then90

fiji_populate_smc_acpi_level.exit:                ; preds = %do.end.i.i, %if.then10.i.i.fiji_populate_smc_acpi_level.exit_crit_edge, %do.body.i.i.fiji_populate_smc_acpi_level.exit_crit_edge, %if.else148.i.fiji_populate_smc_acpi_level.exit_crit_edge, %if.then146.i
  %us_mvdd.0.i = phi i16 [ %143, %if.then146.i ], [ %vol_level.sroa.0.0.i, %do.body.i.i.fiji_populate_smc_acpi_level.exit_crit_edge ], [ 0, %do.end.i.i ], [ 0, %if.then10.i.i.fiji_populate_smc_acpi_level.exit_crit_edge ], [ 0, %if.else148.i.fiji_populate_smc_acpi_level.exit_crit_edge ]
  %conv159.i = zext i16 %us_mvdd.0.i to i32
  %mul160.i = shl nuw nsw i32 %conv159.i, 2
  %MinMvdd.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 27, i32 1
  %160 = ptrtoint ptr %MinMvdd.i to i32
  call void @__asan_storeN_noabort(i32 %160, i32 4)
  store i32 %mul160.i, ptr %MinMvdd.i, align 1
  %EnabledForThrottle.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 27, i32 5
  %161 = ptrtoint ptr %EnabledForThrottle.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 0, ptr %EnabledForThrottle.i, align 1
  %EnabledForActivity.i585 = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 27, i32 6
  %162 = ptrtoint ptr %EnabledForActivity.i585 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %EnabledForActivity.i585, align 1
  %UpHyst.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 27, i32 7
  %163 = ptrtoint ptr %UpHyst.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 0, ptr %UpHyst.i, align 1
  %DownHyst.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 27, i32 8
  %164 = ptrtoint ptr %DownHyst.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 100, ptr %DownHyst.i, align 1
  %VoltageDownHyst.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 27, i32 9
  %165 = ptrtoint ptr %VoltageDownHyst.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 0, ptr %VoltageDownHyst.i, align 1
  %mclk_activity.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %79, i32 0, i32 102, i32 7
  %166 = ptrtoint ptr %mclk_activity.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %mclk_activity.i, align 2
  %ActivityLevel.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 27, i32 11
  %168 = ptrtoint ptr %ActivityLevel.i to i32
  call void @__asan_storeN_noabort(i32 %168, i32 2)
  store i16 %167, ptr %ActivityLevel.i, align 1
  %StutterEnable.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 27, i32 3
  %169 = ptrtoint ptr %StutterEnable.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 0, ptr %StutterEnable.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvdd.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.i)
  %cmp88 = icmp eq i32 %result.0.i, 0
  br i1 %cmp88, label %do.end102, label %fiji_populate_smc_acpi_level.exit.if.then90_crit_edge

fiji_populate_smc_acpi_level.exit.if.then90_crit_edge: ; preds = %fiji_populate_smc_acpi_level.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then90

if.then90:                                        ; preds = %fiji_populate_smc_acpi_level.exit.if.then90_crit_edge, %fiji_populate_smc_acpi_level.exit.thread
  %retval.0.i617 = phi i32 [ %call23.i, %fiji_populate_smc_acpi_level.exit.thread ], [ %result.0.i, %fiji_populate_smc_acpi_level.exit.if.then90_crit_edge ]
  %call91 = call i32 @___ratelimit(ptr noundef nonnull @fiji_init_smc_table._rs.40, ptr noundef nonnull @__func__.fiji_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then90.cleanup_crit_edge, label %do.end96

if.then90.cleanup_crit_edge:                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end96:                                         ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  %call98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.43) #11
  br label %cleanup

do.end102:                                        ; preds = %fiji_populate_smc_acpi_level.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dividers.i586) #7
  %170 = call ptr @memset(ptr %dividers.i586, i32 255, i32 16)
  %171 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %pptable, align 4
  %mm_dep_table.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %172, i32 0, i32 14
  %173 = ptrtoint ptr %mm_dep_table.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %mm_dep_table.i, align 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %174, align 4
  %conv.i588 = trunc i32 %176 to i8
  %VceLevelCount.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 18
  %177 = ptrtoint ptr %VceLevelCount.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %conv.i588, ptr %VceLevelCount.i, align 1
  %VceBootLevel.i = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 39
  %178 = ptrtoint ptr %VceBootLevel.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 0, ptr %VceBootLevel.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i588)
  %cmp108.not.i = icmp eq i8 %conv.i588, 0
  br i1 %cmp108.not.i, label %do.end102.if.then107_crit_edge, label %do.end102.for.body.i592_crit_edge

do.end102.for.body.i592_crit_edge:                ; preds = %do.end102
  br label %for.body.i592

do.end102.if.then107_crit_edge:                   ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then107

for.body.i592:                                    ; preds = %do.end48.i.for.body.i592_crit_edge, %do.end102.for.body.i592_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %do.end48.i.for.body.i592_crit_edge ], [ 0, %do.end102.for.body.i592_crit_edge ]
  %eclk.i = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %174, i32 0, i32 1, i32 %indvars.iv.i, i32 2
  %179 = ptrtoint ptr %eclk.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %eclk.i, align 4
  %arrayidx7.i = getelementptr %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 32, i32 %indvars.iv.i
  %181 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_storeN_noabort(i32 %181, i32 4)
  store i32 %180, ptr %arrayidx7.i, align 1
  %MinVoltage.i589 = getelementptr %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 32, i32 %indvars.iv.i, i32 1
  %182 = ptrtoint ptr %MinVoltage.i589 to i32
  call void @__asan_storeN_noabort(i32 %182, i32 4)
  store i32 0, ptr %MinVoltage.i589, align 1
  %vddc.i = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %174, i32 0, i32 1, i32 %indvars.iv.i, i32 7
  %183 = ptrtoint ptr %vddc.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %vddc.i, align 4
  %conv14.i = zext i16 %184 to i32
  %mul.i590 = shl nuw nsw i32 %conv14.i, 2
  store i32 %mul.i590, ptr %MinVoltage.i589, align 1
  %185 = load i16, ptr %vddc.i, align 4
  %conv23.i = zext i16 %185 to i32
  %sub.i = shl i32 %conv23.i, 17
  %shl25.i = add i32 %sub.i, -39321600
  %or30.i = or i32 %mul.i590, %shl25.i
  %or35.i = or i32 %or30.i, 1073741824
  store i32 %or35.i, ptr %MinVoltage.i589, align 1
  %call.i591 = call i32 @atomctrl_get_dfs_pll_dividers_vi(ptr noundef %hwmgr, i32 noundef %180, ptr noundef nonnull %dividers.i586) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i591)
  %cmp40.i = icmp eq i32 %call.i591, 0
  br i1 %cmp40.i, label %do.end48.i, label %if.then.i594

if.then.i594:                                     ; preds = %for.body.i592
  %call42.i = call i32 @___ratelimit(ptr noundef nonnull @fiji_populate_smc_vce_level._rs, ptr noundef nonnull @__func__.fiji_populate_smc_vce_level) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool.not.i593 = icmp eq i32 %call42.i, 0
  br i1 %tobool.not.i593, label %if.then.i594.if.then107_crit_edge, label %do.end.i595

if.then.i594.if.then107_crit_edge:                ; preds = %if.then.i594
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then107

do.end.i595:                                      ; preds = %if.then.i594
  call void @__sanitizer_cov_trace_pc() #9
  %call45.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.107) #11
  br label %if.then107

do.end48.i:                                       ; preds = %for.body.i592
  %186 = ptrtoint ptr %dividers.i586 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %dividers.i586, align 4
  %conv49.i = trunc i32 %187 to i8
  %Divider.i = getelementptr %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 32, i32 %indvars.iv.i, i32 2
  %188 = ptrtoint ptr %Divider.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %conv49.i, ptr %Divider.i, align 1
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %189 = ptrtoint ptr %VceLevelCount.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %VceLevelCount.i, align 1
  %191 = zext i8 %190 to i32
  %cmp.i596 = icmp ult i32 %indvars.iv.next.i, %191
  br i1 %cmp.i596, label %do.end48.i.for.body.i592_crit_edge, label %do.end119

do.end48.i.for.body.i592_crit_edge:               ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i592

if.then107:                                       ; preds = %do.end.i595, %if.then.i594.if.then107_crit_edge, %do.end102.if.then107_crit_edge
  %retval.0.i597.ph = phi i32 [ -22, %do.end102.if.then107_crit_edge ], [ %call.i591, %if.then.i594.if.then107_crit_edge ], [ %call.i591, %do.end.i595 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers.i586) #7
  %call108 = call i32 @___ratelimit(ptr noundef nonnull @fiji_init_smc_table._rs.44, ptr noundef nonnull @__func__.fiji_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.then107.cleanup_crit_edge, label %do.end113

if.then107.cleanup_crit_edge:                     ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end113:                                        ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  %call115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.47) #11
  br label %cleanup

do.end119:                                        ; preds = %do.end48.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers.i586) #7
  %call120 = call fastcc i32 @fiji_populate_smc_acp_level(ptr noundef %hwmgr, ptr noundef %smc_state_table)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %cmp122 = icmp eq i32 %call120, 0
  br i1 %cmp122, label %do.end136, label %if.then124

if.then124:                                       ; preds = %do.end119
  %call125 = call i32 @___ratelimit(ptr noundef nonnull @fiji_init_smc_table._rs.48, ptr noundef nonnull @__func__.fiji_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.then124.cleanup_crit_edge, label %do.end130

if.then124.cleanup_crit_edge:                     ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end130:                                        ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #9
  %call132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.51) #11
  br label %cleanup

do.end136:                                        ; preds = %do.end119
  %call137 = call fastcc i32 @fiji_program_memory_timing_parameters(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %cmp139 = icmp eq i32 %call137, 0
  br i1 %cmp139, label %do.end153, label %if.then141

if.then141:                                       ; preds = %do.end136
  %call142 = call i32 @___ratelimit(ptr noundef nonnull @fiji_init_smc_table._rs.52, ptr noundef nonnull @__func__.fiji_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.then141.cleanup_crit_edge, label %do.end147

if.then141.cleanup_crit_edge:                     ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end147:                                        ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #9
  %call149 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.55) #11
  br label %cleanup

do.end153:                                        ; preds = %do.end136
  %call154 = call fastcc i32 @fiji_populate_smc_uvd_level(ptr noundef %hwmgr, ptr noundef %smc_state_table)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %cmp156 = icmp eq i32 %call154, 0
  br i1 %cmp156, label %do.end170, label %if.then158

if.then158:                                       ; preds = %do.end153
  %call159 = call i32 @___ratelimit(ptr noundef nonnull @fiji_init_smc_table._rs.56, ptr noundef nonnull @__func__.fiji_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.then158.cleanup_crit_edge, label %do.end164

if.then158.cleanup_crit_edge:                     ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end164:                                        ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #9
  %call166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.59) #11
  br label %cleanup

do.end170:                                        ; preds = %do.end153
  call fastcc void @fiji_populate_smc_boot_level(ptr noundef %hwmgr, ptr noundef %smc_state_table)
  call fastcc void @fiji_populate_smc_initailial_state(ptr noundef %hwmgr)
  call fastcc void @fiji_populate_bapm_parameters_in_dpm_table(ptr noundef %hwmgr)
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 5
  %192 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx.i, align 4
  %and1.i598 = and i32 %193, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i598)
  %cmp.i599.not = icmp eq i32 %and1.i598, 0
  br i1 %cmp.i599.not, label %do.end170.if.end244_crit_edge, label %if.then226

do.end170.if.end244_crit_edge:                    ; preds = %do.end170
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end244

if.then226:                                       ; preds = %do.end170
  %call227 = call fastcc i32 @fiji_populate_clock_stretcher_data_table(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227)
  %cmp229 = icmp eq i32 %call227, 0
  br i1 %cmp229, label %if.then226.if.end244_crit_edge, label %if.then231

if.then226.if.end244_crit_edge:                   ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end244

if.then231:                                       ; preds = %if.then226
  %call232 = call i32 @___ratelimit(ptr noundef nonnull @fiji_init_smc_table._rs.72, ptr noundef nonnull @__func__.fiji_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call232)
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %if.then231.cleanup_crit_edge, label %do.end237

if.then231.cleanup_crit_edge:                     ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end237:                                        ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #9
  %call239 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.75) #11
  br label %cleanup

if.end244:                                        ; preds = %if.then226.if.end244_crit_edge, %do.end170.if.end244_crit_edge
  %GraphicsVoltageChangeEnable = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 43
  %cac_dtp_table = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %5, i32 0, i32 12
  %194 = call ptr @memset(ptr %GraphicsVoltageChangeEnable, i32 1, i32 5)
  %195 = ptrtoint ptr %cac_dtp_table to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %cac_dtp_table, align 4
  %usTargetOperatingTemp = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %196, i32 0, i32 14
  %197 = ptrtoint ptr %usTargetOperatingTemp to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %usTargetOperatingTemp, align 4
  %mul = shl i16 %198, 8
  %TemperatureLimitHigh = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 48
  %199 = ptrtoint ptr %TemperatureLimitHigh to i32
  call void @__asan_storeN_noabort(i32 %199, i32 2)
  store i16 %mul, ptr %TemperatureLimitHigh, align 1
  %200 = load ptr, ptr %cac_dtp_table, align 4
  %usTargetOperatingTemp248 = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %200, i32 0, i32 14
  %201 = ptrtoint ptr %usTargetOperatingTemp248 to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %usTargetOperatingTemp248, align 4
  %sub = shl i16 %202, 8
  %mul250 = add i16 %sub, -256
  %TemperatureLimitLow = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 49
  %203 = ptrtoint ptr %TemperatureLimitLow to i32
  call void @__asan_storeN_noabort(i32 %203, i32 2)
  store i16 %mul250, ptr %TemperatureLimitLow, align 1
  %MemoryVoltageChangeEnable = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 51
  %204 = ptrtoint ptr %MemoryVoltageChangeEnable to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 1, ptr %MemoryVoltageChangeEnable, align 1
  %MemoryInterval = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 53
  %205 = ptrtoint ptr %MemoryInterval to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 1, ptr %MemoryInterval, align 1
  %VoltageResponseTime = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 55
  %206 = ptrtoint ptr %VoltageResponseTime to i32
  call void @__asan_storeN_noabort(i32 %206, i32 2)
  store i16 0, ptr %VoltageResponseTime, align 1
  %PhaseResponseTime = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 56
  %207 = ptrtoint ptr %PhaseResponseTime to i32
  call void @__asan_storeN_noabort(i32 %207, i32 2)
  store i16 0, ptr %PhaseResponseTime, align 1
  %MemoryThermThrottleEnable = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 54
  %208 = ptrtoint ptr %MemoryThermThrottleEnable to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 1, ptr %MemoryThermThrottleEnable, align 1
  %PCIeBootLinkLevel = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 57
  %209 = ptrtoint ptr %PCIeBootLinkLevel to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 0, ptr %PCIeBootLinkLevel, align 1
  %PCIeGenInterval = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 58
  %210 = ptrtoint ptr %PCIeGenInterval to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 1, ptr %PCIeGenInterval, align 1
  %VRConfig = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 4
  %211 = ptrtoint ptr %VRConfig to i32
  call void @__asan_storeN_noabort(i32 %211, i32 4)
  store i32 0, ptr %VRConfig, align 1
  call fastcc void @fiji_populate_vr_config(ptr noundef %hwmgr, ptr noundef %smc_state_table)
  %212 = ptrtoint ptr %VRConfig to i32
  call void @__asan_loadN_noabort(i32 %212, i32 4)
  %213 = load i32, ptr %VRConfig, align 1
  %vr_config = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 101
  %214 = ptrtoint ptr %vr_config to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %vr_config, align 4
  %ThermGpio = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 64
  %215 = ptrtoint ptr %ThermGpio to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 17, ptr %ThermGpio, align 1
  %SclkStepSize = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 36
  %216 = ptrtoint ptr %SclkStepSize to i32
  call void @__asan_storeN_noabort(i32 %216, i32 4)
  store i32 16384, ptr %SclkStepSize, align 1
  %call270 = call zeroext i1 @atomctrl_get_pp_assign_pin(ptr noundef %hwmgr, i32 noundef 61, ptr noundef nonnull %gpio_pin) #7
  br i1 %call270, label %if.then271, label %if.else

if.then271:                                       ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #9
  %uc_gpio_pin_bit_shift = getelementptr inbounds %struct.pp_atomctrl_gpio_pin_assignment, ptr %gpio_pin, i32 0, i32 1
  %217 = ptrtoint ptr %uc_gpio_pin_bit_shift to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %uc_gpio_pin_bit_shift, align 2
  %VRHotGpio = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 62
  %219 = ptrtoint ptr %VRHotGpio to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %218, ptr %VRHotGpio, align 1
  %arrayidx.i600 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %220 = ptrtoint ptr %arrayidx.i600 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx.i600, align 4
  %or.i = or i32 %221, 4
  store i32 %or.i, ptr %arrayidx.i600, align 4
  br label %if.end279

if.else:                                          ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #9
  %VRHotGpio275 = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 62
  %222 = ptrtoint ptr %VRHotGpio275 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 127, ptr %VRHotGpio275, align 1
  %arrayidx.i601 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %223 = ptrtoint ptr %arrayidx.i601 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %arrayidx.i601, align 4
  %and1.i602 = and i32 %224, -5
  store i32 %and1.i602, ptr %arrayidx.i601, align 4
  br label %if.end279

if.end279:                                        ; preds = %if.else, %if.then271
  %call280 = call zeroext i1 @atomctrl_get_pp_assign_pin(ptr noundef %hwmgr, i32 noundef 60, ptr noundef nonnull %gpio_pin) #7
  br i1 %call280, label %if.then281, label %if.else286

if.then281:                                       ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #9
  %uc_gpio_pin_bit_shift282 = getelementptr inbounds %struct.pp_atomctrl_gpio_pin_assignment, ptr %gpio_pin, i32 0, i32 1
  %225 = ptrtoint ptr %uc_gpio_pin_bit_shift282 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %uc_gpio_pin_bit_shift282, align 2
  %AcDcGpio = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 63
  %227 = ptrtoint ptr %AcDcGpio to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %226, ptr %AcDcGpio, align 1
  %228 = ptrtoint ptr %platform_descriptor to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %platform_descriptor, align 4
  %or.i603 = or i32 %229, 16777216
  br label %if.end291

if.else286:                                       ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #9
  %AcDcGpio287 = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 63
  %230 = ptrtoint ptr %AcDcGpio287 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 127, ptr %AcDcGpio287, align 1
  %231 = ptrtoint ptr %platform_descriptor to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %platform_descriptor, align 4
  %and1.i604 = and i32 %232, -16777217
  br label %if.end291

if.end291:                                        ; preds = %if.else286, %if.then281
  %storemerge = phi i32 [ %and1.i604, %if.else286 ], [ %or.i603, %if.then281 ]
  %233 = ptrtoint ptr %platform_descriptor to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %storemerge, ptr %platform_descriptor, align 4
  %call292 = call zeroext i1 @atomctrl_get_pp_assign_pin(ptr noundef %hwmgr, i32 noundef 65, ptr noundef nonnull %gpio_pin) #7
  %arrayidx.i605 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 4
  %234 = ptrtoint ptr %arrayidx.i605 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %arrayidx.i605, align 4
  br i1 %call292, label %if.then293, label %if.else321

if.then293:                                       ; preds = %if.end291
  %or.i606 = or i32 %235, 16
  %236 = ptrtoint ptr %arrayidx.i605 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %or.i606, ptr %arrayidx.i605, align 4
  %uc_gpio_pin_bit_shift297 = getelementptr inbounds %struct.pp_atomctrl_gpio_pin_assignment, ptr %gpio_pin, i32 0, i32 1
  %237 = ptrtoint ptr %uc_gpio_pin_bit_shift297 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %uc_gpio_pin_bit_shift297, align 2
  %ThermOutGpio = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 21
  %239 = ptrtoint ptr %ThermOutGpio to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %238, ptr %ThermOutGpio, align 1
  %device298 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %240 = ptrtoint ptr %device298 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %device298, align 4
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %241, align 4
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %243, align 4
  %call301 = call i32 %245(ptr noundef %241, i32 noundef 387) #7
  %246 = ptrtoint ptr %uc_gpio_pin_bit_shift297 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %uc_gpio_pin_bit_shift297, align 2
  %conv303 = zext i8 %247 to i32
  %shl = shl nuw i32 1, %conv303
  %and = and i32 %shl, %call301
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp304 = icmp eq i32 %and, 0
  %conv306 = zext i1 %cmp304 to i8
  %ThermOutPolarity = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 22
  %248 = ptrtoint ptr %ThermOutPolarity to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %conv306, ptr %ThermOutPolarity, align 1
  %ThermOutMode = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 23
  %249 = ptrtoint ptr %ThermOutMode to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 1, ptr %ThermOutMode, align 1
  %arrayidx.i607 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %250 = ptrtoint ptr %arrayidx.i607 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %arrayidx.i607, align 4
  %and1.i608 = and i32 %251, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i608)
  %cmp.i609.not = icmp eq i32 %and1.i608, 0
  br i1 %cmp.i609.not, label %if.then293.if.end328_crit_edge, label %land.lhs.true312

if.then293.if.end328_crit_edge:                   ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end328

land.lhs.true312:                                 ; preds = %if.then293
  %252 = ptrtoint ptr %arrayidx.i605 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx.i605, align 4
  %and1.i611 = and i32 %253, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i611)
  %cmp.i612.not = icmp eq i32 %and1.i611, 0
  br i1 %cmp.i612.not, label %land.lhs.true312.if.end328_crit_edge, label %if.then318

land.lhs.true312.if.end328_crit_edge:             ; preds = %land.lhs.true312
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end328

if.then318:                                       ; preds = %land.lhs.true312
  call void @__sanitizer_cov_trace_pc() #9
  %254 = ptrtoint ptr %ThermOutMode to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 2, ptr %ThermOutMode, align 1
  br label %if.end328

if.else321:                                       ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i614 = and i32 %235, -17
  %255 = ptrtoint ptr %arrayidx.i605 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %and1.i614, ptr %arrayidx.i605, align 4
  %ThermOutGpio325 = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 21
  %256 = ptrtoint ptr %ThermOutGpio325 to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 17, ptr %ThermOutGpio325, align 1
  %ThermOutPolarity326 = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 22
  %257 = ptrtoint ptr %ThermOutPolarity326 to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 1, ptr %ThermOutPolarity326, align 1
  %ThermOutMode327 = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 23
  %258 = ptrtoint ptr %ThermOutMode327 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 0, ptr %ThermOutMode327, align 1
  br label %if.end328

if.end328:                                        ; preds = %if.else321, %if.then318, %land.lhs.true312.if.end328_crit_edge, %if.then293.if.end328_crit_edge
  %dpm_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 4
  %259 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %dpm_table_start, align 8
  %add = add i32 %260, 108
  %call352 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add, ptr noundef %SystemFlags, i32 noundef 1524, i32 noundef 262144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call352)
  %cmp354 = icmp eq i32 %call352, 0
  br i1 %cmp354, label %do.end368, label %if.then356

if.then356:                                       ; preds = %if.end328
  %call357 = call i32 @___ratelimit(ptr noundef nonnull @fiji_init_smc_table._rs.80, ptr noundef nonnull @__func__.fiji_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call357)
  %tobool358.not = icmp eq i32 %call357, 0
  br i1 %tobool358.not, label %if.then356.cleanup_crit_edge, label %do.end362

if.then356.cleanup_crit_edge:                     ; preds = %if.then356
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end362:                                        ; preds = %if.then356
  call void @__sanitizer_cov_trace_pc() #9
  %call364 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.83) #11
  br label %cleanup

do.end368:                                        ; preds = %if.end328
  %call369 = call fastcc i32 @fiji_init_arb_table_index(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call369)
  %cmp371 = icmp eq i32 %call369, 0
  br i1 %cmp371, label %do.end385, label %if.then373

if.then373:                                       ; preds = %do.end368
  %call374 = call i32 @___ratelimit(ptr noundef nonnull @fiji_init_smc_table._rs.84, ptr noundef nonnull @__func__.fiji_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call374)
  %tobool375.not = icmp eq i32 %call374, 0
  br i1 %tobool375.not, label %if.then373.cleanup_crit_edge, label %do.end379

if.then373.cleanup_crit_edge:                     ; preds = %if.then373
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end379:                                        ; preds = %if.then373
  call void @__sanitizer_cov_trace_pc() #9
  %call381 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.87) #11
  br label %cleanup

do.end385:                                        ; preds = %do.end368
  %call386 = call fastcc i32 @fiji_populate_pm_fuses(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call386)
  %cmp388 = icmp eq i32 %call386, 0
  br i1 %cmp388, label %do.end402, label %if.then390

if.then390:                                       ; preds = %do.end385
  %call391 = call i32 @___ratelimit(ptr noundef nonnull @fiji_init_smc_table._rs.88, ptr noundef nonnull @__func__.fiji_init_smc_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call391)
  %tobool392.not = icmp eq i32 %call391, 0
  br i1 %tobool392.not, label %if.then390.cleanup_crit_edge, label %do.end396

if.then390.cleanup_crit_edge:                     ; preds = %if.then390
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end396:                                        ; preds = %if.then390
  call void @__sanitizer_cov_trace_pc() #9
  %call398 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.91) #11
  br label %cleanup

do.end402:                                        ; preds = %do.end385
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @fiji_setup_dpm_led_config(ptr noundef %hwmgr)
  br label %cleanup

cleanup:                                          ; preds = %do.end402, %do.end396, %if.then390.cleanup_crit_edge, %do.end379, %if.then373.cleanup_crit_edge, %do.end362, %if.then356.cleanup_crit_edge, %do.end237, %if.then231.cleanup_crit_edge, %do.end164, %if.then158.cleanup_crit_edge, %do.end147, %if.then141.cleanup_crit_edge, %do.end130, %if.then124.cleanup_crit_edge, %do.end113, %if.then107.cleanup_crit_edge, %do.end96, %if.then90.cleanup_crit_edge, %do.end79, %if.then73.cleanup_crit_edge, %do.end62, %if.then56.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end402 ], [ %call52, %do.end62 ], [ %call52, %if.then56.cleanup_crit_edge ], [ %call69, %do.end79 ], [ %call69, %if.then73.cleanup_crit_edge ], [ %retval.0.i617, %do.end96 ], [ %retval.0.i617, %if.then90.cleanup_crit_edge ], [ %retval.0.i597.ph, %do.end113 ], [ %retval.0.i597.ph, %if.then107.cleanup_crit_edge ], [ %call120, %do.end130 ], [ %call120, %if.then124.cleanup_crit_edge ], [ %call137, %do.end147 ], [ %call137, %if.then141.cleanup_crit_edge ], [ %call154, %do.end164 ], [ %call154, %if.then158.cleanup_crit_edge ], [ %call227, %do.end237 ], [ %call227, %if.then231.cleanup_crit_edge ], [ %call352, %do.end362 ], [ %call352, %if.then356.cleanup_crit_edge ], [ %call369, %do.end379 ], [ %call369, %if.then373.cleanup_crit_edge ], [ %call386, %do.end396 ], [ %call386, %if.then390.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_pin) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fiji_populate_all_graphic_levels(ptr noundef %hwmgr) #0 align 64 {
entry:
  %dividers.i.i = alloca %struct.pp_atomctrl_clock_dividers_vi, align 4
  %ssInfo.i.i = alloca %struct.pp_atomctrl_internal_ss_info, align 4
  %mvdd.i = alloca i32, align 4
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
  %GraphicsLevel = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 26
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp208.not = icmp eq i32 %13, 0
  br i1 %cmp208.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %uc_pll_ref_div.i.i = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_vi, ptr %dividers.i.i, i32 0, i32 3
  %ul_fb_div.i.i = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_vi, ptr %dividers.i.i, i32 0, i32 2
  %platform_descriptor.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23
  %uc_pll_post_div.i.i = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_vi, ptr %dividers.i.i, i32 0, i32 4
  %14 = getelementptr inbounds %struct.pp_atomctrl_internal_ss_info, ptr %ssInfo.i.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.pp_atomctrl_internal_ss_info, ptr %ssInfo.i.i, i32 0, i32 2
  %od_enabled.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 53
  %display_config.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 45
  %arrayidx.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0209 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %value = getelementptr %struct.smu7_single_dpm_table, ptr %1, i32 0, i32 1, i32 %i.0209, i32 1
  %16 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value, align 4
  %arrayidx8 = getelementptr %struct.SMU73_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0209
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvdd.i) #7
  %18 = ptrtoint ptr %mvdd.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %mvdd.i, align 4, !annotation !339
  %19 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %backend, align 4
  %21 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pptable, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dividers.i.i) #7
  %23 = call ptr @memset(ptr %dividers.i.i, i32 255, i32 16)
  %vCG_SPLL_FUNC_CNTL_3.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %20, i32 0, i32 11, i32 2
  %24 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_3.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vCG_SPLL_FUNC_CNTL_3.i.i, align 4
  %vCG_SPLL_FUNC_CNTL_4.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %20, i32 0, i32 11, i32 3
  %26 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_4.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vCG_SPLL_FUNC_CNTL_4.i.i, align 4
  %vCG_SPLL_SPREAD_SPECTRUM.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %20, i32 0, i32 11, i32 4
  %28 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vCG_SPLL_SPREAD_SPECTRUM.i.i, align 4
  %vCG_SPLL_SPREAD_SPECTRUM_2.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %20, i32 0, i32 11, i32 5
  %30 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM_2.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vCG_SPLL_SPREAD_SPECTRUM_2.i.i, align 4
  %call.i.i = call i32 @atomctrl_get_engine_pll_dividers_vi(ptr noundef %hwmgr, i32 noundef %17, ptr noundef nonnull %dividers.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end11.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body
  %call5.i.i = call i32 @___ratelimit(ptr noundef nonnull @fiji_calculate_sclk_params._rs, ptr noundef nonnull @__func__.fiji_calculate_sclk_params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.fiji_calculate_sclk_params.exit.i_crit_edge, label %do.end.i.i

if.then.i.i.fiji_calculate_sclk_params.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fiji_calculate_sclk_params.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call8.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.101) #11
  br label %fiji_calculate_sclk_params.exit.i

do.end11.i.i:                                     ; preds = %for.body
  %call12.i.i = call i32 @atomctrl_get_reference_clock(ptr noundef %hwmgr) #7
  %32 = ptrtoint ptr %uc_pll_ref_div.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %uc_pll_ref_div.i.i, align 4
  %conv.i.i = zext i8 %33 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 1
  %34 = ptrtoint ptr %ul_fb_div.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ul_fb_div.i.i, align 4
  %and.i.i = and i32 %35, 67108863
  %and22.i.i = and i32 %25, -335544320
  %or25.i.i = or i32 %and22.i.i, %and.i.i
  %or27.i.i = or i32 %or25.i.i, 268435456
  %36 = ptrtoint ptr %platform_descriptor.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %platform_descriptor.i.i, align 4
  %and1.i.i.i = and i32 %37, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %cmp.i.not.i.i, label %do.end11.i.i.if.end52.i.i_crit_edge, label %if.then29.i.i

do.end11.i.i.if.end52.i.i_crit_edge:              ; preds = %do.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52.i.i

if.then29.i.i:                                    ; preds = %do.end11.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ssInfo.i.i) #7
  %38 = ptrtoint ptr %ssInfo.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %ssInfo.i.i, align 4, !annotation !339
  %39 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %14, align 4, !annotation !339
  %40 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %15, align 4, !annotation !339
  %41 = ptrtoint ptr %uc_pll_post_div.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %uc_pll_post_div.i.i, align 1
  %conv31.i.i = zext i8 %42 to i32
  %mul.i.i = mul i32 %17, %conv31.i.i
  %call32.i.i = call i32 @atomctrl_get_engine_clock_spread_spectrum(ptr noundef %hwmgr, i32 noundef %mul.i.i, ptr noundef nonnull %ssInfo.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i)
  %tobool33.not.i.i = icmp eq i32 %call32.i.i, 0
  br i1 %tobool33.not.i.i, label %if.then34.i.i, label %if.then29.i.i.if.end51.i.i_crit_edge

if.then29.i.i.if.end51.i.i_crit_edge:             ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.i.i

if.then34.i.i:                                    ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul35.i.i = mul i32 %call12.i.i, 5
  %43 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %14, align 4
  %mul36.i.i = mul i32 %44, %add.i.i
  %div.i.i = udiv i32 %mul35.i.i, %mul36.i.i
  %45 = ptrtoint ptr %ssInfo.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ssInfo.i.i, align 4
  %mul37.i.i = shl nuw nsw i32 %and.i.i, 2
  %mul38.i.i = mul i32 %mul37.i.i, %46
  %mul39.i.i = mul i32 %div.i.i, 10000
  %div40.i.i = udiv i32 %mul38.i.i, %mul39.i.i
  %and41.i.i = and i32 %29, -65522
  %shl42.i.i = shl i32 %div.i.i, 4
  %and43.i.i = and i32 %shl42.i.i, 65520
  %or44.i.i = or i32 %and41.i.i, %and43.i.i
  %or46.i.i = or i32 %or44.i.i, 1
  %and47.i.i = and i32 %31, -67108864
  %and49.i.i = and i32 %div40.i.i, 67108863
  %or50.i.i = or i32 %and49.i.i, %and47.i.i
  br label %if.end51.i.i

if.end51.i.i:                                     ; preds = %if.then34.i.i, %if.then29.i.i.if.end51.i.i_crit_edge
  %cg_spll_spread_spectrum.0.i.i = phi i32 [ %29, %if.then29.i.i.if.end51.i.i_crit_edge ], [ %or46.i.i, %if.then34.i.i ]
  %cg_spll_spread_spectrum_2.0.i.i = phi i32 [ %31, %if.then29.i.i.if.end51.i.i_crit_edge ], [ %or50.i.i, %if.then34.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ssInfo.i.i) #7
  br label %if.end52.i.i

if.end52.i.i:                                     ; preds = %if.end51.i.i, %do.end11.i.i.if.end52.i.i_crit_edge
  %cg_spll_spread_spectrum.1.i.i = phi i32 [ %cg_spll_spread_spectrum.0.i.i, %if.end51.i.i ], [ %29, %do.end11.i.i.if.end52.i.i_crit_edge ]
  %cg_spll_spread_spectrum_2.1.i.i = phi i32 [ %cg_spll_spread_spectrum_2.0.i.i, %if.end51.i.i ], [ %31, %do.end11.i.i.if.end52.i.i_crit_edge ]
  %SclkFrequency.i.i = getelementptr %struct.SMU73_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0209, i32 1
  %47 = ptrtoint ptr %SclkFrequency.i.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %17, ptr %SclkFrequency.i.i, align 1
  %CgSpllFuncCntl3.i.i = getelementptr %struct.SMU73_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0209, i32 5
  %48 = ptrtoint ptr %CgSpllFuncCntl3.i.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %or27.i.i, ptr %CgSpllFuncCntl3.i.i, align 1
  %CgSpllFuncCntl4.i.i = getelementptr %struct.SMU73_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0209, i32 6
  %49 = ptrtoint ptr %CgSpllFuncCntl4.i.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %27, ptr %CgSpllFuncCntl4.i.i, align 1
  %SpllSpreadSpectrum.i.i = getelementptr %struct.SMU73_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0209, i32 7
  %50 = ptrtoint ptr %SpllSpreadSpectrum.i.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %cg_spll_spread_spectrum.1.i.i, ptr %SpllSpreadSpectrum.i.i, align 1
  %SpllSpreadSpectrum2.i.i = getelementptr %struct.SMU73_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0209, i32 8
  %51 = ptrtoint ptr %SpllSpreadSpectrum2.i.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %cg_spll_spread_spectrum_2.1.i.i, ptr %SpllSpreadSpectrum2.i.i, align 1
  %52 = ptrtoint ptr %dividers.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dividers.i.i, align 4
  %conv53.i.i = trunc i32 %53 to i8
  %SclkDid.i.i = getelementptr %struct.SMU73_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0209, i32 11
  %54 = ptrtoint ptr %SclkDid.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv53.i.i, ptr %SclkDid.i.i, align 1
  br label %fiji_calculate_sclk_params.exit.i

fiji_calculate_sclk_params.exit.i:                ; preds = %if.end52.i.i, %do.end.i.i, %if.then.i.i.fiji_calculate_sclk_params.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers.i.i) #7
  %55 = ptrtoint ptr %od_enabled.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %od_enabled.i, align 4, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i = icmp eq i8 %56, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %fiji_calculate_sclk_params.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %vdd_dependency_on_sclk.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %20, i32 0, i32 2, i32 2
  br label %if.end.i

if.else.i:                                        ; preds = %fiji_calculate_sclk_params.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %22, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %vdd_dep_table.0.i = phi ptr [ %vdd_dependency_on_sclk.i, %if.then.i ], [ %58, %if.else.i ]
  %call1.i = call fastcc i32 @fiji_get_dependency_volt_by_clk(ptr noundef %hwmgr, ptr noundef %vdd_dep_table.0.i, i32 noundef %17, ptr noundef %arrayidx8, ptr noundef nonnull %mvdd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %do.end11.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %call3.i = call i32 @___ratelimit(ptr noundef nonnull @fiji_populate_single_graphic_level._rs, ptr noundef nonnull @__func__.fiji_populate_single_graphic_level) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then2.i.fiji_populate_single_graphic_level.exit.thread_crit_edge, label %do.end.i

if.then2.i.fiji_populate_single_graphic_level.exit.thread_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fiji_populate_single_graphic_level.exit.thread

do.end.i:                                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.152) #11
  br label %fiji_populate_single_graphic_level.exit.thread

do.end11.i:                                       ; preds = %if.end.i
  %SclkFrequency.i = getelementptr %struct.SMU73_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0209, i32 1
  %59 = ptrtoint ptr %SclkFrequency.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %17, ptr %SclkFrequency.i, align 1
  %sclk_activity.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %20, i32 0, i32 102, i32 3
  %60 = ptrtoint ptr %sclk_activity.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %sclk_activity.i, align 4
  %ActivityLevel.i = getelementptr %struct.SMU73_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0209, i32 4
  %62 = ptrtoint ptr %ActivityLevel.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 %61, ptr %ActivityLevel.i, align 1
  %CcPwrDynRm.i = getelementptr %struct.SMU73_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0209, i32 9
  %63 = ptrtoint ptr %CcPwrDynRm.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 0, ptr %CcPwrDynRm.i, align 1
  %CcPwrDynRm1.i = getelementptr %struct.SMU73_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0209, i32 10
  %64 = ptrtoint ptr %CcPwrDynRm1.i to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 0, ptr %CcPwrDynRm1.i, align 1
  %EnabledForActivity.i = getelementptr %struct.SMU73_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0209, i32 13
  %65 = ptrtoint ptr %EnabledForActivity.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %EnabledForActivity.i, align 1
  %EnabledForThrottle.i = getelementptr %struct.SMU73_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0209, i32 14
  %66 = ptrtoint ptr %EnabledForThrottle.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %EnabledForThrottle.i, align 1
  %sclk_up_hyst.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %20, i32 0, i32 102, i32 1
  %67 = ptrtoint ptr %sclk_up_hyst.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %sclk_up_hyst.i, align 1
  %UpHyst.i = getelementptr %struct.SMU73_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0209, i32 15
  %69 = ptrtoint ptr %UpHyst.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %UpHyst.i, align 1
  %sclk_down_hyst.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %20, i32 0, i32 102, i32 2
  %70 = ptrtoint ptr %sclk_down_hyst.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %sclk_down_hyst.i, align 2
  %DownHyst.i = getelementptr %struct.SMU73_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0209, i32 16
  %72 = ptrtoint ptr %DownHyst.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %DownHyst.i, align 1
  %VoltageDownHyst.i = getelementptr %struct.SMU73_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0209, i32 17
  %73 = ptrtoint ptr %VoltageDownHyst.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %VoltageDownHyst.i, align 1
  %PowerThrottle.i = getelementptr %struct.SMU73_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0209, i32 18
  %74 = ptrtoint ptr %PowerThrottle.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %PowerThrottle.i, align 1
  %75 = ptrtoint ptr %display_config.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %display_config.i, align 4
  %min_core_set_clock_in_sr.i = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %76, i32 0, i32 10
  %77 = ptrtoint ptr %min_core_set_clock_in_sr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %min_core_set_clock_in_sr.i, align 4
  %display_timing.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %20, i32 0, i32 68
  %79 = ptrtoint ptr %display_timing.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %display_timing.i, align 4
  %80 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i.i, align 4
  %and1.i.i = and i32 %81, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.i84.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %cmp.i84.not.i, label %do.end11.i.if.end_crit_edge, label %if.then15.i

do.end11.i.if.end_crit_edge:                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then15.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %display_config.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %display_config.i, align 4
  %min_core_set_clock_in_sr17.i = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %83, i32 0, i32 10
  %84 = ptrtoint ptr %min_core_set_clock_in_sr17.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %min_core_set_clock_in_sr17.i, align 4
  %call18.i = call zeroext i8 @smu7_get_sleep_divider_id_from_clock(i32 noundef %17, i32 noundef %85) #7
  %DeepSleepDivId.i = getelementptr %struct.SMU73_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0209, i32 3
  %86 = ptrtoint ptr %DeepSleepDivId.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %call18.i, ptr %DeepSleepDivId.i, align 1
  br label %if.end

fiji_populate_single_graphic_level.exit.thread:   ; preds = %do.end.i, %if.then2.i.fiji_populate_single_graphic_level.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvdd.i) #7
  br label %cleanup

if.end:                                           ; preds = %if.then15.i, %do.end11.i.if.end_crit_edge
  %DisplayWatermark.i = getelementptr %struct.SMU73_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0209, i32 12
  %87 = ptrtoint ptr %DisplayWatermark.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %DisplayWatermark.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvdd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0209)
  %cmp9 = icmp ugt i32 %i.0209, 1
  br i1 %cmp9, label %if.then11, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %DeepSleepDivId = getelementptr %struct.SMU73_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0209, i32 3
  %88 = ptrtoint ptr %DeepSleepDivId to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %DeepSleepDivId, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %i.0209, 1
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %1, align 4
  %cmp = icmp ult i32 %inc, %90
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %EnabledForActivity = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 26, i32 0, i32 13
  %91 = ptrtoint ptr %EnabledForActivity to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %EnabledForActivity, align 1
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %1, align 4
  %sub = add i32 %93, -1
  %DisplayWatermark = getelementptr %struct.SMU73_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %sub, i32 12
  %94 = ptrtoint ptr %DisplayWatermark to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %DisplayWatermark, align 1
  %95 = load i32, ptr %1, align 4
  %conv20 = trunc i32 %95 to i8
  %GraphicsDpmLevelCount = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 13
  %96 = ptrtoint ptr %GraphicsDpmLevelCount to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv20, ptr %GraphicsDpmLevelCount, align 8
  %call23 = call i32 @phm_get_dpm_level_enable_mask_value(ptr noundef %1) #7
  %sclk_dpm_enable_mask = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 70, i32 4
  %97 = ptrtoint ptr %sclk_dpm_enable_mask to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %call23, ptr %sclk_dpm_enable_mask, align 4
  %cmp24.not = icmp eq ptr %7, null
  br i1 %cmp24.not, label %while.cond.preheader, label %do.body

while.cond.preheader:                             ; preds = %for.end
  %pcie_dpm_enable_mask = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 70, i32 6
  %98 = ptrtoint ptr %pcie_dpm_enable_mask to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pcie_dpm_enable_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool56.not = icmp eq i32 %99, 0
  br i1 %tobool56.not, label %while.cond.preheader.while.end99_crit_edge, label %while.cond.preheader.land.rhs_crit_edge

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

while.cond.preheader.while.end99_crit_edge:       ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end99

do.body:                                          ; preds = %for.end
  %conv27 = and i32 %9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv27)
  %cmp28.not = icmp eq i32 %conv27, 0
  br i1 %cmp28.not, label %if.then30, label %do.end39

if.then30:                                        ; preds = %do.body
  %call31 = call i32 @___ratelimit(ptr noundef nonnull @fiji_populate_all_graphic_levels._rs, ptr noundef nonnull @__func__.fiji_populate_all_graphic_levels) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then30.cleanup_crit_edge, label %do.end

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.151) #11
  br label %cleanup

do.end39:                                         ; preds = %do.body
  %sub41 = add nsw i32 %conv27, -1
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp45212.not = icmp eq i32 %101, 0
  br i1 %cmp45212.not, label %do.end39.if.end132_crit_edge, label %do.end39.for.body47_crit_edge

do.end39.for.body47_crit_edge:                    ; preds = %do.end39
  br label %for.body47

do.end39.if.end132_crit_edge:                     ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

for.body47:                                       ; preds = %for.body47.for.body47_crit_edge, %do.end39.for.body47_crit_edge
  %i.1213 = phi i32 [ %inc53, %for.body47.for.body47_crit_edge ], [ 0, %do.end39.for.body47_crit_edge ]
  %102 = call i32 @llvm.umin.i32(i32 %i.1213, i32 %sub41)
  %conv50 = trunc i32 %102 to i8
  %pcieDpmLevel = getelementptr %struct.SMU73_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.1213, i32 2
  %103 = ptrtoint ptr %pcieDpmLevel to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv50, ptr %pcieDpmLevel, align 1
  %inc53 = add nuw i32 %i.1213, 1
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %1, align 4
  %cmp45 = icmp ult i32 %inc53, %105
  br i1 %cmp45, label %for.body47.for.body47_crit_edge, label %for.body47.if.end132_crit_edge

for.body47.if.end132_crit_edge:                   ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

for.body47.for.body47_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body47

land.rhs:                                         ; preds = %land.rhs.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %hightest_pcie_level_enabled.0214 = phi i8 [ %inc63, %land.rhs.land.rhs_crit_edge ], [ 0, %while.cond.preheader.land.rhs_crit_edge ]
  %conv59 = zext i8 %hightest_pcie_level_enabled.0214 to i32
  %shl = shl i32 2, %conv59
  %and = and i32 %shl, %99
  %cmp61.not = icmp eq i32 %and, 0
  %inc63 = add i8 %hightest_pcie_level_enabled.0214, 1
  br i1 %cmp61.not, label %while.end, label %land.rhs.land.rhs_crit_edge

land.rhs.land.rhs_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

while.end:                                        ; preds = %land.rhs
  br i1 %tobool56.not, label %while.end.while.end79_crit_edge, label %while.end.land.rhs68_crit_edge

while.end.land.rhs68_crit_edge:                   ; preds = %while.end
  br label %land.rhs68

while.end.while.end79_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end79

land.rhs68:                                       ; preds = %land.rhs68.land.rhs68_crit_edge, %while.end.land.rhs68_crit_edge
  %lowest_pcie_level_enabled.0220 = phi i8 [ %inc78, %land.rhs68.land.rhs68_crit_edge ], [ 0, %while.end.land.rhs68_crit_edge ]
  %conv71 = zext i8 %lowest_pcie_level_enabled.0220 to i32
  %shl72 = shl nuw i32 1, %conv71
  %and73 = and i32 %shl72, %99
  %cmp74 = icmp eq i32 %and73, 0
  %inc78 = add i8 %lowest_pcie_level_enabled.0220, 1
  br i1 %cmp74, label %land.rhs68.land.rhs68_crit_edge, label %land.rhs68.while.end79_crit_edge

land.rhs68.while.end79_crit_edge:                 ; preds = %land.rhs68
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end79

land.rhs68.land.rhs68_crit_edge:                  ; preds = %land.rhs68
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs68

while.end79:                                      ; preds = %land.rhs68.while.end79_crit_edge, %while.end.while.end79_crit_edge
  %lowest_pcie_level_enabled.0.lcssa = phi i8 [ 0, %while.end.while.end79_crit_edge ], [ %lowest_pcie_level_enabled.0220, %land.rhs68.while.end79_crit_edge ]
  %conv88 = zext i8 %lowest_pcie_level_enabled.0.lcssa to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %hightest_pcie_level_enabled.0214)
  %cmp83223.not = icmp eq i8 %hightest_pcie_level_enabled.0214, 0
  br i1 %cmp83223.not, label %while.end79.while.end99_crit_edge, label %land.rhs85.preheader

while.end79.while.end99_crit_edge:                ; preds = %while.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end99

land.rhs85.preheader:                             ; preds = %while.end79
  %106 = add i8 %hightest_pcie_level_enabled.0214, -1
  %107 = zext i8 %106 to i32
  %108 = add nuw nsw i32 %107, 1
  %wide.trip.count = zext i8 %hightest_pcie_level_enabled.0214 to i32
  br label %land.rhs85

while.cond80:                                     ; preds = %land.rhs85
  %exitcond.not = icmp eq i32 %add89, %wide.trip.count
  br i1 %exitcond.not, label %while.cond80.while.end99_crit_edge, label %while.cond80.land.rhs85_crit_edge

while.cond80.land.rhs85_crit_edge:                ; preds = %while.cond80
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs85

while.cond80.while.end99_crit_edge:               ; preds = %while.cond80
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end99

land.rhs85:                                       ; preds = %while.cond80.land.rhs85_crit_edge, %land.rhs85.preheader
  %indvars.iv = phi i32 [ 0, %land.rhs85.preheader ], [ %add89, %while.cond80.land.rhs85_crit_edge ]
  %add89 = add nuw nsw i32 %indvars.iv, 1
  %add91 = add nuw nsw i32 %add89, %conv88
  %shl92 = shl nuw i32 1, %add91
  %and93 = and i32 %shl92, %99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %cmp94 = icmp eq i32 %and93, 0
  br i1 %cmp94, label %while.cond80, label %land.rhs85.while.end99_crit_edge

land.rhs85.while.end99_crit_edge:                 ; preds = %land.rhs85
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end99

while.end99:                                      ; preds = %land.rhs85.while.end99_crit_edge, %while.cond80.while.end99_crit_edge, %while.end79.while.end99_crit_edge, %while.cond.preheader.while.end99_crit_edge
  %conv88242 = phi i32 [ %conv88, %while.end79.while.end99_crit_edge ], [ 0, %while.cond.preheader.while.end99_crit_edge ], [ %conv88, %while.cond80.while.end99_crit_edge ], [ %conv88, %land.rhs85.while.end99_crit_edge ]
  %lowest_pcie_level_enabled.0.lcssa240 = phi i8 [ %lowest_pcie_level_enabled.0.lcssa, %while.end79.while.end99_crit_edge ], [ 0, %while.cond.preheader.while.end99_crit_edge ], [ %lowest_pcie_level_enabled.0.lcssa, %while.cond80.while.end99_crit_edge ], [ %lowest_pcie_level_enabled.0.lcssa, %land.rhs85.while.end99_crit_edge ]
  %hightest_pcie_level_enabled.0.lcssa232238 = phi i8 [ 0, %while.end79.while.end99_crit_edge ], [ 0, %while.cond.preheader.while.end99_crit_edge ], [ %hightest_pcie_level_enabled.0214, %while.cond80.while.end99_crit_edge ], [ %hightest_pcie_level_enabled.0214, %land.rhs85.while.end99_crit_edge ]
  %conv82.le.pre-phi = phi i32 [ 0, %while.end79.while.end99_crit_edge ], [ 0, %while.cond.preheader.while.end99_crit_edge ], [ %wide.trip.count, %while.cond80.while.end99_crit_edge ], [ %wide.trip.count, %land.rhs85.while.end99_crit_edge ]
  %conv81.lcssa = phi i32 [ 0, %while.end79.while.end99_crit_edge ], [ 0, %while.cond.preheader.while.end99_crit_edge ], [ %indvars.iv, %land.rhs85.while.end99_crit_edge ], [ %108, %while.cond80.while.end99_crit_edge ]
  %add101 = add nsw i32 %conv81.lcssa, 1
  %add103 = add nsw i32 %add101, %conv88242
  %109 = call i32 @llvm.umin.i32(i32 %add103, i32 %conv82.le.pre-phi)
  %conv116 = trunc i32 %109 to i8
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %111)
  %cmp120228 = icmp ugt i32 %111, 2
  br i1 %cmp120228, label %while.end99.for.body122_crit_edge, label %while.end99.for.end127_crit_edge

while.end99.for.end127_crit_edge:                 ; preds = %while.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end127

while.end99.for.body122_crit_edge:                ; preds = %while.end99
  br label %for.body122

for.body122:                                      ; preds = %for.body122.for.body122_crit_edge, %while.end99.for.body122_crit_edge
  %i.2229 = phi i32 [ %inc126, %for.body122.for.body122_crit_edge ], [ 2, %while.end99.for.body122_crit_edge ]
  %pcieDpmLevel124 = getelementptr %struct.SMU73_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.2229, i32 2
  %112 = ptrtoint ptr %pcieDpmLevel124 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %hightest_pcie_level_enabled.0.lcssa232238, ptr %pcieDpmLevel124, align 1
  %inc126 = add nuw i32 %i.2229, 1
  %113 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %1, align 4
  %cmp120 = icmp ult i32 %inc126, %114
  br i1 %cmp120, label %for.body122.for.body122_crit_edge, label %for.body122.for.end127_crit_edge

for.body122.for.end127_crit_edge:                 ; preds = %for.body122
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end127

for.body122.for.body122_crit_edge:                ; preds = %for.body122
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body122

for.end127:                                       ; preds = %for.body122.for.end127_crit_edge, %while.end99.for.end127_crit_edge
  %pcieDpmLevel129 = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 26, i32 0, i32 2
  %115 = ptrtoint ptr %pcieDpmLevel129 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %lowest_pcie_level_enabled.0.lcssa240, ptr %pcieDpmLevel129, align 1
  %pcieDpmLevel131 = getelementptr %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 26, i32 1, i32 2
  %116 = ptrtoint ptr %pcieDpmLevel131 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv116, ptr %pcieDpmLevel131, align 1
  br label %if.end132

if.end132:                                        ; preds = %for.end127, %for.body47.if.end132_crit_edge, %do.end39.if.end132_crit_edge
  %call133 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add, ptr noundef %GraphicsLevel, i32 noundef 352, i32 noundef 262144) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end132, %do.end, %if.then30.cleanup_crit_edge, %fiji_populate_single_graphic_level.exit.thread
  %retval.0 = phi i32 [ %call133, %if.end132 ], [ -22, %do.end ], [ -22, %if.then30.cleanup_crit_edge ], [ %call1.i, %fiji_populate_single_graphic_level.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fiji_populate_all_memory_levels(ptr noundef %hwmgr) #0 align 64 {
entry:
  %mem_param.i.i = alloca %struct.pp_atomctrl_memory_clock_param, align 4
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
  %add = add i32 %5, 612
  %MemoryLevel = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 28
  %mclk_table = getelementptr inbounds %struct.smu7_dpm_table, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mclk_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp71.not = icmp eq i32 %7, 0
  br i1 %cmp71.not, label %entry.for.end_crit_edge, label %do.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %od_enabled.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 53
  %pptable.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %display_config.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 45
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %8 = getelementptr inbounds %struct.pp_atomctrl_memory_clock_param, ptr %mem_param.i.i, i32 0, i32 1
  br label %do.body

for.cond:                                         ; preds = %fiji_populate_single_memory_level.exit
  %inc = add nuw i32 %i.072, 1
  %9 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mclk_table, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.cond.do.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.do.body_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %for.cond.do.body_crit_edge, %do.body.lr.ph
  %i.072 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %for.cond.do.body_crit_edge ]
  %value = getelementptr %struct.smu7_dpm_table, ptr %1, i32 0, i32 1, i32 1, i32 %i.072, i32 1
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp3.not = icmp eq i32 %12, 0
  br i1 %cmp3.not, label %if.then, label %do.end9

if.then:                                          ; preds = %do.body
  %call = call i32 @___ratelimit(ptr noundef nonnull @fiji_populate_all_memory_levels._rs, ptr noundef nonnull @__func__.fiji_populate_all_memory_levels) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.153) #11
  br label %cleanup

do.end9:                                          ; preds = %do.body
  %arrayidx14 = getelementptr %struct.SMU73_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.072
  %13 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %backend, align 4
  %15 = ptrtoint ptr %od_enabled.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %od_enabled.i, align 4, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  %vdd_dependency_on_mclk.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %14, i32 0, i32 2, i32 3
  br label %if.end.i

if.else.i:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %pptable.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pptable.i, align 4
  %vdd_dep_on_mclk.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %vdd_dep_on_mclk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vdd_dep_on_mclk.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %vdd_dep_table.0.i = phi ptr [ %vdd_dependency_on_mclk.i, %if.then.i ], [ %20, %if.else.i ]
  %tobool1.not.i = icmp eq ptr %vdd_dep_table.0.i, null
  br i1 %tobool1.not.i, label %if.end.i.if.end13.i_crit_edge, label %if.then2.i

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then2.i:                                       ; preds = %if.end.i
  %MinMvdd.i = getelementptr %struct.SMU73_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.072, i32 1
  %call.i = call fastcc i32 @fiji_get_dependency_volt_by_clk(ptr noundef %hwmgr, ptr noundef nonnull %vdd_dep_table.0.i, i32 noundef %12, ptr noundef %arrayidx14, ptr noundef %MinMvdd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then2.i.if.end13.i_crit_edge, label %if.then3.i

if.then2.i.if.end13.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then3.i:                                       ; preds = %if.then2.i
  %call4.i = call i32 @___ratelimit(ptr noundef nonnull @fiji_populate_single_memory_level._rs, ptr noundef nonnull @__func__.fiji_populate_single_memory_level) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then3.i.cleanup_crit_edge, label %do.end.i

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.154) #11
  br label %cleanup

if.end13.i:                                       ; preds = %if.then2.i.if.end13.i_crit_edge, %if.end.i.if.end13.i_crit_edge
  %EnabledForThrottle.i = getelementptr %struct.SMU73_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.072, i32 5
  %21 = ptrtoint ptr %EnabledForThrottle.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %EnabledForThrottle.i, align 1
  %EnabledForActivity.i = getelementptr %struct.SMU73_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.072, i32 6
  %22 = ptrtoint ptr %EnabledForActivity.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %EnabledForActivity.i, align 1
  %mclk_up_hyst.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %14, i32 0, i32 102, i32 5
  %23 = ptrtoint ptr %mclk_up_hyst.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mclk_up_hyst.i, align 1
  %UpHyst.i = getelementptr %struct.SMU73_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.072, i32 7
  %25 = ptrtoint ptr %UpHyst.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %UpHyst.i, align 1
  %mclk_down_hyst.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %14, i32 0, i32 102, i32 6
  %26 = ptrtoint ptr %mclk_down_hyst.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mclk_down_hyst.i, align 4
  %DownHyst.i = getelementptr %struct.SMU73_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.072, i32 8
  %28 = ptrtoint ptr %DownHyst.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %DownHyst.i, align 1
  %VoltageDownHyst.i = getelementptr %struct.SMU73_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.072, i32 9
  %29 = ptrtoint ptr %VoltageDownHyst.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %VoltageDownHyst.i, align 1
  %mclk_activity.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %14, i32 0, i32 102, i32 7
  %30 = ptrtoint ptr %mclk_activity.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %mclk_activity.i, align 2
  %ActivityLevel.i = getelementptr %struct.SMU73_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.072, i32 11
  %32 = ptrtoint ptr %ActivityLevel.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %31, ptr %ActivityLevel.i, align 1
  %StutterEnable.i = getelementptr %struct.SMU73_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.072, i32 3
  %33 = ptrtoint ptr %StutterEnable.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %StutterEnable.i, align 1
  %DisplayWatermark.i = getelementptr %struct.SMU73_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.072, i32 12
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
  %num_existing_displays.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %14, i32 0, i32 68, i32 1
  %39 = ptrtoint ptr %num_existing_displays.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %num_existing_displays.i, align 4
  %40 = load ptr, ptr %display_config.i, align 4
  %vrefresh.i = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %40, i32 0, i32 12
  %41 = ptrtoint ptr %vrefresh.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vrefresh.i, align 4
  %vrefresh18.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %14, i32 0, i32 68, i32 2
  %43 = ptrtoint ptr %vrefresh18.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %vrefresh18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60001, i32 %12)
  %cmp20.i = icmp ult i32 %12, 60001
  br i1 %cmp20.i, label %land.lhs.true21.i, label %if.end13.i.if.end30.i_crit_edge

if.end13.i.if.end30.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

land.lhs.true21.i:                                ; preds = %if.end13.i
  %is_uvd_enabled.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %14, i32 0, i32 30
  %44 = ptrtoint ptr %is_uvd_enabled.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %is_uvd_enabled.i, align 4, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool22.not.i = icmp eq i8 %45, 0
  br i1 %tobool22.not.i, label %land.lhs.true23.i, label %land.lhs.true21.i.if.end30.i_crit_edge

land.lhs.true21.i.if.end30.i_crit_edge:           ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

land.lhs.true23.i:                                ; preds = %land.lhs.true21.i
  %46 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %call25.i = call i32 %51(ptr noundef %47, i32 noundef 6965) #7
  %and.i = and i32 %call25.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool27.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true23.i.if.end30.i_crit_edge, label %if.then28.i

land.lhs.true23.i.if.end30.i_crit_edge:           ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

if.then28.i:                                      ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %StutterEnable.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %StutterEnable.i, align 1
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then28.i, %land.lhs.true23.i.if.end30.i_crit_edge, %land.lhs.true21.i.if.end30.i_crit_edge, %if.end13.i.if.end30.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mem_param.i.i) #7
  %53 = call ptr @memset(ptr %mem_param.i.i, i32 255, i32 32)
  %call.i.i = call i32 @atomctrl_get_memory_pll_dividers_vi(ptr noundef %hwmgr, i32 noundef %12, ptr noundef nonnull %mem_param.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end30.i.do.end7.i.i_crit_edge, label %if.then.i.i

if.end30.i.do.end7.i.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i.i

if.then.i.i:                                      ; preds = %if.end30.i
  %call1.i.i = call i32 @___ratelimit(ptr noundef nonnull @fiji_calculate_mclk_params._rs, ptr noundef nonnull @__func__.fiji_calculate_mclk_params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.do.end7.i.i_crit_edge, label %do.end.i.i

if.then.i.i.do.end7.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.155) #11
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %do.end.i.i, %if.then.i.i.do.end7.i.i_crit_edge, %if.end30.i.do.end7.i.i_crit_edge
  %MclkFrequency.i.i = getelementptr %struct.SMU73_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.072, i32 2
  %54 = ptrtoint ptr %MclkFrequency.i.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %12, ptr %MclkFrequency.i.i, align 1
  %55 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %8, align 4
  %conv.i.i = trunc i32 %56 to i8
  %MclkDivider.i.i = getelementptr %struct.SMU73_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.072, i32 13
  %57 = ptrtoint ptr %MclkDivider.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv.i.i, ptr %MclkDivider.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10001, i32 %12)
  %cmp.i.i.i = icmp ult i32 %12, 10001
  br i1 %cmp.i.i.i, label %do.end7.i.i.fiji_populate_single_memory_level.exit_crit_edge, label %if.end.i.i.i

do.end7.i.i.fiji_populate_single_memory_level.exit_crit_edge: ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fiji_populate_single_memory_level.exit

if.end.i.i.i:                                     ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15001, i32 %12)
  %cmp1.i.i.i = icmp ult i32 %12, 15001
  br i1 %cmp1.i.i.i, label %if.end.i.i.i.fiji_populate_single_memory_level.exit_crit_edge, label %if.end3.i.i.i

if.end.i.i.i.fiji_populate_single_memory_level.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fiji_populate_single_memory_level.exit

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20001, i32 %12)
  %cmp4.i.i.i = icmp ult i32 %12, 20001
  br i1 %cmp4.i.i.i, label %if.end3.i.i.i.fiji_populate_single_memory_level.exit_crit_edge, label %if.end6.i.i.i

if.end3.i.i.i.fiji_populate_single_memory_level.exit_crit_edge: ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fiji_populate_single_memory_level.exit

if.end6.i.i.i:                                    ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 25001, i32 %12)
  %cmp7.i.i.i = icmp ult i32 %12, 25001
  br i1 %cmp7.i.i.i, label %if.end6.i.i.i.fiji_populate_single_memory_level.exit_crit_edge, label %if.end9.i.i.i

if.end6.i.i.i.fiji_populate_single_memory_level.exit_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fiji_populate_single_memory_level.exit

if.end9.i.i.i:                                    ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30001, i32 %12)
  %cmp10.i.i.i = icmp ult i32 %12, 30001
  br i1 %cmp10.i.i.i, label %if.end9.i.i.i.fiji_populate_single_memory_level.exit_crit_edge, label %if.end12.i.i.i

if.end9.i.i.i.fiji_populate_single_memory_level.exit_crit_edge: ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fiji_populate_single_memory_level.exit

if.end12.i.i.i:                                   ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 35001, i32 %12)
  %cmp13.i.i.i = icmp ult i32 %12, 35001
  br i1 %cmp13.i.i.i, label %if.end12.i.i.i.fiji_populate_single_memory_level.exit_crit_edge, label %if.end15.i.i.i

if.end12.i.i.i.fiji_populate_single_memory_level.exit_crit_edge: ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fiji_populate_single_memory_level.exit

if.end15.i.i.i:                                   ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40001, i32 %12)
  %cmp16.i.i.i = icmp ult i32 %12, 40001
  br i1 %cmp16.i.i.i, label %if.end15.i.i.i.fiji_populate_single_memory_level.exit_crit_edge, label %if.end18.i.i.i

if.end15.i.i.i.fiji_populate_single_memory_level.exit_crit_edge: ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fiji_populate_single_memory_level.exit

if.end18.i.i.i:                                   ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 45001, i32 %12)
  %cmp19.i.i.i = icmp ult i32 %12, 45001
  br i1 %cmp19.i.i.i, label %if.end18.i.i.i.fiji_populate_single_memory_level.exit_crit_edge, label %if.end21.i.i.i

if.end18.i.i.i.fiji_populate_single_memory_level.exit_crit_edge: ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fiji_populate_single_memory_level.exit

if.end21.i.i.i:                                   ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 50001, i32 %12)
  %cmp22.i.i.i = icmp ult i32 %12, 50001
  br i1 %cmp22.i.i.i, label %if.end21.i.i.i.fiji_populate_single_memory_level.exit_crit_edge, label %if.end24.i.i.i

if.end21.i.i.i.fiji_populate_single_memory_level.exit_crit_edge: ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fiji_populate_single_memory_level.exit

if.end24.i.i.i:                                   ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 55001, i32 %12)
  %cmp25.i.i.i = icmp ult i32 %12, 55001
  %.mux.i = select i1 %cmp25.i.i.i, i8 9, i8 10
  br i1 %cmp20.i, label %if.end24.i.i.i.fiji_populate_single_memory_level.exit_crit_edge, label %if.end30.i.i.i

if.end24.i.i.i.fiji_populate_single_memory_level.exit_crit_edge: ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fiji_populate_single_memory_level.exit

if.end30.i.i.i:                                   ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65001, i32 %12)
  %cmp31.i.i.i = icmp ult i32 %12, 65001
  br i1 %cmp31.i.i.i, label %if.end30.i.i.i.fiji_populate_single_memory_level.exit_crit_edge, label %if.end33.i.i.i

if.end30.i.i.i.fiji_populate_single_memory_level.exit_crit_edge: ; preds = %if.end30.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fiji_populate_single_memory_level.exit

if.end33.i.i.i:                                   ; preds = %if.end30.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 70001, i32 %12)
  %cmp34.i.i.i = icmp ult i32 %12, 70001
  br i1 %cmp34.i.i.i, label %if.end33.i.i.i.fiji_populate_single_memory_level.exit_crit_edge, label %if.end36.i.i.i

if.end33.i.i.i.fiji_populate_single_memory_level.exit_crit_edge: ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fiji_populate_single_memory_level.exit

if.end36.i.i.i:                                   ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 75001, i32 %12)
  %cmp37.i.i.i = icmp ult i32 %12, 75001
  br i1 %cmp37.i.i.i, label %if.end36.i.i.i.fiji_populate_single_memory_level.exit_crit_edge, label %if.end39.i.i.i

if.end36.i.i.i.fiji_populate_single_memory_level.exit_crit_edge: ; preds = %if.end36.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fiji_populate_single_memory_level.exit

if.end39.i.i.i:                                   ; preds = %if.end36.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 80001, i32 %12)
  %cmp40.i.i.i = icmp ult i32 %12, 80001
  %..i.i.i = select i1 %cmp40.i.i.i, i8 14, i8 15
  br label %fiji_populate_single_memory_level.exit

fiji_populate_single_memory_level.exit:           ; preds = %if.end39.i.i.i, %if.end36.i.i.i.fiji_populate_single_memory_level.exit_crit_edge, %if.end33.i.i.i.fiji_populate_single_memory_level.exit_crit_edge, %if.end30.i.i.i.fiji_populate_single_memory_level.exit_crit_edge, %if.end24.i.i.i.fiji_populate_single_memory_level.exit_crit_edge, %if.end21.i.i.i.fiji_populate_single_memory_level.exit_crit_edge, %if.end18.i.i.i.fiji_populate_single_memory_level.exit_crit_edge, %if.end15.i.i.i.fiji_populate_single_memory_level.exit_crit_edge, %if.end12.i.i.i.fiji_populate_single_memory_level.exit_crit_edge, %if.end9.i.i.i.fiji_populate_single_memory_level.exit_crit_edge, %if.end6.i.i.i.fiji_populate_single_memory_level.exit_crit_edge, %if.end3.i.i.i.fiji_populate_single_memory_level.exit_crit_edge, %if.end.i.i.i.fiji_populate_single_memory_level.exit_crit_edge, %do.end7.i.i.fiji_populate_single_memory_level.exit_crit_edge
  %retval.0.i.i.i = phi i8 [ 0, %do.end7.i.i.fiji_populate_single_memory_level.exit_crit_edge ], [ 1, %if.end.i.i.i.fiji_populate_single_memory_level.exit_crit_edge ], [ 2, %if.end3.i.i.i.fiji_populate_single_memory_level.exit_crit_edge ], [ 3, %if.end6.i.i.i.fiji_populate_single_memory_level.exit_crit_edge ], [ 4, %if.end9.i.i.i.fiji_populate_single_memory_level.exit_crit_edge ], [ 5, %if.end12.i.i.i.fiji_populate_single_memory_level.exit_crit_edge ], [ 6, %if.end15.i.i.i.fiji_populate_single_memory_level.exit_crit_edge ], [ 7, %if.end18.i.i.i.fiji_populate_single_memory_level.exit_crit_edge ], [ 8, %if.end21.i.i.i.fiji_populate_single_memory_level.exit_crit_edge ], [ %.mux.i, %if.end24.i.i.i.fiji_populate_single_memory_level.exit_crit_edge ], [ 11, %if.end30.i.i.i.fiji_populate_single_memory_level.exit_crit_edge ], [ 12, %if.end33.i.i.i.fiji_populate_single_memory_level.exit_crit_edge ], [ 13, %if.end36.i.i.i.fiji_populate_single_memory_level.exit_crit_edge ], [ %..i.i.i, %if.end39.i.i.i ]
  %FreqRange.i.i = getelementptr %struct.SMU73_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.072, i32 4
  %58 = ptrtoint ptr %FreqRange.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %retval.0.i.i.i, ptr %FreqRange.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mem_param.i.i) #7
  br i1 %cmp.i.i, label %for.cond, label %fiji_populate_single_memory_level.exit.cleanup_crit_edge

fiji_populate_single_memory_level.exit.cleanup_crit_edge: ; preds = %fiji_populate_single_memory_level.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %EnabledForActivity = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 28, i32 0, i32 6
  %59 = ptrtoint ptr %EnabledForActivity to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %EnabledForActivity, align 1
  %mclk_dpm0_activity_target = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 82
  %60 = ptrtoint ptr %mclk_dpm0_activity_target to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mclk_dpm0_activity_target, align 4
  %conv = trunc i32 %61 to i16
  %ActivityLevel = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 28, i32 0, i32 11
  %62 = ptrtoint ptr %ActivityLevel to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 %conv, ptr %ActivityLevel, align 1
  %63 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mclk_table, align 4
  %conv27 = trunc i32 %64 to i8
  %MemoryDpmLevelCount = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 14
  %65 = ptrtoint ptr %MemoryDpmLevelCount to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv27, ptr %MemoryDpmLevelCount, align 1
  %call30 = call i32 @phm_get_dpm_level_enable_mask_value(ptr noundef %mclk_table) #7
  %mclk_dpm_enable_mask = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 70, i32 5
  %66 = ptrtoint ptr %mclk_dpm_enable_mask to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call30, ptr %mclk_dpm_enable_mask, align 4
  %67 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mclk_table, align 4
  %sub = add i32 %68, -1
  %DisplayWatermark = getelementptr %struct.SMU73_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %sub, i32 12
  %69 = ptrtoint ptr %DisplayWatermark to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %DisplayWatermark, align 1
  %call34 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add, ptr noundef %MemoryLevel, i32 noundef 96, i32 noundef 262144) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %fiji_populate_single_memory_level.exit.cleanup_crit_edge, %do.end.i, %if.then3.i.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %for.end ], [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ %call.i, %do.end.i ], [ %call.i, %if.then3.i.cleanup_crit_edge ], [ %call.i.i, %fiji_populate_single_memory_level.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fiji_initialize_mc_reg_table(ptr nocapture noundef readonly %hwmgr) #0 align 64 {
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
  %write_register = getelementptr inbounds %struct.cgs_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_register, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call = tail call i32 %7(ptr noundef %1, i32 noundef 2600) #7
  tail call void %5(ptr noundef %1, i32 noundef 2715, i32 noundef %call) #7
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %write_register7 = getelementptr inbounds %struct.cgs_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write_register7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_register7, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %call13 = tail call i32 %15(ptr noundef %9, i32 noundef 2601) #7
  tail call void %13(ptr noundef %9, i32 noundef 2716, i32 noundef %call13) #7
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %write_register16 = getelementptr inbounds %struct.cgs_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %write_register16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_register16, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %call22 = tail call i32 %23(ptr noundef %17, i32 noundef 2603) #7
  tail call void %21(ptr noundef %17, i32 noundef 2718, i32 noundef %call22) #7
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %write_register25 = getelementptr inbounds %struct.cgs_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %write_register25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_register25, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  %call31 = tail call i32 %31(ptr noundef %25, i32 noundef 2608) #7
  tail call void %29(ptr noundef %25, i32 noundef 2720, i32 noundef %call31) #7
  %32 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %write_register34 = getelementptr inbounds %struct.cgs_ops, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %write_register34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_register34, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %call40 = tail call i32 %39(ptr noundef %33, i32 noundef 2605) #7
  tail call void %37(ptr noundef %33, i32 noundef 2759, i32 noundef %call40) #7
  %40 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %write_register43 = getelementptr inbounds %struct.cgs_ops, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %write_register43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_register43, align 4
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %43, align 4
  %call49 = tail call i32 %47(ptr noundef %41, i32 noundef 2606) #7
  tail call void %45(ptr noundef %41, i32 noundef 2760, i32 noundef %call49) #7
  %48 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %write_register52 = getelementptr inbounds %struct.cgs_ops, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %write_register52 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write_register52, align 4
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %51, align 4
  %call58 = tail call i32 %55(ptr noundef %49, i32 noundef 2604) #7
  tail call void %53(ptr noundef %49, i32 noundef 2771, i32 noundef %call58) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fiji_get_offsetof(i32 noundef %type, i32 noundef %member) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.166)
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %type, i32 noundef %member) #11
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
  %switch.gep = getelementptr inbounds [15 x i32], ptr @switch.table.fiji_get_offsetof, i32 0, i32 %member
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

switch.lookup22:                                  ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep23 = getelementptr inbounds [3 x i32], ptr @switch.table.fiji_get_offsetof.160, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep23 to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load24 = load i32, ptr %switch.gep23, align 4
  br label %return

return:                                           ; preds = %switch.lookup22, %switch.lookup, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %switch.load, %switch.lookup ], [ %switch.load24, %switch.lookup22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fiji_get_mac_definition(i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %value)
  %0 = icmp ult i32 %value, 8
  br i1 %0, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, i32 noundef %value) #11
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.fiji_get_mac_definition, i32 0, i32 %value
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @fiji_is_dpm_running(ptr nocapture noundef readonly %hwmgr) #0 align 64 {
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
define internal zeroext i1 @fiji_is_hw_avfs_present(ptr noundef %hwmgr) #0 align 64 {
entry:
  %efuse = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %efuse) #7
  %0 = ptrtoint ptr %efuse to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %efuse, align 4
  %not_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %1 = ptrtoint ptr %not_vf to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %not_vf, align 4, !range !338
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @atomctrl_read_efuse(ptr noundef %hwmgr, i16 noundef zeroext 1568, i16 noundef zeroext 1568, ptr noundef nonnull %efuse) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then2:                                         ; preds = %if.end
  %3 = ptrtoint ptr %efuse to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %efuse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %if.then2.if.end6_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6:                                          ; preds = %if.then2.if.end6_crit_edge, %if.end.if.end6_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end6 ], [ false, %entry.cleanup_crit_edge ], [ true, %if.then2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %efuse) #7
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fiji_update_dpm_settings(ptr noundef %hwmgr, ptr noundef readonly %profile_setting) #0 align 64 {
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
  %GraphicsLevel = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 26
  %dpm_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dpm_table_start, align 8
  %add = add i32 %5, 236
  %add3 = add i32 %5, 612
  %MemoryLevel = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 28
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
  %GraphicsDpmLevelCount = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 13
  %10 = ptrtoint ptr %GraphicsDpmLevelCount to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %GraphicsDpmLevelCount, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp11301.not = icmp eq i8 %11, 0
  br i1 %cmp11301.not, label %if.end9.for.end_crit_edge, label %for.body.lr.ph

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end9
  %sclk_activity = getelementptr inbounds %struct.profile_mode_setting, ptr %profile_setting, i32 0, i32 3
  %add21 = add i32 %5, 246
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %sclk_up_hyst = getelementptr inbounds %struct.profile_mode_setting, ptr %profile_setting, i32 0, i32 1
  %sclk_down_hyst = getelementptr inbounds %struct.profile_mode_setting, ptr %profile_setting, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0302 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ActivityLevel = getelementptr %struct.SMU73_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0302, i32 4
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
  %mul = mul nuw nsw i32 %i.0302, 44
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
  %UpHyst = getelementptr %struct.SMU73_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0302, i32 15
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
  %DownHyst = getelementptr %struct.SMU73_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0302, i32 16
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
  %DownHyst49 = getelementptr %struct.SMU73_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0302, i32 16
  %42 = ptrtoint ptr %DownHyst49 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %DownHyst49, align 1
  %mul50 = mul nuw nsw i32 %i.0302, 44
  %add51 = add i32 %mul50, %add
  %add52 = add i32 %add51, 40
  %add55 = add i32 %add51, 41
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
  %60 = load i8, ptr %GraphicsDpmLevelCount, align 8
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
  %MemoryDpmLevelCount = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 14
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
  %add104 = add i32 %5, 632
  %device107 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %mclk_up_hyst = getelementptr inbounds %struct.profile_mode_setting, ptr %profile_setting, i32 0, i32 5
  %mclk_down_hyst = getelementptr inbounds %struct.profile_mode_setting, ptr %profile_setting, i32 0, i32 6
  br label %for.body92

for.body92:                                       ; preds = %for.inc166.for.body92_crit_edge, %for.body92.lr.ph
  %i.1306 = phi i32 [ 0, %for.body92.lr.ph ], [ %inc167, %for.inc166.for.body92_crit_edge ]
  %ActivityLevel94 = getelementptr %struct.SMU73_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.1306, i32 11
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
  %UpHyst122 = getelementptr %struct.SMU73_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.1306, i32 7
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
  %DownHyst129 = getelementptr %struct.SMU73_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.1306, i32 8
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
  %DownHyst140 = getelementptr %struct.SMU73_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.1306, i32 8
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
declare dso_local i32 @smum_send_msg_to_smc_with_parameter(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_setup_pwr_virus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_copy_bytes_to_smc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fiji_program_memory_timing_parameters(ptr noundef %hwmgr) unnamed_addr #0 align 64 {
entry:
  %arb_regs = alloca %struct.SMU73_Discrete_MCArbDramTimingTable, align 1
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
  %cmp39.not = icmp eq i32 %6, 0
  br i1 %cmp39.not, label %entry.if.then19_crit_edge, label %for.cond1.preheader.lr.ph

entry.if.then19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %mclk_table = getelementptr inbounds %struct.smu7_dpm_table, ptr %1, i32 0, i32 1
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc15.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %result.043 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %result.2, %for.inc15.for.cond1.preheader_crit_edge ]
  %i.040 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc16, %for.inc15.for.cond1.preheader_crit_edge ]
  %7 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mclk_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp437.not = icmp eq i32 %8, 0
  br i1 %cmp437.not, label %for.cond1.preheader.for.inc15_crit_edge, label %for.body5.lr.ph

for.cond1.preheader.for.inc15_crit_edge:          ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc15

for.body5.lr.ph:                                  ; preds = %for.cond1.preheader
  %value = getelementptr %struct.smu7_single_dpm_table, ptr %1, i32 0, i32 1, i32 %i.040, i32 1
  br label %for.body5

for.body5:                                        ; preds = %for.inc.for.body5_crit_edge, %for.body5.lr.ph
  %j.038 = phi i32 [ 0, %for.body5.lr.ph ], [ %inc, %for.inc.for.body5_crit_edge ]
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %value12 = getelementptr %struct.smu7_dpm_table, ptr %1, i32 0, i32 1, i32 1, i32 %j.038, i32 1
  %11 = ptrtoint ptr %value12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value12, align 4
  %call.i = tail call i32 @atomctrl_set_engine_dram_timings_rv770(ptr noundef %hwmgr, i32 noundef %10, i32 noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %for.inc, label %if.then.i

if.then.i:                                        ; preds = %for.body5
  %call1.i = tail call i32 @___ratelimit(ptr noundef nonnull @fiji_populate_memory_timing_parameters._rs, ptr noundef nonnull @__func__.fiji_populate_memory_timing_parameters) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i.for.inc15_crit_edge, label %do.end.i

if.then.i.for.inc15_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc15

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #11
  br label %for.inc15

for.inc:                                          ; preds = %for.body5
  %arrayidx14 = getelementptr [8 x [4 x %struct.SMU73_Discrete_MCArbDramTimingTableEntry]], ptr %arb_regs, i32 0, i32 %i.040, i32 %j.038
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
  %and.i = lshr i32 %call19.i, 10
  %and20.i = lshr i32 %call19.i, 20
  %31 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %call9.i, ptr %arrayidx14, align 1
  %McArbDramTiming2.i = getelementptr [8 x [4 x %struct.SMU73_Discrete_MCArbDramTimingTableEntry]], ptr %arb_regs, i32 0, i32 %i.040, i32 %j.038, i32 1
  %32 = ptrtoint ptr %McArbDramTiming2.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %call14.i, ptr %McArbDramTiming2.i, align 1
  %conv.i = trunc i32 %call19.i to i8
  %McArbBurstTime.i = getelementptr [8 x [4 x %struct.SMU73_Discrete_MCArbDramTimingTableEntry]], ptr %arb_regs, i32 0, i32 %i.040, i32 %j.038, i32 2
  %33 = ptrtoint ptr %McArbBurstTime.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i, ptr %McArbBurstTime.i, align 1
  %34 = trunc i32 %and.i to i8
  %conv22.i = and i8 %34, 31
  %TRRDS.i = getelementptr [8 x [4 x %struct.SMU73_Discrete_MCArbDramTimingTableEntry]], ptr %arb_regs, i32 0, i32 %i.040, i32 %j.038, i32 3
  %35 = ptrtoint ptr %TRRDS.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv22.i, ptr %TRRDS.i, align 1
  %36 = trunc i32 %and20.i to i8
  %conv23.i = and i8 %36, 31
  %TRRDL.i = getelementptr [8 x [4 x %struct.SMU73_Discrete_MCArbDramTimingTableEntry]], ptr %arb_regs, i32 0, i32 %i.040, i32 %j.038, i32 4
  %37 = ptrtoint ptr %TRRDL.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv23.i, ptr %TRRDL.i, align 1
  %inc = add nuw i32 %j.038, 1
  %38 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mclk_table, align 4
  %cmp4 = icmp ult i32 %inc, %39
  br i1 %cmp4, label %for.inc.for.body5_crit_edge, label %for.inc.for.inc15_crit_edge

for.inc.for.inc15_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc15

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body5

for.inc15:                                        ; preds = %for.inc.for.inc15_crit_edge, %do.end.i, %if.then.i.for.inc15_crit_edge, %for.cond1.preheader.for.inc15_crit_edge
  %result.2 = phi i32 [ %call.i, %if.then.i.for.inc15_crit_edge ], [ %call.i, %do.end.i ], [ %result.043, %for.cond1.preheader.for.inc15_crit_edge ], [ 0, %for.inc.for.inc15_crit_edge ]
  %inc16 = add nuw i32 %i.040, 1
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %1, align 4
  %cmp = icmp ult i32 %inc16, %41
  br i1 %cmp, label %for.inc15.for.cond1.preheader_crit_edge, label %for.end17

for.inc15.for.cond1.preheader_crit_edge:          ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader

for.end17:                                        ; preds = %for.inc15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.2)
  %tobool18.not = icmp eq i32 %result.2, 0
  br i1 %tobool18.not, label %for.end17.if.then19_crit_edge, label %for.end17.if.end21_crit_edge

for.end17.if.end21_crit_edge:                     ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

for.end17.if.then19_crit_edge:                    ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.then19:                                        ; preds = %for.end17.if.then19_crit_edge, %entry.if.then19_crit_edge
  %arb_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 7
  %42 = ptrtoint ptr %arb_table_start to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arb_table_start, align 4
  %call20 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %43, ptr noundef nonnull %arb_regs, i32 noundef 384, i32 noundef 262144) #7
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %for.end17.if.end21_crit_edge
  %result.3 = phi i32 [ %result.2, %for.end17.if.end21_crit_edge ], [ %call20, %if.then19 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %arb_regs) #7
  ret i32 %result.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_set_engine_dram_timings_rv770(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fiji_populate_smc_acp_level(ptr noundef %hwmgr, ptr nocapture noundef %table) unnamed_addr #0 align 64 {
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
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %conv = trunc i32 %6 to i8
  %AcpLevelCount = getelementptr inbounds %struct.SMU73_Discrete_DpmTable, ptr %table, i32 0, i32 19
  %7 = ptrtoint ptr %AcpLevelCount to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %AcpLevelCount, align 1
  %AcpBootLevel = getelementptr inbounds %struct.SMU73_Discrete_DpmTable, ptr %table, i32 0, i32 40
  %8 = ptrtoint ptr %AcpBootLevel to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %AcpBootLevel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %cmp102.not = icmp eq i8 %conv, 0
  br i1 %cmp102.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %do.end44.for.body_crit_edge, %entry.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %do.end44.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %aclk = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %4, i32 0, i32 1, i32 %indvars.iv, i32 3
  %9 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %aclk, align 4
  %arrayidx7 = getelementptr %struct.SMU73_Discrete_DpmTable, ptr %table, i32 0, i32 33, i32 %indvars.iv
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %arrayidx7, align 1
  %vddc = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %4, i32 0, i32 1, i32 %indvars.iv, i32 7
  %12 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vddc, align 4
  %conv11 = zext i16 %13 to i32
  %mul = shl nuw nsw i32 %conv11, 2
  %MinVoltage = getelementptr %struct.SMU73_Discrete_DpmTable, ptr %table, i32 0, i32 33, i32 %indvars.iv, i32 1
  %14 = ptrtoint ptr %MinVoltage to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %MinVoltage, align 1
  %or = or i32 %mul, %15
  store i32 %or, ptr %MinVoltage, align 1
  %16 = load i16, ptr %vddc, align 4
  %conv19 = zext i16 %16 to i32
  %sub = shl i32 %conv19, 17
  %shl21 = add i32 %sub, -39321600
  %or26 = or i32 %or, %shl21
  %or31 = or i32 %or26, 1073741824
  store i32 %or31, ptr %MinVoltage, align 1
  %call = call i32 @atomctrl_get_dfs_pll_dividers_vi(ptr noundef %hwmgr, i32 noundef %10, ptr noundef nonnull %dividers) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp36 = icmp eq i32 %call, 0
  br i1 %cmp36, label %do.end44, label %if.then

if.then:                                          ; preds = %for.body
  %call38 = call i32 @___ratelimit(ptr noundef nonnull @fiji_populate_smc_acp_level._rs, ptr noundef nonnull @__func__.fiji_populate_smc_acp_level) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool.not = icmp eq i32 %call38, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.108) #11
  br label %cleanup

do.end44:                                         ; preds = %for.body
  %17 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dividers, align 4
  %conv45 = trunc i32 %18 to i8
  %Divider = getelementptr %struct.SMU73_Discrete_DpmTable, ptr %table, i32 0, i32 33, i32 %indvars.iv, i32 2
  %19 = ptrtoint ptr %Divider to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv45, ptr %Divider, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %20 = ptrtoint ptr %AcpLevelCount to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %AcpLevelCount, align 1
  %22 = zext i8 %21 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %22
  br i1 %cmp, label %do.end44.for.body_crit_edge, label %do.end44.cleanup_crit_edge

do.end44.cleanup_crit_edge:                       ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end44.for.body_crit_edge:                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %do.end44.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ %call, %if.then.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fiji_populate_smc_uvd_level(ptr noundef %hwmgr, ptr nocapture noundef %table) unnamed_addr #0 align 64 {
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
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %conv = trunc i32 %6 to i8
  %UvdLevelCount = getelementptr inbounds %struct.SMU73_Discrete_DpmTable, ptr %table, i32 0, i32 17
  %7 = ptrtoint ptr %UvdLevelCount to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %UvdLevelCount, align 1
  %UvdBootLevel = getelementptr inbounds %struct.SMU73_Discrete_DpmTable, ptr %table, i32 0, i32 38
  %8 = ptrtoint ptr %UvdBootLevel to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %UvdBootLevel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %cmp165.not = icmp eq i8 %conv, 0
  br i1 %cmp165.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %do.end79.for.body_crit_edge, %entry.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %do.end79.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.SMU73_Discrete_DpmTable, ptr %table, i32 0, i32 31, i32 %indvars.iv
  %MinVoltage = getelementptr %struct.SMU73_Discrete_DpmTable, ptr %table, i32 0, i32 31, i32 %indvars.iv, i32 2
  %9 = ptrtoint ptr %MinVoltage to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 0, ptr %MinVoltage, align 1
  %arrayidx7 = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %4, i32 0, i32 1, i32 %indvars.iv
  %vclk = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %4, i32 0, i32 1, i32 %indvars.iv, i32 1
  %10 = ptrtoint ptr %vclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vclk, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %arrayidx, align 1
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx7, align 4
  %DclkFrequency = getelementptr %struct.SMU73_Discrete_DpmTable, ptr %table, i32 0, i32 31, i32 %indvars.iv, i32 1
  %15 = ptrtoint ptr %DclkFrequency to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %DclkFrequency, align 1
  %vddc = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %4, i32 0, i32 1, i32 %indvars.iv, i32 7
  %16 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vddc, align 4
  %conv20 = zext i16 %17 to i32
  %mul = shl nuw nsw i32 %conv20, 2
  store i32 %mul, ptr %MinVoltage, align 1
  %18 = load i16, ptr %vddc, align 4
  %conv29 = zext i16 %18 to i32
  %sub = shl i32 %conv29, 17
  %shl31 = add i32 %sub, -39321600
  %or36 = or i32 %mul, %shl31
  %or41 = or i32 %or36, 1073741824
  store i32 %or41, ptr %MinVoltage, align 1
  %call = call i32 @atomctrl_get_dfs_pll_dividers_vi(ptr noundef %hwmgr, i32 noundef %11, ptr noundef nonnull %dividers) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp46 = icmp eq i32 %call, 0
  br i1 %cmp46, label %do.end54, label %if.then

if.then:                                          ; preds = %for.body
  %call48 = call i32 @___ratelimit(ptr noundef nonnull @fiji_populate_smc_uvd_level._rs, ptr noundef nonnull @__func__.fiji_populate_smc_uvd_level) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool.not = icmp eq i32 %call48, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end54:                                         ; preds = %for.body
  %19 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dividers, align 4
  %conv55 = trunc i32 %20 to i8
  %VclkDivider = getelementptr %struct.SMU73_Discrete_DpmTable, ptr %table, i32 0, i32 31, i32 %indvars.iv, i32 3
  %21 = ptrtoint ptr %VclkDivider to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv55, ptr %VclkDivider, align 1
  %22 = ptrtoint ptr %DclkFrequency to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %DclkFrequency, align 1
  %call63 = call i32 @atomctrl_get_dfs_pll_dividers_vi(ptr noundef %hwmgr, i32 noundef %23, ptr noundef nonnull %dividers) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp65 = icmp eq i32 %call63, 0
  br i1 %cmp65, label %do.end79, label %if.then67

if.then67:                                        ; preds = %do.end54
  %call68 = call i32 @___ratelimit(ptr noundef nonnull @fiji_populate_smc_uvd_level._rs.110, ptr noundef nonnull @__func__.fiji_populate_smc_uvd_level) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then67.cleanup_crit_edge, label %if.then67.cleanup.sink.split_crit_edge

if.then67.cleanup.sink.split_crit_edge:           ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then67.cleanup_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end79:                                         ; preds = %do.end54
  %24 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dividers, align 4
  %conv81 = trunc i32 %25 to i8
  %DclkDivider = getelementptr %struct.SMU73_Discrete_DpmTable, ptr %table, i32 0, i32 31, i32 %indvars.iv, i32 4
  %26 = ptrtoint ptr %DclkDivider to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv81, ptr %DclkDivider, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %27 = ptrtoint ptr %UvdLevelCount to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %UvdLevelCount, align 1
  %29 = zext i8 %28 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %29
  br i1 %cmp, label %do.end79.for.body_crit_edge, label %do.end79.cleanup_crit_edge

do.end79.cleanup_crit_edge:                       ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end79.for.body_crit_edge:                      ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.sink.split:                               ; preds = %if.then67.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.str.113.sink = phi ptr [ @.str.109, %if.then.cleanup.sink.split_crit_edge ], [ @.str.113, %if.then67.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %if.then.cleanup.sink.split_crit_edge ], [ %call63, %if.then67.cleanup.sink.split_crit_edge ]
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %.str.113.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end79.cleanup_crit_edge, %if.then67.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call63, %if.then67.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %do.end79.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fiji_populate_smc_boot_level(ptr nocapture noundef readonly %hwmgr, ptr noundef %table) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %GraphicsBootLevel = getelementptr inbounds %struct.SMU73_Discrete_DpmTable, ptr %table, i32 0, i32 42
  %2 = ptrtoint ptr %GraphicsBootLevel to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %GraphicsBootLevel, align 1
  %MemoryBootLevel = getelementptr inbounds %struct.SMU73_Discrete_DpmTable, ptr %table, i32 0, i32 50
  %3 = ptrtoint ptr %MemoryBootLevel to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %MemoryBootLevel, align 1
  %vbios_boot_state = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31
  %sclk_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 4
  %4 = ptrtoint ptr %sclk_bootup_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sclk_bootup_value, align 4
  %call = tail call i32 @phm_find_boot_level(ptr noundef %1, i32 noundef %5, ptr noundef %GraphicsBootLevel) #7
  %mclk_table = getelementptr inbounds %struct.smu7_dpm_table, ptr %1, i32 0, i32 1
  %mclk_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 5
  %6 = ptrtoint ptr %mclk_bootup_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mclk_bootup_value, align 4
  %call5 = tail call i32 @phm_find_boot_level(ptr noundef %mclk_table, i32 noundef %7, ptr noundef %MemoryBootLevel) #7
  %vddc_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 1
  %8 = ptrtoint ptr %vddc_bootup_value to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vddc_bootup_value, align 2
  %mul = shl i16 %9, 2
  %BootVddc = getelementptr inbounds %struct.SMU73_Discrete_DpmTable, ptr %table, i32 0, i32 105
  %10 = ptrtoint ptr %BootVddc to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %mul, ptr %BootVddc, align 1
  %vddci_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 2
  %11 = ptrtoint ptr %vddci_bootup_value to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vddci_bootup_value, align 4
  %mul10 = shl i16 %12, 2
  %BootVddci = getelementptr inbounds %struct.SMU73_Discrete_DpmTable, ptr %table, i32 0, i32 106
  %13 = ptrtoint ptr %BootVddci to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %mul10, ptr %BootVddci, align 1
  %14 = ptrtoint ptr %vbios_boot_state to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vbios_boot_state, align 4
  %mul14 = shl i16 %15, 2
  %BootMVdd = getelementptr inbounds %struct.SMU73_Discrete_DpmTable, ptr %table, i32 0, i32 52
  %16 = ptrtoint ptr %BootMVdd to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %mul14, ptr %BootMVdd, align 1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fiji_populate_smc_initailial_state(ptr nocapture noundef readonly %hwmgr) unnamed_addr #5 align 64 {
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
  %GraphicsBootLevel = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 42
  %15 = ptrtoint ptr %GraphicsBootLevel to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %level.04, ptr %GraphicsBootLevel, align 4
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
  %MemoryBootLevel = getelementptr inbounds %struct.fiji_smumgr, ptr %3, i32 0, i32 1, i32 50
  %25 = ptrtoint ptr %MemoryBootLevel to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %level.17, ptr %MemoryBootLevel, align 2
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
define internal fastcc void @fiji_populate_bapm_parameters_in_dpm_table(ptr nocapture noundef readonly %hwmgr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %power_tune_defaults = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 4
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
  %DefaultTdp = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 67
  %10 = ptrtoint ptr %DefaultTdp to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %mul, ptr %DefaultTdp, align 1
  %11 = load i16, ptr %7, align 4
  %mul5 = shl i16 %11, 7
  %TargetTdp = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 68
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
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @fiji_populate_bapm_parameters_in_dpm_table._rs, ptr noundef nonnull @__func__.fiji_populate_bapm_parameters_in_dpm_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.do.end14_crit_edge, label %do.end

if.then.do.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.114) #11
  br label %do.end14

do.end14:                                         ; preds = %do.end, %if.then.do.end14_crit_edge, %entry.do.end14_crit_edge
  %15 = ptrtoint ptr %usTargetOperatingTemp to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %usTargetOperatingTemp, align 4
  %conv16 = trunc i16 %16 to i8
  %GpuTjMax = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 103
  %17 = ptrtoint ptr %GpuTjMax to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv16, ptr %GpuTjMax, align 1
  %GpuTjHyst = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 104
  %18 = ptrtoint ptr %GpuTjHyst to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 8, ptr %GpuTjHyst, align 1
  %DTEAmbientTempBase = getelementptr inbounds %struct.fiji_pt_defaults, ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %DTEAmbientTempBase to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %DTEAmbientTempBase, align 1
  %DTEAmbientTempBase17 = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 101
  %21 = ptrtoint ptr %DTEAmbientTempBase17 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %DTEAmbientTempBase17, align 1
  %22 = load i16, ptr %usTargetOperatingTemp, align 4
  %mul20 = shl i16 %22, 8
  %TemperatureLimitEdge = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 71
  %23 = ptrtoint ptr %TemperatureLimitEdge to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %mul20, ptr %TemperatureLimitEdge, align 1
  %usTemperatureLimitHotspot = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %7, i32 0, i32 18
  %24 = ptrtoint ptr %usTemperatureLimitHotspot to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %usTemperatureLimitHotspot, align 4
  %mul23 = shl i16 %25, 8
  %TemperatureLimitHotspot = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 72
  %26 = ptrtoint ptr %TemperatureLimitHotspot to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %mul23, ptr %TemperatureLimitHotspot, align 1
  %usTemperatureLimitLiquid1 = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %7, i32 0, i32 19
  %27 = ptrtoint ptr %usTemperatureLimitLiquid1 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %usTemperatureLimitLiquid1, align 2
  %mul26 = shl i16 %28, 8
  %TemperatureLimitLiquid1 = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 73
  %29 = ptrtoint ptr %TemperatureLimitLiquid1 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %mul26, ptr %TemperatureLimitLiquid1, align 1
  %usTemperatureLimitLiquid2 = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %7, i32 0, i32 20
  %30 = ptrtoint ptr %usTemperatureLimitLiquid2 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %usTemperatureLimitLiquid2, align 4
  %mul29 = shl i16 %31, 8
  %TemperatureLimitLiquid2 = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 74
  %32 = ptrtoint ptr %TemperatureLimitLiquid2 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %mul29, ptr %TemperatureLimitLiquid2, align 1
  %usTemperatureLimitVrVddc = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %7, i32 0, i32 21
  %33 = ptrtoint ptr %usTemperatureLimitVrVddc to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %usTemperatureLimitVrVddc, align 2
  %mul32 = shl i16 %34, 8
  %TemperatureLimitVrVddc = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 75
  %35 = ptrtoint ptr %TemperatureLimitVrVddc to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %mul32, ptr %TemperatureLimitVrVddc, align 1
  %usTemperatureLimitVrMvdd = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %7, i32 0, i32 22
  %36 = ptrtoint ptr %usTemperatureLimitVrMvdd to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %usTemperatureLimitVrMvdd, align 4
  %mul35 = shl i16 %37, 8
  %TemperatureLimitVrMvdd = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 76
  %38 = ptrtoint ptr %TemperatureLimitVrMvdd to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %mul35, ptr %TemperatureLimitVrMvdd, align 1
  %usTemperatureLimitPlx = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %7, i32 0, i32 23
  %39 = ptrtoint ptr %usTemperatureLimitPlx to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %usTemperatureLimitPlx, align 2
  %mul38 = shl i16 %40, 8
  %TemperatureLimitPlx = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 77
  %41 = ptrtoint ptr %TemperatureLimitPlx to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %mul38, ptr %TemperatureLimitPlx, align 1
  %usFanGainEdge = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 29
  %42 = ptrtoint ptr %usFanGainEdge to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %usFanGainEdge, align 2
  %conv.i = zext i16 %43 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 12
  %div.i = udiv i32 %mul.i, 100
  %conv1.i = trunc i32 %div.i to i16
  %FanGainEdge = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 78
  %44 = ptrtoint ptr %FanGainEdge to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %conv1.i, ptr %FanGainEdge, align 1
  %usFanGainHotspot = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 30
  %45 = ptrtoint ptr %usFanGainHotspot to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %usFanGainHotspot, align 4
  %conv.i1 = zext i16 %46 to i32
  %mul.i2 = shl nuw nsw i32 %conv.i1, 12
  %div.i3 = udiv i32 %mul.i2, 100
  %conv1.i4 = trunc i32 %div.i3 to i16
  %FanGainHotspot = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 79
  %47 = ptrtoint ptr %FanGainHotspot to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 %conv1.i4, ptr %FanGainHotspot, align 1
  %usFanGainLiquid = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 31
  %48 = ptrtoint ptr %usFanGainLiquid to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %usFanGainLiquid, align 2
  %conv.i5 = zext i16 %49 to i32
  %mul.i6 = shl nuw nsw i32 %conv.i5, 12
  %div.i7 = udiv i32 %mul.i6, 100
  %conv1.i8 = trunc i32 %div.i7 to i16
  %FanGainLiquid = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 80
  %50 = ptrtoint ptr %FanGainLiquid to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %conv1.i8, ptr %FanGainLiquid, align 1
  %usFanGainVrVddc = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 32
  %51 = ptrtoint ptr %usFanGainVrVddc to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %usFanGainVrVddc, align 4
  %conv.i9 = zext i16 %52 to i32
  %mul.i10 = shl nuw nsw i32 %conv.i9, 12
  %div.i11 = udiv i32 %mul.i10, 100
  %conv1.i12 = trunc i32 %div.i11 to i16
  %FanGainVrVddc = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 81
  %53 = ptrtoint ptr %FanGainVrVddc to i32
  call void @__asan_storeN_noabort(i32 %53, i32 2)
  store i16 %conv1.i12, ptr %FanGainVrVddc, align 1
  %usFanGainVrMvdd = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 33
  %54 = ptrtoint ptr %usFanGainVrMvdd to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %usFanGainVrMvdd, align 2
  %conv.i13 = zext i16 %55 to i32
  %mul.i14 = shl nuw nsw i32 %conv.i13, 12
  %div.i15 = udiv i32 %mul.i14, 100
  %conv1.i16 = trunc i32 %div.i15 to i16
  %FanGainVrMvdd = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 82
  %56 = ptrtoint ptr %FanGainVrMvdd to i32
  call void @__asan_storeN_noabort(i32 %56, i32 2)
  store i16 %conv1.i16, ptr %FanGainVrMvdd, align 1
  %usFanGainPlx = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 34
  %57 = ptrtoint ptr %usFanGainPlx to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %usFanGainPlx, align 4
  %conv.i17 = zext i16 %58 to i32
  %mul.i18 = shl nuw nsw i32 %conv.i17, 12
  %div.i19 = udiv i32 %mul.i18, 100
  %conv1.i20 = trunc i32 %div.i19 to i16
  %FanGainPlx = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 83
  %59 = ptrtoint ptr %FanGainPlx to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 %conv1.i20, ptr %FanGainPlx, align 1
  %usFanGainHbm = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 35
  %60 = ptrtoint ptr %usFanGainHbm to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %usFanGainHbm, align 2
  %conv.i21 = zext i16 %61 to i32
  %mul.i22 = shl nuw nsw i32 %conv.i21, 12
  %div.i23 = udiv i32 %mul.i22, 100
  %conv1.i24 = trunc i32 %div.i23 to i16
  %FanGainHbm = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 84
  %62 = ptrtoint ptr %FanGainHbm to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 %conv1.i24, ptr %FanGainHbm, align 1
  %ucLiquid1_I2C_address = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %7, i32 0, i32 24
  %63 = ptrtoint ptr %ucLiquid1_I2C_address to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %ucLiquid1_I2C_address, align 4
  %Liquid1_I2C_address = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 85
  %65 = ptrtoint ptr %Liquid1_I2C_address to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %Liquid1_I2C_address, align 1
  %ucLiquid2_I2C_address = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %7, i32 0, i32 25
  %66 = ptrtoint ptr %ucLiquid2_I2C_address to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %ucLiquid2_I2C_address, align 1
  %Liquid2_I2C_address = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 86
  %68 = ptrtoint ptr %Liquid2_I2C_address to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %Liquid2_I2C_address, align 1
  %ucVr_I2C_address = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %7, i32 0, i32 27
  %69 = ptrtoint ptr %ucVr_I2C_address to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %ucVr_I2C_address, align 1
  %Vr_I2C_address = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 87
  %71 = ptrtoint ptr %Vr_I2C_address to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %Vr_I2C_address, align 1
  %ucPlx_I2C_address = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %7, i32 0, i32 29
  %72 = ptrtoint ptr %ucPlx_I2C_address to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %ucPlx_I2C_address, align 1
  %Plx_I2C_address = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 88
  %74 = ptrtoint ptr %Plx_I2C_address to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %Plx_I2C_address, align 1
  %ucLiquid_I2C_Line = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %7, i32 0, i32 26
  %75 = ptrtoint ptr %ucLiquid_I2C_Line to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ucLiquid_I2C_Line, align 2
  %switch.tableidx = add i8 %76, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx)
  %77 = icmp ult i8 %switch.tableidx, 8
  br i1 %77, label %switch.lookup, label %do.end14.get_scl_sda_value.exit_crit_edge

do.end14.get_scl_sda_value.exit_crit_edge:        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_scl_sda_value.exit

switch.lookup:                                    ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  %78 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.fiji_populate_bapm_parameters_in_dpm_table, i32 0, i32 %78
  %79 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %79)
  %switch.load = load i8, ptr %switch.gep, align 1
  %80 = sext i8 %switch.tableidx to i32
  %switch.gep51 = getelementptr inbounds [8 x i8], ptr @switch.table.fiji_populate_bapm_parameters_in_dpm_table.161, i32 0, i32 %80
  %81 = ptrtoint ptr %switch.gep51 to i32
  call void @__asan_load1_noabort(i32 %81)
  %switch.load52 = load i8, ptr %switch.gep51, align 1
  br label %get_scl_sda_value.exit

get_scl_sda_value.exit:                           ; preds = %switch.lookup, %do.end14.get_scl_sda_value.exit_crit_edge
  %.sink24.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %do.end14.get_scl_sda_value.exit_crit_edge ]
  %.sink.i = phi i8 [ %switch.load52, %switch.lookup ], [ 0, %do.end14.get_scl_sda_value.exit_crit_edge ]
  %Liquid_I2C_LineSCL = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 93
  %82 = ptrtoint ptr %Liquid_I2C_LineSCL to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %.sink24.i, ptr %Liquid_I2C_LineSCL, align 1
  %Liquid_I2C_LineSDA = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 94
  %83 = ptrtoint ptr %Liquid_I2C_LineSDA to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %.sink.i, ptr %Liquid_I2C_LineSDA, align 1
  %ucVr_I2C_Line = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %7, i32 0, i32 28
  %84 = ptrtoint ptr %ucVr_I2C_Line to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %ucVr_I2C_Line, align 4
  %switch.tableidx54 = add i8 %85, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx54)
  %86 = icmp ult i8 %switch.tableidx54, 8
  br i1 %86, label %switch.lookup53, label %get_scl_sda_value.exit.get_scl_sda_value.exit35_crit_edge

get_scl_sda_value.exit.get_scl_sda_value.exit35_crit_edge: ; preds = %get_scl_sda_value.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_scl_sda_value.exit35

switch.lookup53:                                  ; preds = %get_scl_sda_value.exit
  call void @__sanitizer_cov_trace_pc() #9
  %87 = sext i8 %switch.tableidx54 to i32
  %switch.gep55 = getelementptr inbounds [8 x i8], ptr @switch.table.fiji_populate_bapm_parameters_in_dpm_table.162, i32 0, i32 %87
  %88 = ptrtoint ptr %switch.gep55 to i32
  call void @__asan_load1_noabort(i32 %88)
  %switch.load56 = load i8, ptr %switch.gep55, align 1
  %89 = sext i8 %switch.tableidx54 to i32
  %switch.gep57 = getelementptr inbounds [8 x i8], ptr @switch.table.fiji_populate_bapm_parameters_in_dpm_table.163, i32 0, i32 %89
  %90 = ptrtoint ptr %switch.gep57 to i32
  call void @__asan_load1_noabort(i32 %90)
  %switch.load58 = load i8, ptr %switch.gep57, align 1
  br label %get_scl_sda_value.exit35

get_scl_sda_value.exit35:                         ; preds = %switch.lookup53, %get_scl_sda_value.exit.get_scl_sda_value.exit35_crit_edge
  %.sink24.i33 = phi i8 [ %switch.load56, %switch.lookup53 ], [ 0, %get_scl_sda_value.exit.get_scl_sda_value.exit35_crit_edge ]
  %.sink.i34 = phi i8 [ %switch.load58, %switch.lookup53 ], [ 0, %get_scl_sda_value.exit.get_scl_sda_value.exit35_crit_edge ]
  %Vr_I2C_LineSCL = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 95
  %91 = ptrtoint ptr %Vr_I2C_LineSCL to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %.sink24.i33, ptr %Vr_I2C_LineSCL, align 1
  %Vr_I2C_LineSDA = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 96
  %92 = ptrtoint ptr %Vr_I2C_LineSDA to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %.sink.i34, ptr %Vr_I2C_LineSDA, align 1
  %ucPlx_I2C_Line = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %7, i32 0, i32 30
  %93 = ptrtoint ptr %ucPlx_I2C_Line to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %ucPlx_I2C_Line, align 2
  %switch.tableidx60 = add i8 %94, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx60)
  %95 = icmp ult i8 %switch.tableidx60, 8
  br i1 %95, label %switch.lookup59, label %get_scl_sda_value.exit35.get_scl_sda_value.exit46_crit_edge

get_scl_sda_value.exit35.get_scl_sda_value.exit46_crit_edge: ; preds = %get_scl_sda_value.exit35
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_scl_sda_value.exit46

switch.lookup59:                                  ; preds = %get_scl_sda_value.exit35
  call void @__sanitizer_cov_trace_pc() #9
  %96 = sext i8 %switch.tableidx60 to i32
  %switch.gep61 = getelementptr inbounds [8 x i8], ptr @switch.table.fiji_populate_bapm_parameters_in_dpm_table.164, i32 0, i32 %96
  %97 = ptrtoint ptr %switch.gep61 to i32
  call void @__asan_load1_noabort(i32 %97)
  %switch.load62 = load i8, ptr %switch.gep61, align 1
  %98 = sext i8 %switch.tableidx60 to i32
  %switch.gep63 = getelementptr inbounds [8 x i8], ptr @switch.table.fiji_populate_bapm_parameters_in_dpm_table.165, i32 0, i32 %98
  %99 = ptrtoint ptr %switch.gep63 to i32
  call void @__asan_load1_noabort(i32 %99)
  %switch.load64 = load i8, ptr %switch.gep63, align 1
  br label %get_scl_sda_value.exit46

get_scl_sda_value.exit46:                         ; preds = %switch.lookup59, %get_scl_sda_value.exit35.get_scl_sda_value.exit46_crit_edge
  %.sink24.i44 = phi i8 [ %switch.load62, %switch.lookup59 ], [ 0, %get_scl_sda_value.exit35.get_scl_sda_value.exit46_crit_edge ]
  %.sink.i45 = phi i8 [ %switch.load64, %switch.lookup59 ], [ 0, %get_scl_sda_value.exit35.get_scl_sda_value.exit46_crit_edge ]
  %Plx_I2C_LineSCL = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 97
  %100 = ptrtoint ptr %Plx_I2C_LineSCL to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %.sink24.i44, ptr %Plx_I2C_LineSCL, align 1
  %Plx_I2C_LineSDA = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 98
  %101 = ptrtoint ptr %Plx_I2C_LineSDA to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %.sink.i45, ptr %Plx_I2C_LineSDA, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fiji_populate_clock_stretcher_data_table(ptr nocapture noundef %hwmgr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %2 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pptable, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cac_dtp_table = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %cac_dtp_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cac_dtp_table, align 4
  %usClockStretchAmount = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %usClockStretchAmount to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %usClockStretchAmount, align 2
  %conv = trunc i16 %9 to i8
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %read_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %read_ind_register to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_ind_register, align 4
  %call = tail call i32 %15(ptr noundef %11, i32 noundef 1, i32 noundef -1072692664) #7
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %read_ind_register4 = getelementptr inbounds %struct.cgs_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %read_ind_register4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_ind_register4, align 4
  %call6 = tail call i32 %21(ptr noundef %17, i32 noundef 1, i32 noundef -1072692656) #7
  %shr = lshr i32 %call, 24
  %and7 = and i32 %call6, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and7)
  %cmp = icmp eq i32 %and7, 1
  %.511 = select i1 %cmp, i32 950, i32 1500
  %.512 = select i1 %cmp, i32 1350, i32 1000
  %mul9 = mul nuw nsw i32 %shr, %.511
  %div10 = udiv i32 %mul9, 255
  %add11 = add nuw nsw i32 %div10, %.512
  call void @__sanitizer_cov_trace_const_cmp4(i32 1660, i32 %add11)
  %cmp12 = icmp ult i32 %add11, 1660
  %. = zext i1 %cmp12 to i32
  %ClockStretcherAmount = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 110
  %22 = ptrtoint ptr %ClockStretcherAmount to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %ClockStretcherAmount, align 4
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp18499.not = icmp eq i32 %24, 0
  br i1 %cmp18499.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %Sclk_CKS_masterEn0_7 = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 111
  %add32 = sub nuw nsw i32 3646, %add11
  %add51 = sub nuw nsw i32 3365, %add11
  br label %for.body

for.body:                                         ; preds = %if.end76.for.body_crit_edge, %for.body.lr.ph
  %conv17502 = phi i32 [ 0, %for.body.lr.ph ], [ %conv17, %if.end76.for.body_crit_edge ]
  %volt_offset.0501 = phi i8 [ 0, %for.body.lr.ph ], [ %volt_offset.1, %if.end76.for.body_crit_edge ]
  %i.0500 = phi i8 [ 0, %for.body.lr.ph ], [ %inc, %if.end76.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %5, i32 0, i32 1, i32 %conv17502
  %cks_enable = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %5, i32 0, i32 1, i32 %conv17502, i32 10
  %25 = ptrtoint ptr %cks_enable to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %cks_enable, align 1
  %conv20 = zext i8 %26 to i32
  %shl = shl i32 %conv20, %conv17502
  %27 = ptrtoint ptr %Sclk_CKS_masterEn0_7 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %Sclk_CKS_masterEn0_7, align 1
  %29 = trunc i32 %shl to i8
  %conv24 = or i8 %28, %29
  store i8 %conv24, ptr %Sclk_CKS_masterEn0_7, align 1
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %div28 = udiv i32 %31, 100
  %mul29 = mul i32 %div28, 14041
  %div30 = udiv i32 %mul29, 10000
  %sub = add nsw i32 %add32, %div30
  %mul33 = mul nsw i32 %sub, 1000
  %mul39 = mul i32 %div28, 13924
  %div40 = udiv i32 %mul39, 10000
  %sub41 = sub nsw i32 4026, %div40
  %div42 = udiv i32 %mul33, %sub41
  %mul48 = mul i32 %div28, 13946
  %div49 = udiv i32 %mul48, 10000
  %sub52 = add nsw i32 %add51, %div49
  %mul53 = mul nsw i32 %sub52, 1000
  %mul59 = mul i32 %div28, 11454
  %div60 = udiv i32 %mul59, 10000
  %sub61 = sub nsw i32 3664, %div60
  %div62 = udiv i32 %mul53, %sub61
  call void @__sanitizer_cov_trace_cmp4(i32 %div42, i32 %div62)
  %cmp63.not = icmp ult i32 %div42, %div62
  br i1 %cmp63.not, label %for.body.if.end76_crit_edge, label %if.then65

for.body.if.end76_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.then65:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %sub66 = sub i32 %div42, %div62
  %cks_voffset = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %5, i32 0, i32 1, i32 %conv17502, i32 11
  %32 = ptrtoint ptr %cks_voffset to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %cks_voffset, align 4
  %conv70 = zext i8 %33 to i32
  %add71 = add i32 %sub66, %conv70
  %mul72 = mul i32 %add71, 100
  %div73 = udiv i32 %mul72, 625
  %34 = trunc i32 %div73 to i8
  %conv75 = add i8 %34, 1
  br label %if.end76

if.end76:                                         ; preds = %if.then65, %for.body.if.end76_crit_edge
  %volt_offset.1 = phi i8 [ %conv75, %if.then65 ], [ %volt_offset.0501, %for.body.if.end76_crit_edge ]
  %arrayidx79 = getelementptr %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 114, i32 %conv17502
  %35 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %volt_offset.1, ptr %arrayidx79, align 1
  %inc = add i8 %i.0500, 1
  %conv17 = zext i8 %inc to i32
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %5, align 4
  %cmp18 = icmp ugt i32 %37, %conv17
  br i1 %cmp18, label %if.end76.for.body_crit_edge, label %if.end76.for.end_crit_edge

if.end76.for.end_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end76.for.body_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end76.for.end_crit_edge, %entry.for.end_crit_edge
  %38 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %write_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %write_ind_register to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_ind_register, align 4
  %read_ind_register85 = getelementptr inbounds %struct.cgs_ops, ptr %41, i32 0, i32 2
  %44 = ptrtoint ptr %read_ind_register85 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read_ind_register85, align 4
  %call87 = tail call i32 %45(ptr noundef %39, i32 noundef 1, i32 noundef -1071643828) #7
  %and88 = and i32 %call87, -2
  tail call void %43(ptr noundef %39, i32 noundef 1, i32 noundef -1071643828, i32 noundef %and88) #7
  %46 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %write_ind_register92 = getelementptr inbounds %struct.cgs_ops, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %write_ind_register92 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_ind_register92, align 4
  %read_ind_register96 = getelementptr inbounds %struct.cgs_ops, ptr %49, i32 0, i32 2
  %52 = ptrtoint ptr %read_ind_register96 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read_ind_register96, align 4
  %call98 = tail call i32 %53(ptr noundef %47, i32 noundef 1, i32 noundef -1071643828) #7
  %or100 = or i32 %call98, 2
  tail call void %51(ptr noundef %47, i32 noundef 1, i32 noundef -1071643828, i32 noundef %or100) #7
  %54 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %write_ind_register103 = getelementptr inbounds %struct.cgs_ops, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %write_ind_register103 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write_ind_register103, align 4
  %read_ind_register107 = getelementptr inbounds %struct.cgs_ops, ptr %57, i32 0, i32 2
  %60 = ptrtoint ptr %read_ind_register107 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read_ind_register107, align 4
  %call109 = tail call i32 %61(ptr noundef %55, i32 noundef 1, i32 noundef -1071643828) #7
  %or111 = or i32 %call109, 4
  tail call void %59(ptr noundef %55, i32 noundef 1, i32 noundef -1071643828, i32 noundef %or111) #7
  %62 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %device, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %write_ind_register114 = getelementptr inbounds %struct.cgs_ops, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %write_ind_register114 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write_ind_register114, align 4
  %read_ind_register118 = getelementptr inbounds %struct.cgs_ops, ptr %65, i32 0, i32 2
  %68 = ptrtoint ptr %read_ind_register118 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read_ind_register118, align 4
  %call120 = tail call i32 %69(ptr noundef %63, i32 noundef 1, i32 noundef -1071643828) #7
  %and121 = and i32 %call120, -3
  tail call void %67(ptr noundef %63, i32 noundef 1, i32 noundef -1071643828, i32 noundef %and121) #7
  %conv.mask = and i16 %9, 255
  %conv123 = zext i16 %conv.mask to i32
  %switch.tableidx = add i8 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %70 = icmp ult i8 %switch.tableidx, 5
  br i1 %70, label %switch.lookup, label %if.else143

if.else143:                                       ; preds = %for.end
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 5
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %72, -3
  store i32 %and1.i, ptr %arrayidx.i, align 4
  %call144 = tail call i32 @___ratelimit(ptr noundef nonnull @fiji_populate_clock_stretcher_data_table._rs, ptr noundef nonnull @__func__.fiji_populate_clock_stretcher_data_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool.not = icmp eq i32 %call144, 0
  br i1 %tobool.not, label %if.else143.cleanup_crit_edge, label %do.end

if.else143.cleanup_crit_edge:                     ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #9
  %call147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.115) #11
  br label %cleanup

switch.lookup:                                    ; preds = %for.end
  %73 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.fiji_populate_clock_stretcher_data_table, i32 0, i32 %73
  %74 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %74)
  %switch.load = load i32, ptr %switch.gep, align 4
  %75 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %device, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %read_ind_register155 = getelementptr inbounds %struct.cgs_ops, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %read_ind_register155 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %read_ind_register155, align 4
  %call157 = tail call i32 %80(ptr noundef %76, i32 noundef 1, i32 noundef -1071643824) #7
  %and158 = and i32 %call157, -3997817
  %arrayidx160 = getelementptr [2 x [4 x i16]], ptr @fiji_clock_stretcher_lookup_table, i32 0, i32 %switch.load
  %81 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx160, align 2
  %CKS_LOOKUPTable = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 116
  %83 = ptrtoint ptr %CKS_LOOKUPTable to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %CKS_LOOKUPTable, align 8
  %arrayidx166 = getelementptr [2 x [4 x i16]], ptr @fiji_clock_stretcher_lookup_table, i32 0, i32 %switch.load, i32 1
  %84 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx166, align 2
  %maxFreq = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 116, i32 0, i32 0, i32 1
  %86 = ptrtoint ptr %maxFreq to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %maxFreq, align 2
  %GraphicsDpmLevelCount = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 13
  %87 = ptrtoint ptr %GraphicsDpmLevelCount to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %GraphicsDpmLevelCount, align 8
  %conv173 = zext i8 %88 to i32
  %sub174 = add nsw i32 %conv173, -1
  %SclkFrequency = getelementptr %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 26, i32 %sub174, i32 1
  %89 = ptrtoint ptr %SclkFrequency to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %SclkFrequency, align 4
  %div176 = udiv i32 %90, 100
  %conv181 = zext i16 %82 to i32
  %conv182 = and i32 %div176, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv182, i32 %conv181)
  %cmp183 = icmp ugt i32 %conv182, %conv181
  %conv188 = zext i16 %85 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv182, i32 %conv188)
  %cmp190 = icmp ult i32 %conv182, %conv188
  %or.cond = select i1 %cmp183, i1 %cmp190, i1 false
  br i1 %or.cond, label %if.then192, label %switch.lookup.if.end215_crit_edge

switch.lookup.if.end215_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end215

if.then192:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx195 = getelementptr [2 x [4 x i16]], ptr @fiji_clock_stretcher_lookup_table, i32 0, i32 %switch.load, i32 3
  %91 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %arrayidx195, align 2
  %conv196 = zext i16 %92 to i32
  %shl197 = shl nuw i32 %conv196, 16
  %or198 = or i32 %shl197, %and158
  %arrayidx201 = getelementptr [2 x [4 x i16]], ptr @fiji_clock_stretcher_lookup_table, i32 0, i32 %switch.load, i32 2
  %93 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx201, align 2
  %conv202 = zext i16 %94 to i32
  %shl203 = shl i32 %conv202, 18
  %or204 = or i32 %or198, %shl203
  %arrayidx211 = getelementptr [2 x [6 x i8]], ptr @fiji_clock_stretch_amount_conversion, i32 0, i32 %conv196, i32 %conv123
  %95 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx211, align 1
  %conv212 = zext i8 %96 to i32
  %shl213 = shl nuw nsw i32 %conv212, 3
  %or214 = or i32 %or204, %shl213
  br label %if.end215

if.end215:                                        ; preds = %if.then192, %switch.lookup.if.end215_crit_edge
  %value.0 = phi i32 [ %or214, %if.then192 ], [ %and158, %switch.lookup.if.end215_crit_edge ]
  %arrayidx238 = getelementptr [2 x [4 x i16]], ptr @fiji_clock_stretcher_lookup_table, i32 0, i32 %switch.load, i32 2
  %97 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %arrayidx238, align 2
  %99 = trunc i16 %98 to i8
  %conv241 = and i8 %99, 127
  %setting = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 116, i32 0, i32 0, i32 2
  %arrayidx248 = getelementptr [2 x [4 x i16]], ptr @fiji_clock_stretcher_lookup_table, i32 0, i32 %switch.load, i32 3
  %100 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %arrayidx248, align 2
  %conv249 = trunc i16 %101 to i8
  %shl250 = shl i8 %conv249, 7
  %or257 = or i8 %shl250, %conv241
  %102 = ptrtoint ptr %setting to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %or257, ptr %setting, align 4
  %103 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %device, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %write_ind_register261 = getelementptr inbounds %struct.cgs_ops, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %write_ind_register261 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %write_ind_register261, align 4
  tail call void %108(ptr noundef %104, i32 noundef 1, i32 noundef -1071643824, i32 noundef %value.0) #7
  %ClockStretcherDataTable = getelementptr inbounds %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 115
  br label %for.body267

for.body267:                                      ; preds = %for.end342.for.body267_crit_edge, %if.end215
  %indvars.iv508 = phi i32 [ 0, %if.end215 ], [ %indvars.iv.next509, %for.end342.for.body267_crit_edge ]
  %arrayidx272 = getelementptr [2 x [4 x [4 x i32]]], ptr @fiji_clock_stretcher_ddt_table, i32 0, i32 %., i32 %indvars.iv508, i32 2
  %109 = ptrtoint ptr %arrayidx272 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx272, align 4
  %conv273 = trunc i32 %110 to i8
  %arrayidx276 = getelementptr [4 x %struct.SMU_ClockStretcherDataTableEntry], ptr %ClockStretcherDataTable, i32 0, i32 %indvars.iv508
  %111 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv273, ptr %arrayidx276, align 4
  %arrayidx281 = getelementptr [2 x [4 x [4 x i32]]], ptr @fiji_clock_stretcher_ddt_table, i32 0, i32 %., i32 %indvars.iv508, i32 3
  %112 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx281, align 4
  %conv282 = trunc i32 %113 to i8
  %maxVID = getelementptr [4 x %struct.SMU_ClockStretcherDataTableEntry], ptr %ClockStretcherDataTable, i32 0, i32 %indvars.iv508, i32 1
  %114 = ptrtoint ptr %maxVID to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv282, ptr %maxVID, align 1
  %115 = ptrtoint ptr %GraphicsDpmLevelCount to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %GraphicsDpmLevelCount, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %cmp293504.not = icmp eq i8 %116, 0
  br i1 %cmp293504.not, label %for.body267.for.end342_crit_edge, label %for.body295.lr.ph

for.body267.for.end342_crit_edge:                 ; preds = %for.body267
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end342

for.body295.lr.ph:                                ; preds = %for.body267
  %arrayidx271 = getelementptr [2 x [4 x [4 x i32]]], ptr @fiji_clock_stretcher_ddt_table, i32 0, i32 %., i32 %indvars.iv508
  %117 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx271, align 4
  %mul306 = mul i32 %118, 100
  %arrayidx317 = getelementptr [2 x [4 x [4 x i32]]], ptr @fiji_clock_stretcher_ddt_table, i32 0, i32 %., i32 %indvars.iv508, i32 1
  %setting336 = getelementptr [4 x %struct.SMU_ClockStretcherDataTableEntry], ptr %ClockStretcherDataTable, i32 0, i32 %indvars.iv508, i32 2
  br label %for.body295

for.body295:                                      ; preds = %if.end326.for.body295_crit_edge, %for.body295.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body295.lr.ph ], [ %indvars.iv.next, %if.end326.for.body295_crit_edge ]
  %SclkFrequency300 = getelementptr %struct.fiji_smumgr, ptr %1, i32 0, i32 1, i32 26, i32 %indvars.iv, i32 1
  %119 = ptrtoint ptr %SclkFrequency300 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %SclkFrequency300, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %mul306)
  %cmp307.not = icmp ult i32 %120, %mul306
  br i1 %cmp307.not, label %for.body295.if.end326_crit_edge, label %if.then309

for.body295.if.end326_crit_edge:                  ; preds = %for.body295
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end326

if.then309:                                       ; preds = %for.body295
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %arrayidx317 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx317, align 4
  %mul318 = mul i32 %122, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %mul318)
  %cmp319 = icmp ult i32 %120, %mul318
  %spec.select = select i1 %cmp319, i32 3, i32 2
  br label %if.end326

if.end326:                                        ; preds = %if.then309, %for.body295.if.end326_crit_edge
  %cks_setting.0 = phi i32 [ 0, %for.body295.if.end326_crit_edge ], [ %spec.select, %if.then309 ]
  %mul329 = shl nuw nsw i32 %indvars.iv, 1
  %shl330 = shl i32 %cks_setting.0, %mul329
  %123 = ptrtoint ptr %setting336 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %setting336, align 2
  %125 = trunc i32 %shl330 to i16
  %conv339 = or i16 %124, %125
  store i16 %conv339, ptr %setting336, align 2
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %126 = ptrtoint ptr %GraphicsDpmLevelCount to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %GraphicsDpmLevelCount, align 8
  %128 = zext i8 %127 to i32
  %cmp293 = icmp ult i32 %indvars.iv.next, %128
  br i1 %cmp293, label %if.end326.for.body295_crit_edge, label %if.end326.for.end342_crit_edge

if.end326.for.end342_crit_edge:                   ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end342

if.end326.for.body295_crit_edge:                  ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body295

for.end342:                                       ; preds = %if.end326.for.end342_crit_edge, %for.body267.for.end342_crit_edge
  %indvars.iv.next509 = add nuw nsw i32 %indvars.iv508, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next509, 4
  br i1 %exitcond.not, label %for.end357, label %for.end342.for.body267_crit_edge

for.end342.for.body267_crit_edge:                 ; preds = %for.end342
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body267

for.end357:                                       ; preds = %for.end342
  call void @__sanitizer_cov_trace_pc() #9
  %129 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %device, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %130, align 4
  %read_ind_register360 = getelementptr inbounds %struct.cgs_ops, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %read_ind_register360 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %read_ind_register360, align 4
  %call362 = tail call i32 %134(ptr noundef %130, i32 noundef 1, i32 noundef -1071643824) #7
  %and363 = and i32 %call362, -2
  %135 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %device, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %136, align 4
  %write_ind_register366 = getelementptr inbounds %struct.cgs_ops, ptr %138, i32 0, i32 3
  %139 = ptrtoint ptr %write_ind_register366 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %write_ind_register366, align 4
  tail call void %140(ptr noundef %136, i32 noundef 1, i32 noundef -1071643824, i32 noundef %and363) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end357, %do.end, %if.else143.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end357 ], [ -22, %do.end ], [ -22, %if.else143.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fiji_populate_vr_config(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef %table) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %VRConfig = getelementptr inbounds %struct.SMU73_Discrete_DpmTable, ptr %table, i32 0, i32 4
  %voltage_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %voltage_control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %voltage_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %VRConfig to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %VRConfig, align 1
  %or4 = or i32 %5, 1
  store i32 %or4, ptr %VRConfig, align 1
  br label %if.end10

do.body:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @fiji_populate_vr_config._rs, ptr noundef nonnull @__func__.fiji_populate_vr_config) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.if.end10_crit_edge, label %do.end

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.116) #11
  br label %if.end10

if.end10:                                         ; preds = %do.end, %do.body.if.end10_crit_edge, %if.then
  %vddci_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 40
  %6 = ptrtoint ptr %vddci_control to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vddci_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %switch.selectcmp = icmp eq i32 %7, 1
  %switch.select = select i1 %switch.selectcmp, i32 196608, i32 327680
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %switch.selectcmp3 = icmp eq i32 %7, 2
  %switch.select4 = select i1 %switch.selectcmp3, i32 131072, i32 %switch.select
  %8 = ptrtoint ptr %VRConfig to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %VRConfig, align 1
  %or26 = or i32 %9, %switch.select4
  store i32 %or26, ptr %VRConfig, align 1
  %mvdd_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 23
  %10 = ptrtoint ptr %mvdd_control to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mvdd_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %switch.selectcmp5 = icmp eq i32 %11, 1
  %switch.select6 = select i1 %switch.selectcmp5, i32 67108864, i32 83886080
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %switch.selectcmp7 = icmp eq i32 %11, 2
  %switch.select8 = select i1 %switch.selectcmp7, i32 33554432, i32 %switch.select6
  %12 = ptrtoint ptr %VRConfig to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %VRConfig, align 1
  %or49 = or i32 %13, %switch.select8
  store i32 %or49, ptr %VRConfig, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @atomctrl_get_pp_assign_pin(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fiji_init_arb_table_index(ptr noundef %hwmgr) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #7
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp, align 4, !annotation !339
  %arb_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %arb_table_start to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arb_table_start, align 4
  %call = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef %4, ptr noundef nonnull %tmp, i32 noundef 262144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tmp, align 4
  %and = and i32 %6, 16777215
  %or = or i32 %and, 184549376
  store i32 %or, ptr %tmp, align 4
  %7 = ptrtoint ptr %arb_table_start to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arb_table_start, align 4
  %call3 = call i32 @smu7_write_smc_sram_dword(ptr noundef %hwmgr, i32 noundef %8, i32 noundef %or, i32 noundef 262144) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fiji_populate_pm_fuses(ptr noundef %hwmgr) unnamed_addr #0 align 64 {
entry:
  %temp.i = alloca i32, align 4
  %pm_fuse_table_offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pm_fuse_table_offset) #7
  %0 = ptrtoint ptr %pm_fuse_table_offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pm_fuse_table_offset, align 4, !annotation !339
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %1 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %smu_backend, align 4
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
  %call3 = call i32 @___ratelimit(ptr noundef nonnull @fiji_populate_pm_fuses._rs, ptr noundef nonnull @__func__.fiji_populate_pm_fuses) #7
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
  %power_tune_defaults.i = getelementptr inbounds %struct.fiji_smumgr, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %power_tune_defaults.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %power_tune_defaults.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %SviLoadLineEn1.i = getelementptr inbounds %struct.fiji_smumgr, ptr %6, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %SviLoadLineEn1.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %SviLoadLineEn1.i, align 8
  %SviLoadLineVddC.i = getelementptr inbounds %struct.fiji_pt_defaults, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %SviLoadLineVddC.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %SviLoadLineVddC.i, align 1
  %SviLoadLineVddC3.i = getelementptr inbounds %struct.fiji_smumgr, ptr %6, i32 0, i32 3, i32 4
  %14 = ptrtoint ptr %SviLoadLineVddC3.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %SviLoadLineVddC3.i, align 1
  %SviLoadLineTrimVddC.i = getelementptr inbounds %struct.fiji_smumgr, ptr %6, i32 0, i32 3, i32 5
  %15 = ptrtoint ptr %SviLoadLineTrimVddC.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %SviLoadLineTrimVddC.i, align 2
  %SviLoadLineOffsetVddC.i = getelementptr inbounds %struct.fiji_smumgr, ptr %6, i32 0, i32 3, i32 6
  %16 = ptrtoint ptr %SviLoadLineOffsetVddC.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %SviLoadLineOffsetVddC.i, align 1
  %17 = load ptr, ptr %smu_backend, align 4
  %pptable.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %18 = ptrtoint ptr %pptable.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pptable.i, align 4
  %power_tune_defaults.i151 = getelementptr inbounds %struct.fiji_smumgr, ptr %17, i32 0, i32 4
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
  %TDC_VDDC_PkgLimit.i = getelementptr inbounds %struct.fiji_smumgr, ptr %17, i32 0, i32 3, i32 7
  %26 = ptrtoint ptr %TDC_VDDC_PkgLimit.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %mul.i, ptr %TDC_VDDC_PkgLimit.i, align 4
  %TDC_VDDC_ThrottleReleaseLimitPerc.i = getelementptr inbounds %struct.fiji_pt_defaults, ptr %21, i32 0, i32 2
  %27 = ptrtoint ptr %TDC_VDDC_ThrottleReleaseLimitPerc.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %TDC_VDDC_ThrottleReleaseLimitPerc.i, align 1
  %TDC_VDDC_ThrottleReleaseLimitPerc3.i = getelementptr inbounds %struct.fiji_smumgr, ptr %17, i32 0, i32 3, i32 8
  %29 = ptrtoint ptr %TDC_VDDC_ThrottleReleaseLimitPerc3.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %TDC_VDDC_ThrottleReleaseLimitPerc3.i, align 2
  %TDC_MAWt.i = getelementptr inbounds %struct.fiji_pt_defaults, ptr %21, i32 0, i32 3
  %30 = ptrtoint ptr %TDC_MAWt.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %TDC_MAWt.i, align 1
  %TDC_MAWt5.i = getelementptr inbounds %struct.fiji_smumgr, ptr %17, i32 0, i32 3, i32 9
  %32 = ptrtoint ptr %TDC_MAWt5.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %TDC_MAWt5.i, align 1
  %33 = ptrtoint ptr %pm_fuse_table_offset to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pm_fuse_table_offset, align 4
  %35 = load ptr, ptr %smu_backend, align 4
  %power_tune_defaults.i153 = getelementptr inbounds %struct.fiji_smumgr, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %power_tune_defaults.i153 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %power_tune_defaults.i153, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #7
  %38 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %temp.i, align 4, !annotation !339
  %add.i = add i32 %34, 32
  %call.i = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef %add.i, ptr noundef nonnull %temp.i, i32 noundef 262144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end58, label %do.body.i

do.body.i:                                        ; preds = %if.end10
  %call1.i = call i32 @___ratelimit(ptr noundef nonnull @fiji_populate_dw8._rs, ptr noundef nonnull @__func__.fiji_populate_dw8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body.i.do.body46_crit_edge, label %do.end.i

do.body.i.do.body46_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body46

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.150) #11
  br label %do.body46

do.body46:                                        ; preds = %do.end.i, %do.body.i.do.body46_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #7
  %call47 = call i32 @___ratelimit(ptr noundef nonnull @fiji_populate_pm_fuses._rs.126, ptr noundef nonnull @__func__.fiji_populate_pm_fuses) #7
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
  %TdcWaterfallCtl.i = getelementptr inbounds %struct.fiji_pt_defaults, ptr %37, i32 0, i32 4
  %39 = ptrtoint ptr %TdcWaterfallCtl.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %TdcWaterfallCtl.i, align 1
  %TdcWaterfallCtl8.i = getelementptr inbounds %struct.fiji_smumgr, ptr %35, i32 0, i32 3, i32 10
  %41 = ptrtoint ptr %TdcWaterfallCtl8.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %TdcWaterfallCtl8.i, align 8
  %42 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %temp.i, align 4
  %shr.i = lshr i32 %43, 16
  %conv.i = trunc i32 %shr.i to i8
  %LPMLTemperatureMin.i = getelementptr inbounds %struct.fiji_smumgr, ptr %35, i32 0, i32 3, i32 11
  %44 = ptrtoint ptr %LPMLTemperatureMin.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv.i, ptr %LPMLTemperatureMin.i, align 1
  %shr10.i = lshr i32 %43, 8
  %conv12.i = trunc i32 %shr10.i to i8
  %LPMLTemperatureMax.i = getelementptr inbounds %struct.fiji_smumgr, ptr %35, i32 0, i32 3, i32 12
  %45 = ptrtoint ptr %LPMLTemperatureMax.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv12.i, ptr %LPMLTemperatureMax.i, align 2
  %conv15.i = trunc i32 %43 to i8
  %Reserved.i = getelementptr inbounds %struct.fiji_smumgr, ptr %35, i32 0, i32 3, i32 13
  %46 = ptrtoint ptr %Reserved.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv15.i, ptr %Reserved.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #7
  %47 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %smu_backend, align 4
  %uglygep.i = getelementptr i8, ptr %48, i32 1772
  %49 = call ptr @memset(ptr %uglygep.i, i32 0, i32 16)
  %50 = load ptr, ptr %smu_backend, align 4
  %usFanOutputSensitivity.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 14
  %51 = ptrtoint ptr %usFanOutputSensitivity.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %usFanOutputSensitivity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %52)
  %53 = icmp slt i16 %52, 1
  br i1 %53, label %if.then.i, label %if.end58.fiji_populate_fuzzy_fan.exit_crit_edge

if.end58.fiji_populate_fuzzy_fan.exit_crit_edge:  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %fiji_populate_fuzzy_fan.exit

if.then.i:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %usDefaultFanOutputSensitivity.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 15
  %54 = ptrtoint ptr %usDefaultFanOutputSensitivity.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %usDefaultFanOutputSensitivity.i, align 2
  %56 = ptrtoint ptr %usFanOutputSensitivity.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %usFanOutputSensitivity.i, align 4
  br label %fiji_populate_fuzzy_fan.exit

fiji_populate_fuzzy_fan.exit:                     ; preds = %if.then.i, %if.end58.fiji_populate_fuzzy_fan.exit_crit_edge
  %57 = ptrtoint ptr %usFanOutputSensitivity.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %usFanOutputSensitivity.i, align 4
  %FuzzyFan_PwmSetDelta.i = getelementptr inbounds %struct.fiji_smumgr, ptr %50, i32 0, i32 3, i32 17
  %59 = ptrtoint ptr %FuzzyFan_PwmSetDelta.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %FuzzyFan_PwmSetDelta.i, align 8
  %60 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %smu_backend, align 4
  %uglygep.i157 = getelementptr i8, ptr %61, i32 1796
  %62 = call ptr @memset(ptr %uglygep.i157, i32 0, i32 16)
  %63 = load ptr, ptr %smu_backend, align 4
  %64 = ptrtoint ptr %pptable.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pptable.i, align 4
  %BapmVddCBaseLeakageHiSidd.i = getelementptr inbounds %struct.fiji_smumgr, ptr %63, i32 0, i32 3, i32 23
  %BapmVddCBaseLeakageLoSidd.i = getelementptr inbounds %struct.fiji_smumgr, ptr %63, i32 0, i32 3, i32 24
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
  call void @__asan_store2_noabort(i32 %74)
  store i16 %mul.i161, ptr %BapmVddCBaseLeakageHiSidd.i, align 8
  %75 = ptrtoint ptr %BapmVddCBaseLeakageLoSidd.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %mul5.i, ptr %BapmVddCBaseLeakageLoSidd.i, align 2
  %76 = ptrtoint ptr %pm_fuse_table_offset to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pm_fuse_table_offset, align 4
  %power_tune_table = getelementptr inbounds %struct.fiji_smumgr, ptr %2, i32 0, i32 3
  %call122 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %77, ptr noundef %power_tune_table, i32 noundef 176, i32 noundef 262144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %fiji_populate_fuzzy_fan.exit.cleanup_crit_edge, label %do.body125

fiji_populate_fuzzy_fan.exit.cleanup_crit_edge:   ; preds = %fiji_populate_fuzzy_fan.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body125:                                       ; preds = %fiji_populate_fuzzy_fan.exit
  %call126 = call i32 @___ratelimit(ptr noundef nonnull @fiji_populate_pm_fuses._rs.146, ptr noundef nonnull @__func__.fiji_populate_pm_fuses) #7
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
  %.str.149.sink = phi ptr [ @.str.117, %do.body.cleanup.sink.split_crit_edge ], [ @.str.129, %do.body46.cleanup.sink.split_crit_edge ], [ @.str.149, %do.body125.cleanup.sink.split_crit_edge ]
  %call133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %.str.149.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body125.cleanup_crit_edge, %fiji_populate_fuzzy_fan.exit.cleanup_crit_edge, %do.body46.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.body46.cleanup_crit_edge ], [ -22, %do.body125.cleanup_crit_edge ], [ 0, %fiji_populate_fuzzy_fan.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pm_fuse_table_offset) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fiji_setup_dpm_led_config(ptr noundef %hwmgr) unnamed_addr #0 align 64 {
entry:
  %param_led_dpm = alloca %struct.pp_atomctrl_voltage_table, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 268, ptr nonnull %param_led_dpm) #7
  %0 = call ptr @memset(ptr %param_led_dpm, i32 255, i32 268)
  %call = call i32 @atomctrl_get_voltage_table_v3(ptr noundef %hwmgr, i8 noundef zeroext 8, i8 noundef zeroext 0, ptr noundef nonnull %param_led_dpm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then:                                          ; preds = %entry
  %mask_low = getelementptr inbounds %struct.pp_atomctrl_voltage_table, ptr %param_led_dpm, i32 0, i32 1
  %1 = ptrtoint ptr %mask_low to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mask_low, align 4
  br label %for.body

for.body:                                         ; preds = %if.end5.for.body_crit_edge, %if.then
  %tmp.07 = phi i32 [ %2, %if.then ], [ %shr, %if.end5.for.body_crit_edge ]
  %j.06 = phi i32 [ 0, %if.then ], [ %j.1, %if.end5.for.body_crit_edge ]
  %i.04 = phi i32 [ 0, %if.then ], [ %inc6, %if.end5.for.body_crit_edge ]
  %mask.03 = phi i32 [ 0, %if.then ], [ %mask.1, %if.end5.for.body_crit_edge ]
  %and = and i32 %tmp.07, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end5_crit_edge, label %if.then2

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then2:                                         ; preds = %for.body
  %mul = shl i32 %j.06, 3
  %shl = shl i32 %i.04, %mul
  %or = or i32 %shl, %mask.03
  %inc = add i32 %j.06, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %cmp3 = icmp sgt i32 %inc, 2
  br i1 %cmp3, label %if.then2.if.end7_crit_edge, label %if.then2.if.end5_crit_edge

if.then2.if.end5_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end5:                                          ; preds = %if.then2.if.end5_crit_edge, %for.body.if.end5_crit_edge
  %mask.1 = phi i32 [ %or, %if.then2.if.end5_crit_edge ], [ %mask.03, %for.body.if.end5_crit_edge ]
  %j.1 = phi i32 [ %inc, %if.then2.if.end5_crit_edge ], [ %j.06, %for.body.if.end5_crit_edge ]
  %shr = lshr i32 %tmp.07, 1
  %inc6 = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc6, 32
  br i1 %exitcond.not, label %if.end5.if.end7_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end5.if.end7_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7:                                          ; preds = %if.end5.if.end7_crit_edge, %if.then2.if.end7_crit_edge
  %mask.3 = phi i32 [ %or, %if.then2.if.end7_crit_edge ], [ %mask.1, %if.end5.if.end7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask.3)
  %tobool8.not = icmp eq i32 %mask.3, 0
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 628, i32 noundef %mask.3, ptr noundef null) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge, %entry.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %param_led_dpm) #7
  ret void
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
define internal fastcc i32 @fiji_get_dependency_volt_by_clk(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef readonly %dep_table, i32 noundef %clock, ptr nocapture noundef %voltage, ptr nocapture noundef writeonly %mvdd) unnamed_addr #0 align 64 {
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
  %i.0173 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %i.0173
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %clock)
  %cmp3.not = icmp ult i32 %7, %clock
  br i1 %cmp3.not, label %for.inc, label %if.then4

if.then4:                                         ; preds = %for.body
  %vddc = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %i.0173, i32 5
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
  %vddci16 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %i.0173, i32 7
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
  %sub = add i16 %18, -300
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
  %mvdd46 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %i.0173, i32 8
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
  %inc = add nuw i32 %i.0173, 1
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
  br label %if.end96.sink.split

if.else76:                                        ; preds = %for.end
  %vddci80 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %sub59, i32 7
  %38 = ptrtoint ptr %vddci80 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vddci80, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool81.not = icmp eq i16 %39, 0
  br i1 %tobool81.not, label %if.else76.if.end96_crit_edge, label %if.then82

if.else76.if.end96_crit_edge:                     ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96

if.then82:                                        ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #9
  %vddci_voltage_table83 = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 42
  %vddc86 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %5, i32 5
  %40 = ptrtoint ptr %vddc86 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vddc86, align 2
  %sub88 = add i16 %41, -300
  %call90 = tail call zeroext i16 @phm_find_closest_vddci(ptr noundef %vddci_voltage_table83, i16 noundef zeroext %sub88) #7
  %conv91 = zext i16 %call90 to i32
  %mul92 = shl i32 %conv91, 17
  %42 = ptrtoint ptr %voltage to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %voltage, align 4
  %or94 = or i32 %mul92, %43
  br label %if.end96.sink.split

if.end96.sink.split:                              ; preds = %if.then82, %if.then69
  %or94.sink = phi i32 [ %or94, %if.then82 ], [ %or75, %if.then69 ]
  %44 = ptrtoint ptr %voltage to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or94.sink, ptr %voltage, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.end96.sink.split, %if.else76.if.end96_crit_edge
  %mvdd_control97 = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 23
  %45 = ptrtoint ptr %mvdd_control97 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mvdd_control97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp98 = icmp eq i32 %46, 0
  br i1 %cmp98, label %if.then100, label %if.else105

if.then100:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  %vbios_boot_state101 = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31
  %47 = ptrtoint ptr %vbios_boot_state101 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vbios_boot_state101, align 4
  %conv103 = zext i16 %48 to i32
  %mul104 = shl nuw nsw i32 %conv103, 2
  %49 = ptrtoint ptr %mvdd to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %mul104, ptr %mvdd, align 4
  br label %cleanup

if.else105:                                       ; preds = %if.end96
  %mvdd108 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %5, i32 8
  %50 = ptrtoint ptr %mvdd108 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %mvdd108, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool109.not = icmp eq i16 %51, 0
  br i1 %tobool109.not, label %if.else105.cleanup_crit_edge, label %if.then110

if.else105.cleanup_crit_edge:                     ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then110:                                       ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #9
  %mvdd114 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %sub59, i32 8
  %52 = ptrtoint ptr %mvdd114 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %mvdd114, align 4
  %conv115 = zext i16 %53 to i32
  %mul116 = shl nuw nsw i32 %conv115, 2
  %54 = ptrtoint ptr %mvdd to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %mul116, ptr %mvdd, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then110, %if.else105.cleanup_crit_edge, %if.then100, %if.end55, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end55 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else105.cleanup_crit_edge ], [ 0, %if.then110 ], [ 0, %if.then100 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_engine_pll_dividers_vi(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @phm_find_closest_vddci(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_dfs_pll_dividers_vi(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_find_boot_level(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_write_smc_sram_dword(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_voltage_table_v3(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @smu7_get_sleep_divider_id_from_clock(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_reference_clock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_engine_clock_spread_spectrum(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_memory_pll_dividers_vi(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_read_efuse(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 165)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 165)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !49, !50, !51, !52, !54, !55, !56, !57, !58, !60, !61, !62, !63, !64, !66, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !155, !157, !159, !160, !161, !162, !163, !165, !166, !167, !168, !169, !171, !172, !173, !174, !176, !177, !178, !179, !181, !182, !183, !184, !185, !187, !188, !189, !190, !191, !193, !194, !195, !196, !197, !199, !200, !201, !202, !203, !205, !206, !207, !208, !210, !211, !212, !213, !214, !216, !217, !218, !219, !220, !222, !224, !226, !228, !229, !230, !231, !232, !234, !235, !236, !237, !238, !240, !241, !242, !243, !245, !246, !247, !248, !250, !251, !252, !253, !255, !256, !257, !258, !260, !261, !262, !263, !265, !266, !267, !268, !270, !271, !272, !273, !275, !276, !277, !278, !280, !281, !282, !283, !284, !286, !287, !288, !289, !290, !292, !293, !294, !295, !296, !298, !299, !300, !301, !303, !304, !305, !306, !307, !309, !310, !311, !312, !313, !315, !316, !317, !318, !319, !321, !322, !323, !324, !326, !327, !328}
!llvm.module.flags = !{!329, !330, !331, !332, !333, !334, !335, !336}
!llvm.ident = !{!337}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 2645, i32 10}
!2 = !{ptr @fiji_smu_funcs, !3, !"fiji_smu_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 2644, i32 29}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 149, i32 3}
!6 = !{ptr @fiji_start_smu_in_protection_mode._rs, !5, !"_rs", i1 false, i1 false}
!7 = !{ptr @__func__.fiji_start_smu_in_protection_mode, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @fiji_start_smu_in_protection_mode._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @fiji_start_smu_in_protection_mode._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @fiji_avfs_event_mgr._rs, !14, !"_rs", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 265, i32 2}
!15 = !{ptr @__func__.fiji_avfs_event_mgr, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @fiji_avfs_event_mgr._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @fiji_avfs_event_mgr._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @fiji_avfs_event_mgr._rs.6, !20, !"_rs", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 269, i32 2}
!21 = !{ptr @fiji_avfs_event_mgr._entry.7, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @fiji_avfs_event_mgr._entry_ptr.8, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @fiji_avfs_event_mgr._rs.10, !25, !"_rs", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 273, i32 2}
!26 = !{ptr @fiji_avfs_event_mgr._entry.11, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @fiji_avfs_event_mgr._entry_ptr.12, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @fiji_setup_graphics_level_structure._rs, !30, !"_rs", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 229, i32 2}
!31 = !{ptr @__func__.fiji_setup_graphics_level_structure, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @fiji_setup_graphics_level_structure._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @fiji_setup_graphics_level_structure._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @fiji_setup_graphics_level_structure._rs.15, !36, !"_rs", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 244, i32 2}
!37 = !{ptr @fiji_setup_graphics_level_structure._entry.16, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @fiji_setup_graphics_level_structure._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @fiji_setup_graphics_level_structure._rs.19, !41, !"_rs", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 252, i32 2}
!42 = !{ptr @fiji_setup_graphics_level_structure._entry.20, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @fiji_setup_graphics_level_structure._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @avfs_graphics_level, !46, !"avfs_graphics_level", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 86, i32 50}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 207, i32 4}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @fiji_start_avfs_btc._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @fiji_start_avfs_btc._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @fiji_update_sclk_threshold._rs, !53, !"_rs", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 2287, i32 2}
!54 = !{ptr @__func__.fiji_update_sclk_threshold, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @fiji_update_sclk_threshold._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @fiji_update_sclk_threshold._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @fiji_populate_memory_timing_parameters._rs, !59, !"_rs", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 1505, i32 2}
!60 = !{ptr @__func__.fiji_populate_memory_timing_parameters, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @fiji_populate_memory_timing_parameters._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @fiji_populate_memory_timing_parameters._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!64 = distinct !{null, !65, !"_rs", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 1949, i32 3}
!66 = !{ptr @__func__.fiji_init_smc_table, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @fiji_init_smc_table._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @fiji_init_smc_table._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = distinct !{null, !65, !"<string literal>", i1 false, i1 false}
!70 = distinct !{null, !71, !"_rs", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 1956, i32 2}
!72 = !{ptr @fiji_init_smc_table._entry.29, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @fiji_init_smc_table._entry_ptr.30, !71, !"_entry_ptr", i1 false, i1 false}
!74 = distinct !{null, !71, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @fiji_init_smc_table._rs.32, !76, !"_rs", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 1960, i32 2}
!77 = !{ptr @fiji_init_smc_table._entry.33, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @fiji_init_smc_table._entry_ptr.34, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @fiji_init_smc_table._rs.36, !81, !"_rs", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 1964, i32 2}
!82 = !{ptr @fiji_init_smc_table._entry.37, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @fiji_init_smc_table._entry_ptr.38, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @fiji_init_smc_table._rs.40, !86, !"_rs", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 1968, i32 2}
!87 = !{ptr @fiji_init_smc_table._entry.41, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @fiji_init_smc_table._entry_ptr.42, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @fiji_init_smc_table._rs.44, !91, !"_rs", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 1972, i32 2}
!92 = !{ptr @fiji_init_smc_table._entry.45, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @fiji_init_smc_table._entry_ptr.46, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @fiji_init_smc_table._rs.48, !96, !"_rs", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 1976, i32 2}
!97 = !{ptr @fiji_init_smc_table._entry.49, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @fiji_init_smc_table._entry_ptr.50, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @fiji_init_smc_table._rs.52, !101, !"_rs", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 1984, i32 2}
!102 = !{ptr @fiji_init_smc_table._entry.53, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @fiji_init_smc_table._entry_ptr.54, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.55, !101, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @fiji_init_smc_table._rs.56, !106, !"_rs", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 1988, i32 2}
!107 = !{ptr @fiji_init_smc_table._entry.57, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @fiji_init_smc_table._entry_ptr.58, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.59, !106, !"<string literal>", i1 false, i1 false}
!110 = distinct !{null, !111, !"_rs", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 1992, i32 2}
!112 = !{ptr @fiji_init_smc_table._entry.61, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @fiji_init_smc_table._entry_ptr.62, !111, !"_entry_ptr", i1 false, i1 false}
!114 = distinct !{null, !111, !"<string literal>", i1 false, i1 false}
!115 = distinct !{null, !116, !"_rs", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 1996, i32 2}
!117 = !{ptr @fiji_init_smc_table._entry.65, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @fiji_init_smc_table._entry_ptr.66, !116, !"_entry_ptr", i1 false, i1 false}
!119 = distinct !{null, !116, !"<string literal>", i1 false, i1 false}
!120 = distinct !{null, !121, !"_rs", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 2000, i32 2}
!122 = !{ptr @fiji_init_smc_table._entry.69, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @fiji_init_smc_table._entry_ptr.70, !121, !"_entry_ptr", i1 false, i1 false}
!124 = distinct !{null, !121, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @fiji_init_smc_table._rs.72, !126, !"_rs", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 2006, i32 3}
!127 = !{ptr @fiji_init_smc_table._entry.73, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @fiji_init_smc_table._entry_ptr.74, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.75, !126, !"<string literal>", i1 false, i1 false}
!130 = distinct !{null, !131, !"_rs", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 2032, i32 2}
!132 = !{ptr @fiji_init_smc_table._entry.77, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @fiji_init_smc_table._entry_ptr.78, !131, !"_entry_ptr", i1 false, i1 false}
!134 = distinct !{null, !131, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @fiji_init_smc_table._rs.80, !136, !"_rs", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 2110, i32 2}
!137 = !{ptr @fiji_init_smc_table._entry.81, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @fiji_init_smc_table._entry_ptr.82, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.83, !136, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @fiji_init_smc_table._rs.84, !141, !"_rs", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 2114, i32 2}
!142 = !{ptr @fiji_init_smc_table._entry.85, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @fiji_init_smc_table._entry_ptr.86, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.87, !141, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @fiji_init_smc_table._rs.88, !146, !"_rs", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 2118, i32 2}
!147 = !{ptr @fiji_init_smc_table._entry.89, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @fiji_init_smc_table._entry_ptr.90, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.91, !146, !"<string literal>", i1 false, i1 false}
!150 = distinct !{null, !151, !"_rs", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 2122, i32 2}
!152 = !{ptr @fiji_init_smc_table._entry.93, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @fiji_init_smc_table._entry_ptr.94, !151, !"_entry_ptr", i1 false, i1 false}
!154 = distinct !{null, !151, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @fiji_power_tune_data_set_array, !156, !"fiji_power_tune_data_set_array", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 79, i32 38}
!157 = distinct !{null, !158, !"_rs", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 788, i32 2}
!159 = !{ptr @__func__.fiji_populate_smc_voltage_tables, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @fiji_populate_smc_voltage_tables._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @fiji_populate_smc_voltage_tables._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = distinct !{null, !158, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @fiji_populate_smc_acpi_level._rs, !164, !"_rs", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 1321, i32 3}
!165 = !{ptr @__func__.fiji_populate_smc_acpi_level, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @fiji_populate_smc_acpi_level._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @fiji_populate_smc_acpi_level._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.97, !164, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @fiji_populate_smc_acpi_level._rs.98, !170, !"_rs", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 1335, i32 2}
!171 = !{ptr @fiji_populate_smc_acpi_level._entry.99, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @fiji_populate_smc_acpi_level._entry_ptr.100, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.101, !170, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @fiji_populate_smc_acpi_level._rs.102, !175, !"_rs", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 1379, i32 3}
!176 = !{ptr @fiji_populate_smc_acpi_level._entry.103, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @fiji_populate_smc_acpi_level._entry_ptr.104, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.105, !175, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @fiji_populate_mvdd_value._rs, !180, !"_rs", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 1287, i32 3}
!181 = !{ptr @__func__.fiji_populate_mvdd_value, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @fiji_populate_mvdd_value._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @fiji_populate_mvdd_value._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.106, !180, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @fiji_populate_smc_vce_level._rs, !186, !"_rs", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 1445, i32 3}
!187 = !{ptr @__func__.fiji_populate_smc_vce_level, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @fiji_populate_smc_vce_level._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @fiji_populate_smc_vce_level._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.107, !186, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @fiji_populate_smc_acp_level._rs, !192, !"_rs", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 1482, i32 3}
!193 = !{ptr @__func__.fiji_populate_smc_acp_level, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @fiji_populate_smc_acp_level._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @fiji_populate_smc_acp_level._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.108, !192, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @fiji_populate_smc_uvd_level._rs, !198, !"_rs", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 1580, i32 3}
!199 = !{ptr @__func__.fiji_populate_smc_uvd_level, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @fiji_populate_smc_uvd_level._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @fiji_populate_smc_uvd_level._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.109, !198, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @fiji_populate_smc_uvd_level._rs.110, !204, !"_rs", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 1587, i32 3}
!205 = !{ptr @fiji_populate_smc_uvd_level._entry.111, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @fiji_populate_smc_uvd_level._entry_ptr.112, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.113, !204, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @fiji_populate_bapm_parameters_in_dpm_table._rs, !209, !"_rs", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 507, i32 2}
!210 = !{ptr @__func__.fiji_populate_bapm_parameters_in_dpm_table, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @fiji_populate_bapm_parameters_in_dpm_table._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @fiji_populate_bapm_parameters_in_dpm_table._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.114, !209, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @fiji_populate_clock_stretcher_data_table._rs, !215, !"_rs", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 1732, i32 3}
!216 = !{ptr @__func__.fiji_populate_clock_stretcher_data_table, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @fiji_populate_clock_stretcher_data_table._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @fiji_populate_clock_stretcher_data_table._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.115, !215, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @fiji_clock_stretcher_lookup_table, !221, !"fiji_clock_stretcher_lookup_table", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 63, i32 23}
!222 = !{ptr @fiji_clock_stretch_amount_conversion, !223, !"fiji_clock_stretch_amount_conversion", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 76, i32 22}
!224 = !{ptr @fiji_clock_stretcher_ddt_table, !225, !"fiji_clock_stretcher_ddt_table", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 69, i32 23}
!226 = !{ptr @fiji_populate_vr_config._rs, !227, !"_rs", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 1831, i32 3}
!228 = !{ptr @__func__.fiji_populate_vr_config, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @fiji_populate_vr_config._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @fiji_populate_vr_config._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.116, !227, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @fiji_populate_pm_fuses._rs, !233, !"_rs", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 700, i32 4}
!234 = !{ptr @__func__.fiji_populate_pm_fuses, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @fiji_populate_pm_fuses._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @fiji_populate_pm_fuses._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.117, !233, !"<string literal>", i1 false, i1 false}
!238 = distinct !{null, !239, !"_rs", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 706, i32 4}
!240 = !{ptr @fiji_populate_pm_fuses._entry.119, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @fiji_populate_pm_fuses._entry_ptr.120, !239, !"_entry_ptr", i1 false, i1 false}
!242 = distinct !{null, !239, !"<string literal>", i1 false, i1 false}
!243 = distinct !{null, !244, !"_rs", i1 false, i1 false}
!244 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 711, i32 4}
!245 = !{ptr @fiji_populate_pm_fuses._entry.123, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @fiji_populate_pm_fuses._entry_ptr.124, !244, !"_entry_ptr", i1 false, i1 false}
!247 = distinct !{null, !244, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @fiji_populate_pm_fuses._rs.126, !249, !"_rs", i1 false, i1 false}
!249 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 715, i32 4}
!250 = !{ptr @fiji_populate_pm_fuses._entry.127, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @fiji_populate_pm_fuses._entry_ptr.128, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.129, !249, !"<string literal>", i1 false, i1 false}
!253 = distinct !{null, !254, !"_rs", i1 false, i1 false}
!254 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 722, i32 4}
!255 = !{ptr @fiji_populate_pm_fuses._entry.131, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @fiji_populate_pm_fuses._entry_ptr.132, !254, !"_entry_ptr", i1 false, i1 false}
!257 = distinct !{null, !254, !"<string literal>", i1 false, i1 false}
!258 = distinct !{null, !259, !"_rs", i1 false, i1 false}
!259 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 728, i32 4}
!260 = !{ptr @fiji_populate_pm_fuses._entry.135, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @fiji_populate_pm_fuses._entry_ptr.136, !259, !"_entry_ptr", i1 false, i1 false}
!262 = distinct !{null, !259, !"<string literal>", i1 false, i1 false}
!263 = distinct !{null, !264, !"_rs", i1 false, i1 false}
!264 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 734, i32 4}
!265 = !{ptr @fiji_populate_pm_fuses._entry.139, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @fiji_populate_pm_fuses._entry_ptr.140, !264, !"_entry_ptr", i1 false, i1 false}
!267 = distinct !{null, !264, !"<string literal>", i1 false, i1 false}
!268 = distinct !{null, !269, !"_rs", i1 false, i1 false}
!269 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 740, i32 4}
!270 = !{ptr @fiji_populate_pm_fuses._entry.143, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @fiji_populate_pm_fuses._entry_ptr.144, !269, !"_entry_ptr", i1 false, i1 false}
!272 = distinct !{null, !269, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @fiji_populate_pm_fuses._rs.146, !274, !"_rs", i1 false, i1 false}
!274 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 747, i32 4}
!275 = !{ptr @fiji_populate_pm_fuses._entry.147, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @fiji_populate_pm_fuses._entry_ptr.148, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.149, !274, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @fiji_populate_dw8._rs, !279, !"_rs", i1 false, i1 false}
!279 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 613, i32 3}
!280 = !{ptr @__func__.fiji_populate_dw8, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @fiji_populate_dw8._entry, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @fiji_populate_dw8._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.150, !279, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @fiji_populate_all_graphic_levels._rs, !285, !"_rs", i1 false, i1 false}
!285 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 1047, i32 3}
!286 = !{ptr @__func__.fiji_populate_all_graphic_levels, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @fiji_populate_all_graphic_levels._entry, !285, !"_entry", i1 false, i1 false}
!288 = !{ptr @fiji_populate_all_graphic_levels._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.151, !285, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @fiji_populate_single_graphic_level._rs, !291, !"_rs", i1 false, i1 false}
!291 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 958, i32 2}
!292 = !{ptr @__func__.fiji_populate_single_graphic_level, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @fiji_populate_single_graphic_level._entry, !291, !"_entry", i1 false, i1 false}
!294 = !{ptr @fiji_populate_single_graphic_level._entry_ptr, !291, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.152, !291, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @fiji_calculate_sclk_params._rs, !297, !"_rs", i1 false, i1 false}
!297 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 873, i32 2}
!298 = !{ptr @__func__.fiji_calculate_sclk_params, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @fiji_calculate_sclk_params._entry, !297, !"_entry", i1 false, i1 false}
!300 = !{ptr @fiji_calculate_sclk_params._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @fiji_populate_all_memory_levels._rs, !302, !"_rs", i1 false, i1 false}
!302 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 1235, i32 3}
!303 = !{ptr @__func__.fiji_populate_all_memory_levels, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @fiji_populate_all_memory_levels._entry, !302, !"_entry", i1 false, i1 false}
!305 = !{ptr @fiji_populate_all_memory_levels._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.153, !302, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @fiji_populate_single_memory_level._rs, !308, !"_rs", i1 false, i1 false}
!308 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 1180, i32 3}
!309 = !{ptr @__func__.fiji_populate_single_memory_level, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @fiji_populate_single_memory_level._entry, !308, !"_entry", i1 false, i1 false}
!311 = !{ptr @fiji_populate_single_memory_level._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.154, !308, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @fiji_calculate_mclk_params._rs, !314, !"_rs", i1 false, i1 false}
!314 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 1149, i32 2}
!315 = !{ptr @__func__.fiji_calculate_mclk_params, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @fiji_calculate_mclk_params._entry, !314, !"_entry", i1 false, i1 false}
!317 = !{ptr @fiji_calculate_mclk_params._entry_ptr, !314, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.155, !314, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @.str.156, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 2335, i32 2}
!321 = !{ptr @.str.157, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @fiji_get_offsetof._entry, !320, !"_entry", i1 false, i1 false}
!323 = !{ptr @fiji_get_offsetof._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.158, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/fiji_smumgr.c", i32 2360, i32 2}
!326 = !{ptr @.str.159, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @fiji_get_mac_definition._entry, !325, !"_entry", i1 false, i1 false}
!328 = !{ptr @fiji_get_mac_definition._entry_ptr, !325, !"_entry_ptr", i1 false, i1 false}
!329 = !{i32 1, !"wchar_size", i32 2}
!330 = !{i32 1, !"min_enum_size", i32 4}
!331 = !{i32 8, !"branch-target-enforcement", i32 0}
!332 = !{i32 8, !"sign-return-address", i32 0}
!333 = !{i32 8, !"sign-return-address-all", i32 0}
!334 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!335 = !{i32 7, !"uwtable", i32 1}
!336 = !{i32 7, !"frame-pointer", i32 2}
!337 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!338 = !{i8 0, i8 2}
!339 = !{!"auto-init"}
!340 = !{i64 1207877, i64 1207904}
!341 = !{i64 1208387, i64 1208414, i64 1208448, i64 1208469}
