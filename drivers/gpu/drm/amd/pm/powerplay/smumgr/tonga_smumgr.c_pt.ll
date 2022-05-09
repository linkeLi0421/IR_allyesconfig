; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/smumgr/tonga_smumgr.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pp_smumgr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tonga_pt_defaults = type { i8, i8, i8, i8, i8, i8, i32, i32, [15 x i16], [15 x i16] }
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
%struct.tonga_smumgr = type { %struct.smu7_smumgr, %struct.SMU72_Discrete_DpmTable, %struct.SMU72_Discrete_Ulv, %struct.SMU72_Discrete_PmFuses, ptr, %struct.SMU72_Discrete_MCRegisters, %struct.tonga_mc_reg_table }
%struct.SMU72_Discrete_DpmTable = type { %struct.SMU72_PIDController, %struct.SMU72_PIDController, %struct.SMU72_PIDController, i32, i32, i32, i32, %struct.SMIO_Table, %struct.SMIO_Table, i32, i32, i32, i32, [16 x i16], [16 x i16], [8 x i16], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i32], [8 x %struct.SMU72_Discrete_GraphicsLevel], %struct.SMU72_Discrete_MemoryLevel, [4 x %struct.SMU72_Discrete_MemoryLevel], [8 x %struct.SMU72_Discrete_LinkLevel], %struct.SMU72_Discrete_ACPILevel, [8 x %struct.SMU72_Discrete_UvdLevel], [8 x %struct.SMU72_Discrete_ExtClkLevel], [8 x %struct.SMU72_Discrete_ExtClkLevel], [8 x %struct.SMU72_Discrete_ExtClkLevel], %struct.SMU72_Discrete_Ulv, i32, [32 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i16, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, [5 x [3 x [1 x i16]]], [5 x [3 x [1 x i16]]], i8, i8, i8, i8, %struct.SMU_VoltageLevel, i32, i32, i32, i8, i8, i8, [1 x i8], [8 x i8], %struct.SMU_ClockStretcherDataTable, %struct.SMU_CKS_LOOKUPTable }
%struct.SMU72_PIDController = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SMIO_Table = type { [4 x %struct.SMIO_Pattern] }
%struct.SMIO_Pattern = type { i16, i8, i8 }
%struct.SMU72_Discrete_GraphicsLevel = type { %struct.SMU_VoltageLevel, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.SMU72_Discrete_MemoryLevel = type { %struct.SMU_VoltageLevel, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SMU72_Discrete_LinkLevel = type { i8, i8, i8, i8, i32, i32, i32 }
%struct.SMU72_Discrete_ACPILevel = type { i32, %struct.SMU_VoltageLevel, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SMU72_Discrete_UvdLevel = type { i32, i32, %struct.SMU_VoltageLevel, i8, i8, [2 x i8] }
%struct.SMU72_Discrete_ExtClkLevel = type { i32, %struct.SMU_VoltageLevel, i8, [3 x i8] }
%struct.SMU_VoltageLevel = type { i8, i8, i8, i8 }
%struct.SMU_ClockStretcherDataTable = type { [4 x %struct.SMU_ClockStretcherDataTableEntry] }
%struct.SMU_ClockStretcherDataTableEntry = type { i8, i8, i16 }
%struct.SMU_CKS_LOOKUPTable = type { [4 x %struct.SMU_CKS_LOOKUPTableEntry] }
%struct.SMU_CKS_LOOKUPTableEntry = type { i16, i16, i8, [3 x i8] }
%struct.SMU72_Discrete_Ulv = type { i32, i32, i16, i8, i8, i32 }
%struct.SMU72_Discrete_PmFuses = type { i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, [16 x i8], i16, i16, i16, i16, [16 x i8], i8, i8, [2 x i8], i16, i16 }
%struct.SMU72_Discrete_MCRegisters = type { i8, [3 x i8], [16 x %struct.SMU72_Discrete_MCRegisterAddress], [4 x %struct.SMU72_Discrete_MCRegisterSet] }
%struct.SMU72_Discrete_MCRegisterAddress = type { i16, i16 }
%struct.SMU72_Discrete_MCRegisterSet = type { [16 x i32] }
%struct.tonga_mc_reg_table = type { i8, i8, i16, [16 x %struct.tonga_mc_reg_entry], [16 x %struct.SMU72_Discrete_MCRegisterAddress] }
%struct.tonga_mc_reg_entry = type { i32, [16 x i32] }
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
%struct.SMU72_Discrete_FanTable = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i8, i8 }
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
%struct.phm_ppt_v1_mm_clock_voltage_dependency_table = type { i32, [0 x %struct.phm_ppt_v1_mm_clock_voltage_dependency_record] }
%struct.phm_ppt_v1_mm_clock_voltage_dependency_record = type { i32, i32, i32, i32, i32, i8, i16, i16, i16, i8 }
%struct.phm_cac_tdp_table = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8 }
%struct.pp_atomctrl_internal_ss_info = type { i32, i32, i32 }
%struct.pp_atomctrl_memory_clock_param = type { %union.pp_atomctrl_s_mpll_fb_divider, i32, i32, i32, i32, i32, i32, i32 }
%union.pp_atomctrl_s_mpll_fb_divider = type { %struct.anon.116 }
%struct.anon.116 = type { i32 }
%struct.pp_atomctrl_mc_reg_table = type { i8, i8, [20 x %struct.pp_atomctrl_mc_reg_entry], [32 x %struct.pp_atomctrl_mc_register_address] }
%struct.pp_atomctrl_mc_reg_entry = type { i32, [32 x i32] }
%struct.pp_atomctrl_mc_register_address = type { i16, i8 }
%struct.SMU72_Discrete_MCArbDramTimingTable = type { [8 x [4 x %struct.SMU72_Discrete_MCArbDramTimingTableEntry]] }
%struct.SMU72_Discrete_MCArbDramTimingTableEntry = type { i32, i32, i8, [3 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.90, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.90 = type { ptr }
%struct.phm_ppt_v1_clock_voltage_dependency_table = type { i32, [0 x %struct.phm_ppt_v1_clock_voltage_dependency_record] }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tonga_smu\00", [22 x i8] zeroinitializer }, align 32
@tonga_smu_funcs = dso_local constant { %struct.pp_smumgr_func, [48 x i8] } { %struct.pp_smumgr_func { ptr @.str, ptr @tonga_smu_init, ptr @smu7_smu_fini, ptr @tonga_start_smu, ptr @smu7_check_fw_load_finish, ptr @smu7_request_smu_load_fw, ptr null, ptr @smu7_get_argument, ptr @smu7_send_msg_to_smc, ptr @smu7_send_msg_to_smc_with_parameter, ptr null, ptr null, ptr @tonga_update_smc_table, ptr @tonga_process_firmware_header, ptr @tonga_update_sclk_threshold, ptr @tonga_thermal_setup_fan_table, ptr null, ptr @tonga_init_smc_table, ptr @tonga_populate_all_graphic_levels, ptr @tonga_populate_all_memory_levels, ptr @tonga_initialize_mc_reg_table, ptr @tonga_get_offsetof, ptr @tonga_get_mac_definition, ptr @tonga_is_dpm_running, ptr null, ptr @tonga_update_dpm_settings, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tonga_start_in_protection_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013amdgpu: SMU Firmware start failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tonga_start_in_protection_mode\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c\00", [63 x i8] zeroinitializer }, align 32
@tonga_start_in_protection_mode._entry_ptr = internal global ptr @tonga_start_in_protection_mode._entry, section ".printk_index", align 4
@tonga_update_sclk_threshold._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.tonga_update_sclk_threshold = private unnamed_addr constant [28 x i8] c"tonga_update_sclk_threshold\00", align 1
@tonga_update_sclk_threshold._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_update_sclk_threshold, ptr @.str.3, i32 2594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\014amdgpu: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@tonga_update_sclk_threshold._entry_ptr = internal global ptr @tonga_update_sclk_threshold._entry, section ".printk_index", align 4
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to upload MC reg table !\00", [32 x i8] zeroinitializer }, align 32
@tonga_update_sclk_threshold._rs.7 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tonga_update_sclk_threshold._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_update_sclk_threshold, ptr @.str.3, i32 2599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_update_sclk_threshold._entry_ptr.9 = internal global ptr @tonga_update_sclk_threshold._entry.8, section ".printk_index", align 4
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to program memory timing parameters !\00", [51 x i8] zeroinitializer }, align 32
@tonga_populate_memory_timing_parameters._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tonga_populate_memory_timing_parameters = private unnamed_addr constant [40 x i8] c"tonga_populate_memory_timing_parameters\00", align 1
@tonga_populate_memory_timing_parameters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_memory_timing_parameters, ptr @.str.3, i32 1473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_memory_timing_parameters._entry_ptr = internal global ptr @tonga_populate_memory_timing_parameters._entry, section ".printk_index", align 4
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error calling VBIOS to set DRAM_TIMING.\00", [56 x i8] zeroinitializer }, align 32
@__func__.tonga_init_smc_table = private unnamed_addr constant [21 x i8] c"tonga_init_smc_table\00", align 1
@tonga_init_smc_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_init_smc_table, ptr @.str.3, i32 2262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry_ptr = internal global ptr @tonga_init_smc_table._entry, section ".printk_index", align 4
@tonga_init_smc_table._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_init_smc_table, ptr @.str.3, i32 2270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry_ptr.15 = internal global ptr @tonga_init_smc_table._entry.14, section ".printk_index", align 4
@tonga_init_smc_table._rs.17 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_init_smc_table, ptr @.str.3, i32 2274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry_ptr.19 = internal global ptr @tonga_init_smc_table._entry.18, section ".printk_index", align 4
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to initialize Graphics Level !\00", [58 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._rs.21 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_init_smc_table, ptr @.str.3, i32 2278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry_ptr.23 = internal global ptr @tonga_init_smc_table._entry.22, section ".printk_index", align 4
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to initialize Memory Level !\00", [60 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._rs.25 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_init_smc_table, ptr @.str.3, i32 2282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry_ptr.27 = internal global ptr @tonga_init_smc_table._entry.26, section ".printk_index", align 4
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to initialize ACPI Level !\00", [62 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._rs.29 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_init_smc_table, ptr @.str.3, i32 2286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry_ptr.31 = internal global ptr @tonga_init_smc_table._entry.30, section ".printk_index", align 4
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialize VCE Level !\00", [63 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._rs.33 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_init_smc_table, ptr @.str.3, i32 2290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry_ptr.35 = internal global ptr @tonga_init_smc_table._entry.34, section ".printk_index", align 4
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialize ACP Level !\00", [63 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._rs.37 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_init_smc_table, ptr @.str.3, i32 2299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry_ptr.39 = internal global ptr @tonga_init_smc_table._entry.38, section ".printk_index", align 4
@.str.40 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to Write ARB settings for the initial state.\00", [44 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._rs.41 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_init_smc_table, ptr @.str.3, i32 2303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry_ptr.43 = internal global ptr @tonga_init_smc_table._entry.42, section ".printk_index", align 4
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialize UVD Level !\00", [63 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_init_smc_table, ptr @.str.3, i32 2307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry_ptr.47 = internal global ptr @tonga_init_smc_table._entry.46, section ".printk_index", align 4
@tonga_init_smc_table._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_init_smc_table, ptr @.str.3, i32 2311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry_ptr.51 = internal global ptr @tonga_init_smc_table._entry.50, section ".printk_index", align 4
@tonga_init_smc_table._rs.53 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_init_smc_table, ptr @.str.3, i32 2318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry_ptr.55 = internal global ptr @tonga_init_smc_table._entry.54, section ".printk_index", align 4
@.str.56 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to populate Clock Stretcher Data Table !\00", [48 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._rs.57 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_init_smc_table, ptr @.str.3, i32 2348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry_ptr.59 = internal global ptr @tonga_init_smc_table._entry.58, section ".printk_index", align 4
@.str.60 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"There must be 1 or more PCIE levels defined in PPTable.\00", [40 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_init_smc_table, ptr @.str.3, i32 2356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry_ptr.63 = internal global ptr @tonga_init_smc_table._entry.62, section ".printk_index", align 4
@tonga_init_smc_table._rs.65 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_init_smc_table, ptr @.str.3, i32 2443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry_ptr.67 = internal global ptr @tonga_init_smc_table._entry.66, section ".printk_index", align 4
@.str.68 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to upload dpm data to SMC memory !\00", [54 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._rs.69 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_init_smc_table, ptr @.str.3, i32 2447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry_ptr.71 = internal global ptr @tonga_init_smc_table._entry.70, section ".printk_index", align 4
@.str.72 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to upload arb data to SMC memory !\00", [54 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_init_smc_table, ptr @.str.3, i32 2451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry_ptr.75 = internal global ptr @tonga_init_smc_table._entry.74, section ".printk_index", align 4
@tonga_init_smc_table._rs.77 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_init_smc_table, ptr @.str.3, i32 2455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_init_smc_table._entry_ptr.79 = internal global ptr @tonga_init_smc_table._entry.78, section ".printk_index", align 4
@.str.80 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to populate initialize MC Reg table !\00", [51 x i8] zeroinitializer }, align 32
@tonga_power_tune_data_set_array = internal constant { [1 x %struct.tonga_pt_defaults], [52 x i8] } { [1 x %struct.tonga_pt_defaults] [%struct.tonga_pt_defaults { i8 1, i8 15, i8 -3, i8 25, i8 5, i8 45, i32 0, i32 720896, [15 x i16] [i16 121, i16 595, i16 605, i16 174, i16 114, i16 128, i16 131, i16 134, i16 111, i16 200, i16 201, i16 201, i16 47, i16 77, i16 97], [15 x i16] [i16 380, i16 370, i16 384, i16 444, i16 435, i16 445, i16 518, i16 512, i16 515, i16 605, i16 602, i16 597, i16 707, i16 709, i16 692] }], [52 x i8] zeroinitializer }, align 32
@__func__.tonga_populate_smc_voltage_tables = private unnamed_addr constant [34 x i8] c"tonga_populate_smc_voltage_tables\00", align 1
@tonga_populate_smc_voltage_tables._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_smc_voltage_tables, ptr @.str.3, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_smc_voltage_tables._entry_ptr = internal global ptr @tonga_populate_smc_voltage_tables._entry, section ".printk_index", align 4
@tonga_populate_smc_voltage_tables._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_smc_voltage_tables, ptr @.str.3, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_smc_voltage_tables._entry_ptr.84 = internal global ptr @tonga_populate_smc_voltage_tables._entry.83, section ".printk_index", align 4
@tonga_populate_smc_voltage_tables._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_smc_voltage_tables, ptr @.str.3, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_smc_voltage_tables._entry_ptr.88 = internal global ptr @tonga_populate_smc_voltage_tables._entry.87, section ".printk_index", align 4
@tonga_populate_smc_voltage_tables._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_smc_voltage_tables, ptr @.str.3, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_smc_voltage_tables._entry_ptr.92 = internal global ptr @tonga_populate_smc_voltage_tables._entry.91, section ".printk_index", align 4
@tonga_populate_smc_voltage_tables._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_smc_voltage_tables, ptr @.str.3, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_smc_voltage_tables._entry_ptr.96 = internal global ptr @tonga_populate_smc_voltage_tables._entry.95, section ".printk_index", align 4
@tonga_populate_smc_acpi_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tonga_populate_smc_acpi_level = private unnamed_addr constant [30 x i8] c"tonga_populate_smc_acpi_level\00", align 1
@tonga_populate_smc_acpi_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_smc_acpi_level, ptr @.str.3, i32 1203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_smc_acpi_level._entry_ptr = internal global ptr @tonga_populate_smc_acpi_level._entry, section ".printk_index", align 4
@.str.98 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Error retrieving Engine Clock dividers from VBIOS.\00", [45 x i8] zeroinitializer }, align 32
@tonga_populate_mvdd_value._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tonga_populate_mvdd_value = private unnamed_addr constant [26 x i8] c"tonga_populate_mvdd_value\00", align 1
@tonga_populate_mvdd_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_mvdd_value, ptr @.str.3, i32 1164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_mvdd_value._entry_ptr = internal global ptr @tonga_populate_mvdd_value._entry, section ".printk_index", align 4
@.str.99 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MVDD Voltage is outside the supported range.\00", [51 x i8] zeroinitializer }, align 32
@tonga_populate_smc_vce_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tonga_populate_smc_vce_level = private unnamed_addr constant [29 x i8] c"tonga_populate_smc_vce_level\00", align 1
@tonga_populate_smc_vce_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_smc_vce_level, ptr @.str.3, i32 1403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_smc_vce_level._entry_ptr = internal global ptr @tonga_populate_smc_vce_level._entry, section ".printk_index", align 4
@.str.100 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"can not find divide id for VCE engine clock\00", [52 x i8] zeroinitializer }, align 32
@tonga_populate_smc_acp_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tonga_populate_smc_acp_level = private unnamed_addr constant [29 x i8] c"tonga_populate_smc_acp_level\00", align 1
@tonga_populate_smc_acp_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_smc_acp_level, ptr @.str.3, i32 1447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_smc_acp_level._entry_ptr = internal global ptr @tonga_populate_smc_acp_level._entry, section ".printk_index", align 4
@.str.101 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"can not find divide id for engine clock\00", [56 x i8] zeroinitializer }, align 32
@tonga_populate_smc_uvd_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tonga_populate_smc_uvd_level = private unnamed_addr constant [29 x i8] c"tonga_populate_smc_uvd_level\00", align 1
@tonga_populate_smc_uvd_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_smc_uvd_level, ptr @.str.3, i32 1346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_smc_uvd_level._entry_ptr = internal global ptr @tonga_populate_smc_uvd_level._entry, section ".printk_index", align 4
@.str.102 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"can not find divide id for Vclk clock\00", [58 x i8] zeroinitializer }, align 32
@tonga_populate_smc_uvd_level._rs.103 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tonga_populate_smc_uvd_level._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_smc_uvd_level, ptr @.str.3, i32 1354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_smc_uvd_level._entry_ptr.105 = internal global ptr @tonga_populate_smc_uvd_level._entry.104, section ".printk_index", align 4
@.str.106 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"can not find divide id for Dclk clock\00", [58 x i8] zeroinitializer }, align 32
@tonga_populate_smc_boot_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.3, i32 1541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"\013amdgpu: [powerplay] VBIOS did not find boot engine clock value in dependency table. Using Graphics DPM level 0 !\00", [45 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tonga_populate_smc_boot_level\00", [34 x i8] zeroinitializer }, align 32
@tonga_populate_smc_boot_level._entry_ptr = internal global ptr @tonga_populate_smc_boot_level._entry, section ".printk_index", align 4
@tonga_populate_smc_boot_level._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.3, i32 1553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"\013amdgpu: [powerplay] VBIOS did not find boot engine clock value in dependency table.Using Memory DPM level 0 !\00", [48 x i8] zeroinitializer }, align 32
@tonga_populate_smc_boot_level._entry_ptr.111 = internal global ptr @tonga_populate_smc_boot_level._entry.109, section ".printk_index", align 4
@tonga_populate_bapm_parameters_in_dpm_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tonga_populate_bapm_parameters_in_dpm_table = private unnamed_addr constant [44 x i8] c"tonga_populate_bapm_parameters_in_dpm_table\00", align 1
@tonga_populate_bapm_parameters_in_dpm_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_bapm_parameters_in_dpm_table, ptr @.str.3, i32 1845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_bapm_parameters_in_dpm_table._entry_ptr = internal global ptr @tonga_populate_bapm_parameters_in_dpm_table._entry, section ".printk_index", align 4
@.str.112 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Target Operating Temp is out of Range !\00", [56 x i8] zeroinitializer }, align 32
@tonga_populate_clock_stretcher_data_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tonga_populate_clock_stretcher_data_table = private unnamed_addr constant [42 x i8] c"tonga_populate_clock_stretcher_data_table\00", align 1
@tonga_populate_clock_stretcher_data_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_clock_stretcher_data_table, ptr @.str.3, i32 1663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_clock_stretcher_data_table._entry_ptr = internal global ptr @tonga_populate_clock_stretcher_data_table._entry, section ".printk_index", align 4
@.str.113 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Stretch Amount in PPTable not supported\00", [56 x i8] zeroinitializer }, align 32
@tonga_clock_stretcher_lookup_table = internal constant { [2 x [4 x i16]], [16 x i8] } { [2 x [4 x i16]] [[4 x i16] [i16 600, i16 1050, i16 3, i16 0], [4 x i16] [i16 600, i16 1050, i16 6, i16 1]], [16 x i8] zeroinitializer }, align 32
@tonga_clock_stretch_amount_conversion = internal constant { [2 x [6 x i8]], [20 x i8] } { [2 x [6 x i8]] [[6 x i8] c"\00\01\03\02\04\05", [6 x i8] c"\00\02\04\05\06\05"], [20 x i8] zeroinitializer }, align 32
@tonga_clock_stretcher_ddt_table = internal constant { [2 x [4 x [4 x i32]]], [32 x i8] } { [2 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 265, i32 529, i32 120, i32 128], [4 x i32] [i32 325, i32 650, i32 96, i32 119], [4 x i32] [i32 430, i32 860, i32 32, i32 95], [4 x i32] [i32 0, i32 0, i32 0, i32 31]], [4 x [4 x i32]] [[4 x i32] [i32 275, i32 550, i32 104, i32 112], [4 x i32] [i32 319, i32 638, i32 96, i32 103], [4 x i32] [i32 360, i32 720, i32 64, i32 95], [4 x i32] [i32 384, i32 768, i32 32, i32 63]]], [32 x i8] zeroinitializer }, align 32
@tonga_populate_vr_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.3, i32 1762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013amdgpu: VDDC and VDDGFX should be both on SVI2 control in splitted mode !\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tonga_populate_vr_config\00", [39 x i8] zeroinitializer }, align 32
@tonga_populate_vr_config._entry_ptr = internal global ptr @tonga_populate_vr_config._entry, section ".printk_index", align 4
@tonga_populate_vr_config._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.3, i32 1775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013amdgpu: VDDC should be on SVI2 control in merged mode !\0A\00", [37 x i8] zeroinitializer }, align 32
@tonga_populate_vr_config._entry_ptr.118 = internal global ptr @tonga_populate_vr_config._entry.116, section ".printk_index", align 4
@tonga_populate_pm_fuses._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tonga_populate_pm_fuses = private unnamed_addr constant [24 x i8] c"tonga_populate_pm_fuses\00", align 1
@tonga_populate_pm_fuses._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_pm_fuses, ptr @.str.3, i32 2008, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_pm_fuses._entry_ptr = internal global ptr @tonga_populate_pm_fuses._entry, section ".printk_index", align 4
@.str.119 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Attempt to get pm_fuse_table_offset Failed !\00", [51 x i8] zeroinitializer }, align 32
@tonga_populate_pm_fuses._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_pm_fuses, ptr @.str.3, i32 2014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_pm_fuses._entry_ptr.122 = internal global ptr @tonga_populate_pm_fuses._entry.121, section ".printk_index", align 4
@tonga_populate_pm_fuses._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_pm_fuses, ptr @.str.3, i32 2019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_pm_fuses._entry_ptr.126 = internal global ptr @tonga_populate_pm_fuses._entry.125, section ".printk_index", align 4
@tonga_populate_pm_fuses._rs.128 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tonga_populate_pm_fuses._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_pm_fuses, ptr @.str.3, i32 2024, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_pm_fuses._entry_ptr.130 = internal global ptr @tonga_populate_pm_fuses._entry.129, section ".printk_index", align 4
@.str.131 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Attempt to populate TdcWaterfallCtl Failed !\00", [51 x i8] zeroinitializer }, align 32
@tonga_populate_pm_fuses._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_pm_fuses, ptr @.str.3, i32 2030, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_pm_fuses._entry_ptr.134 = internal global ptr @tonga_populate_pm_fuses._entry.133, section ".printk_index", align 4
@tonga_populate_pm_fuses._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_pm_fuses, ptr @.str.3, i32 2037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_pm_fuses._entry_ptr.138 = internal global ptr @tonga_populate_pm_fuses._entry.137, section ".printk_index", align 4
@tonga_populate_pm_fuses._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_pm_fuses, ptr @.str.3, i32 2043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_pm_fuses._entry_ptr.142 = internal global ptr @tonga_populate_pm_fuses._entry.141, section ".printk_index", align 4
@tonga_populate_pm_fuses._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_pm_fuses, ptr @.str.3, i32 2051, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_pm_fuses._entry_ptr.146 = internal global ptr @tonga_populate_pm_fuses._entry.145, section ".printk_index", align 4
@tonga_populate_pm_fuses._rs.148 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tonga_populate_pm_fuses._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_pm_fuses, ptr @.str.3, i32 2058, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_pm_fuses._entry_ptr.150 = internal global ptr @tonga_populate_pm_fuses._entry.149, section ".printk_index", align 4
@.str.151 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Attempt to download PmFuseTable Failed !\00", [55 x i8] zeroinitializer }, align 32
@tonga_populate_dw8._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tonga_populate_dw8 = private unnamed_addr constant [19 x i8] c"tonga_populate_dw8\00", align 1
@tonga_populate_dw8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_dw8, ptr @.str.3, i32 1923, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_dw8._entry_ptr = internal global ptr @tonga_populate_dw8._entry, section ".printk_index", align 4
@.str.152 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Attempt to read PmFuses.DW6 (SviLoadLineEn) from SMC Failed !\00", [34 x i8] zeroinitializer }, align 32
@tonga_populate_initial_mc_reg_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tonga_populate_initial_mc_reg_table = private unnamed_addr constant [36 x i8] c"tonga_populate_initial_mc_reg_table\00", align 1
@tonga_populate_initial_mc_reg_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_initial_mc_reg_table, ptr @.str.3, i32 2193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_initial_mc_reg_table._entry_ptr = internal global ptr @tonga_populate_initial_mc_reg_table._entry, section ".printk_index", align 4
@.str.153 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Failed to initialize MCRegTable for the MC register addresses !\00", [32 x i8] zeroinitializer }, align 32
@tonga_populate_initial_mc_reg_table._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_initial_mc_reg_table, ptr @.str.3, i32 2198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_initial_mc_reg_table._entry_ptr.156 = internal global ptr @tonga_populate_initial_mc_reg_table._entry.155, section ".printk_index", align 4
@tonga_populate_mc_reg_address._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tonga_populate_mc_reg_address = private unnamed_addr constant [30 x i8] c"tonga_populate_mc_reg_address\00", align 1
@tonga_populate_mc_reg_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_mc_reg_address, ptr @.str.3, i32 2076, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_mc_reg_address._entry_ptr = internal global ptr @tonga_populate_mc_reg_address._entry, section ".printk_index", align 4
@.str.158 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Index of mc_reg_table->address[] array out of boundary\00", [41 x i8] zeroinitializer }, align 32
@tonga_populate_all_graphic_levels._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tonga_populate_all_graphic_levels = private unnamed_addr constant [34 x i8] c"tonga_populate_all_graphic_levels\00", align 1
@tonga_populate_all_graphic_levels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_all_graphic_levels, ptr @.str.3, i32 738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_all_graphic_levels._entry_ptr = internal global ptr @tonga_populate_all_graphic_levels._entry, section ".printk_index", align 4
@tonga_populate_all_graphic_levels._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @__func__.tonga_populate_all_graphic_levels, ptr @.str.3, i32 746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013amdgpu: Pcie Dpm Enablemask is 0 !\00", [59 x i8] zeroinitializer }, align 32
@tonga_populate_all_graphic_levels._entry_ptr.161 = internal global ptr @tonga_populate_all_graphic_levels._entry.159, section ".printk_index", align 4
@tonga_populate_single_graphic_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tonga_populate_single_graphic_level = private unnamed_addr constant [36 x i8] c"tonga_populate_single_graphic_level\00", align 1
@tonga_populate_single_graphic_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_single_graphic_level, ptr @.str.3, i32 640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_single_graphic_level._entry_ptr = internal global ptr @tonga_populate_single_graphic_level._entry, section ".printk_index", align 4
@.str.162 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"can not find VDDC voltage value for VDDC engine clock dependency table\00", [57 x i8] zeroinitializer }, align 32
@tonga_calculate_sclk_params._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tonga_calculate_sclk_params = private unnamed_addr constant [28 x i8] c"tonga_calculate_sclk_params\00", align 1
@tonga_calculate_sclk_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_calculate_sclk_params, ptr @.str.3, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_calculate_sclk_params._entry_ptr = internal global ptr @tonga_calculate_sclk_params._entry, section ".printk_index", align 4
@tonga_populate_all_memory_levels._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tonga_populate_all_memory_levels = private unnamed_addr constant [33 x i8] c"tonga_populate_all_memory_levels\00", align 1
@tonga_populate_all_memory_levels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_all_memory_levels, ptr @.str.3, i32 1110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_all_memory_levels._entry_ptr = internal global ptr @tonga_populate_all_memory_levels._entry, section ".printk_index", align 4
@.str.163 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"can not populate memory level as memory clock is zero\00", [42 x i8] zeroinitializer }, align 32
@tonga_populate_single_memory_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tonga_populate_single_memory_level = private unnamed_addr constant [35 x i8] c"tonga_populate_single_memory_level\00", align 1
@tonga_populate_single_memory_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_populate_single_memory_level, ptr @.str.3, i32 991, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_populate_single_memory_level._entry_ptr = internal global ptr @tonga_populate_single_memory_level._entry, section ".printk_index", align 4
@.str.164 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"can not find MinVddc voltage value from memory VDDC voltage dependency table\00", [51 x i8] zeroinitializer }, align 32
@tonga_calculate_mclk_params._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tonga_calculate_mclk_params = private unnamed_addr constant [28 x i8] c"tonga_calculate_mclk_params\00", align 1
@tonga_calculate_mclk_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_calculate_mclk_params, ptr @.str.3, i32 815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_calculate_mclk_params._entry_ptr = internal global ptr @tonga_calculate_mclk_params._entry, section ".printk_index", align 4
@.str.165 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Error retrieving Memory Clock Parameters from VBIOS.\00", [43 x i8] zeroinitializer }, align 32
@tonga_copy_vbios_smc_reg_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tonga_copy_vbios_smc_reg_table = private unnamed_addr constant [31 x i8] c"tonga_copy_vbios_smc_reg_table\00", align 1
@tonga_copy_vbios_smc_reg_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_copy_vbios_smc_reg_table, ptr @.str.3, i32 2951, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_copy_vbios_smc_reg_table._entry_ptr = internal global ptr @tonga_copy_vbios_smc_reg_table._entry, section ".printk_index", align 4
@.str.166 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid VramInfo table.\00", [40 x i8] zeroinitializer }, align 32
@tonga_copy_vbios_smc_reg_table._rs.167 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tonga_copy_vbios_smc_reg_table._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_copy_vbios_smc_reg_table, ptr @.str.3, i32 2953, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_copy_vbios_smc_reg_table._entry_ptr.169 = internal global ptr @tonga_copy_vbios_smc_reg_table._entry.168, section ".printk_index", align 4
@tonga_set_mc_special_registers._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tonga_set_mc_special_registers = private unnamed_addr constant [31 x i8] c"tonga_set_mc_special_registers\00", align 1
@tonga_set_mc_special_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_set_mc_special_registers, ptr @.str.3, i32 2983, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_set_mc_special_registers._entry_ptr = internal global ptr @tonga_set_mc_special_registers._entry, section ".printk_index", align 4
@tonga_set_mc_special_registers._rs.170 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tonga_set_mc_special_registers._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_set_mc_special_registers, ptr @.str.3, i32 3000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_set_mc_special_registers._entry_ptr.172 = internal global ptr @tonga_set_mc_special_registers._entry.171, section ".printk_index", align 4
@tonga_set_mc_special_registers._rs.173 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tonga_set_mc_special_registers._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tonga_set_mc_special_registers, ptr @.str.3, i32 3016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tonga_set_mc_special_registers._entry_ptr.175 = internal global ptr @tonga_set_mc_special_registers._entry.174, section ".printk_index", align 4
@tonga_get_offsetof._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.177, ptr @.str.3, i32 2646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014amdgpu: can't get the offset of type %x member %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tonga_get_offsetof\00", [45 x i8] zeroinitializer }, align 32
@tonga_get_offsetof._entry_ptr = internal global ptr @tonga_get_offsetof._entry, section ".printk_index", align 4
@tonga_get_mac_definition._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.179, ptr @.str.3, i32 2670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014amdgpu: can't get the mac value %x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tonga_get_mac_definition\00", [39 x i8] zeroinitializer }, align 32
@tonga_get_mac_definition._entry_ptr = internal global ptr @tonga_get_mac_definition._entry, section ".printk_index", align 4
@switch.table.tonga_get_offsetof = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 48, i32 44, i32 60, i32 64, i32 12, i32 16, i32 108, i32 48, i32 48, i32 48, i32 80, i32 84, i32 88, i32 92, i32 96], [36 x i8] zeroinitializer }, align 32
@switch.table.tonga_get_offsetof.180 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1788, i32 1789, i32 1904], [20 x i8] zeroinitializer }, align 32
@switch.table.tonga_get_mac_definition = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 4, i32 8, i32 32, i32 16, i32 16, i32 8, i32 4], [32 x i8] zeroinitializer }, align 32
@switch.table.tonga_populate_clock_stretcher_data_table = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 1, i32 1, i32 0], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.181 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.182 = internal global [22 x i64] [i64 20, i64 16, i64 2600, i64 2601, i64 2602, i64 2603, i64 2604, i64 2605, i64 2606, i64 2607, i64 2608, i64 2691, i64 2731, i64 2769, i64 2773, i64 2775, i64 3457, i64 3459, i64 3461, i64 3466, i64 3468, i64 3470]
@__sancov_gen_cov_switch_values.183 = internal global [4 x i64] [i64 2, i64 16, i64 2689, i64 2690]
@__sancov_gen_cov_switch_values.184 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.185 = internal global [4 x i64] [i64 2, i64 16, i64 26912, i64 26928]
@__sancov_gen_cov_switch_values.186 = internal global [5 x i64] [i64 3, i64 8, i64 240, i64 241, i64 255]
@__sancov_gen_cov_switch_values.187 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 3244, i32 10 }
@___asan_gen_.191 = private unnamed_addr constant [16 x i8] c"tonga_smu_funcs\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 3243, i32 29 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 144, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2592, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2597, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1472, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2260, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2269, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2273, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2277, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2281, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2285, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2289, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2297, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2302, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2306, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2310, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2316, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2346, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2355, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2442, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2446, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2450, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2454, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant [32 x i8] c"tonga_power_tune_data_set_array\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 64, i32 39 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 452, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 457, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 462, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 467, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 472, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1201, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1162, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1401, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1446, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1344, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1352, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1539, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1551, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1843, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1661, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant [35 x i8] c"tonga_clock_stretcher_lookup_table\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 78, i32 23 }
@___asan_gen_.473 = private unnamed_addr constant [38 x i8] c"tonga_clock_stretch_amount_conversion\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 92, i32 22 }
@___asan_gen_.476 = private unnamed_addr constant [32 x i8] c"tonga_clock_stretcher_ddt_table\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 86, i32 23 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1761, i32 4 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1774, i32 4 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2006, i32 4 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2012, i32 4 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2017, i32 4 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2022, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2028, i32 4 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2034, i32 4 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2041, i32 4 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2047, i32 4 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2056, i32 4 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1920, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2191, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2196, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2072, i32 4 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 736, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 746, i32 4 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 638, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 556, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1108, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 987, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 812, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2950, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2952, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2982, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2999, i32 4 }
@___asan_gen_.650 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 3015, i32 5 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2646, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.671 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.672 = private constant [68 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c\00", align 1
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 2670, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant [32 x i8] c"switch.table.tonga_get_offsetof\00", align 1
@___asan_gen_.675 = private unnamed_addr constant [36 x i8] c"switch.table.tonga_get_offsetof.180\00", align 1
@___asan_gen_.676 = private unnamed_addr constant [38 x i8] c"switch.table.tonga_get_mac_definition\00", align 1
@___asan_gen_.677 = private unnamed_addr constant [55 x i8] c"switch.table.tonga_populate_clock_stretcher_data_table\00", align 1
@llvm.compiler.used = appending global [232 x ptr] [ptr @tonga_calculate_mclk_params._entry, ptr @tonga_calculate_mclk_params._entry_ptr, ptr @tonga_calculate_sclk_params._entry, ptr @tonga_calculate_sclk_params._entry_ptr, ptr @tonga_copy_vbios_smc_reg_table._entry, ptr @tonga_copy_vbios_smc_reg_table._entry.168, ptr @tonga_copy_vbios_smc_reg_table._entry_ptr, ptr @tonga_copy_vbios_smc_reg_table._entry_ptr.169, ptr @tonga_get_mac_definition._entry, ptr @tonga_get_mac_definition._entry_ptr, ptr @tonga_get_offsetof._entry, ptr @tonga_get_offsetof._entry_ptr, ptr @tonga_init_smc_table._entry, ptr @tonga_init_smc_table._entry.14, ptr @tonga_init_smc_table._entry.18, ptr @tonga_init_smc_table._entry.22, ptr @tonga_init_smc_table._entry.26, ptr @tonga_init_smc_table._entry.30, ptr @tonga_init_smc_table._entry.34, ptr @tonga_init_smc_table._entry.38, ptr @tonga_init_smc_table._entry.42, ptr @tonga_init_smc_table._entry.46, ptr @tonga_init_smc_table._entry.50, ptr @tonga_init_smc_table._entry.54, ptr @tonga_init_smc_table._entry.58, ptr @tonga_init_smc_table._entry.62, ptr @tonga_init_smc_table._entry.66, ptr @tonga_init_smc_table._entry.70, ptr @tonga_init_smc_table._entry.74, ptr @tonga_init_smc_table._entry.78, ptr @tonga_init_smc_table._entry_ptr, ptr @tonga_init_smc_table._entry_ptr.15, ptr @tonga_init_smc_table._entry_ptr.19, ptr @tonga_init_smc_table._entry_ptr.23, ptr @tonga_init_smc_table._entry_ptr.27, ptr @tonga_init_smc_table._entry_ptr.31, ptr @tonga_init_smc_table._entry_ptr.35, ptr @tonga_init_smc_table._entry_ptr.39, ptr @tonga_init_smc_table._entry_ptr.43, ptr @tonga_init_smc_table._entry_ptr.47, ptr @tonga_init_smc_table._entry_ptr.51, ptr @tonga_init_smc_table._entry_ptr.55, ptr @tonga_init_smc_table._entry_ptr.59, ptr @tonga_init_smc_table._entry_ptr.63, ptr @tonga_init_smc_table._entry_ptr.67, ptr @tonga_init_smc_table._entry_ptr.71, ptr @tonga_init_smc_table._entry_ptr.75, ptr @tonga_init_smc_table._entry_ptr.79, ptr @tonga_populate_all_graphic_levels._entry, ptr @tonga_populate_all_graphic_levels._entry.159, ptr @tonga_populate_all_graphic_levels._entry_ptr, ptr @tonga_populate_all_graphic_levels._entry_ptr.161, ptr @tonga_populate_all_memory_levels._entry, ptr @tonga_populate_all_memory_levels._entry_ptr, ptr @tonga_populate_bapm_parameters_in_dpm_table._entry, ptr @tonga_populate_bapm_parameters_in_dpm_table._entry_ptr, ptr @tonga_populate_clock_stretcher_data_table._entry, ptr @tonga_populate_clock_stretcher_data_table._entry_ptr, ptr @tonga_populate_dw8._entry, ptr @tonga_populate_dw8._entry_ptr, ptr @tonga_populate_initial_mc_reg_table._entry, ptr @tonga_populate_initial_mc_reg_table._entry.155, ptr @tonga_populate_initial_mc_reg_table._entry_ptr, ptr @tonga_populate_initial_mc_reg_table._entry_ptr.156, ptr @tonga_populate_mc_reg_address._entry, ptr @tonga_populate_mc_reg_address._entry_ptr, ptr @tonga_populate_memory_timing_parameters._entry, ptr @tonga_populate_memory_timing_parameters._entry_ptr, ptr @tonga_populate_mvdd_value._entry, ptr @tonga_populate_mvdd_value._entry_ptr, ptr @tonga_populate_pm_fuses._entry, ptr @tonga_populate_pm_fuses._entry.121, ptr @tonga_populate_pm_fuses._entry.125, ptr @tonga_populate_pm_fuses._entry.129, ptr @tonga_populate_pm_fuses._entry.133, ptr @tonga_populate_pm_fuses._entry.137, ptr @tonga_populate_pm_fuses._entry.141, ptr @tonga_populate_pm_fuses._entry.145, ptr @tonga_populate_pm_fuses._entry.149, ptr @tonga_populate_pm_fuses._entry_ptr, ptr @tonga_populate_pm_fuses._entry_ptr.122, ptr @tonga_populate_pm_fuses._entry_ptr.126, ptr @tonga_populate_pm_fuses._entry_ptr.130, ptr @tonga_populate_pm_fuses._entry_ptr.134, ptr @tonga_populate_pm_fuses._entry_ptr.138, ptr @tonga_populate_pm_fuses._entry_ptr.142, ptr @tonga_populate_pm_fuses._entry_ptr.146, ptr @tonga_populate_pm_fuses._entry_ptr.150, ptr @tonga_populate_single_graphic_level._entry, ptr @tonga_populate_single_graphic_level._entry_ptr, ptr @tonga_populate_single_memory_level._entry, ptr @tonga_populate_single_memory_level._entry_ptr, ptr @tonga_populate_smc_acp_level._entry, ptr @tonga_populate_smc_acp_level._entry_ptr, ptr @tonga_populate_smc_acpi_level._entry, ptr @tonga_populate_smc_acpi_level._entry_ptr, ptr @tonga_populate_smc_boot_level._entry, ptr @tonga_populate_smc_boot_level._entry.109, ptr @tonga_populate_smc_boot_level._entry_ptr, ptr @tonga_populate_smc_boot_level._entry_ptr.111, ptr @tonga_populate_smc_uvd_level._entry, ptr @tonga_populate_smc_uvd_level._entry.104, ptr @tonga_populate_smc_uvd_level._entry_ptr, ptr @tonga_populate_smc_uvd_level._entry_ptr.105, ptr @tonga_populate_smc_vce_level._entry, ptr @tonga_populate_smc_vce_level._entry_ptr, ptr @tonga_populate_smc_voltage_tables._entry, ptr @tonga_populate_smc_voltage_tables._entry.83, ptr @tonga_populate_smc_voltage_tables._entry.87, ptr @tonga_populate_smc_voltage_tables._entry.91, ptr @tonga_populate_smc_voltage_tables._entry.95, ptr @tonga_populate_smc_voltage_tables._entry_ptr, ptr @tonga_populate_smc_voltage_tables._entry_ptr.84, ptr @tonga_populate_smc_voltage_tables._entry_ptr.88, ptr @tonga_populate_smc_voltage_tables._entry_ptr.92, ptr @tonga_populate_smc_voltage_tables._entry_ptr.96, ptr @tonga_populate_vr_config._entry, ptr @tonga_populate_vr_config._entry.116, ptr @tonga_populate_vr_config._entry_ptr, ptr @tonga_populate_vr_config._entry_ptr.118, ptr @tonga_set_mc_special_registers._entry, ptr @tonga_set_mc_special_registers._entry.171, ptr @tonga_set_mc_special_registers._entry.174, ptr @tonga_set_mc_special_registers._entry_ptr, ptr @tonga_set_mc_special_registers._entry_ptr.172, ptr @tonga_set_mc_special_registers._entry_ptr.175, ptr @tonga_start_in_protection_mode._entry, ptr @tonga_start_in_protection_mode._entry_ptr, ptr @tonga_update_sclk_threshold._entry, ptr @tonga_update_sclk_threshold._entry.8, ptr @tonga_update_sclk_threshold._entry_ptr, ptr @tonga_update_sclk_threshold._entry_ptr.9, ptr @.str, ptr @tonga_smu_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @tonga_update_sclk_threshold._rs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @tonga_update_sclk_threshold._rs.7, ptr @.str.10, ptr @tonga_populate_memory_timing_parameters._rs, ptr @.str.11, ptr @tonga_init_smc_table._rs.17, ptr @.str.20, ptr @tonga_init_smc_table._rs.21, ptr @.str.24, ptr @tonga_init_smc_table._rs.25, ptr @.str.28, ptr @tonga_init_smc_table._rs.29, ptr @.str.32, ptr @tonga_init_smc_table._rs.33, ptr @.str.36, ptr @tonga_init_smc_table._rs.37, ptr @.str.40, ptr @tonga_init_smc_table._rs.41, ptr @.str.44, ptr @tonga_init_smc_table._rs.53, ptr @.str.56, ptr @tonga_init_smc_table._rs.57, ptr @.str.60, ptr @tonga_init_smc_table._rs.65, ptr @.str.68, ptr @tonga_init_smc_table._rs.69, ptr @.str.72, ptr @tonga_init_smc_table._rs.77, ptr @.str.80, ptr @tonga_power_tune_data_set_array, ptr @tonga_populate_smc_acpi_level._rs, ptr @.str.98, ptr @tonga_populate_mvdd_value._rs, ptr @.str.99, ptr @tonga_populate_smc_vce_level._rs, ptr @.str.100, ptr @tonga_populate_smc_acp_level._rs, ptr @.str.101, ptr @tonga_populate_smc_uvd_level._rs, ptr @.str.102, ptr @tonga_populate_smc_uvd_level._rs.103, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @tonga_populate_bapm_parameters_in_dpm_table._rs, ptr @.str.112, ptr @tonga_populate_clock_stretcher_data_table._rs, ptr @.str.113, ptr @tonga_clock_stretcher_lookup_table, ptr @tonga_clock_stretch_amount_conversion, ptr @tonga_clock_stretcher_ddt_table, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @tonga_populate_pm_fuses._rs, ptr @.str.119, ptr @tonga_populate_pm_fuses._rs.128, ptr @.str.131, ptr @tonga_populate_pm_fuses._rs.148, ptr @.str.151, ptr @tonga_populate_dw8._rs, ptr @.str.152, ptr @tonga_populate_initial_mc_reg_table._rs, ptr @.str.153, ptr @tonga_populate_mc_reg_address._rs, ptr @.str.158, ptr @tonga_populate_all_graphic_levels._rs, ptr @.str.160, ptr @tonga_populate_single_graphic_level._rs, ptr @.str.162, ptr @tonga_calculate_sclk_params._rs, ptr @tonga_populate_all_memory_levels._rs, ptr @.str.163, ptr @tonga_populate_single_memory_level._rs, ptr @.str.164, ptr @tonga_calculate_mclk_params._rs, ptr @.str.165, ptr @tonga_copy_vbios_smc_reg_table._rs, ptr @.str.166, ptr @tonga_copy_vbios_smc_reg_table._rs.167, ptr @tonga_set_mc_special_registers._rs, ptr @tonga_set_mc_special_registers._rs.170, ptr @tonga_set_mc_special_registers._rs.173, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @switch.table.tonga_get_offsetof, ptr @switch.table.tonga_get_offsetof.180, ptr @switch.table.tonga_get_mac_definition, ptr @switch.table.tonga_populate_clock_stretcher_data_table], section "llvm.metadata"
@0 = internal global [166 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_smu_funcs to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_start_in_protection_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_update_sclk_threshold._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_update_sclk_threshold._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_update_sclk_threshold._rs.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_update_sclk_threshold._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_memory_timing_parameters._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_memory_timing_parameters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._rs.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._rs.21 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._rs.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._rs.29 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._rs.33 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._rs.37 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._rs.41 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._rs.53 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._rs.57 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._rs.65 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._rs.69 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._rs.77 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_init_smc_table._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_power_tune_data_set_array to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_smc_voltage_tables._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_smc_voltage_tables._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_smc_voltage_tables._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_smc_voltage_tables._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_smc_voltage_tables._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_smc_acpi_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_smc_acpi_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_mvdd_value._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_mvdd_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_smc_vce_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_smc_vce_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_smc_acp_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_smc_acp_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_smc_uvd_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_smc_uvd_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_smc_uvd_level._rs.103 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_smc_uvd_level._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_smc_boot_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_smc_boot_level._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_bapm_parameters_in_dpm_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_bapm_parameters_in_dpm_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_clock_stretcher_data_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_clock_stretcher_data_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_clock_stretcher_lookup_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_clock_stretch_amount_conversion to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_clock_stretcher_ddt_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_vr_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_vr_config._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_pm_fuses._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_pm_fuses._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_pm_fuses._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_pm_fuses._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_pm_fuses._rs.128 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_pm_fuses._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_pm_fuses._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_pm_fuses._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_pm_fuses._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_pm_fuses._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_pm_fuses._rs.148 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_pm_fuses._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_dw8._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_dw8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_initial_mc_reg_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_initial_mc_reg_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_initial_mc_reg_table._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_mc_reg_address._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_mc_reg_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_all_graphic_levels._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_all_graphic_levels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_all_graphic_levels._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_single_graphic_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_single_graphic_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_calculate_sclk_params._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_calculate_sclk_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_all_memory_levels._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_all_memory_levels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_single_memory_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_populate_single_memory_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_calculate_mclk_params._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_calculate_mclk_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_copy_vbios_smc_reg_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_copy_vbios_smc_reg_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_copy_vbios_smc_reg_table._rs.167 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_copy_vbios_smc_reg_table._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_set_mc_special_registers._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_set_mc_special_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_set_mc_special_registers._rs.170 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_set_mc_special_registers._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_set_mc_special_registers._rs.173 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_set_mc_special_registers._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_get_offsetof._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_get_mac_definition._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tonga_get_offsetof to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tonga_get_offsetof.180 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tonga_get_mac_definition to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tonga_populate_clock_stretcher_data_table to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tonga_smu_init(ptr noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 3624) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %1 = ptrtoint ptr %smu_backend to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %smu_backend, align 4
  %call1 = tail call i32 @smu7_init(ptr noundef %hwmgr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then2 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_smu_fini(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tonga_start_smu(ptr noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %call = tail call zeroext i1 @smu7_is_smc_ram_running(ptr noundef %hwmgr) #6
  br i1 %call, label %entry.if.end12_crit_edge, label %land.lhs.true

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.lhs.true:                                    ; preds = %entry
  %not_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %2 = ptrtoint ptr %not_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %not_vf, align 4, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true.if.end12_crit_edge, label %if.then

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

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
  %call2 = tail call i32 %9(ptr noundef %5, i32 noundef 1, i32 noundef -536858460) #6
  %10 = and i32 %call2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %call.i = tail call i32 @phm_wait_for_indirect_register_unequal(ptr noundef %hwmgr, i32 noundef 428, i32 noundef -1073741820, i32 noundef 0, i32 noundef 128) #6
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
  tail call void %16(ptr noundef %12, i32 noundef 1, i32 noundef 260096, i32 noundef 0) #6
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
  %call9.i = tail call i32 %24(ptr noundef %18, i32 noundef 1, i32 noundef -2147483648) #6
  %or.i = or i32 %call9.i, 1
  tail call void %22(ptr noundef %18, i32 noundef 1, i32 noundef -2147483648, i32 noundef %or.i) #6
  %call10.i = tail call i32 @smu7_upload_smu_firmware_image(ptr noundef %hwmgr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp.not.i = icmp eq i32 %call10.i, 0
  br i1 %cmp.not.i, label %tonga_start_in_non_protection_mode.exit.thread, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tonga_start_in_non_protection_mode.exit.thread:   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %call11.i = tail call i32 @smu7_program_jump_on_start(ptr noundef %hwmgr) #6
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
  %call20.i = tail call i32 %32(ptr noundef %26, i32 noundef 1, i32 noundef -2147483644) #6
  %and21.i = and i32 %call20.i, -2
  tail call void %30(ptr noundef %26, i32 noundef 1, i32 noundef -2147483644, i32 noundef %and21.i) #6
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
  %call31.i = tail call i32 %40(ptr noundef %34, i32 noundef 1, i32 noundef -2147483648) #6
  %and32.i = and i32 %call31.i, -2
  tail call void %38(ptr noundef %34, i32 noundef 1, i32 noundef -2147483648, i32 noundef %and32.i) #6
  br label %if.end12.sink.split

if.else:                                          ; preds = %if.then
  %41 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %write_ind_register.i29 = getelementptr inbounds %struct.cgs_ops, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %write_ind_register.i29 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_ind_register.i29, align 4
  %read_ind_register.i30 = getelementptr inbounds %struct.cgs_ops, ptr %44, i32 0, i32 2
  %47 = ptrtoint ptr %read_ind_register.i30 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read_ind_register.i30, align 4
  %call.i31 = tail call i32 %48(ptr noundef %42, i32 noundef 1, i32 noundef -2147483648) #6
  %or.i32 = or i32 %call.i31, 1
  tail call void %46(ptr noundef %42, i32 noundef 1, i32 noundef -2147483648, i32 noundef %or.i32) #6
  %call5.i = tail call i32 @smu7_upload_smu_firmware_image(ptr noundef %hwmgr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end.i33, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i33:                                       ; preds = %if.else
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
  tail call void %54(ptr noundef %50, i32 noundef 1, i32 noundef -536858488, i32 noundef 0) #6
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
  %call18.i = tail call i32 %62(ptr noundef %56, i32 noundef 1, i32 noundef -2147483644) #6
  %and19.i = and i32 %call18.i, -2
  tail call void %60(ptr noundef %56, i32 noundef 1, i32 noundef -2147483644, i32 noundef %and19.i) #6
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
  %call29.i = tail call i32 %70(ptr noundef %64, i32 noundef 1, i32 noundef -2147483648) #6
  %and30.i = and i32 %call29.i, -2
  tail call void %68(ptr noundef %64, i32 noundef 1, i32 noundef -2147483648, i32 noundef %and30.i) #6
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
  %call40.i = tail call i32 %78(ptr noundef %72, i32 noundef 1, i32 noundef -536858440) #6
  %or42.i = or i32 %call40.i, -2147483648
  tail call void %76(ptr noundef %72, i32 noundef 1, i32 noundef -536858440, i32 noundef %or42.i) #6
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
  tail call void %84(ptr noundef %80, i32 noundef 1, i32 noundef 260096, i32 noundef 0) #6
  %call47.i = tail call i32 @phm_wait_on_indirect_register(ptr noundef %hwmgr, i32 noundef 428, i32 noundef -1073741820, i32 noundef 65536, i32 noundef 65536) #6
  %call48.i = tail call i32 @smu7_send_msg_to_smc_offset(ptr noundef %hwmgr) #6
  %call49.i = tail call i32 @phm_wait_for_indirect_register_unequal(ptr noundef %hwmgr, i32 noundef 428, i32 noundef -536858488, i32 noundef 0, i32 noundef 1) #6
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
  %call54.i = tail call i32 %90(ptr noundef %86, i32 noundef 1, i32 noundef -536858488) #6
  %91 = and i32 %call54.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp.not.not.i = icmp eq i32 %91, 0
  br i1 %cmp.not.not.i, label %do.end.i, label %if.end.i33.if.end12.sink.split_crit_edge

if.end.i33.if.end12.sink.split_crit_edge:         ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.sink.split

do.end.i:                                         ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #8
  %call57.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end12.sink.split:                              ; preds = %if.end.i33.if.end12.sink.split_crit_edge, %tonga_start_in_non_protection_mode.exit.thread
  %call59.i = tail call i32 @phm_wait_on_indirect_register(ptr noundef %hwmgr, i32 noundef 428, i32 noundef 260096, i32 noundef 1, i32 noundef 1) #6
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %land.lhs.true.if.end12_crit_edge, %entry.if.end12_crit_edge
  %soft_regs_start = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 3
  %call13 = tail call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131120, ptr noundef %soft_regs_start, i32 noundef 262144) #6
  %call14 = tail call i32 @smu7_request_smu_load_fw(ptr noundef %hwmgr) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end.i, %if.else.cleanup_crit_edge, %if.then3.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end12 ], [ %call10.i, %if.then3.cleanup_crit_edge ], [ %call5.i, %if.else.cleanup_crit_edge ], [ -22, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_check_fw_load_finish(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_request_smu_load_fw(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_get_argument(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_send_msg_to_smc(ptr noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_send_msg_to_smc_with_parameter(ptr noundef, i16 noundef zeroext, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tonga_update_smc_table(ptr noundef %hwmgr, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  %UvdBootLevel.i = getelementptr inbounds %struct.tonga_smumgr, ptr %2, i32 0, i32 1, i32 47
  %5 = ptrtoint ptr %UvdBootLevel.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %UvdBootLevel.i, align 4
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %10 = trunc i32 %9 to i8
  %conv.i = add i8 %10, -1
  %11 = ptrtoint ptr %UvdBootLevel.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i, ptr %UvdBootLevel.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.if.end.i_crit_edge
  %dpm_table_start.i = getelementptr inbounds %struct.smu7_smumgr, ptr %2, i32 0, i32 4
  %12 = ptrtoint ptr %dpm_table_start.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dpm_table_start.i, align 8
  %add.i = add i32 %13, 1788
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
  %call.i = tail call i32 %19(ptr noundef %15, i32 noundef 1, i32 noundef %div1.i) #6
  %and.i = and i32 %call.i, 16777215
  %20 = ptrtoint ptr %UvdBootLevel.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %UvdBootLevel.i, align 4
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
  tail call void %27(ptr noundef %23, i32 noundef 1, i32 noundef %div1.i, i32 noundef %or.i) #6
  %arrayidx.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 3
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i, align 4
  %and1.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.i.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %cmp.i.not.i, label %if.end.i.sw.epilog.sink.split_crit_edge, label %lor.lhs.false.i

if.end.i.sw.epilog.sink.split_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

lor.lhs.false.i.sw.epilog_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %smu_backend.i4 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %32 = ptrtoint ptr %smu_backend.i4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %smu_backend.i4, align 4
  %pptable.i5 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %34 = ptrtoint ptr %pptable.i5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pptable.i5, align 4
  %mm_dep_table.i6 = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %35, i32 0, i32 14
  %36 = ptrtoint ptr %mm_dep_table.i6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mm_dep_table.i6, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %40 = trunc i32 %39 to i8
  %conv.i7 = add i8 %40, -1
  %VceBootLevel.i = getelementptr inbounds %struct.tonga_smumgr, ptr %33, i32 0, i32 1, i32 48
  %41 = ptrtoint ptr %VceBootLevel.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv.i7, ptr %VceBootLevel.i, align 1
  %dpm_table_start.i8 = getelementptr inbounds %struct.smu7_smumgr, ptr %33, i32 0, i32 4
  %42 = ptrtoint ptr %dpm_table_start.i8 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dpm_table_start.i8, align 8
  %add.i9 = add i32 %43, 1789
  %div1.i10 = and i32 %add.i9, -4
  %device.i11 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %44 = ptrtoint ptr %device.i11 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device.i11, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %read_ind_register.i12 = getelementptr inbounds %struct.cgs_ops, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %read_ind_register.i12 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read_ind_register.i12, align 4
  %call.i13 = tail call i32 %49(ptr noundef %45, i32 noundef 1, i32 noundef %div1.i10) #6
  %and.i14 = and i32 %call.i13, -16711681
  %50 = ptrtoint ptr %VceBootLevel.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %VceBootLevel.i, align 1
  %conv4.i = zext i8 %51 to i32
  %shl.i15 = shl nuw nsw i32 %conv4.i, 16
  %or.i16 = or i32 %shl.i15, %and.i14
  %52 = ptrtoint ptr %device.i11 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device.i11, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %write_ind_register.i17 = getelementptr inbounds %struct.cgs_ops, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %write_ind_register.i17 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_ind_register.i17, align 4
  tail call void %57(ptr noundef %53, i32 noundef 1, i32 noundef %div1.i10, i32 noundef %or.i16) #6
  %arrayidx.i.i18 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 4
  %58 = ptrtoint ptr %arrayidx.i.i18 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i.i18, align 4
  %and1.i.i19 = and i32 %59, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i19)
  %cmp.i.not.i20 = icmp eq i32 %and1.i.i19, 0
  br i1 %cmp.i.not.i20, label %sw.bb1.sw.epilog_crit_edge, label %sw.bb1.sw.epilog.sink.split_crit_edge

sw.bb1.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.bb1.sw.epilog.sink.split_crit_edge, %lor.lhs.false.i.sw.epilog.sink.split_crit_edge, %if.end.i.sw.epilog.sink.split_crit_edge
  %.sink23.in = phi ptr [ %UvdBootLevel.i, %lor.lhs.false.i.sw.epilog.sink.split_crit_edge ], [ %UvdBootLevel.i, %if.end.i.sw.epilog.sink.split_crit_edge ], [ %VceBootLevel.i, %sw.bb1.sw.epilog.sink.split_crit_edge ]
  %.sink = phi i16 [ 301, %lor.lhs.false.i.sw.epilog.sink.split_crit_edge ], [ 301, %if.end.i.sw.epilog.sink.split_crit_edge ], [ 302, %sw.bb1.sw.epilog.sink.split_crit_edge ]
  %60 = ptrtoint ptr %.sink23.in to i32
  call void @__asan_load1_noabort(i32 %60)
  %.sink23 = load i8, ptr %.sink23.in, align 1
  %conv11.i = zext i8 %.sink23 to i32
  %shl12.i = shl nuw i32 1, %conv11.i
  %call13.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext %.sink, i32 noundef %shl12.i, ptr noundef null) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb1.sw.epilog_crit_edge, %lor.lhs.false.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tonga_process_firmware_header(ptr noundef %hwmgr) #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #6
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tmp, align 4, !annotation !369
  %call = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131124, ptr noundef nonnull %tmp, i32 noundef 262144) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tmp, align 4
  %dpm_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dpm_table_start, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call4 = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131120, ptr noundef nonnull %tmp, i32 noundef 262144) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
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
  %call17 = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131140, ptr noundef nonnull %tmp, i32 noundef 262144) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end9.if.end21_crit_edge

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then19:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tmp, align 4
  %mc_reg_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %mc_reg_table_start to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %mc_reg_table_start, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end9.if.end21_crit_edge
  %call22 = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131128, ptr noundef nonnull %tmp, i32 noundef 262144) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end21.if.end26_crit_edge

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tmp, align 4
  %fan_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 6
  %17 = ptrtoint ptr %fan_table_start to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %fan_table_start, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end21.if.end26_crit_edge
  %call34 = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131144, ptr noundef nonnull %tmp, i32 noundef 262144) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %if.end26.if.end38_crit_edge

if.end26.if.end38_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then36:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tmp, align 4
  %arb_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 7
  %20 = ptrtoint ptr %arb_table_start to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arb_table_start, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end26.if.end38_crit_edge
  %call46 = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131092, ptr noundef nonnull %tmp, i32 noundef 262144) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then48, label %if.end38.if.end49_crit_edge

if.end38.if.end49_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then48:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
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
  %cond = zext i1 %.not to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #6
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tonga_update_sclk_threshold(ptr noundef %hwmgr) #0 align 64 {
entry:
  %low_sclk_interrupt_threshold = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %low_sclk_interrupt_threshold) #6
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
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %low_sclk_interrupt_threshold to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %low_sclk_interrupt_threshold, align 4
  %dpm_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dpm_table_start, align 8
  %add = add i32 %11, 1904
  %call3 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add, ptr noundef nonnull %low_sclk_interrupt_threshold, i32 noundef 4, i32 noundef 262144) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %smu_backend, align 4
  %14 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %backend, align 4
  %need_update_smu7_dpm_table.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %15, i32 0, i32 71
  %16 = ptrtoint ptr %need_update_smu7_dpm_table.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %need_update_smu7_dpm_table.i, align 4
  %and.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i43 = icmp eq i32 %and.i, 0
  br i1 %cmp.i43, label %if.end.do.end14_crit_edge, label %if.end.i

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

if.end.i:                                         ; preds = %if.end
  %mc_regs.i = getelementptr inbounds %struct.tonga_smumgr, ptr %13, i32 0, i32 5
  %18 = call ptr @memset(ptr %mc_regs.i, i32 0, i32 324)
  %19 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %backend, align 4
  %mclk_table.i.i = getelementptr inbounds %struct.smu7_dpm_table, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %mclk_table.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mclk_table.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp1.not.i.i = icmp eq i32 %22, 0
  br i1 %cmp1.not.i.i, label %if.end.i.tonga_update_and_upload_mc_reg_table.exit_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.tonga_update_and_upload_mc_reg_table.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tonga_update_and_upload_mc_reg_table.exit

for.body.i.i:                                     ; preds = %tonga_convert_mc_reg_table_entry_to_smc.exit.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %i.02.i.i = phi i32 [ %inc.i.i, %tonga_convert_mc_reg_table_entry_to_smc.exit.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %value.i.i = getelementptr %struct.smu7_dpm_table, ptr %20, i32 0, i32 1, i32 1, i32 %i.02.i.i, i32 1
  %23 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %value.i.i, align 4
  %arrayidx4.i.i = getelementptr %struct.tonga_smumgr, ptr %13, i32 0, i32 5, i32 3, i32 %i.02.i.i
  %25 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %smu_backend, align 4
  %num_entries.i.i.i = getelementptr inbounds %struct.tonga_smumgr, ptr %26, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %num_entries.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %num_entries.i.i.i, align 1
  %conv.i.i.i = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp1.not.i.i.i = icmp eq i8 %28, 0
  br i1 %cmp1.not.i.i.i, label %for.body.i.i.for.end.thread.i.i.i_crit_edge, label %for.body.i.i.for.body.i.i.i_crit_edge

for.body.i.i.for.body.i.i.i_crit_edge:            ; preds = %for.body.i.i
  br label %for.body.i.i.i

for.body.i.i.for.end.thread.i.i.i_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i.for.body.i.i.i_crit_edge
  %i.02.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.tonga_smumgr, ptr %26, i32 0, i32 6, i32 3, i32 %i.02.i.i.i
  %29 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %24)
  %cmp3.not.i.i.i = icmp ult i32 %30, %24
  br i1 %cmp3.not.i.i.i, label %for.inc.i.i.i, label %for.body.i.i.i.for.end.i.i.i_crit_edge

for.body.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.02.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.for.end.i.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

for.inc.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i.for.end.i.i.i_crit_edge, %for.body.i.i.i.for.end.i.i.i_crit_edge
  %i.0.lcssa.i.i.i = phi i32 [ %conv.i.i.i, %for.inc.i.i.i.for.end.i.i.i_crit_edge ], [ %i.02.i.i.i, %for.body.i.i.i.for.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i.i.i, i32 %conv.i.i.i)
  %cmp8.i.i.i = icmp eq i32 %i.0.lcssa.i.i.i, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i.i.i)
  %cmp10.not.i.i.i = icmp eq i32 %i.0.lcssa.i.i.i, 0
  %dec.i.i.i = add nsw i32 %i.0.lcssa.i.i.i, -1
  br i1 %cmp10.not.i.i.i, label %for.end.i.i.i.for.end.thread.i.i.i_crit_edge, label %for.end.i.i.i._crit_edge

for.end.i.i.i._crit_edge:                         ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %31

for.end.i.i.i.for.end.thread.i.i.i_crit_edge:     ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread.i.i.i

for.end.thread.i.i.i:                             ; preds = %for.end.i.i.i.for.end.thread.i.i.i_crit_edge, %for.body.i.i.for.end.thread.i.i.i_crit_edge
  %cmp813.i.i.i = phi i1 [ %cmp8.i.i.i, %for.end.i.i.i.for.end.thread.i.i.i_crit_edge ], [ true, %for.body.i.i.for.end.thread.i.i.i_crit_edge ]
  br label %31

31:                                               ; preds = %for.end.thread.i.i.i, %for.end.i.i.i._crit_edge
  %cmp812.i.i.i = phi i1 [ %cmp813.i.i.i, %for.end.thread.i.i.i ], [ %cmp8.i.i.i, %for.end.i.i.i._crit_edge ]
  %i.0.lcssa10.i.i.i = phi i32 [ 0, %for.end.thread.i.i.i ], [ %i.0.lcssa.i.i.i, %for.end.i.i.i._crit_edge ]
  %32 = phi i32 [ 0, %for.end.thread.i.i.i ], [ %dec.i.i.i, %for.end.i.i.i._crit_edge ]
  %i.1.i.i.i = select i1 %cmp812.i.i.i, i32 %32, i32 %i.0.lcssa10.i.i.i
  %mc_reg_table.i.i.i = getelementptr inbounds %struct.tonga_smumgr, ptr %26, i32 0, i32 6
  %33 = ptrtoint ptr %mc_reg_table.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %mc_reg_table.i.i.i, align 8
  %conv18.i.i.i = zext i8 %34 to i32
  %validflag.i.i.i = getelementptr inbounds %struct.tonga_smumgr, ptr %26, i32 0, i32 6, i32 2
  %35 = ptrtoint ptr %validflag.i.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %validflag.i.i.i, align 2
  %conv20.i.i.i = zext i16 %36 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp8.not.i.i.i.i = icmp eq i8 %34, 0
  br i1 %cmp8.not.i.i.i.i, label %.tonga_convert_mc_reg_table_entry_to_smc.exit.i.i_crit_edge, label %.for.body.i.i.i.i_crit_edge

.for.body.i.i.i.i_crit_edge:                      ; preds = %31
  br label %for.body.i.i.i.i

.tonga_convert_mc_reg_table_entry_to_smc.exit.i.i_crit_edge: ; preds = %31
  call void @__sanitizer_cov_trace_pc() #8
  br label %tonga_convert_mc_reg_table_entry_to_smc.exit.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %.for.body.i.i.i.i_crit_edge
  %j.010.i.i.i.i = phi i32 [ %inc3.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %.for.body.i.i.i.i_crit_edge ]
  %i.09.i.i.i.i = phi i32 [ %i.1.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %.for.body.i.i.i.i_crit_edge ]
  %shl.i.i.i.i = shl nuw i32 1, %j.010.i.i.i.i
  %and.i.i.i.i = and i32 %shl.i.i.i.i, %conv20.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %if.then.i.i.i.i

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i.i.i = getelementptr %struct.tonga_smumgr, ptr %26, i32 0, i32 6, i32 3, i32 %i.1.i.i.i, i32 1, i32 %j.010.i.i.i.i
  %37 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %arrayidx2.i.i.i.i = getelementptr [16 x i32], ptr %arrayidx4.i.i, i32 0, i32 %i.09.i.i.i.i
  %39 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %38, ptr %arrayidx2.i.i.i.i, align 1
  %inc.i.i.i.i = add i32 %i.09.i.i.i.i, 1
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %if.then.i.i.i.i, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %i.1.i.i.i.i = phi i32 [ %inc.i.i.i.i, %if.then.i.i.i.i ], [ %i.09.i.i.i.i, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge ]
  %inc3.i.i.i.i = add nuw nsw i32 %j.010.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc3.i.i.i.i, %conv18.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i.i.tonga_convert_mc_reg_table_entry_to_smc.exit.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.tonga_convert_mc_reg_table_entry_to_smc.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tonga_convert_mc_reg_table_entry_to_smc.exit.i.i

tonga_convert_mc_reg_table_entry_to_smc.exit.i.i: ; preds = %for.inc.i.i.i.i.tonga_convert_mc_reg_table_entry_to_smc.exit.i.i_crit_edge, %.tonga_convert_mc_reg_table_entry_to_smc.exit.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.02.i.i, 1
  %40 = ptrtoint ptr %mclk_table.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mclk_table.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %41
  br i1 %cmp.i.i, label %tonga_convert_mc_reg_table_entry_to_smc.exit.i.i.for.body.i.i_crit_edge, label %tonga_convert_mc_reg_table_entry_to_smc.exit.i.i.tonga_update_and_upload_mc_reg_table.exit_crit_edge

tonga_convert_mc_reg_table_entry_to_smc.exit.i.i.tonga_update_and_upload_mc_reg_table.exit_crit_edge: ; preds = %tonga_convert_mc_reg_table_entry_to_smc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tonga_update_and_upload_mc_reg_table.exit

tonga_convert_mc_reg_table_entry_to_smc.exit.i.i.for.body.i.i_crit_edge: ; preds = %tonga_convert_mc_reg_table_entry_to_smc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

tonga_update_and_upload_mc_reg_table.exit:        ; preds = %tonga_convert_mc_reg_table_entry_to_smc.exit.i.i.tonga_update_and_upload_mc_reg_table.exit_crit_edge, %if.end.i.tonga_update_and_upload_mc_reg_table.exit_crit_edge
  %mc_reg_table_start.i = getelementptr inbounds %struct.smu7_smumgr, ptr %13, i32 0, i32 5
  %42 = ptrtoint ptr %mc_reg_table_start.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mc_reg_table_start.i, align 4
  %add.i = add i32 %43, 68
  %data6.i = getelementptr inbounds %struct.tonga_smumgr, ptr %13, i32 0, i32 5, i32 3
  %mclk_table.i = getelementptr inbounds %struct.smu7_dpm_table, ptr %15, i32 0, i32 1
  %44 = ptrtoint ptr %mclk_table.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mclk_table.i, align 4
  %mul.i = shl i32 %45, 6
  %call7.i = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add.i, ptr noundef %data6.i, i32 noundef %mul.i, i32 noundef 262144) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not = icmp eq i32 %call7.i, 0
  br i1 %tobool.not, label %tonga_update_and_upload_mc_reg_table.exit.do.end14_crit_edge, label %if.then5

tonga_update_and_upload_mc_reg_table.exit.do.end14_crit_edge: ; preds = %tonga_update_and_upload_mc_reg_table.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

if.then5:                                         ; preds = %tonga_update_and_upload_mc_reg_table.exit
  %call6 = call i32 @___ratelimit(ptr noundef nonnull @tonga_update_sclk_threshold._rs, ptr noundef nonnull @__func__.tonga_update_sclk_threshold) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.cleanup_crit_edge, label %if.then5.cleanup.sink.split_crit_edge

if.then5.cleanup.sink.split_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end14:                                         ; preds = %tonga_update_and_upload_mc_reg_table.exit.do.end14_crit_edge, %if.end.do.end14_crit_edge
  %46 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %backend, align 4
  %need_update_smu7_dpm_table.i45 = getelementptr inbounds %struct.smu7_hwmgr, ptr %47, i32 0, i32 71
  %48 = ptrtoint ptr %need_update_smu7_dpm_table.i45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %need_update_smu7_dpm_table.i45, align 4
  %and.i46 = and i32 %49, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46)
  %tobool.not.i = icmp eq i32 %and.i46, 0
  br i1 %tobool.not.i, label %do.end14.cleanup_crit_edge, label %tonga_program_mem_timing_parameters.exit

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tonga_program_mem_timing_parameters.exit:         ; preds = %do.end14
  %call.i = call fastcc i32 @tonga_program_memory_timing_parameters(ptr noundef %hwmgr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp17 = icmp eq i32 %call.i, 0
  br i1 %cmp17, label %tonga_program_mem_timing_parameters.exit.cleanup_crit_edge, label %if.then18

tonga_program_mem_timing_parameters.exit.cleanup_crit_edge: ; preds = %tonga_program_mem_timing_parameters.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then18:                                        ; preds = %tonga_program_mem_timing_parameters.exit
  %call19 = call i32 @___ratelimit(ptr noundef nonnull @tonga_update_sclk_threshold._rs.7, ptr noundef nonnull @__func__.tonga_update_sclk_threshold) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then18.cleanup_crit_edge, label %if.then18.cleanup.sink.split_crit_edge

if.then18.cleanup.sink.split_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then18.cleanup.sink.split_crit_edge, %if.then5.cleanup.sink.split_crit_edge
  %.str.10.sink = phi ptr [ @.str.6, %if.then5.cleanup.sink.split_crit_edge ], [ @.str.10, %if.then18.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call7.i, %if.then5.cleanup.sink.split_crit_edge ], [ %call.i, %if.then18.cleanup.sink.split_crit_edge ]
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %.str.10.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then18.cleanup_crit_edge, %tonga_program_mem_timing_parameters.exit.cleanup_crit_edge, %do.end14.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7.i, %if.then5.cleanup_crit_edge ], [ %call.i, %if.then18.cleanup_crit_edge ], [ 0, %tonga_program_mem_timing_parameters.exit.cleanup_crit_edge ], [ 0, %do.end14.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %low_sclk_interrupt_threshold) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tonga_thermal_setup_fan_table(ptr noundef %hwmgr) #0 align 64 {
entry:
  %fan_table = alloca %struct.SMU72_Discrete_FanTable, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fan_table) #6
  %2 = call ptr @memset(ptr %fan_table, i32 0, i32 28)
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %fanInfo = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4
  %5 = ptrtoint ptr %fanInfo to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fanInfo, align 4, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end5, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and1.i419 = and i32 %4, -1073741825
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and1.i419, ptr %arrayidx.i, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %fan_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %fan_table_start to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fan_table_start, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %and1.i421 = and i32 %4, -1073741825
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and1.i421, ptr %arrayidx.i, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %read_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %read_ind_register to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_ind_register, align 4
  %call12 = tail call i32 %16(ptr noundef %12, i32 noundef 1, i32 noundef -1070595992) #6
  %and = and i32 %call12, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp13 = icmp eq i32 %and, 0
  br i1 %cmp13, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %and1.i423 = and i32 %18, -1073741825
  store i32 %and1.i423, ptr %arrayidx.i, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %advanceFanControlParameters = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5
  %usPWMMin = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 3
  %19 = ptrtoint ptr %usPWMMin to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %usPWMMin, align 2
  %conv = zext i16 %20 to i32
  %mul = mul nuw nsw i32 %and, %conv
  %conv20 = zext i32 %mul to i64
  %21 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3777893186295716171, i64 %conv20) #11, !srcloc !370
  %22 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3777893186295716171, i64 %conv20, i64 %21) #11, !srcloc !371
  %div188417 = lshr i64 %22, 11
  %conv210 = trunc i64 %div188417 to i16
  %usTMed = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 1
  %23 = ptrtoint ptr %usTMed to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %usTMed, align 2
  %conv213 = zext i16 %24 to i32
  %25 = ptrtoint ptr %advanceFanControlParameters to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %advanceFanControlParameters, align 4
  %conv216 = zext i16 %26 to i32
  %sub217 = sub nsw i32 %conv213, %conv216
  %usTHigh = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 2
  %27 = ptrtoint ptr %usTHigh to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %usTHigh, align 4
  %conv220 = zext i16 %28 to i32
  %sub225 = sub nsw i32 %conv220, %conv213
  %usPWMMed = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 4
  %29 = ptrtoint ptr %usPWMMed to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %usPWMMed, align 4
  %conv228 = zext i16 %30 to i32
  %sub233 = sub nsw i32 %conv228, %conv
  %usPWMHigh = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 5
  %31 = ptrtoint ptr %usPWMHigh to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %usPWMHigh, align 2
  %conv236 = zext i16 %32 to i32
  %sub241 = sub nsw i32 %conv236, %conv228
  %mul242 = shl nuw nsw i32 %and, 4
  %mul243 = mul nsw i32 %sub233, %mul242
  %div244 = udiv i32 %mul243, %sub217
  %add245 = add i32 %div244, 50
  %div246 = udiv i32 %add245, 100
  %conv247 = trunc i32 %div246 to i16
  %mul249 = mul nsw i32 %sub241, %mul242
  %div250 = udiv i32 %mul249, %sub225
  %add251 = add i32 %div250, 50
  %div252 = udiv i32 %add251, 100
  %conv253 = trunc i32 %div252 to i16
  %add258 = add nuw nsw i32 %conv216, 50
  %div259 = udiv i32 %add258, 100
  %conv260 = trunc i32 %div259 to i16
  %TempMin = getelementptr inbounds %struct.SMU72_Discrete_FanTable, ptr %fan_table, i32 0, i32 1
  %33 = ptrtoint ptr %TempMin to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %conv260, ptr %TempMin, align 1
  %add265 = add nuw nsw i32 %conv213, 50
  %div266 = udiv i32 %add265, 100
  %conv267 = trunc i32 %div266 to i16
  %TempMed = getelementptr inbounds %struct.SMU72_Discrete_FanTable, ptr %fan_table, i32 0, i32 2
  %34 = ptrtoint ptr %TempMed to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %conv267, ptr %TempMed, align 1
  %usTMax = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 8
  %35 = ptrtoint ptr %usTMax to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %usTMax, align 4
  %conv270 = zext i16 %36 to i32
  %add271 = add nuw nsw i32 %conv270, 50
  %div272 = udiv i32 %add271, 100
  %conv273 = trunc i32 %div272 to i16
  %TempMax = getelementptr inbounds %struct.SMU72_Discrete_FanTable, ptr %fan_table, i32 0, i32 3
  %37 = ptrtoint ptr %TempMax to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %conv273, ptr %TempMax, align 1
  %Slope1 = getelementptr inbounds %struct.SMU72_Discrete_FanTable, ptr %fan_table, i32 0, i32 4
  %38 = ptrtoint ptr %Slope1 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %conv247, ptr %Slope1, align 1
  %Slope2 = getelementptr inbounds %struct.SMU72_Discrete_FanTable, ptr %fan_table, i32 0, i32 5
  %39 = ptrtoint ptr %Slope2 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %conv253, ptr %Slope2, align 1
  %FdoMin = getelementptr inbounds %struct.SMU72_Discrete_FanTable, ptr %fan_table, i32 0, i32 6
  %40 = ptrtoint ptr %FdoMin to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %conv210, ptr %FdoMin, align 1
  %ucTHyst = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 6
  %41 = ptrtoint ptr %ucTHyst to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ucTHyst, align 4
  %conv276 = zext i8 %42 to i16
  %HystDown = getelementptr inbounds %struct.SMU72_Discrete_FanTable, ptr %fan_table, i32 0, i32 8
  %43 = ptrtoint ptr %HystDown to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 %conv276, ptr %HystDown, align 1
  %HystUp = getelementptr inbounds %struct.SMU72_Discrete_FanTable, ptr %fan_table, i32 0, i32 7
  %44 = ptrtoint ptr %HystUp to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 1, ptr %HystUp, align 1
  %HystSlope = getelementptr inbounds %struct.SMU72_Discrete_FanTable, ptr %fan_table, i32 0, i32 9
  %45 = ptrtoint ptr %HystSlope to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 1, ptr %HystSlope, align 1
  %TempRespLim = getelementptr inbounds %struct.SMU72_Discrete_FanTable, ptr %fan_table, i32 0, i32 10
  %46 = ptrtoint ptr %TempRespLim to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 5, ptr %TempRespLim, align 1
  %47 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hwmgr, align 4
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %48, i32 0, i32 12
  %49 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %asic_funcs, align 4
  %get_xclk = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %get_xclk to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %get_xclk, align 4
  %call278 = tail call i32 %52(ptr noundef %48) #6
  %ulCycleDelay = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 7
  %53 = ptrtoint ptr %ulCycleDelay to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ulCycleDelay, align 4
  %mul281 = mul i32 %54, %call278
  %div282 = udiv i32 %mul281, 1600
  %RefreshPeriod = getelementptr inbounds %struct.SMU72_Discrete_FanTable, ptr %fan_table, i32 0, i32 14
  %55 = ptrtoint ptr %RefreshPeriod to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %div282, ptr %RefreshPeriod, align 1
  %conv283 = trunc i32 %and to i16
  %FdoMax = getelementptr inbounds %struct.SMU72_Discrete_FanTable, ptr %fan_table, i32 0, i32 15
  %56 = ptrtoint ptr %FdoMax to i32
  call void @__asan_storeN_noabort(i32 %56, i32 2)
  store i16 %conv283, ptr %FdoMax, align 1
  %57 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %device, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %read_ind_register286 = getelementptr inbounds %struct.cgs_ops, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %read_ind_register286 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read_ind_register286, align 4
  %call288 = tail call i32 %62(ptr noundef %58, i32 noundef 1, i32 noundef -1070596080) #6
  %and289 = lshr i32 %call288, 20
  %conv291 = trunc i32 %and289 to i8
  %TempSrc = getelementptr inbounds %struct.SMU72_Discrete_FanTable, ptr %fan_table, i32 0, i32 16
  %63 = ptrtoint ptr %TempSrc to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv291, ptr %TempSrc, align 1
  %FanControl_GL_Flag = getelementptr inbounds %struct.SMU72_Discrete_FanTable, ptr %fan_table, i32 0, i32 17
  %64 = ptrtoint ptr %FanControl_GL_Flag to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %FanControl_GL_Flag, align 1
  %65 = ptrtoint ptr %fan_table_start to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fan_table_start, align 8
  %call294 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %66, ptr noundef nonnull %fan_table, i32 noundef 36, i32 noundef 262144) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then14, %if.then6, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then1 ], [ 0, %if.then6 ], [ 0, %if.then14 ], [ %call294, %if.end18 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fan_table) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tonga_init_smc_table(ptr noundef %hwmgr) #0 align 64 {
entry:
  %dividers.i600 = alloca %struct.pp_atomctrl_clock_dividers_vi, align 4
  %dividers.i = alloca %struct.pp_atomctrl_clock_dividers_vi, align 4
  %gpio_pin_assignment = alloca %struct.pp_atomctrl_gpio_pin_assignment, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  %smc_state_table = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %4 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pptable, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_pin_assignment) #6
  %6 = ptrtoint ptr %gpio_pin_assignment to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %gpio_pin_assignment, align 4, !annotation !369
  %7 = call ptr @memset(ptr %smc_state_table, i32 0, i32 1972)
  %8 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %smu_backend, align 4
  %power_tune_defaults10.i = getelementptr inbounds %struct.tonga_smumgr, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %power_tune_defaults10.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @tonga_power_tune_data_set_array, ptr %power_tune_defaults10.i, align 8
  %voltage_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %voltage_control to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %voltage_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not = icmp eq i32 %12, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %13 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %backend, align 4
  %voltage_control.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %voltage_control.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %voltage_control.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp.i.i = icmp eq i32 %16, 2
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.tonga_populate_smc_vddc_table.exit.i_crit_edge

if.then.tonga_populate_smc_vddc_table.exit.i_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %tonga_populate_smc_vddc_table.exit.i

if.then.i.i:                                      ; preds = %if.then
  %vddc_voltage_table.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %14, i32 0, i32 41
  %17 = ptrtoint ptr %vddc_voltage_table.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vddc_voltage_table.i.i, align 4
  %VddcLevelCount.i.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 9
  %19 = ptrtoint ptr %VddcLevelCount.i.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %VddcLevelCount.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp31.not.i.i = icmp eq i32 %18, 0
  br i1 %cmp31.not.i.i, label %if.then.i.i.tonga_populate_smc_vddc_table.exit.i_crit_edge, label %if.then.i.i.for.body.i.i_crit_edge

if.then.i.i.for.body.i.i_crit_edge:               ; preds = %if.then.i.i
  br label %for.body.i.i

if.then.i.i.tonga_populate_smc_vddc_table.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tonga_populate_smc_vddc_table.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i.i.for.body.i.i_crit_edge
  %count.02.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.smu7_hwmgr, ptr %14, i32 0, i32 41, i32 3, i32 %count.02.i.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.i.i, align 4
  %mul.i.i = shl i16 %21, 2
  %arrayidx6.i.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 13, i32 %count.02.i.i
  %22 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %mul.i.i, ptr %arrayidx6.i.i, align 1
  %inc.i.i = add nuw i32 %count.02.i.i, 1
  %23 = ptrtoint ptr %VddcLevelCount.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %VddcLevelCount.i.i, align 1
  %cmp3.i.i = icmp ult i32 %inc.i.i, %24
  br i1 %cmp3.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.tonga_populate_smc_vddc_table.exit.i_crit_edge

for.body.i.i.tonga_populate_smc_vddc_table.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tonga_populate_smc_vddc_table.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

tonga_populate_smc_vddc_table.exit.i:             ; preds = %for.body.i.i.tonga_populate_smc_vddc_table.exit.i_crit_edge, %if.then.i.i.tonga_populate_smc_vddc_table.exit.i_crit_edge, %if.then.tonga_populate_smc_vddc_table.exit.i_crit_edge
  %25 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %backend, align 4
  %vddci_voltage_table.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %26, i32 0, i32 42
  %27 = ptrtoint ptr %vddci_voltage_table.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vddci_voltage_table.i.i, align 4
  %VddciLevelCount.i.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 10
  %29 = ptrtoint ptr %VddciLevelCount.i.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %VddciLevelCount.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp1.not.i.i = icmp eq i32 %28, 0
  br i1 %cmp1.not.i.i, label %tonga_populate_smc_vddc_table.exit.i.tonga_populate_smc_vdd_ci_table.exit.i_crit_edge, label %for.body.lr.ph.i.i

tonga_populate_smc_vddc_table.exit.i.tonga_populate_smc_vdd_ci_table.exit.i_crit_edge: ; preds = %tonga_populate_smc_vddc_table.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tonga_populate_smc_vdd_ci_table.exit.i

for.body.lr.ph.i.i:                               ; preds = %tonga_populate_smc_vddc_table.exit.i
  %vddci_control.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %26, i32 0, i32 40
  %SmioTable1.i.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 7
  br label %for.body.i3.i

for.body.i3.i:                                    ; preds = %for.inc.i.i.for.body.i3.i_crit_edge, %for.body.lr.ph.i.i
  %count.02.i2.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i8.i, %for.inc.i.i.for.body.i3.i_crit_edge ]
  %30 = ptrtoint ptr %vddci_control.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vddci_control.i.i, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %31, label %for.body.i3.i.for.inc.i.i_crit_edge [
    i32 2, label %if.then.i5.i
    i32 1, label %if.then10.i.i
  ]

for.body.i3.i.for.inc.i.i_crit_edge:              ; preds = %for.body.i3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then.i5.i:                                     ; preds = %for.body.i3.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i4.i = getelementptr %struct.smu7_hwmgr, ptr %26, i32 0, i32 42, i32 3, i32 %count.02.i2.i
  br label %for.inc.sink.split.i.i

if.then10.i.i:                                    ; preds = %for.body.i3.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx13.i.i = getelementptr %struct.smu7_hwmgr, ptr %26, i32 0, i32 42, i32 3, i32 %count.02.i2.i
  %33 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx13.i.i, align 4
  %mul16.i.i = shl i16 %34, 2
  %arrayidx18.i.i = getelementptr [4 x %struct.SMIO_Pattern], ptr %SmioTable1.i.i, i32 0, i32 %count.02.i2.i
  %35 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %mul16.i.i, ptr %arrayidx18.i.i, align 1
  %conv19.i.i = trunc i32 %count.02.i2.i to i8
  %Smio.i.i = getelementptr [4 x %struct.SMIO_Pattern], ptr %SmioTable1.i.i, i32 0, i32 %count.02.i2.i, i32 1
  %36 = ptrtoint ptr %Smio.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv19.i.i, ptr %Smio.i.i, align 1
  %smio_low.i.i = getelementptr %struct.smu7_hwmgr, ptr %26, i32 0, i32 42, i32 3, i32 %count.02.i2.i, i32 1
  %37 = ptrtoint ptr %smio_low.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %smio_low.i.i, align 4
  %arrayidx27.i.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 46, i32 %count.02.i2.i
  %39 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %arrayidx27.i.i, align 1
  %or.i.i = or i32 %40, %38
  store i32 %or.i.i, ptr %arrayidx27.i.i, align 1
  br label %for.inc.sink.split.i.i

for.inc.sink.split.i.i:                           ; preds = %if.then10.i.i, %if.then.i5.i
  %arrayidx.sink.i.i = phi ptr [ %arrayidx.i4.i, %if.then.i5.i ], [ %arrayidx13.i.i, %if.then10.i.i ]
  %41 = ptrtoint ptr %arrayidx.sink.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx.sink.i.i, align 4
  %mul.i6.i = shl i16 %42, 2
  %arrayidx6.i7.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 15, i32 %count.02.i2.i
  %43 = ptrtoint ptr %arrayidx6.i7.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 %mul.i6.i, ptr %arrayidx6.i7.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.inc.sink.split.i.i, %for.body.i3.i.for.inc.i.i_crit_edge
  %inc.i8.i = add nuw i32 %count.02.i2.i, 1
  %44 = ptrtoint ptr %VddciLevelCount.i.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %VddciLevelCount.i.i, align 1
  %cmp.i9.i = icmp ult i32 %inc.i8.i, %45
  br i1 %cmp.i9.i, label %for.inc.i.i.for.body.i3.i_crit_edge, label %for.inc.i.i.tonga_populate_smc_vdd_ci_table.exit.i_crit_edge

for.inc.i.i.tonga_populate_smc_vdd_ci_table.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tonga_populate_smc_vdd_ci_table.exit.i

for.inc.i.i.for.body.i3.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i3.i

tonga_populate_smc_vdd_ci_table.exit.i:           ; preds = %for.inc.i.i.tonga_populate_smc_vdd_ci_table.exit.i_crit_edge, %tonga_populate_smc_vddc_table.exit.i.tonga_populate_smc_vdd_ci_table.exit.i_crit_edge
  %mask_low.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %26, i32 0, i32 42, i32 1
  %46 = ptrtoint ptr %mask_low.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mask_low.i.i, align 4
  %SmioMask1.i.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 5
  %48 = ptrtoint ptr %SmioMask1.i.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %47, ptr %SmioMask1.i.i, align 1
  %49 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %backend, align 4
  %vdd_gfx_control.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %vdd_gfx_control.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %vdd_gfx_control.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp.i11.i = icmp eq i32 %52, 2
  br i1 %cmp.i11.i, label %if.then.i12.i, label %tonga_populate_smc_vdd_ci_table.exit.i.tonga_populate_smc_vdd_gfx_table.exit.i_crit_edge

tonga_populate_smc_vdd_ci_table.exit.i.tonga_populate_smc_vdd_gfx_table.exit.i_crit_edge: ; preds = %tonga_populate_smc_vdd_ci_table.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tonga_populate_smc_vdd_gfx_table.exit.i

if.then.i12.i:                                    ; preds = %tonga_populate_smc_vdd_ci_table.exit.i
  %vddgfx_voltage_table.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %50, i32 0, i32 44
  %53 = ptrtoint ptr %vddgfx_voltage_table.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %vddgfx_voltage_table.i.i, align 4
  %VddGfxLevelCount.i.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 11
  %55 = ptrtoint ptr %VddGfxLevelCount.i.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %54, ptr %VddGfxLevelCount.i.i, align 1
  %56 = load i32, ptr %vddgfx_voltage_table.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp41.not.i.i = icmp eq i32 %56, 0
  br i1 %cmp41.not.i.i, label %if.then.i12.i.tonga_populate_smc_vdd_gfx_table.exit.i_crit_edge, label %if.then.i12.i.for.body.i17.i_crit_edge

if.then.i12.i.for.body.i17.i_crit_edge:           ; preds = %if.then.i12.i
  br label %for.body.i17.i

if.then.i12.i.tonga_populate_smc_vdd_gfx_table.exit.i_crit_edge: ; preds = %if.then.i12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tonga_populate_smc_vdd_gfx_table.exit.i

for.body.i17.i:                                   ; preds = %for.body.i17.i.for.body.i17.i_crit_edge, %if.then.i12.i.for.body.i17.i_crit_edge
  %count.02.i13.i = phi i32 [ %inc.i16.i, %for.body.i17.i.for.body.i17.i_crit_edge ], [ 0, %if.then.i12.i.for.body.i17.i_crit_edge ]
  %arrayidx.i14.i = getelementptr %struct.smu7_hwmgr, ptr %50, i32 0, i32 44, i32 3, i32 %count.02.i13.i
  %57 = ptrtoint ptr %arrayidx.i14.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx.i14.i, align 4
  %mul.i15.i = shl i16 %58, 2
  %arrayidx7.i.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 14, i32 %count.02.i13.i
  %59 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 %mul.i15.i, ptr %arrayidx7.i.i, align 1
  %inc.i16.i = add nuw i32 %count.02.i13.i, 1
  %60 = ptrtoint ptr %vddgfx_voltage_table.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %vddgfx_voltage_table.i.i, align 4
  %cmp4.i.i = icmp ult i32 %inc.i16.i, %61
  br i1 %cmp4.i.i, label %for.body.i17.i.for.body.i17.i_crit_edge, label %for.body.i17.i.tonga_populate_smc_vdd_gfx_table.exit.i_crit_edge

for.body.i17.i.tonga_populate_smc_vdd_gfx_table.exit.i_crit_edge: ; preds = %for.body.i17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tonga_populate_smc_vdd_gfx_table.exit.i

for.body.i17.i.for.body.i17.i_crit_edge:          ; preds = %for.body.i17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i17.i

tonga_populate_smc_vdd_gfx_table.exit.i:          ; preds = %for.body.i17.i.tonga_populate_smc_vdd_gfx_table.exit.i_crit_edge, %if.then.i12.i.tonga_populate_smc_vdd_gfx_table.exit.i_crit_edge, %tonga_populate_smc_vdd_ci_table.exit.i.tonga_populate_smc_vdd_gfx_table.exit.i_crit_edge
  %62 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %backend, align 4
  %mvdd_control.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %63, i32 0, i32 23
  %64 = ptrtoint ptr %mvdd_control.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mvdd_control.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp.i19.i = icmp eq i32 %65, 1
  br i1 %cmp.i19.i, label %if.then.i21.i, label %tonga_populate_smc_vdd_gfx_table.exit.i.tonga_populate_smc_mvdd_table.exit.i_crit_edge

tonga_populate_smc_vdd_gfx_table.exit.i.tonga_populate_smc_mvdd_table.exit.i_crit_edge: ; preds = %tonga_populate_smc_vdd_gfx_table.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tonga_populate_smc_mvdd_table.exit.i

if.then.i21.i:                                    ; preds = %tonga_populate_smc_vdd_gfx_table.exit.i
  %mvdd_voltage_table.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %63, i32 0, i32 43
  %66 = ptrtoint ptr %mvdd_voltage_table.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mvdd_voltage_table.i.i, align 4
  %MvddLevelCount.i.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 12
  %68 = ptrtoint ptr %MvddLevelCount.i.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %67, ptr %MvddLevelCount.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp31.not.i20.i = icmp eq i32 %67, 0
  br i1 %cmp31.not.i20.i, label %if.then.i21.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i22.i

if.then.i21.i.for.end.i.i_crit_edge:              ; preds = %if.then.i21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body.lr.ph.i22.i:                             ; preds = %if.then.i21.i
  %SmioTable2.i.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 8
  br label %for.body.i32.i

for.body.i32.i:                                   ; preds = %for.body.i32.i.for.body.i32.i_crit_edge, %for.body.lr.ph.i22.i
  %count.02.i23.i = phi i32 [ 0, %for.body.lr.ph.i22.i ], [ %inc.i30.i, %for.body.i32.i.for.body.i32.i_crit_edge ]
  %arrayidx.i24.i = getelementptr %struct.smu7_hwmgr, ptr %63, i32 0, i32 43, i32 3, i32 %count.02.i23.i
  %69 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx.i24.i, align 4
  %mul.i25.i = shl i16 %70, 2
  %arrayidx6.i26.i = getelementptr [4 x %struct.SMIO_Pattern], ptr %SmioTable2.i.i, i32 0, i32 %count.02.i23.i
  %71 = ptrtoint ptr %arrayidx6.i26.i to i32
  call void @__asan_storeN_noabort(i32 %71, i32 2)
  store i16 %mul.i25.i, ptr %arrayidx6.i26.i, align 1
  %conv7.i.i = trunc i32 %count.02.i23.i to i8
  %Smio.i27.i = getelementptr [4 x %struct.SMIO_Pattern], ptr %SmioTable2.i.i, i32 0, i32 %count.02.i23.i, i32 1
  %72 = ptrtoint ptr %Smio.i27.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv7.i.i, ptr %Smio.i27.i, align 1
  %smio_low.i28.i = getelementptr %struct.smu7_hwmgr, ptr %63, i32 0, i32 43, i32 3, i32 %count.02.i23.i, i32 1
  %73 = ptrtoint ptr %smio_low.i28.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %smio_low.i28.i, align 4
  %arrayidx15.i.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 46, i32 %count.02.i23.i
  %75 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %arrayidx15.i.i, align 1
  %or.i29.i = or i32 %76, %74
  store i32 %or.i29.i, ptr %arrayidx15.i.i, align 1
  %inc.i30.i = add nuw i32 %count.02.i23.i, 1
  %77 = ptrtoint ptr %MvddLevelCount.i.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %MvddLevelCount.i.i, align 1
  %cmp3.i31.i = icmp ult i32 %inc.i30.i, %78
  br i1 %cmp3.i31.i, label %for.body.i32.i.for.body.i32.i_crit_edge, label %for.body.i32.i.for.end.i.i_crit_edge

for.body.i32.i.for.end.i.i_crit_edge:             ; preds = %for.body.i32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body.i32.i.for.body.i32.i_crit_edge:          ; preds = %for.body.i32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i32.i

for.end.i.i:                                      ; preds = %for.body.i32.i.for.end.i.i_crit_edge, %if.then.i21.i.for.end.i.i_crit_edge
  %mask_low.i33.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %63, i32 0, i32 43, i32 1
  %79 = ptrtoint ptr %mask_low.i33.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mask_low.i33.i, align 4
  %SmioMask2.i.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 6
  %81 = ptrtoint ptr %SmioMask2.i.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %80, ptr %SmioMask2.i.i, align 1
  br label %tonga_populate_smc_mvdd_table.exit.i

tonga_populate_smc_mvdd_table.exit.i:             ; preds = %for.end.i.i, %tonga_populate_smc_vdd_gfx_table.exit.i.tonga_populate_smc_mvdd_table.exit.i_crit_edge
  %82 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %backend, align 4
  %84 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pptable, align 4
  %vddgfx_lookup_table1.i.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %85, i32 0, i32 16
  %86 = ptrtoint ptr %vddgfx_lookup_table1.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %vddgfx_lookup_table1.i.i, align 4
  %vddc_lookup_table2.i.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %85, i32 0, i32 15
  %88 = ptrtoint ptr %vddc_lookup_table2.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %vddc_lookup_table2.i.i, align 4
  %VddcLevelCount.i35.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 9
  %90 = ptrtoint ptr %VddcLevelCount.i35.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %VddcLevelCount.i35.i, align 1
  %VddGfxLevelCount.i36.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 11
  %92 = ptrtoint ptr %VddGfxLevelCount.i36.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %VddGfxLevelCount.i36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp2.not.i.i = icmp eq i32 %91, 0
  br i1 %cmp2.not.i.i, label %for.end.thread.i.i, label %tonga_populate_smc_mvdd_table.exit.i.for.body.i40.i_crit_edge

tonga_populate_smc_mvdd_table.exit.i.for.body.i40.i_crit_edge: ; preds = %tonga_populate_smc_mvdd_table.exit.i
  br label %for.body.i40.i

for.body.i40.i:                                   ; preds = %for.body.i40.i.for.body.i40.i_crit_edge, %tonga_populate_smc_mvdd_table.exit.i.for.body.i40.i_crit_edge
  %count.03.i.i = phi i32 [ %inc.i39.i, %for.body.i40.i.for.body.i40.i_crit_edge ], [ 0, %tonga_populate_smc_mvdd_table.exit.i.for.body.i40.i_crit_edge ]
  %arrayidx.i37.i = getelementptr %struct.smu7_hwmgr, ptr %83, i32 0, i32 41, i32 3, i32 %count.03.i.i
  %94 = ptrtoint ptr %arrayidx.i37.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arrayidx.i37.i, align 4
  %call.i.i = tail call zeroext i8 @phm_get_voltage_index(ptr noundef %89, i16 noundef zeroext %95) #6
  %idxprom.i.i = zext i8 %call.i.i to i32
  %us_cac_low.i.i = getelementptr %struct.phm_ppt_v1_voltage_lookup_table, ptr %89, i32 0, i32 1, i32 %idxprom.i.i, i32 2
  %96 = ptrtoint ptr %us_cac_low.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %us_cac_low.i.i, align 2
  %call5.i.i = tail call zeroext i8 @convert_to_vid(i16 noundef zeroext %97) #6
  %arrayidx6.i38.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 20, i32 %count.03.i.i
  %98 = ptrtoint ptr %arrayidx6.i38.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %call5.i.i, ptr %arrayidx6.i38.i, align 1
  %us_cac_mid.i.i = getelementptr %struct.phm_ppt_v1_voltage_lookup_table, ptr %89, i32 0, i32 1, i32 %idxprom.i.i, i32 3
  %99 = ptrtoint ptr %us_cac_mid.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %us_cac_mid.i.i, align 2
  %call10.i.i = tail call zeroext i8 @convert_to_vid(i16 noundef zeroext %100) #6
  %arrayidx11.i.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 19, i32 %count.03.i.i
  %101 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %call10.i.i, ptr %arrayidx11.i.i, align 1
  %us_cac_high.i.i = getelementptr %struct.phm_ppt_v1_voltage_lookup_table, ptr %89, i32 0, i32 1, i32 %idxprom.i.i, i32 4
  %102 = ptrtoint ptr %us_cac_high.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %us_cac_high.i.i, align 2
  %call15.i.i = tail call zeroext i8 @convert_to_vid(i16 noundef zeroext %103) #6
  %arrayidx16.i.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %count.03.i.i
  %104 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %call15.i.i, ptr %arrayidx16.i.i, align 1
  %inc.i39.i = add nuw i32 %count.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i39.i, %91
  br i1 %exitcond.not.i.i, label %for.end.i42.i, label %for.body.i40.i.for.body.i40.i_crit_edge

for.body.i40.i.for.body.i40.i_crit_edge:          ; preds = %for.body.i40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i40.i

for.end.i42.i:                                    ; preds = %for.body.i40.i
  %vdd_gfx_control.i41.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %83, i32 0, i32 8
  %105 = ptrtoint ptr %vdd_gfx_control.i41.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %vdd_gfx_control.i41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %106)
  %cmp17.i.i = icmp eq i32 %106, 2
  br i1 %cmp17.i.i, label %for.end.i42.i.for.cond18.preheader.i.i_crit_edge, label %for.end.i42.i.for.body39.i.i_crit_edge

for.end.i42.i.for.body39.i.i_crit_edge:           ; preds = %for.end.i42.i
  br label %for.body39.i.i

for.end.i42.i.for.cond18.preheader.i.i_crit_edge: ; preds = %for.end.i42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond18.preheader.i.i

for.end.thread.i.i:                               ; preds = %tonga_populate_smc_mvdd_table.exit.i
  %vdd_gfx_control13.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %83, i32 0, i32 8
  %107 = ptrtoint ptr %vdd_gfx_control13.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %vdd_gfx_control13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %108)
  %cmp1714.i.i = icmp eq i32 %108, 2
  br i1 %cmp1714.i.i, label %for.end.thread.i.i.for.cond18.preheader.i.i_crit_edge, label %for.end.thread.i.i.if.end_crit_edge

for.end.thread.i.i.if.end_crit_edge:              ; preds = %for.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.end.thread.i.i.for.cond18.preheader.i.i_crit_edge: ; preds = %for.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond18.preheader.i.i

for.cond18.preheader.i.i:                         ; preds = %for.end.thread.i.i.for.cond18.preheader.i.i_crit_edge, %for.end.i42.i.for.cond18.preheader.i.i_crit_edge
  %index.0.lcssa15.i.i = phi i8 [ 0, %for.end.thread.i.i.for.cond18.preheader.i.i_crit_edge ], [ %call.i.i, %for.end.i42.i.for.cond18.preheader.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp196.not.i.i = icmp eq i32 %93, 0
  br i1 %cmp196.not.i.i, label %for.cond18.preheader.i.i.if.end_crit_edge, label %for.cond18.preheader.i.i.for.body20.i.i_crit_edge

for.cond18.preheader.i.i.for.body20.i.i_crit_edge: ; preds = %for.cond18.preheader.i.i
  br label %for.body20.i.i

for.cond18.preheader.i.i.if.end_crit_edge:        ; preds = %for.cond18.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body20.i.i:                                   ; preds = %for.body20.i.i.for.body20.i.i_crit_edge, %for.cond18.preheader.i.i.for.body20.i.i_crit_edge
  %count.18.i.i = phi i32 [ %inc34.i.i, %for.body20.i.i.for.body20.i.i_crit_edge ], [ 0, %for.cond18.preheader.i.i.for.body20.i.i_crit_edge ]
  %index.17.i.i = phi i8 [ %call26.i.i, %for.body20.i.i.for.body20.i.i_crit_edge ], [ %index.0.lcssa15.i.i, %for.cond18.preheader.i.i.for.body20.i.i_crit_edge ]
  %idxprom22.i.i = zext i8 %index.17.i.i to i32
  %us_cac_mid24.i.i = getelementptr %struct.phm_ppt_v1_voltage_lookup_table, ptr %87, i32 0, i32 1, i32 %idxprom22.i.i, i32 3
  %109 = ptrtoint ptr %us_cac_mid24.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %us_cac_mid24.i.i, align 2
  %call25.i.i = tail call zeroext i8 @convert_to_vid(i16 noundef zeroext %110) #6
  %conv.i.i = zext i8 %call25.i.i to i16
  %call26.i.i = tail call zeroext i8 @phm_get_voltage_index(ptr noundef %87, i16 noundef zeroext %conv.i.i) #6
  %idxprom28.i.i = zext i8 %call26.i.i to i32
  %us_cac_high30.i.i = getelementptr %struct.phm_ppt_v1_voltage_lookup_table, ptr %87, i32 0, i32 1, i32 %idxprom28.i.i, i32 4
  %111 = ptrtoint ptr %us_cac_high30.i.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %us_cac_high30.i.i, align 2
  %call31.i.i = tail call zeroext i8 @convert_to_vid(i16 noundef zeroext %112) #6
  %arrayidx32.i.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 18, i32 %count.18.i.i
  %113 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %call31.i.i, ptr %arrayidx32.i.i, align 1
  %inc34.i.i = add nuw i32 %count.18.i.i, 1
  %exitcond11.not.i.i = icmp eq i32 %inc34.i.i, %93
  br i1 %exitcond11.not.i.i, label %for.body20.i.i.if.end_crit_edge, label %for.body20.i.i.for.body20.i.i_crit_edge

for.body20.i.i.for.body20.i.i_crit_edge:          ; preds = %for.body20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body20.i.i

for.body20.i.i.if.end_crit_edge:                  ; preds = %for.body20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body39.i.i:                                   ; preds = %for.body39.i.i.for.body39.i.i_crit_edge, %for.end.i42.i.for.body39.i.i_crit_edge
  %count.25.i.i = phi i32 [ %inc65.i.i, %for.body39.i.i.for.body39.i.i_crit_edge ], [ 0, %for.end.i42.i.for.body39.i.i_crit_edge ]
  %arrayidx42.i.i = getelementptr %struct.smu7_hwmgr, ptr %83, i32 0, i32 41, i32 3, i32 %count.25.i.i
  %114 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %arrayidx42.i.i, align 4
  %call44.i.i = tail call zeroext i8 @phm_get_voltage_index(ptr noundef %89, i16 noundef zeroext %115) #6
  %idxprom46.i.i = zext i8 %call44.i.i to i32
  %us_cac_low48.i.i = getelementptr %struct.phm_ppt_v1_voltage_lookup_table, ptr %89, i32 0, i32 1, i32 %idxprom46.i.i, i32 2
  %116 = ptrtoint ptr %us_cac_low48.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %us_cac_low48.i.i, align 2
  %call49.i.i = tail call zeroext i8 @convert_to_vid(i16 noundef zeroext %117) #6
  %arrayidx50.i.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 17, i32 %count.25.i.i
  %118 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %call49.i.i, ptr %arrayidx50.i.i, align 1
  %us_cac_mid54.i.i = getelementptr %struct.phm_ppt_v1_voltage_lookup_table, ptr %89, i32 0, i32 1, i32 %idxprom46.i.i, i32 3
  %119 = ptrtoint ptr %us_cac_mid54.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %us_cac_mid54.i.i, align 2
  %call55.i.i = tail call zeroext i8 @convert_to_vid(i16 noundef zeroext %120) #6
  %arrayidx56.i.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 16, i32 %count.25.i.i
  %121 = ptrtoint ptr %arrayidx56.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %call55.i.i, ptr %arrayidx56.i.i, align 1
  %us_cac_high60.i.i = getelementptr %struct.phm_ppt_v1_voltage_lookup_table, ptr %89, i32 0, i32 1, i32 %idxprom46.i.i, i32 4
  %122 = ptrtoint ptr %us_cac_high60.i.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %us_cac_high60.i.i, align 2
  %call61.i.i = tail call zeroext i8 @convert_to_vid(i16 noundef zeroext %123) #6
  %arrayidx63.i.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 18, i32 %count.25.i.i
  %124 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %call61.i.i, ptr %arrayidx63.i.i, align 1
  %inc65.i.i = add nuw i32 %count.25.i.i, 1
  %exitcond10.not.i.i = icmp eq i32 %inc65.i.i, %91
  br i1 %exitcond10.not.i.i, label %for.body39.i.i.if.end_crit_edge, label %for.body39.i.i.for.body39.i.i_crit_edge

for.body39.i.i.for.body39.i.i_crit_edge:          ; preds = %for.body39.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body39.i.i

for.body39.i.i.if.end_crit_edge:                  ; preds = %for.body39.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %for.body39.i.i.if.end_crit_edge, %for.body20.i.i.if.end_crit_edge, %for.cond18.preheader.i.i.if.end_crit_edge, %for.end.thread.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %platform_descriptor = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23
  %125 = ptrtoint ptr %platform_descriptor to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %platform_descriptor, align 4
  %and1.i = and i32 %126, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %SystemFlags = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 3
  %127 = ptrtoint ptr %SystemFlags to i32
  call void @__asan_loadN_noabort(i32 %127, i32 4)
  %128 = load i32, ptr %SystemFlags, align 1
  %or = or i32 %128, 1
  store i32 %or, ptr %SystemFlags, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %129 = ptrtoint ptr %platform_descriptor to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %platform_descriptor, align 4
  %and1.i582 = and i32 %130, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i582)
  %cmp.i583.not = icmp eq i32 %and1.i582, 0
  br i1 %cmp.i583.not, label %if.end4.if.end12_crit_edge, label %if.then9

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %SystemFlags10 = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 3
  %131 = ptrtoint ptr %SystemFlags10 to i32
  call void @__asan_loadN_noabort(i32 %131, i32 4)
  %132 = load i32, ptr %SystemFlags10, align 1
  %or11 = or i32 %132, 2
  store i32 %or11, ptr %SystemFlags10, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end4.if.end12_crit_edge
  %is_memory_gddr5 = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 12
  %133 = ptrtoint ptr %is_memory_gddr5 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %is_memory_gddr5, align 4, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool.not = icmp eq i8 %134, 0
  br i1 %tobool.not, label %if.end12.if.end16_crit_edge, label %if.then13

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then13:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %SystemFlags14 = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 3
  %135 = ptrtoint ptr %SystemFlags14 to i32
  call void @__asan_loadN_noabort(i32 %135, i32 4)
  %136 = load i32, ptr %SystemFlags14, align 1
  %or15 = or i32 %136, 4
  store i32 %or15, ptr %SystemFlags14, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end12.if.end16_crit_edge
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %137 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %device, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 4
  %call18 = tail call i32 %142(ptr noundef %138, i32 noundef 2414) #6
  %143 = and i32 %call18, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %switch = icmp eq i32 %143, 0
  br i1 %switch, label %if.then25, label %if.end16.if.end28_crit_edge

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then25:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %SystemFlags26 = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 3
  %144 = ptrtoint ptr %SystemFlags26 to i32
  call void @__asan_loadN_noabort(i32 %144, i32 4)
  %145 = load i32, ptr %SystemFlags26, align 1
  %or27 = or i32 %145, 64
  store i32 %or27, ptr %SystemFlags26, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end16.if.end28_crit_edge
  %ulv_supported = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 55
  %146 = ptrtoint ptr %ulv_supported to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %ulv_supported, align 2, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool29.not = icmp eq i8 %147, 0
  br i1 %tobool29.not, label %if.end28.if.end49_crit_edge, label %land.lhs.true

if.end28.if.end49_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

land.lhs.true:                                    ; preds = %if.end28
  %us_ulv_voltage_offset = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %5, i32 0, i32 20
  %148 = ptrtoint ptr %us_ulv_voltage_offset to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %us_ulv_voltage_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %149)
  %tobool32.not = icmp eq i16 %149, 0
  br i1 %tobool32.not, label %land.lhs.true.if.end49_crit_edge, label %if.then33

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %Ulv.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 44
  %150 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pptable, align 4
  %152 = ptrtoint ptr %Ulv.i to i32
  call void @__asan_storeN_noabort(i32 %152, i32 4)
  store i32 0, ptr %Ulv.i, align 1
  %CcPwrDynRm1.i.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 44, i32 1
  %153 = ptrtoint ptr %CcPwrDynRm1.i.i to i32
  call void @__asan_storeN_noabort(i32 %153, i32 4)
  store i32 0, ptr %CcPwrDynRm1.i.i, align 1
  %us_ulv_voltage_offset.i.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %151, i32 0, i32 20
  %154 = ptrtoint ptr %us_ulv_voltage_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %us_ulv_voltage_offset.i.i, align 4
  %VddcOffset.i.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 44, i32 2
  %156 = ptrtoint ptr %VddcOffset.i.i to i32
  call void @__asan_storeN_noabort(i32 %156, i32 2)
  store i16 %155, ptr %VddcOffset.i.i, align 1
  %157 = load i16, ptr %us_ulv_voltage_offset.i.i, align 4
  %conv.i.i585 = zext i16 %157 to i32
  %mul.i.i586 = mul nuw nsw i32 %conv.i.i585, 100
  %div.i.i = udiv i32 %mul.i.i586, 625
  %conv2.i.i = trunc i32 %div.i.i to i8
  %VddcOffsetVid.i.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 44, i32 3
  %158 = ptrtoint ptr %VddcOffsetVid.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %conv2.i.i, ptr %VddcOffsetVid.i.i, align 1
  %VddcPhase.i.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 44, i32 4
  %159 = ptrtoint ptr %VddcPhase.i.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 1, ptr %VddcPhase.i.i, align 1
  %160 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %device, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %161, align 4
  %write_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %163, i32 0, i32 3
  %164 = ptrtoint ptr %write_ind_register to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %write_ind_register, align 4
  tail call void %165(ptr noundef %161, i32 noundef 1, i32 noundef -1071644324, i32 noundef 262197) #6
  br label %if.end49

if.end49:                                         ; preds = %if.then33, %land.lhs.true.if.end49_crit_edge, %if.end28.if.end49_crit_edge
  %166 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %backend, align 4
  %168 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %smu_backend, align 4
  %pcie_speed_table.i = getelementptr inbounds %struct.smu7_dpm_table, ptr %167, i32 0, i32 2
  %pcie_spc_cap.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %167, i32 0, i32 19
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end49
  %i.01.i = phi i32 [ 0, %if.end49 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %value.i = getelementptr %struct.smu7_dpm_table, ptr %167, i32 0, i32 2, i32 1, i32 %i.01.i, i32 1
  %170 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %value.i, align 4
  %conv.i = trunc i32 %171 to i8
  %arrayidx3.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 38, i32 %i.01.i
  %172 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %conv.i, ptr %arrayidx3.i, align 1
  %param1.i = getelementptr %struct.smu7_dpm_table, ptr %167, i32 0, i32 2, i32 1, i32 %i.01.i, i32 2
  %173 = ptrtoint ptr %param1.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %param1.i, align 4
  %call.i = tail call zeroext i8 @encode_pcie_lane_width(i32 noundef %174) #6
  %PcieLaneCount.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 38, i32 %i.01.i, i32 1
  %175 = ptrtoint ptr %PcieLaneCount.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %call.i, ptr %PcieLaneCount.i, align 1
  %EnabledForActivity.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 38, i32 %i.01.i, i32 2
  %176 = ptrtoint ptr %EnabledForActivity.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 1, ptr %EnabledForActivity.i, align 1
  %177 = ptrtoint ptr %pcie_spc_cap.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %pcie_spc_cap.i, align 4
  %conv11.i = trunc i32 %178 to i8
  %SPC.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 38, i32 %i.01.i, i32 3
  %179 = ptrtoint ptr %SPC.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %conv11.i, ptr %SPC.i, align 1
  %DownThreshold.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 38, i32 %i.01.i, i32 4
  %180 = ptrtoint ptr %DownThreshold.i to i32
  call void @__asan_storeN_noabort(i32 %180, i32 4)
  store i32 5, ptr %DownThreshold.i, align 1
  %UpThreshold.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 38, i32 %i.01.i, i32 5
  %181 = ptrtoint ptr %UpThreshold.i to i32
  call void @__asan_storeN_noabort(i32 %181, i32 4)
  store i32 30, ptr %UpThreshold.i, align 1
  %inc.i = add i32 %i.01.i, 1
  %182 = ptrtoint ptr %pcie_speed_table.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %pcie_speed_table.i, align 4
  %cmp.not.i = icmp ugt i32 %inc.i, %183
  br i1 %cmp.not.i, label %tonga_populate_smc_link_level.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

tonga_populate_smc_link_level.exit:               ; preds = %for.body.i
  %conv20.i = trunc i32 %183 to i8
  %LinkLevelCount.i = getelementptr inbounds %struct.tonga_smumgr, ptr %169, i32 0, i32 1, i32 24
  %184 = ptrtoint ptr %LinkLevelCount.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %conv20.i, ptr %LinkLevelCount.i, align 2
  %call22.i = tail call i32 @phm_get_dpm_level_enable_mask_value(ptr noundef %pcie_speed_table.i) #6
  %pcie_dpm_enable_mask.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %167, i32 0, i32 70, i32 6
  %185 = ptrtoint ptr %pcie_dpm_enable_mask.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %call22.i, ptr %pcie_dpm_enable_mask.i, align 4
  %call66 = tail call i32 @tonga_populate_all_graphic_levels(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool68.not = icmp eq i32 %call66, 0
  br i1 %tobool68.not, label %do.end81, label %if.then69

if.then69:                                        ; preds = %tonga_populate_smc_link_level.exit
  %call70 = tail call i32 @___ratelimit(ptr noundef nonnull @tonga_init_smc_table._rs.17, ptr noundef nonnull @__func__.tonga_init_smc_table) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then69.cleanup_crit_edge, label %do.end75

if.then69.cleanup_crit_edge:                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end75:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.20) #10
  br label %cleanup

do.end81:                                         ; preds = %tonga_populate_smc_link_level.exit
  %call82 = tail call i32 @tonga_populate_all_memory_levels(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool84.not = icmp eq i32 %call82, 0
  br i1 %tobool84.not, label %do.end97, label %if.then85

if.then85:                                        ; preds = %do.end81
  %call86 = tail call i32 @___ratelimit(ptr noundef nonnull @tonga_init_smc_table._rs.21, ptr noundef nonnull @__func__.tonga_init_smc_table) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then85.cleanup_crit_edge, label %do.end91

if.then85.cleanup_crit_edge:                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end91:                                         ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #8
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.24) #10
  br label %cleanup

do.end97:                                         ; preds = %do.end81
  %186 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %smu_backend, align 4
  %188 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %backend, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dividers.i) #6
  %190 = call ptr @memset(ptr %dividers.i, i32 255, i32 16)
  %clock_registers.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %189, i32 0, i32 11
  %191 = ptrtoint ptr %clock_registers.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %clock_registers.i, align 4
  %vCG_SPLL_FUNC_CNTL_2.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %189, i32 0, i32 11, i32 1
  %193 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_2.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %vCG_SPLL_FUNC_CNTL_2.i, align 4
  %vDLL_CNTL.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %189, i32 0, i32 11, i32 6
  %195 = ptrtoint ptr %vDLL_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %vDLL_CNTL.i, align 4
  %vMCLK_PWRMGT_CNTL.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %189, i32 0, i32 11, i32 7
  %197 = ptrtoint ptr %vMCLK_PWRMGT_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %vMCLK_PWRMGT_CNTL.i, align 4
  %ACPILevel.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 39
  %199 = ptrtoint ptr %ACPILevel.i to i32
  call void @__asan_loadN_noabort(i32 %199, i32 4)
  %200 = load i32, ptr %ACPILevel.i, align 1
  %and.i = and i32 %200, -2
  store i32 %and.i, ptr %ACPILevel.i, align 1
  %MinVoltage.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 39, i32 1
  %GraphicsLevel.i = getelementptr inbounds %struct.tonga_smumgr, ptr %187, i32 0, i32 1, i32 35
  %201 = ptrtoint ptr %GraphicsLevel.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %GraphicsLevel.i, align 8
  %203 = ptrtoint ptr %MinVoltage.i to i32
  call void @__asan_storeN_noabort(i32 %203, i32 4)
  store i32 %202, ptr %MinVoltage.i, align 1
  %call.i590 = tail call i32 @atomctrl_get_reference_clock(ptr noundef %hwmgr) #6
  %SclkFrequency.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 39, i32 2
  %204 = ptrtoint ptr %SclkFrequency.i to i32
  call void @__asan_storeN_noabort(i32 %204, i32 4)
  store i32 %call.i590, ptr %SclkFrequency.i, align 1
  %call9.i = call i32 @atomctrl_get_engine_pll_dividers_vi(ptr noundef %hwmgr, i32 noundef %call.i590, ptr noundef nonnull %dividers.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp.i591 = icmp eq i32 %call9.i, 0
  br i1 %cmp.i591, label %do.end16.i, label %if.then.i

if.then.i:                                        ; preds = %do.end97
  %call10.i = call i32 @___ratelimit(ptr noundef nonnull @tonga_populate_smc_acpi_level._rs, ptr noundef nonnull @__func__.tonga_populate_smc_acpi_level) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.then101_crit_edge, label %do.end.i

if.then.i.if.then101_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then101

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.98) #10
  br label %if.then101

do.end16.i:                                       ; preds = %do.end97
  %205 = ptrtoint ptr %dividers.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %dividers.i, align 4
  %conv.i592 = trunc i32 %206 to i8
  %SclkDid.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 39, i32 3
  %207 = ptrtoint ptr %SclkDid.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %conv.i592, ptr %SclkDid.i, align 1
  %DisplayWatermark.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 39, i32 4
  %208 = ptrtoint ptr %DisplayWatermark.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 0, ptr %DisplayWatermark.i, align 1
  %DeepSleepDivId.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 39, i32 5
  %209 = ptrtoint ptr %DeepSleepDivId.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 0, ptr %DeepSleepDivId.i, align 1
  %and21.i = and i32 %192, -4
  %or22.i = or i32 %and21.i, 1
  %and23.i = and i32 %194, -512
  %or24.i = or i32 %and23.i, 4
  %CgSpllFuncCntl.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 39, i32 7
  %210 = ptrtoint ptr %CgSpllFuncCntl.i to i32
  call void @__asan_storeN_noabort(i32 %210, i32 4)
  store i32 %or22.i, ptr %CgSpllFuncCntl.i, align 1
  %CgSpllFuncCntl2.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 39, i32 8
  %211 = ptrtoint ptr %CgSpllFuncCntl2.i to i32
  call void @__asan_storeN_noabort(i32 %211, i32 4)
  store i32 %or24.i, ptr %CgSpllFuncCntl2.i, align 1
  %vCG_SPLL_FUNC_CNTL_3.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %189, i32 0, i32 11, i32 2
  %212 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_3.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %vCG_SPLL_FUNC_CNTL_3.i, align 4
  %CgSpllFuncCntl3.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 39, i32 9
  %214 = ptrtoint ptr %CgSpllFuncCntl3.i to i32
  call void @__asan_storeN_noabort(i32 %214, i32 4)
  store i32 %213, ptr %CgSpllFuncCntl3.i, align 1
  %vCG_SPLL_FUNC_CNTL_4.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %189, i32 0, i32 11, i32 3
  %215 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_4.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %vCG_SPLL_FUNC_CNTL_4.i, align 4
  %CgSpllFuncCntl4.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 39, i32 10
  %217 = ptrtoint ptr %CgSpllFuncCntl4.i to i32
  call void @__asan_storeN_noabort(i32 %217, i32 4)
  store i32 %216, ptr %CgSpllFuncCntl4.i, align 1
  %vCG_SPLL_SPREAD_SPECTRUM.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %189, i32 0, i32 11, i32 4
  %218 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %vCG_SPLL_SPREAD_SPECTRUM.i, align 4
  %SpllSpreadSpectrum.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 39, i32 11
  %220 = ptrtoint ptr %SpllSpreadSpectrum.i to i32
  call void @__asan_storeN_noabort(i32 %220, i32 4)
  store i32 %219, ptr %SpllSpreadSpectrum.i, align 1
  %vCG_SPLL_SPREAD_SPECTRUM_2.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %189, i32 0, i32 11, i32 5
  %221 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM_2.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %vCG_SPLL_SPREAD_SPECTRUM_2.i, align 4
  %SpllSpreadSpectrum2.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 39, i32 12
  %223 = ptrtoint ptr %SpllSpreadSpectrum2.i to i32
  call void @__asan_storeN_noabort(i32 %223, i32 4)
  store i32 %222, ptr %SpllSpreadSpectrum2.i, align 1
  %CcPwrDynRm.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 39, i32 13
  %224 = ptrtoint ptr %CcPwrDynRm.i to i32
  call void @__asan_storeN_noabort(i32 %224, i32 4)
  store i32 0, ptr %CcPwrDynRm.i, align 1
  %CcPwrDynRm1.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 39, i32 14
  %225 = ptrtoint ptr %CcPwrDynRm1.i to i32
  call void @__asan_storeN_noabort(i32 %225, i32 4)
  store i32 0, ptr %CcPwrDynRm1.i, align 1
  %MemoryACPILevel.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 36
  %MemoryLevel.i = getelementptr inbounds %struct.tonga_smumgr, ptr %187, i32 0, i32 1, i32 37
  %226 = ptrtoint ptr %MemoryLevel.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %MemoryLevel.i, align 8
  %228 = ptrtoint ptr %MemoryACPILevel.i to i32
  call void @__asan_storeN_noabort(i32 %228, i32 4)
  store i32 %227, ptr %MemoryACPILevel.i, align 1
  %229 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %backend, align 4
  %mvdd_control.i.i593 = getelementptr inbounds %struct.smu7_hwmgr, ptr %230, i32 0, i32 23
  %231 = ptrtoint ptr %mvdd_control.i.i593 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %mvdd_control.i.i593, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %cmp.not.i.i = icmp eq i32 %232, 0
  br i1 %cmp.not.i.i, label %do.end16.i.do.end113_crit_edge, label %for.cond.i.i

do.end16.i.do.end113_crit_edge:                   ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end113

for.cond.i.i:                                     ; preds = %do.end16.i
  %233 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %pptable, align 4
  %vdd_dep_on_mclk.i.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %234, i32 0, i32 1
  %235 = ptrtoint ptr %vdd_dep_on_mclk.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %vdd_dep_on_mclk.i.i, align 4
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %236, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %cmp1.not.i.i595 = icmp eq i32 %238, 0
  br i1 %cmp1.not.i.i595, label %if.then10.i.i597, label %if.then84.i

if.then10.i.i597:                                 ; preds = %for.cond.i.i
  %call.i.i596 = call i32 @___ratelimit(ptr noundef nonnull @tonga_populate_mvdd_value._rs, ptr noundef nonnull @__func__.tonga_populate_mvdd_value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i596)
  %tobool.not.i.i = icmp eq i32 %call.i.i596, 0
  br i1 %tobool.not.i.i, label %if.then10.i.i597.do.end113_crit_edge, label %do.end.i.i

if.then10.i.i597.do.end113_crit_edge:             ; preds = %if.then10.i.i597
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end113

do.end.i.i:                                       ; preds = %if.then10.i.i597
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.99) #10
  br label %do.end113

if.then84.i:                                      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx6.i.i598 = getelementptr %struct.smu7_hwmgr, ptr %230, i32 0, i32 43, i32 3, i32 0
  %239 = ptrtoint ptr %arrayidx6.i.i598 to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %arrayidx6.i.i598, align 4
  %conv85.i = zext i16 %240 to i32
  %mul.i = shl nuw nsw i32 %conv85.i, 2
  br label %do.end113

if.then101:                                       ; preds = %do.end.i, %if.then.i.if.then101_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers.i) #6
  %call102 = call i32 @___ratelimit(ptr noundef nonnull @tonga_init_smc_table._rs.25, ptr noundef nonnull @__func__.tonga_init_smc_table) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.then101.cleanup_crit_edge, label %do.end107

if.then101.cleanup_crit_edge:                     ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end107:                                        ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #8
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.28) #10
  br label %cleanup

do.end113:                                        ; preds = %if.then84.i, %do.end.i.i, %if.then10.i.i597.do.end113_crit_edge, %do.end16.i.do.end113_crit_edge
  %.sink.i = phi i32 [ %mul.i, %if.then84.i ], [ 0, %do.end.i.i ], [ 0, %if.then10.i.i597.do.end113_crit_edge ], [ 0, %do.end16.i.do.end113_crit_edge ]
  %MinMvdd88.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 36, i32 1
  %241 = ptrtoint ptr %MinMvdd88.i to i32
  call void @__asan_storeN_noabort(i32 %241, i32 4)
  store i32 %.sink.i, ptr %MinMvdd88.i, align 1
  %or93.i = and i32 %198, -197377
  %and94.i = or i32 %or93.i, 196608
  %and100.i = and i32 %196, -50331649
  %DllCntl.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 36, i32 24
  %242 = ptrtoint ptr %DllCntl.i to i32
  call void @__asan_storeN_noabort(i32 %242, i32 4)
  store i32 %and100.i, ptr %DllCntl.i, align 1
  %MclkPwrmgtCntl.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 36, i32 23
  %243 = ptrtoint ptr %MclkPwrmgtCntl.i to i32
  call void @__asan_storeN_noabort(i32 %243, i32 4)
  store i32 %and94.i, ptr %MclkPwrmgtCntl.i, align 1
  %vMPLL_AD_FUNC_CNTL.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %189, i32 0, i32 11, i32 8
  %244 = ptrtoint ptr %vMPLL_AD_FUNC_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %vMPLL_AD_FUNC_CNTL.i, align 4
  %MpllAdFuncCntl.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 36, i32 21
  %246 = ptrtoint ptr %MpllAdFuncCntl.i to i32
  call void @__asan_storeN_noabort(i32 %246, i32 4)
  store i32 %245, ptr %MpllAdFuncCntl.i, align 1
  %vMPLL_DQ_FUNC_CNTL.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %189, i32 0, i32 11, i32 9
  %247 = ptrtoint ptr %vMPLL_DQ_FUNC_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %vMPLL_DQ_FUNC_CNTL.i, align 4
  %MpllDqFuncCntl.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 36, i32 22
  %249 = ptrtoint ptr %MpllDqFuncCntl.i to i32
  call void @__asan_storeN_noabort(i32 %249, i32 4)
  store i32 %248, ptr %MpllDqFuncCntl.i, align 1
  %vMPLL_FUNC_CNTL.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %189, i32 0, i32 11, i32 10
  %250 = ptrtoint ptr %vMPLL_FUNC_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %vMPLL_FUNC_CNTL.i, align 4
  %MpllFuncCntl.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 36, i32 18
  %252 = ptrtoint ptr %MpllFuncCntl.i to i32
  call void @__asan_storeN_noabort(i32 %252, i32 4)
  store i32 %251, ptr %MpllFuncCntl.i, align 1
  %vMPLL_FUNC_CNTL_1.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %189, i32 0, i32 11, i32 11
  %253 = ptrtoint ptr %vMPLL_FUNC_CNTL_1.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %vMPLL_FUNC_CNTL_1.i, align 4
  %MpllFuncCntl_1.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 36, i32 19
  %255 = ptrtoint ptr %MpllFuncCntl_1.i to i32
  call void @__asan_storeN_noabort(i32 %255, i32 4)
  store i32 %254, ptr %MpllFuncCntl_1.i, align 1
  %vMPLL_FUNC_CNTL_2.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %189, i32 0, i32 11, i32 12
  %256 = ptrtoint ptr %vMPLL_FUNC_CNTL_2.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %vMPLL_FUNC_CNTL_2.i, align 4
  %MpllFuncCntl_2.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 36, i32 20
  %258 = ptrtoint ptr %MpllFuncCntl_2.i to i32
  call void @__asan_storeN_noabort(i32 %258, i32 4)
  store i32 %257, ptr %MpllFuncCntl_2.i, align 1
  %vMPLL_SS1.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %189, i32 0, i32 11, i32 13
  %259 = ptrtoint ptr %vMPLL_SS1.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %vMPLL_SS1.i, align 4
  %MpllSs1.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 36, i32 25
  %261 = ptrtoint ptr %MpllSs1.i to i32
  call void @__asan_storeN_noabort(i32 %261, i32 4)
  store i32 %260, ptr %MpllSs1.i, align 1
  %vMPLL_SS2.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %189, i32 0, i32 11, i32 14
  %262 = ptrtoint ptr %vMPLL_SS2.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %vMPLL_SS2.i, align 4
  %MpllSs2.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 36, i32 26
  %264 = ptrtoint ptr %MpllSs2.i to i32
  call void @__asan_storeN_noabort(i32 %264, i32 4)
  store i32 %263, ptr %MpllSs2.i, align 1
  %EnabledForThrottle.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 36, i32 9
  %265 = ptrtoint ptr %EnabledForThrottle.i to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 0, ptr %EnabledForThrottle.i, align 1
  %EnabledForActivity.i599 = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 36, i32 10
  %266 = ptrtoint ptr %EnabledForActivity.i599 to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 0, ptr %EnabledForActivity.i599, align 1
  %UpHyst.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 36, i32 11
  %267 = ptrtoint ptr %UpHyst.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 0, ptr %UpHyst.i, align 1
  %DownHyst.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 36, i32 12
  %268 = ptrtoint ptr %DownHyst.i to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 100, ptr %DownHyst.i, align 1
  %VoltageDownHyst.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 36, i32 13
  %269 = ptrtoint ptr %VoltageDownHyst.i to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 0, ptr %VoltageDownHyst.i, align 1
  %mclk_activity.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %189, i32 0, i32 102, i32 7
  %270 = ptrtoint ptr %mclk_activity.i to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %mclk_activity.i, align 2
  %ActivityLevel.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 36, i32 15
  %272 = ptrtoint ptr %ActivityLevel.i to i32
  call void @__asan_storeN_noabort(i32 %272, i32 2)
  store i16 %271, ptr %ActivityLevel.i, align 1
  %EdcReadEnable.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 36, i32 3
  %273 = call ptr @memset(ptr %EdcReadEnable.i, i32 0, i32 5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers.i) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dividers.i600) #6
  %274 = call ptr @memset(ptr %dividers.i600, i32 255, i32 16)
  %275 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %backend, align 4
  %277 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %pptable, align 4
  %mm_dep_table.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %278, i32 0, i32 14
  %279 = ptrtoint ptr %mm_dep_table.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %mm_dep_table.i, align 4
  %281 = ptrtoint ptr %280 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %280, align 4
  %conv.i602 = trunc i32 %282 to i8
  %VceLevelCount.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 27
  %283 = ptrtoint ptr %VceLevelCount.i to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 %conv.i602, ptr %VceLevelCount.i, align 1
  %VceBootLevel.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 48
  %284 = ptrtoint ptr %VceBootLevel.i to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 0, ptr %VceBootLevel.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i602)
  %cmp106.not.i = icmp eq i8 %conv.i602, 0
  br i1 %cmp106.not.i, label %do.end113.do.end129_crit_edge, label %for.body.lr.ph.i

do.end113.do.end129_crit_edge:                    ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end129

for.body.lr.ph.i:                                 ; preds = %do.end113
  %vddc_lookup_table.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %278, i32 0, i32 15
  %vdd_gfx_control.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %276, i32 0, i32 8
  %vddgfx_lookup_table.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %278, i32 0, i32 16
  %vddci_voltage_table.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %276, i32 0, i32 42
  br label %for.body.i605

for.body.i605:                                    ; preds = %do.end52.i.for.body.i605_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %do.end52.i.for.body.i605_crit_edge ]
  %eclk.i = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %280, i32 0, i32 1, i32 %indvars.iv.i, i32 2
  %285 = ptrtoint ptr %eclk.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %eclk.i, align 4
  %arrayidx7.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 41, i32 %indvars.iv.i
  %287 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_storeN_noabort(i32 %287, i32 4)
  store i32 %286, ptr %arrayidx7.i, align 1
  %288 = ptrtoint ptr %vddc_lookup_table.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %vddc_lookup_table.i, align 4
  %vddc.i = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %280, i32 0, i32 1, i32 %indvars.iv.i, i32 7
  %290 = ptrtoint ptr %vddc.i to i32
  call void @__asan_load2_noabort(i32 %290)
  %291 = load i16, ptr %vddc.i, align 4
  %call.i603 = call zeroext i8 @phm_get_voltage_index(ptr noundef %289, i16 noundef zeroext %291) #6
  %MinVoltage.i604 = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 41, i32 %indvars.iv.i, i32 1
  %292 = ptrtoint ptr %MinVoltage.i604 to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 %call.i603, ptr %MinVoltage.i604, align 1
  %293 = ptrtoint ptr %vdd_gfx_control.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %vdd_gfx_control.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %294)
  %cmp14.i = icmp eq i32 %294, 2
  br i1 %cmp14.i, label %cond.true.i, label %for.body.i605.cond.end.i_crit_edge

for.body.i605.cond.end.i_crit_edge:               ; preds = %for.body.i605
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %for.body.i605
  call void @__sanitizer_cov_trace_pc() #8
  %295 = ptrtoint ptr %vddgfx_lookup_table.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %vddgfx_lookup_table.i, align 4
  %vddgfx.i = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %280, i32 0, i32 1, i32 %indvars.iv.i, i32 8
  %297 = ptrtoint ptr %vddgfx.i to i32
  call void @__asan_load2_noabort(i32 %297)
  %298 = load i16, ptr %vddgfx.i, align 2
  %call19.i = call zeroext i8 @phm_get_voltage_index(ptr noundef %296, i16 noundef zeroext %298) #6
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %for.body.i605.cond.end.i_crit_edge
  %cond.i = phi i8 [ %call19.i, %cond.true.i ], [ 0, %for.body.i605.cond.end.i_crit_edge ]
  %VddGfx.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 41, i32 %indvars.iv.i, i32 1, i32 2
  %299 = ptrtoint ptr %VddGfx.i to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 %cond.i, ptr %VddGfx.i, align 1
  %300 = ptrtoint ptr %vddc.i to i32
  call void @__asan_load2_noabort(i32 %300)
  %301 = load i16, ptr %vddc.i, align 4
  %conv30.i = zext i16 %301 to i32
  %sub.i = add nsw i32 %conv30.i, -200
  %call31.i = call zeroext i8 @phm_get_voltage_id(ptr noundef %vddci_voltage_table.i, i32 noundef %sub.i) #6
  %Vddci.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 41, i32 %indvars.iv.i, i32 1, i32 1
  %302 = ptrtoint ptr %Vddci.i to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 %call31.i, ptr %Vddci.i, align 1
  %Phases.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 41, i32 %indvars.iv.i, i32 1, i32 3
  %303 = ptrtoint ptr %Phases.i to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 1, ptr %Phases.i, align 1
  %304 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_loadN_noabort(i32 %304, i32 4)
  %305 = load i32, ptr %arrayidx7.i, align 1
  %call44.i = call i32 @atomctrl_get_dfs_pll_dividers_vi(ptr noundef %hwmgr, i32 noundef %305, ptr noundef nonnull %dividers.i600) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool.not.i606 = icmp eq i32 %call44.i, 0
  br i1 %tobool.not.i606, label %do.end52.i, label %if.then.i607

if.then.i607:                                     ; preds = %cond.end.i
  %call45.i = call i32 @___ratelimit(ptr noundef nonnull @tonga_populate_smc_vce_level._rs, ptr noundef nonnull @__func__.tonga_populate_smc_vce_level) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %if.then.i607.if.then117_crit_edge, label %do.end.i608

if.then.i607.if.then117_crit_edge:                ; preds = %if.then.i607
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then117

do.end.i608:                                      ; preds = %if.then.i607
  call void @__sanitizer_cov_trace_pc() #8
  %call49.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.100) #10
  br label %if.then117

do.end52.i:                                       ; preds = %cond.end.i
  %306 = ptrtoint ptr %dividers.i600 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %dividers.i600, align 4
  %conv53.i = trunc i32 %307 to i8
  %Divider.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 41, i32 %indvars.iv.i, i32 2
  %308 = ptrtoint ptr %Divider.i to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 %conv53.i, ptr %Divider.i, align 1
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %309 = ptrtoint ptr %VceLevelCount.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %VceLevelCount.i, align 1
  %311 = zext i8 %310 to i32
  %cmp.i609 = icmp ult i32 %indvars.iv.next.i, %311
  br i1 %cmp.i609, label %do.end52.i.for.body.i605_crit_edge, label %do.end52.i.do.end129_crit_edge

do.end52.i.do.end129_crit_edge:                   ; preds = %do.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end129

do.end52.i.for.body.i605_crit_edge:               ; preds = %do.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i605

if.then117:                                       ; preds = %do.end.i608, %if.then.i607.if.then117_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers.i600) #6
  %call118 = call i32 @___ratelimit(ptr noundef nonnull @tonga_init_smc_table._rs.29, ptr noundef nonnull @__func__.tonga_init_smc_table) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.then117.cleanup_crit_edge, label %do.end123

if.then117.cleanup_crit_edge:                     ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end123:                                        ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #8
  %call125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.32) #10
  br label %cleanup

do.end129:                                        ; preds = %do.end52.i.do.end129_crit_edge, %do.end113.do.end129_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers.i600) #6
  %call130 = call fastcc i32 @tonga_populate_smc_acp_level(ptr noundef %hwmgr, ptr noundef %smc_state_table)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool132.not = icmp eq i32 %call130, 0
  br i1 %tobool132.not, label %do.end145, label %if.then133

if.then133:                                       ; preds = %do.end129
  %call134 = call i32 @___ratelimit(ptr noundef nonnull @tonga_init_smc_table._rs.33, ptr noundef nonnull @__func__.tonga_init_smc_table) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.then133.cleanup_crit_edge, label %do.end139

if.then133.cleanup_crit_edge:                     ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end139:                                        ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #8
  %call141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.36) #10
  br label %cleanup

do.end145:                                        ; preds = %do.end129
  %call146 = call fastcc i32 @tonga_program_memory_timing_parameters(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool148.not = icmp eq i32 %call146, 0
  br i1 %tobool148.not, label %do.end161, label %if.then149

if.then149:                                       ; preds = %do.end145
  %call150 = call i32 @___ratelimit(ptr noundef nonnull @tonga_init_smc_table._rs.37, ptr noundef nonnull @__func__.tonga_init_smc_table) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %if.then149.cleanup_crit_edge, label %do.end155

if.then149.cleanup_crit_edge:                     ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end155:                                        ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #8
  %call157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.40) #10
  br label %cleanup

do.end161:                                        ; preds = %do.end145
  %call162 = call fastcc i32 @tonga_populate_smc_uvd_level(ptr noundef %hwmgr, ptr noundef %smc_state_table)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool164.not = icmp eq i32 %call162, 0
  br i1 %tobool164.not, label %do.end177, label %if.then165

if.then165:                                       ; preds = %do.end161
  %call166 = call i32 @___ratelimit(ptr noundef nonnull @tonga_init_smc_table._rs.41, ptr noundef nonnull @__func__.tonga_init_smc_table) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %if.then165.cleanup_crit_edge, label %do.end171

if.then165.cleanup_crit_edge:                     ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end171:                                        ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #8
  %call173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.44) #10
  br label %cleanup

do.end177:                                        ; preds = %do.end161
  call fastcc void @tonga_populate_smc_boot_level(ptr noundef %hwmgr, ptr noundef %smc_state_table)
  call fastcc void @tonga_populate_bapm_parameters_in_dpm_table(ptr noundef %hwmgr)
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 5
  %312 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %arrayidx.i, align 4
  %and1.i610 = and i32 %313, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i610)
  %cmp.i611.not = icmp eq i32 %and1.i610, 0
  br i1 %cmp.i611.not, label %do.end177.if.end231_crit_edge, label %if.then214

do.end177.if.end231_crit_edge:                    ; preds = %do.end177
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end231

if.then214:                                       ; preds = %do.end177
  %call215 = call fastcc i32 @tonga_populate_clock_stretcher_data_table(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %tobool217.not = icmp eq i32 %call215, 0
  br i1 %tobool217.not, label %if.then214.if.end231_crit_edge, label %if.then218

if.then214.if.end231_crit_edge:                   ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end231

if.then218:                                       ; preds = %if.then214
  %call219 = call i32 @___ratelimit(ptr noundef nonnull @tonga_init_smc_table._rs.53, ptr noundef nonnull @__func__.tonga_init_smc_table) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %if.then218.cleanup_crit_edge, label %do.end224

if.then218.cleanup_crit_edge:                     ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end224:                                        ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #8
  %call226 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.56) #10
  br label %cleanup

if.end231:                                        ; preds = %if.then214.if.end231_crit_edge, %do.end177.if.end231_crit_edge
  %GraphicsVoltageChangeEnable = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 52
  %cac_dtp_table = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %5, i32 0, i32 12
  %314 = call ptr @memset(ptr %GraphicsVoltageChangeEnable, i32 1, i32 5)
  %315 = ptrtoint ptr %cac_dtp_table to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %cac_dtp_table, align 4
  %usTargetOperatingTemp = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %316, i32 0, i32 14
  %317 = ptrtoint ptr %usTargetOperatingTemp to i32
  call void @__asan_load2_noabort(i32 %317)
  %318 = load i16, ptr %usTargetOperatingTemp, align 4
  %mul = shl i16 %318, 8
  %TemperatureLimitHigh = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 57
  %319 = ptrtoint ptr %TemperatureLimitHigh to i32
  call void @__asan_storeN_noabort(i32 %319, i32 2)
  store i16 %mul, ptr %TemperatureLimitHigh, align 1
  %320 = load ptr, ptr %cac_dtp_table, align 4
  %usTargetOperatingTemp235 = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %320, i32 0, i32 14
  %321 = ptrtoint ptr %usTargetOperatingTemp235 to i32
  call void @__asan_load2_noabort(i32 %321)
  %322 = load i16, ptr %usTargetOperatingTemp235, align 4
  %sub = shl i16 %322, 8
  %mul237 = add i16 %sub, -256
  %TemperatureLimitLow = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 58
  %323 = ptrtoint ptr %TemperatureLimitLow to i32
  call void @__asan_storeN_noabort(i32 %323, i32 2)
  store i16 %mul237, ptr %TemperatureLimitLow, align 1
  %MemoryVoltageChangeEnable = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 60
  %324 = ptrtoint ptr %MemoryVoltageChangeEnable to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 1, ptr %MemoryVoltageChangeEnable, align 1
  %MemoryInterval = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 62
  %325 = ptrtoint ptr %MemoryInterval to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 1, ptr %MemoryInterval, align 1
  %VoltageResponseTime = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 64
  %326 = ptrtoint ptr %VoltageResponseTime to i32
  call void @__asan_storeN_noabort(i32 %326, i32 2)
  store i16 0, ptr %VoltageResponseTime, align 1
  %PhaseResponseTime = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 65
  %327 = ptrtoint ptr %PhaseResponseTime to i32
  call void @__asan_storeN_noabort(i32 %327, i32 2)
  store i16 0, ptr %PhaseResponseTime, align 1
  %MemoryThermThrottleEnable = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 63
  %328 = ptrtoint ptr %MemoryThermThrottleEnable to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 1, ptr %MemoryThermThrottleEnable, align 1
  %pcie_speed_table = getelementptr inbounds %struct.smu7_dpm_table, ptr %1, i32 0, i32 2
  %329 = ptrtoint ptr %pcie_speed_table to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %pcie_speed_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %330)
  %cmp240.not = icmp eq i32 %330, 0
  br i1 %cmp240.not, label %if.then242, label %do.end254

if.then242:                                       ; preds = %if.end231
  %call243 = call i32 @___ratelimit(ptr noundef nonnull @tonga_init_smc_table._rs.57, ptr noundef nonnull @__func__.tonga_init_smc_table) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call243)
  %tobool244.not = icmp eq i32 %call243, 0
  br i1 %tobool244.not, label %if.then242.cleanup_crit_edge, label %do.end248

if.then242.cleanup_crit_edge:                     ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end248:                                        ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #8
  %call250 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.60) #10
  br label %cleanup

do.end254:                                        ; preds = %if.end231
  %conv258 = trunc i32 %330 to i8
  %PCIeBootLinkLevel = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 66
  %331 = ptrtoint ptr %PCIeBootLinkLevel to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 %conv258, ptr %PCIeBootLinkLevel, align 1
  %PCIeGenInterval = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 67
  %332 = ptrtoint ptr %PCIeGenInterval to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 1, ptr %PCIeGenInterval, align 1
  call fastcc void @tonga_populate_vr_config(ptr noundef %hwmgr, ptr noundef %smc_state_table)
  %VRConfig = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 4
  %333 = ptrtoint ptr %VRConfig to i32
  call void @__asan_loadN_noabort(i32 %333, i32 4)
  %334 = load i32, ptr %VRConfig, align 1
  %vr_config = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 101
  %335 = ptrtoint ptr %vr_config to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 %334, ptr %vr_config, align 4
  %ThermGpio = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 73
  %336 = ptrtoint ptr %ThermGpio to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 17, ptr %ThermGpio, align 1
  %SclkStepSize = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 45
  %337 = ptrtoint ptr %SclkStepSize to i32
  call void @__asan_storeN_noabort(i32 %337, i32 4)
  store i32 16384, ptr %SclkStepSize, align 1
  %call275 = call zeroext i1 @atomctrl_get_pp_assign_pin(ptr noundef %hwmgr, i32 noundef 61, ptr noundef nonnull %gpio_pin_assignment) #6
  br i1 %call275, label %if.then276, label %if.else

if.then276:                                       ; preds = %do.end254
  call void @__sanitizer_cov_trace_pc() #8
  %uc_gpio_pin_bit_shift = getelementptr inbounds %struct.pp_atomctrl_gpio_pin_assignment, ptr %gpio_pin_assignment, i32 0, i32 1
  %338 = ptrtoint ptr %uc_gpio_pin_bit_shift to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %uc_gpio_pin_bit_shift, align 2
  %VRHotGpio = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 71
  %340 = ptrtoint ptr %VRHotGpio to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 %339, ptr %VRHotGpio, align 1
  %arrayidx.i612 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %341 = ptrtoint ptr %arrayidx.i612 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %arrayidx.i612, align 4
  %or.i = or i32 %342, 4
  store i32 %or.i, ptr %arrayidx.i612, align 4
  br label %if.end284

if.else:                                          ; preds = %do.end254
  call void @__sanitizer_cov_trace_pc() #8
  %VRHotGpio280 = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 71
  %343 = ptrtoint ptr %VRHotGpio280 to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 127, ptr %VRHotGpio280, align 1
  %arrayidx.i613 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %344 = ptrtoint ptr %arrayidx.i613 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %arrayidx.i613, align 4
  %and1.i614 = and i32 %345, -5
  store i32 %and1.i614, ptr %arrayidx.i613, align 4
  br label %if.end284

if.end284:                                        ; preds = %if.else, %if.then276
  %call285 = call zeroext i1 @atomctrl_get_pp_assign_pin(ptr noundef %hwmgr, i32 noundef 60, ptr noundef nonnull %gpio_pin_assignment) #6
  br i1 %call285, label %if.then286, label %if.else291

if.then286:                                       ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #8
  %uc_gpio_pin_bit_shift287 = getelementptr inbounds %struct.pp_atomctrl_gpio_pin_assignment, ptr %gpio_pin_assignment, i32 0, i32 1
  %346 = ptrtoint ptr %uc_gpio_pin_bit_shift287 to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %uc_gpio_pin_bit_shift287, align 2
  %AcDcGpio = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 72
  %348 = ptrtoint ptr %AcDcGpio to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 %347, ptr %AcDcGpio, align 1
  %349 = ptrtoint ptr %platform_descriptor to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %platform_descriptor, align 4
  %or.i615 = or i32 %350, 16777216
  br label %if.end296

if.else291:                                       ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #8
  %AcDcGpio292 = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 72
  %351 = ptrtoint ptr %AcDcGpio292 to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 127, ptr %AcDcGpio292, align 1
  %352 = ptrtoint ptr %platform_descriptor to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %platform_descriptor, align 4
  %and1.i616 = and i32 %353, -16777217
  br label %if.end296

if.end296:                                        ; preds = %if.else291, %if.then286
  %storemerge = phi i32 [ %and1.i616, %if.else291 ], [ %or.i615, %if.then286 ]
  %354 = ptrtoint ptr %platform_descriptor to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 %storemerge, ptr %platform_descriptor, align 4
  %arrayidx.i617 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 4
  %355 = ptrtoint ptr %arrayidx.i617 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %arrayidx.i617, align 4
  %and1.i618 = and i32 %356, 2147483647
  store i32 %and1.i618, ptr %arrayidx.i617, align 4
  %call300 = call zeroext i1 @atomctrl_get_pp_assign_pin(ptr noundef %hwmgr, i32 noundef 65, ptr noundef nonnull %gpio_pin_assignment) #6
  %357 = ptrtoint ptr %arrayidx.i617 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %arrayidx.i617, align 4
  br i1 %call300, label %if.then301, label %if.else331

if.then301:                                       ; preds = %if.end296
  %or.i620 = or i32 %358, 16
  %359 = ptrtoint ptr %arrayidx.i617 to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 %or.i620, ptr %arrayidx.i617, align 4
  %uc_gpio_pin_bit_shift305 = getelementptr inbounds %struct.pp_atomctrl_gpio_pin_assignment, ptr %gpio_pin_assignment, i32 0, i32 1
  %360 = ptrtoint ptr %uc_gpio_pin_bit_shift305 to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %uc_gpio_pin_bit_shift305, align 2
  %ThermOutGpio = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 30
  %362 = ptrtoint ptr %ThermOutGpio to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 %361, ptr %ThermOutGpio, align 1
  %363 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %device, align 4
  %365 = ptrtoint ptr %364 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %364, align 4
  %367 = ptrtoint ptr %366 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %366, align 4
  %call310 = call i32 %368(ptr noundef %364, i32 noundef 387) #6
  %369 = ptrtoint ptr %uc_gpio_pin_bit_shift305 to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %uc_gpio_pin_bit_shift305, align 2
  %conv312 = zext i8 %370 to i32
  %shl = shl nuw i32 1, %conv312
  %and313 = and i32 %shl, %call310
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and313)
  %cmp314 = icmp eq i32 %and313, 0
  %conv316 = zext i1 %cmp314 to i8
  %ThermOutPolarity = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 31
  %371 = ptrtoint ptr %ThermOutPolarity to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 %conv316, ptr %ThermOutPolarity, align 1
  %ThermOutMode = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 32
  %372 = ptrtoint ptr %ThermOutMode to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 1, ptr %ThermOutMode, align 1
  %arrayidx.i621 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %373 = ptrtoint ptr %arrayidx.i621 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %arrayidx.i621, align 4
  %and1.i622 = and i32 %374, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i622)
  %cmp.i623.not = icmp eq i32 %and1.i622, 0
  br i1 %cmp.i623.not, label %if.then301.if.end338_crit_edge, label %land.lhs.true322

if.then301.if.end338_crit_edge:                   ; preds = %if.then301
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end338

land.lhs.true322:                                 ; preds = %if.then301
  %375 = ptrtoint ptr %arrayidx.i617 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %arrayidx.i617, align 4
  %and1.i625 = and i32 %376, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i625)
  %cmp.i626.not = icmp eq i32 %and1.i625, 0
  br i1 %cmp.i626.not, label %land.lhs.true322.if.end338_crit_edge, label %if.then328

land.lhs.true322.if.end338_crit_edge:             ; preds = %land.lhs.true322
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end338

if.then328:                                       ; preds = %land.lhs.true322
  call void @__sanitizer_cov_trace_pc() #8
  %377 = ptrtoint ptr %ThermOutMode to i32
  call void @__asan_store1_noabort(i32 %377)
  store i8 2, ptr %ThermOutMode, align 1
  br label %if.end338

if.else331:                                       ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #8
  %and1.i628 = and i32 %358, -17
  %378 = ptrtoint ptr %arrayidx.i617 to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 %and1.i628, ptr %arrayidx.i617, align 4
  %ThermOutGpio335 = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 30
  %379 = ptrtoint ptr %ThermOutGpio335 to i32
  call void @__asan_store1_noabort(i32 %379)
  store i8 17, ptr %ThermOutGpio335, align 1
  %ThermOutPolarity336 = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 31
  %380 = ptrtoint ptr %ThermOutPolarity336 to i32
  call void @__asan_store1_noabort(i32 %380)
  store i8 1, ptr %ThermOutPolarity336, align 1
  %ThermOutMode337 = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 32
  %381 = ptrtoint ptr %ThermOutMode337 to i32
  call void @__asan_store1_noabort(i32 %381)
  store i8 0, ptr %ThermOutMode337, align 1
  br label %if.end338

if.end338:                                        ; preds = %if.else331, %if.then328, %land.lhs.true322.if.end338_crit_edge, %if.then301.if.end338_crit_edge
  %SystemFlags345 = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 3
  %dpm_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 4
  %382 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %dpm_table_start, align 8
  %add = add i32 %383, 108
  %call362 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add, ptr noundef %SystemFlags345, i32 noundef 1864, i32 noundef 262144) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call362)
  %tobool364.not = icmp eq i32 %call362, 0
  br i1 %tobool364.not, label %do.end377, label %if.then365

if.then365:                                       ; preds = %if.end338
  %call366 = call i32 @___ratelimit(ptr noundef nonnull @tonga_init_smc_table._rs.65, ptr noundef nonnull @__func__.tonga_init_smc_table) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call366)
  %tobool367.not = icmp eq i32 %call366, 0
  br i1 %tobool367.not, label %if.then365.cleanup_crit_edge, label %do.end371

if.then365.cleanup_crit_edge:                     ; preds = %if.then365
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end371:                                        ; preds = %if.then365
  call void @__sanitizer_cov_trace_pc() #8
  %call373 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.68) #10
  br label %cleanup

do.end377:                                        ; preds = %if.end338
  %call378 = call fastcc i32 @tonga_init_arb_table_index(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call378)
  %tobool380.not = icmp eq i32 %call378, 0
  br i1 %tobool380.not, label %do.end393, label %if.then381

if.then381:                                       ; preds = %do.end377
  %call382 = call i32 @___ratelimit(ptr noundef nonnull @tonga_init_smc_table._rs.69, ptr noundef nonnull @__func__.tonga_init_smc_table) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call382)
  %tobool383.not = icmp eq i32 %call382, 0
  br i1 %tobool383.not, label %if.then381.cleanup_crit_edge, label %do.end387

if.then381.cleanup_crit_edge:                     ; preds = %if.then381
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end387:                                        ; preds = %if.then381
  call void @__sanitizer_cov_trace_pc() #8
  %call389 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.72) #10
  br label %cleanup

do.end393:                                        ; preds = %do.end377
  call fastcc void @tonga_populate_pm_fuses(ptr noundef %hwmgr)
  %call410 = call fastcc i32 @tonga_populate_initial_mc_reg_table(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call410)
  %tobool412.not = icmp eq i32 %call410, 0
  br i1 %tobool412.not, label %do.end393.cleanup_crit_edge, label %if.then413

do.end393.cleanup_crit_edge:                      ; preds = %do.end393
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then413:                                       ; preds = %do.end393
  %call414 = call i32 @___ratelimit(ptr noundef nonnull @tonga_init_smc_table._rs.77, ptr noundef nonnull @__func__.tonga_init_smc_table) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call414)
  %tobool415.not = icmp eq i32 %call414, 0
  br i1 %tobool415.not, label %if.then413.cleanup_crit_edge, label %do.end419

if.then413.cleanup_crit_edge:                     ; preds = %if.then413
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end419:                                        ; preds = %if.then413
  call void @__sanitizer_cov_trace_pc() #8
  %call421 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.80) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end419, %if.then413.cleanup_crit_edge, %do.end393.cleanup_crit_edge, %do.end387, %if.then381.cleanup_crit_edge, %do.end371, %if.then365.cleanup_crit_edge, %do.end248, %if.then242.cleanup_crit_edge, %do.end224, %if.then218.cleanup_crit_edge, %do.end171, %if.then165.cleanup_crit_edge, %do.end155, %if.then149.cleanup_crit_edge, %do.end139, %if.then133.cleanup_crit_edge, %do.end123, %if.then117.cleanup_crit_edge, %do.end107, %if.then101.cleanup_crit_edge, %do.end91, %if.then85.cleanup_crit_edge, %do.end75, %if.then69.cleanup_crit_edge
  %retval.0 = phi i32 [ %call66, %do.end75 ], [ %call66, %if.then69.cleanup_crit_edge ], [ %call82, %do.end91 ], [ %call82, %if.then85.cleanup_crit_edge ], [ %call9.i, %do.end107 ], [ %call9.i, %if.then101.cleanup_crit_edge ], [ %call44.i, %do.end123 ], [ %call44.i, %if.then117.cleanup_crit_edge ], [ %call130, %do.end139 ], [ %call130, %if.then133.cleanup_crit_edge ], [ %call146, %do.end155 ], [ %call146, %if.then149.cleanup_crit_edge ], [ %call162, %do.end171 ], [ %call162, %if.then165.cleanup_crit_edge ], [ %call215, %do.end224 ], [ %call215, %if.then218.cleanup_crit_edge ], [ -22, %do.end248 ], [ -22, %if.then242.cleanup_crit_edge ], [ %call362, %do.end371 ], [ %call362, %if.then365.cleanup_crit_edge ], [ %call378, %do.end387 ], [ %call378, %if.then381.cleanup_crit_edge ], [ %call410, %do.end419 ], [ %call410, %if.then413.cleanup_crit_edge ], [ 0, %do.end393.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_pin_assignment) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tonga_populate_all_graphic_levels(ptr noundef %hwmgr) #0 align 64 {
entry:
  %dividers.i.i = alloca %struct.pp_atomctrl_clock_dividers_vi, align 4
  %ss_info.i.i = alloca %struct.pp_atomctrl_internal_ss_info, align 4
  %mvdd.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  %add = add i32 %11, 376
  %GraphicsLevel = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 35
  %12 = call ptr @memset(ptr %GraphicsLevel, i32 0, i32 352)
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp247.not = icmp eq i32 %14, 0
  br i1 %cmp247.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %uc_pll_ref_div.i.i = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_vi, ptr %dividers.i.i, i32 0, i32 3
  %ul_fb_div.i.i = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_vi, ptr %dividers.i.i, i32 0, i32 2
  %platform_descriptor.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23
  %uc_pll_post_div.i.i = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_vi, ptr %dividers.i.i, i32 0, i32 4
  %15 = getelementptr inbounds %struct.pp_atomctrl_internal_ss_info, ptr %ss_info.i.i, i32 0, i32 1
  %16 = getelementptr inbounds %struct.pp_atomctrl_internal_ss_info, ptr %ss_info.i.i, i32 0, i32 2
  %od_enabled.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 53
  %display_config.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 45
  %arrayidx.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0248 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %value = getelementptr %struct.smu7_single_dpm_table, ptr %1, i32 0, i32 1, i32 %i.0248, i32 1
  %17 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value, align 4
  %arrayidx10 = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 %i.0248
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvdd.i) #6
  %19 = ptrtoint ptr %mvdd.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %mvdd.i, align 4, !annotation !369
  %20 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %backend, align 4
  %22 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pptable, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dividers.i.i) #6
  %24 = call ptr @memset(ptr %dividers.i.i, i32 255, i32 16)
  %vCG_SPLL_FUNC_CNTL_3.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %21, i32 0, i32 11, i32 2
  %25 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_3.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vCG_SPLL_FUNC_CNTL_3.i.i, align 4
  %vCG_SPLL_FUNC_CNTL_4.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %21, i32 0, i32 11, i32 3
  %27 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_4.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vCG_SPLL_FUNC_CNTL_4.i.i, align 4
  %vCG_SPLL_SPREAD_SPECTRUM.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %21, i32 0, i32 11, i32 4
  %29 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vCG_SPLL_SPREAD_SPECTRUM.i.i, align 4
  %vCG_SPLL_SPREAD_SPECTRUM_2.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %21, i32 0, i32 11, i32 5
  %31 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM_2.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vCG_SPLL_SPREAD_SPECTRUM_2.i.i, align 4
  %call.i.i = call i32 @atomctrl_get_engine_pll_dividers_vi(ptr noundef %hwmgr, i32 noundef %18, ptr noundef nonnull %dividers.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end11.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body
  %call5.i.i = call i32 @___ratelimit(ptr noundef nonnull @tonga_calculate_sclk_params._rs, ptr noundef nonnull @__func__.tonga_calculate_sclk_params) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.tonga_calculate_sclk_params.exit.i_crit_edge, label %do.end.i.i

if.then.i.i.tonga_calculate_sclk_params.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tonga_calculate_sclk_params.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.98) #10
  br label %tonga_calculate_sclk_params.exit.i

do.end11.i.i:                                     ; preds = %for.body
  %call12.i.i = call i32 @atomctrl_get_reference_clock(ptr noundef %hwmgr) #6
  %33 = ptrtoint ptr %uc_pll_ref_div.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %uc_pll_ref_div.i.i, align 4
  %conv.i.i = zext i8 %34 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 1
  %35 = ptrtoint ptr %ul_fb_div.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ul_fb_div.i.i, align 4
  %and.i.i = and i32 %36, 67108863
  %and22.i.i = and i32 %26, -335544320
  %or25.i.i = or i32 %and22.i.i, %and.i.i
  %or27.i.i = or i32 %or25.i.i, 268435456
  %37 = ptrtoint ptr %platform_descriptor.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %platform_descriptor.i.i, align 4
  %and1.i.i.i = and i32 %38, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %cmp.i.not.i.i, label %do.end11.i.i.if.end53.i.i_crit_edge, label %if.then29.i.i

do.end11.i.i.if.end53.i.i_crit_edge:              ; preds = %do.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53.i.i

if.then29.i.i:                                    ; preds = %do.end11.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ss_info.i.i) #6
  %39 = ptrtoint ptr %ss_info.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %ss_info.i.i, align 4, !annotation !369
  %40 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %15, align 4, !annotation !369
  %41 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %16, align 4, !annotation !369
  %42 = ptrtoint ptr %uc_pll_post_div.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %uc_pll_post_div.i.i, align 1
  %conv31.i.i = zext i8 %43 to i32
  %mul.i.i = mul i32 %18, %conv31.i.i
  %call32.i.i = call i32 @atomctrl_get_engine_clock_spread_spectrum(ptr noundef %hwmgr, i32 noundef %mul.i.i, ptr noundef nonnull %ss_info.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i)
  %cmp33.i.i = icmp eq i32 %call32.i.i, 0
  br i1 %cmp33.i.i, label %if.then35.i.i, label %if.then29.i.i.if.end52.i.i_crit_edge

if.then29.i.i.if.end52.i.i_crit_edge:             ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.i.i

if.then35.i.i:                                    ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul36.i.i = mul i32 %call12.i.i, 5
  %44 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %15, align 4
  %mul37.i.i = mul i32 %45, %add.i.i
  %div.i.i = udiv i32 %mul36.i.i, %mul37.i.i
  %46 = ptrtoint ptr %ss_info.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ss_info.i.i, align 4
  %mul38.i.i = shl nuw nsw i32 %and.i.i, 2
  %mul39.i.i = mul i32 %mul38.i.i, %47
  %mul40.i.i = mul i32 %div.i.i, 10000
  %div41.i.i = udiv i32 %mul39.i.i, %mul40.i.i
  %and42.i.i = and i32 %30, -65522
  %shl43.i.i = shl i32 %div.i.i, 4
  %and44.i.i = and i32 %shl43.i.i, 65520
  %or45.i.i = or i32 %and42.i.i, %and44.i.i
  %or47.i.i = or i32 %or45.i.i, 1
  %and48.i.i = and i32 %32, -67108864
  %and50.i.i = and i32 %div41.i.i, 67108863
  %or51.i.i = or i32 %and50.i.i, %and48.i.i
  br label %if.end52.i.i

if.end52.i.i:                                     ; preds = %if.then35.i.i, %if.then29.i.i.if.end52.i.i_crit_edge
  %cg_spll_spread_spectrum.0.i.i = phi i32 [ %or47.i.i, %if.then35.i.i ], [ %30, %if.then29.i.i.if.end52.i.i_crit_edge ]
  %cg_spll_spread_spectrum_2.0.i.i = phi i32 [ %or51.i.i, %if.then35.i.i ], [ %32, %if.then29.i.i.if.end52.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ss_info.i.i) #6
  br label %if.end53.i.i

if.end53.i.i:                                     ; preds = %if.end52.i.i, %do.end11.i.i.if.end53.i.i_crit_edge
  %cg_spll_spread_spectrum.1.i.i = phi i32 [ %cg_spll_spread_spectrum.0.i.i, %if.end52.i.i ], [ %30, %do.end11.i.i.if.end53.i.i_crit_edge ]
  %cg_spll_spread_spectrum_2.1.i.i = phi i32 [ %cg_spll_spread_spectrum_2.0.i.i, %if.end52.i.i ], [ %32, %do.end11.i.i.if.end53.i.i_crit_edge ]
  %SclkFrequency.i.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 %i.0248, i32 1
  %48 = ptrtoint ptr %SclkFrequency.i.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %18, ptr %SclkFrequency.i.i, align 1
  %CgSpllFuncCntl3.i.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 %i.0248, i32 5
  %49 = ptrtoint ptr %CgSpllFuncCntl3.i.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %or27.i.i, ptr %CgSpllFuncCntl3.i.i, align 1
  %CgSpllFuncCntl4.i.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 %i.0248, i32 6
  %50 = ptrtoint ptr %CgSpllFuncCntl4.i.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %28, ptr %CgSpllFuncCntl4.i.i, align 1
  %SpllSpreadSpectrum.i.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 %i.0248, i32 7
  %51 = ptrtoint ptr %SpllSpreadSpectrum.i.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %cg_spll_spread_spectrum.1.i.i, ptr %SpllSpreadSpectrum.i.i, align 1
  %SpllSpreadSpectrum2.i.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 %i.0248, i32 8
  %52 = ptrtoint ptr %SpllSpreadSpectrum2.i.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %cg_spll_spread_spectrum_2.1.i.i, ptr %SpllSpreadSpectrum2.i.i, align 1
  %53 = ptrtoint ptr %dividers.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dividers.i.i, align 4
  %conv54.i.i = trunc i32 %54 to i8
  %SclkDid.i.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 %i.0248, i32 11
  %55 = ptrtoint ptr %SclkDid.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv54.i.i, ptr %SclkDid.i.i, align 1
  br label %tonga_calculate_sclk_params.exit.i

tonga_calculate_sclk_params.exit.i:               ; preds = %if.end53.i.i, %do.end.i.i, %if.then.i.i.tonga_calculate_sclk_params.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers.i.i) #6
  %56 = ptrtoint ptr %od_enabled.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %od_enabled.i, align 4, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i = icmp eq i8 %57, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %tonga_calculate_sclk_params.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %vdd_dependency_on_sclk.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %21, i32 0, i32 2, i32 2
  br label %if.end.i

if.else.i:                                        ; preds = %tonga_calculate_sclk_params.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %23, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %vdd_dep_table.0.i = phi ptr [ %vdd_dependency_on_sclk.i, %if.then.i ], [ %59, %if.else.i ]
  %call1.i = call fastcc i32 @tonga_get_dependency_volt_by_clk(ptr noundef %hwmgr, ptr noundef %vdd_dep_table.0.i, i32 noundef %18, ptr noundef %arrayidx10, ptr noundef nonnull %mvdd.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.end12.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %call4.i = call i32 @___ratelimit(ptr noundef nonnull @tonga_populate_single_graphic_level._rs, ptr noundef nonnull @__func__.tonga_populate_single_graphic_level) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then3.i.tonga_populate_single_graphic_level.exit.thread_crit_edge, label %do.end.i

if.then3.i.tonga_populate_single_graphic_level.exit.thread_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tonga_populate_single_graphic_level.exit.thread

do.end.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.162) #10
  br label %tonga_populate_single_graphic_level.exit.thread

do.end12.i:                                       ; preds = %if.end.i
  %SclkFrequency.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 %i.0248, i32 1
  %60 = ptrtoint ptr %SclkFrequency.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %18, ptr %SclkFrequency.i, align 1
  %sclk_activity.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %21, i32 0, i32 102, i32 3
  %61 = ptrtoint ptr %sclk_activity.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %sclk_activity.i, align 4
  %ActivityLevel.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 %i.0248, i32 4
  %63 = ptrtoint ptr %ActivityLevel.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 %62, ptr %ActivityLevel.i, align 1
  %CcPwrDynRm.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 %i.0248, i32 9
  %64 = ptrtoint ptr %CcPwrDynRm.i to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 0, ptr %CcPwrDynRm.i, align 1
  %CcPwrDynRm1.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 %i.0248, i32 10
  %65 = ptrtoint ptr %CcPwrDynRm1.i to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 0, ptr %CcPwrDynRm1.i, align 1
  %EnabledForActivity.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 %i.0248, i32 13
  %66 = ptrtoint ptr %EnabledForActivity.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %EnabledForActivity.i, align 1
  %EnabledForThrottle.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 %i.0248, i32 14
  %67 = ptrtoint ptr %EnabledForThrottle.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %EnabledForThrottle.i, align 1
  %sclk_up_hyst.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %21, i32 0, i32 102, i32 1
  %68 = ptrtoint ptr %sclk_up_hyst.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %sclk_up_hyst.i, align 1
  %UpHyst.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 %i.0248, i32 15
  %70 = ptrtoint ptr %UpHyst.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %UpHyst.i, align 1
  %sclk_down_hyst.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %21, i32 0, i32 102, i32 2
  %71 = ptrtoint ptr %sclk_down_hyst.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %sclk_down_hyst.i, align 2
  %DownHyst.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 %i.0248, i32 16
  %73 = ptrtoint ptr %DownHyst.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %DownHyst.i, align 1
  %VoltageDownHyst.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 %i.0248, i32 17
  %74 = ptrtoint ptr %VoltageDownHyst.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %VoltageDownHyst.i, align 1
  %PowerThrottle.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 %i.0248, i32 18
  %75 = ptrtoint ptr %PowerThrottle.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %PowerThrottle.i, align 1
  %76 = ptrtoint ptr %display_config.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %display_config.i, align 4
  %min_core_set_clock_in_sr.i = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %77, i32 0, i32 10
  %78 = ptrtoint ptr %min_core_set_clock_in_sr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %min_core_set_clock_in_sr.i, align 4
  %display_timing.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %21, i32 0, i32 68
  %80 = ptrtoint ptr %display_timing.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %display_timing.i, align 4
  %81 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i.i, align 4
  %and1.i.i = and i32 %82, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.i86.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %cmp.i86.not.i, label %do.end12.i.if.end_crit_edge, label %if.then16.i

do.end12.i.if.end_crit_edge:                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then16.i:                                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = call zeroext i8 @smu7_get_sleep_divider_id_from_clock(i32 noundef %18, i32 noundef %79) #6
  %DeepSleepDivId.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 %i.0248, i32 3
  %83 = ptrtoint ptr %DeepSleepDivId.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %call19.i, ptr %DeepSleepDivId.i, align 1
  br label %if.end

tonga_populate_single_graphic_level.exit.thread:  ; preds = %do.end.i, %if.then3.i.tonga_populate_single_graphic_level.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvdd.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.then16.i, %do.end12.i.if.end_crit_edge
  %DisplayWatermark.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 %i.0248, i32 12
  %84 = ptrtoint ptr %DisplayWatermark.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %DisplayWatermark.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvdd.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0248)
  %cmp13 = icmp ugt i32 %i.0248, 1
  br i1 %cmp13, label %if.then15, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %DeepSleepDivId = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 %i.0248, i32 3
  %85 = ptrtoint ptr %DeepSleepDivId to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %DeepSleepDivId, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %i.0248, 1
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %1, align 4
  %cmp = icmp ult i32 %inc, %87
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %EnabledForActivity = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 0, i32 13
  %88 = ptrtoint ptr %EnabledForActivity to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %EnabledForActivity, align 2
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp25 = icmp ugt i32 %90, 1
  br i1 %cmp25, label %if.then27, label %for.end.if.end33_crit_edge

for.end.if.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then27:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %90, -1
  %DisplayWatermark = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 %sub, i32 12
  %91 = ptrtoint ptr %DisplayWatermark to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %DisplayWatermark, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %for.end.if.end33_crit_edge
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %1, align 4
  %conv36 = trunc i32 %93 to i8
  %GraphicsDpmLevelCount = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 22
  %94 = ptrtoint ptr %GraphicsDpmLevelCount to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv36, ptr %GraphicsDpmLevelCount, align 4
  %call39 = call i32 @phm_get_dpm_level_enable_mask_value(ptr noundef %1) #6
  %sclk_dpm_enable_mask = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 70, i32 4
  %95 = ptrtoint ptr %sclk_dpm_enable_mask to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %call39, ptr %sclk_dpm_enable_mask, align 4
  %cmp40.not = icmp eq ptr %7, null
  br i1 %cmp40.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.end33
  %conv43 = and i32 %9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv43)
  %cmp44.not = icmp eq i32 %conv43, 0
  br i1 %cmp44.not, label %if.then46, label %do.end54

if.then46:                                        ; preds = %do.body
  %call47 = call i32 @___ratelimit(ptr noundef nonnull @tonga_populate_all_graphic_levels._rs, ptr noundef nonnull @__func__.tonga_populate_all_graphic_levels) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool.not = icmp eq i32 %call47, 0
  br i1 %tobool.not, label %if.then46.cleanup_crit_edge, label %do.end

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.60) #10
  br label %cleanup

do.end54:                                         ; preds = %do.body
  %sub56 = add nsw i32 %conv43, -1
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp60251.not = icmp eq i32 %97, 0
  br i1 %cmp60251.not, label %do.end54.if.end166_crit_edge, label %do.end54.for.body62_crit_edge

do.end54.for.body62_crit_edge:                    ; preds = %do.end54
  br label %for.body62

do.end54.if.end166_crit_edge:                     ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end166

for.body62:                                       ; preds = %for.body62.for.body62_crit_edge, %do.end54.for.body62_crit_edge
  %i.1252 = phi i32 [ %inc70, %for.body62.for.body62_crit_edge ], [ 0, %do.end54.for.body62_crit_edge ]
  %98 = call i32 @llvm.umin.i32(i32 %i.1252, i32 %sub56)
  %conv65 = trunc i32 %98 to i8
  %pcieDpmLevel = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 %i.1252, i32 2
  %99 = ptrtoint ptr %pcieDpmLevel to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv65, ptr %pcieDpmLevel, align 4
  %inc70 = add nuw i32 %i.1252, 1
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %1, align 4
  %cmp60 = icmp ult i32 %inc70, %101
  br i1 %cmp60, label %for.body62.for.body62_crit_edge, label %for.body62.if.end166_crit_edge

for.body62.if.end166_crit_edge:                   ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end166

for.body62.for.body62_crit_edge:                  ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body62

if.else:                                          ; preds = %if.end33
  %pcie_dpm_enable_mask = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 70, i32 6
  %102 = ptrtoint ptr %pcie_dpm_enable_mask to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pcie_dpm_enable_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp73 = icmp eq i32 %103, 0
  br i1 %cmp73, label %if.end81, label %if.else.land.rhs.preheader_crit_edge

if.else.land.rhs.preheader_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.preheader

if.end81:                                         ; preds = %if.else
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160) #10
  %104 = ptrtoint ptr %pcie_dpm_enable_mask to i32
  call void @__asan_load4_noabort(i32 %104)
  %.pr = load i32, ptr %pcie_dpm_enable_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool84.not = icmp eq i32 %.pr, 0
  br i1 %tobool84.not, label %if.end81.while.end127_crit_edge, label %if.end81.land.rhs.preheader_crit_edge

if.end81.land.rhs.preheader_crit_edge:            ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.preheader

if.end81.while.end127_crit_edge:                  ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end127

land.rhs.preheader:                               ; preds = %if.end81.land.rhs.preheader_crit_edge, %if.else.land.rhs.preheader_crit_edge
  %105 = phi i32 [ %.pr, %if.end81.land.rhs.preheader_crit_edge ], [ %103, %if.else.land.rhs.preheader_crit_edge ]
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.land.rhs_crit_edge, %land.rhs.preheader
  %highest_pcie_level_enabled.0253 = phi i8 [ %inc91, %land.rhs.land.rhs_crit_edge ], [ 0, %land.rhs.preheader ]
  %conv87 = zext i8 %highest_pcie_level_enabled.0253 to i32
  %shl = shl i32 2, %conv87
  %and = and i32 %shl, %105
  %cmp89.not = icmp eq i32 %and, 0
  %inc91 = add i8 %highest_pcie_level_enabled.0253, 1
  br i1 %cmp89.not, label %land.rhs.land.rhs96_crit_edge, label %land.rhs.land.rhs_crit_edge

land.rhs.land.rhs_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

land.rhs.land.rhs96_crit_edge:                    ; preds = %land.rhs
  br label %land.rhs96

land.rhs96:                                       ; preds = %land.rhs96.land.rhs96_crit_edge, %land.rhs.land.rhs96_crit_edge
  %lowest_pcie_level_enabled.0259 = phi i8 [ %inc106, %land.rhs96.land.rhs96_crit_edge ], [ 0, %land.rhs.land.rhs96_crit_edge ]
  %conv99 = zext i8 %lowest_pcie_level_enabled.0259 to i32
  %shl100 = shl nuw i32 1, %conv99
  %and101 = and i32 %shl100, %105
  %cmp102 = icmp eq i32 %and101, 0
  %inc106 = add i8 %lowest_pcie_level_enabled.0259, 1
  br i1 %cmp102, label %land.rhs96.land.rhs96_crit_edge, label %while.end107

land.rhs96.land.rhs96_crit_edge:                  ; preds = %land.rhs96
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs96

while.end107:                                     ; preds = %land.rhs96
  %conv116 = zext i8 %lowest_pcie_level_enabled.0259 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %highest_pcie_level_enabled.0253)
  %cmp111262.not = icmp eq i8 %highest_pcie_level_enabled.0253, 0
  br i1 %cmp111262.not, label %while.end107.while.end127_crit_edge, label %land.rhs113.preheader

while.end107.while.end127_crit_edge:              ; preds = %while.end107
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end127

land.rhs113.preheader:                            ; preds = %while.end107
  %106 = add i8 %highest_pcie_level_enabled.0253, -1
  %107 = zext i8 %106 to i32
  %108 = add nuw nsw i32 %107, 1
  %wide.trip.count = zext i8 %highest_pcie_level_enabled.0253 to i32
  br label %land.rhs113

while.cond108:                                    ; preds = %land.rhs113
  %exitcond.not = icmp eq i32 %add117, %wide.trip.count
  br i1 %exitcond.not, label %while.cond108.while.end127_crit_edge, label %while.cond108.land.rhs113_crit_edge

while.cond108.land.rhs113_crit_edge:              ; preds = %while.cond108
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs113

while.cond108.while.end127_crit_edge:             ; preds = %while.cond108
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end127

land.rhs113:                                      ; preds = %while.cond108.land.rhs113_crit_edge, %land.rhs113.preheader
  %indvars.iv = phi i32 [ 0, %land.rhs113.preheader ], [ %add117, %while.cond108.land.rhs113_crit_edge ]
  %add117 = add nuw nsw i32 %indvars.iv, 1
  %add119 = add nuw nsw i32 %add117, %conv116
  %shl120 = shl nuw i32 1, %add119
  %and121 = and i32 %shl120, %105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %cmp122 = icmp eq i32 %and121, 0
  br i1 %cmp122, label %while.cond108, label %land.rhs113.while.end127_crit_edge

land.rhs113.while.end127_crit_edge:               ; preds = %land.rhs113
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end127

while.end127:                                     ; preds = %land.rhs113.while.end127_crit_edge, %while.cond108.while.end127_crit_edge, %while.end107.while.end127_crit_edge, %if.end81.while.end127_crit_edge
  %conv116285 = phi i32 [ %conv116, %while.end107.while.end127_crit_edge ], [ 0, %if.end81.while.end127_crit_edge ], [ %conv116, %while.cond108.while.end127_crit_edge ], [ %conv116, %land.rhs113.while.end127_crit_edge ]
  %lowest_pcie_level_enabled.0.lcssa283 = phi i8 [ %lowest_pcie_level_enabled.0259, %while.end107.while.end127_crit_edge ], [ 0, %if.end81.while.end127_crit_edge ], [ %lowest_pcie_level_enabled.0259, %while.cond108.while.end127_crit_edge ], [ %lowest_pcie_level_enabled.0259, %land.rhs113.while.end127_crit_edge ]
  %highest_pcie_level_enabled.0.lcssa275281 = phi i8 [ 0, %while.end107.while.end127_crit_edge ], [ 0, %if.end81.while.end127_crit_edge ], [ %highest_pcie_level_enabled.0253, %while.cond108.while.end127_crit_edge ], [ %highest_pcie_level_enabled.0253, %land.rhs113.while.end127_crit_edge ]
  %conv110.le.pre-phi = phi i32 [ 0, %while.end107.while.end127_crit_edge ], [ 0, %if.end81.while.end127_crit_edge ], [ %wide.trip.count, %while.cond108.while.end127_crit_edge ], [ %wide.trip.count, %land.rhs113.while.end127_crit_edge ]
  %conv109.lcssa = phi i32 [ 0, %while.end107.while.end127_crit_edge ], [ 0, %if.end81.while.end127_crit_edge ], [ %indvars.iv, %land.rhs113.while.end127_crit_edge ], [ %108, %while.cond108.while.end127_crit_edge ]
  %add129 = add nsw i32 %conv109.lcssa, 1
  %add131 = add nsw i32 %add129, %conv116285
  %109 = call i32 @llvm.umin.i32(i32 %add131, i32 %conv110.le.pre-phi)
  %conv144 = trunc i32 %109 to i8
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %111)
  %cmp148267 = icmp ugt i32 %111, 2
  br i1 %cmp148267, label %while.end127.for.body150_crit_edge, label %while.end127.for.end157_crit_edge

while.end127.for.end157_crit_edge:                ; preds = %while.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end157

while.end127.for.body150_crit_edge:               ; preds = %while.end127
  br label %for.body150

for.body150:                                      ; preds = %for.body150.for.body150_crit_edge, %while.end127.for.body150_crit_edge
  %i.2268 = phi i32 [ %inc156, %for.body150.for.body150_crit_edge ], [ 2, %while.end127.for.body150_crit_edge ]
  %pcieDpmLevel154 = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 %i.2268, i32 2
  %112 = ptrtoint ptr %pcieDpmLevel154 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %highest_pcie_level_enabled.0.lcssa275281, ptr %pcieDpmLevel154, align 4
  %inc156 = add nuw i32 %i.2268, 1
  %113 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %1, align 4
  %cmp148 = icmp ult i32 %inc156, %114
  br i1 %cmp148, label %for.body150.for.body150_crit_edge, label %for.body150.for.end157_crit_edge

for.body150.for.end157_crit_edge:                 ; preds = %for.body150
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end157

for.body150.for.body150_crit_edge:                ; preds = %for.body150
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body150

for.end157:                                       ; preds = %for.body150.for.end157_crit_edge, %while.end127.for.end157_crit_edge
  %pcieDpmLevel161 = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 0, i32 2
  %115 = ptrtoint ptr %pcieDpmLevel161 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %lowest_pcie_level_enabled.0.lcssa283, ptr %pcieDpmLevel161, align 8
  %pcieDpmLevel165 = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 35, i32 1, i32 2
  %116 = ptrtoint ptr %pcieDpmLevel165 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv144, ptr %pcieDpmLevel165, align 4
  br label %if.end166

if.end166:                                        ; preds = %for.end157, %for.body62.if.end166_crit_edge, %do.end54.if.end166_crit_edge
  %call167 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add, ptr noundef %GraphicsLevel, i32 noundef 352, i32 noundef 262144) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end166, %do.end, %if.then46.cleanup_crit_edge, %tonga_populate_single_graphic_level.exit.thread
  %retval.0 = phi i32 [ %call167, %if.end166 ], [ -22, %do.end ], [ -22, %if.then46.cleanup_crit_edge ], [ %call1.i, %tonga_populate_single_graphic_level.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tonga_populate_all_memory_levels(ptr noundef %hwmgr) #0 align 64 {
entry:
  %mpll_param.i.i = alloca %struct.pp_atomctrl_memory_clock_param, align 4
  %ss_info.i.i = alloca %struct.pp_atomctrl_internal_ss_info, align 4
  %mvdd.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  %add = add i32 %5, 792
  %MemoryLevel = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37
  %6 = call ptr @memset(ptr %MemoryLevel, i32 0, i32 256)
  %mclk_table = getelementptr inbounds %struct.smu7_dpm_table, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mclk_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp86.not = icmp eq i32 %8, 0
  br i1 %cmp86.not, label %entry.for.end_crit_edge, label %do.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %pptable.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %od_enabled.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 53
  %display_config.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 45
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %9 = getelementptr inbounds %struct.pp_atomctrl_memory_clock_param, ptr %mpll_param.i.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.pp_atomctrl_memory_clock_param, ptr %mpll_param.i.i, i32 0, i32 3
  %11 = getelementptr inbounds %struct.pp_atomctrl_memory_clock_param, ptr %mpll_param.i.i, i32 0, i32 5
  %12 = getelementptr inbounds %struct.pp_atomctrl_memory_clock_param, ptr %mpll_param.i.i, i32 0, i32 6
  %13 = getelementptr inbounds %struct.pp_atomctrl_memory_clock_param, ptr %mpll_param.i.i, i32 0, i32 4
  %14 = getelementptr inbounds %struct.pp_atomctrl_memory_clock_param, ptr %mpll_param.i.i, i32 0, i32 2
  %platform_descriptor.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23
  %15 = getelementptr inbounds %struct.pp_atomctrl_internal_ss_info, ptr %ss_info.i.i, i32 0, i32 1
  %16 = getelementptr inbounds %struct.pp_atomctrl_internal_ss_info, ptr %ss_info.i.i, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %do.body.lr.ph
  %i.087 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %for.inc.do.body_crit_edge ]
  %value = getelementptr %struct.smu7_dpm_table, ptr %1, i32 0, i32 1, i32 1, i32 %i.087, i32 1
  %17 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp3.not = icmp eq i32 %18, 0
  br i1 %cmp3.not, label %if.then, label %do.end9

if.then:                                          ; preds = %do.body
  %call = call i32 @___ratelimit(ptr noundef nonnull @tonga_populate_all_memory_levels._rs, ptr noundef nonnull @__func__.tonga_populate_all_memory_levels) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.163) #10
  br label %cleanup

do.end9:                                          ; preds = %do.body
  %arrayidx16 = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37, i32 %i.087
  %19 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %backend, align 4
  %21 = ptrtoint ptr %pptable.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pptable.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvdd.i) #6
  %23 = ptrtoint ptr %mvdd.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %mvdd.i, align 4
  %24 = ptrtoint ptr %od_enabled.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %od_enabled.i, align 4, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  %vdd_dependency_on_mclk.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %20, i32 0, i32 2, i32 3
  br label %if.end.i

if.else.i:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  %vdd_dep_on_mclk.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %22, i32 0, i32 1
  %26 = ptrtoint ptr %vdd_dep_on_mclk.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vdd_dep_on_mclk.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %vdd_dep_table.0.i = phi ptr [ %vdd_dependency_on_mclk.i, %if.then.i ], [ %27, %if.else.i ]
  %cmp.not.i = icmp eq ptr %vdd_dep_table.0.i, null
  br i1 %cmp.not.i, label %if.end.i.if.end13.i_crit_edge, label %if.then1.i

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then1.i:                                       ; preds = %if.end.i
  %call.i = call fastcc i32 @tonga_get_dependency_volt_by_clk(ptr noundef %hwmgr, ptr noundef nonnull %vdd_dep_table.0.i, i32 noundef %18, ptr noundef %arrayidx16, ptr noundef nonnull %mvdd.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then1.i.if.end13.i_crit_edge, label %if.then3.i

if.then1.i.if.end13.i_crit_edge:                  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then3.i:                                       ; preds = %if.then1.i
  %call4.i = call i32 @___ratelimit(ptr noundef nonnull @tonga_populate_single_memory_level._rs, ptr noundef nonnull @__func__.tonga_populate_single_memory_level) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then3.i.tonga_populate_single_memory_level.exit.thread_crit_edge, label %do.end.i

if.then3.i.tonga_populate_single_memory_level.exit.thread_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tonga_populate_single_memory_level.exit.thread

do.end.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.164) #10
  br label %tonga_populate_single_memory_level.exit.thread

if.end13.i:                                       ; preds = %if.then1.i.if.end13.i_crit_edge, %if.end.i.if.end13.i_crit_edge
  %mvdd_control.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %20, i32 0, i32 23
  %28 = ptrtoint ptr %mvdd_control.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mvdd_control.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp14.i = icmp eq i32 %29, 0
  br i1 %cmp14.i, label %if.then15.i, label %if.else16.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %vbios_boot_state.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %20, i32 0, i32 31
  %30 = ptrtoint ptr %vbios_boot_state.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vbios_boot_state.i, align 4
  %conv.i = zext i16 %31 to i32
  br label %if.end18.i

if.else16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %mvdd.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mvdd.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else16.i, %if.then15.i
  %.sink.i = phi i32 [ %conv.i, %if.then15.i ], [ %33, %if.else16.i ]
  %34 = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37, i32 %i.087, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %.sink.i, ptr %34, align 1
  %EnabledForThrottle.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37, i32 %i.087, i32 9
  %36 = ptrtoint ptr %EnabledForThrottle.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %EnabledForThrottle.i, align 1
  %EnabledForActivity.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37, i32 %i.087, i32 10
  %37 = ptrtoint ptr %EnabledForActivity.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %EnabledForActivity.i, align 1
  %mclk_up_hyst.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %20, i32 0, i32 102, i32 5
  %38 = ptrtoint ptr %mclk_up_hyst.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %mclk_up_hyst.i, align 1
  %UpHyst.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37, i32 %i.087, i32 11
  %40 = ptrtoint ptr %UpHyst.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %UpHyst.i, align 1
  %mclk_down_hyst.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %20, i32 0, i32 102, i32 6
  %41 = ptrtoint ptr %mclk_down_hyst.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %mclk_down_hyst.i, align 4
  %DownHyst.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37, i32 %i.087, i32 12
  %43 = ptrtoint ptr %DownHyst.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %DownHyst.i, align 1
  %VoltageDownHyst.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37, i32 %i.087, i32 13
  %44 = ptrtoint ptr %VoltageDownHyst.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %VoltageDownHyst.i, align 1
  %mclk_activity.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %20, i32 0, i32 102, i32 7
  %45 = ptrtoint ptr %mclk_activity.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %mclk_activity.i, align 2
  %ActivityLevel.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37, i32 %i.087, i32 15
  %47 = ptrtoint ptr %ActivityLevel.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 %46, ptr %ActivityLevel.i, align 1
  %StutterEnable.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37, i32 %i.087, i32 6
  %StrobeEnable.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37, i32 %i.087, i32 7
  %EdcReadEnable.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37, i32 %i.087, i32 3
  %EdcWriteEnable.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37, i32 %i.087, i32 4
  %DisplayWatermark.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37, i32 %i.087, i32 16
  %48 = ptrtoint ptr %DisplayWatermark.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %DisplayWatermark.i, align 1
  %49 = call ptr @memset(ptr %EdcReadEnable.i, i32 0, i32 5)
  %50 = ptrtoint ptr %display_config.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %display_config.i, align 4
  %num_display.i = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %num_display.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_display.i, align 4
  %num_existing_displays.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %20, i32 0, i32 68, i32 1
  %54 = ptrtoint ptr %num_existing_displays.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %num_existing_displays.i, align 4
  %55 = load ptr, ptr %display_config.i, align 4
  %vrefresh.i = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %55, i32 0, i32 12
  %56 = ptrtoint ptr %vrefresh.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %vrefresh.i, align 4
  %vrefresh23.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %20, i32 0, i32 68, i32 2
  %58 = ptrtoint ptr %vrefresh23.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %vrefresh23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30001, i32 %18)
  %cmp26.i = icmp ult i32 %18, 30001
  br i1 %cmp26.i, label %land.lhs.true28.i, label %if.end18.i.land.end.i_crit_edge

if.end18.i.land.end.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end.i

land.lhs.true28.i:                                ; preds = %if.end18.i
  %is_uvd_enabled.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %20, i32 0, i32 30
  %59 = ptrtoint ptr %is_uvd_enabled.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %is_uvd_enabled.i, align 4, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool29.not.i = icmp eq i8 %60, 0
  br i1 %tobool29.not.i, label %land.lhs.true30.i, label %land.lhs.true28.i.land.end.i_crit_edge

land.lhs.true28.i.land.end.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end.i

land.lhs.true30.i:                                ; preds = %land.lhs.true28.i
  %61 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %device.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %call32.i = call i32 %66(ptr noundef %62, i32 noundef 6965) #6
  %and.i = and i32 %call32.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool34.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool34.not.i, label %land.lhs.true30.i.land.end.i_crit_edge, label %land.lhs.true35.i

land.lhs.true30.i.land.end.i_crit_edge:           ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end.i

land.lhs.true35.i:                                ; preds = %land.lhs.true30.i
  %67 = ptrtoint ptr %num_existing_displays.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_existing_displays.i, align 4
  %69 = add i32 %68, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %69)
  %70 = icmp ult i32 %69, -2
  br i1 %70, label %land.lhs.true35.i.land.end.i_crit_edge, label %if.then45.i

land.lhs.true35.i.land.end.i_crit_edge:           ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end.i

if.then45.i:                                      ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %StutterEnable.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %StutterEnable.i, align 1
  br label %land.end.i

land.end.i:                                       ; preds = %if.then45.i, %land.lhs.true35.i.land.end.i_crit_edge, %land.lhs.true30.i.land.end.i_crit_edge, %land.lhs.true28.i.land.end.i_crit_edge, %if.end18.i.land.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 40001, i32 %18)
  %cmp50.i = icmp ult i32 %18, 40001
  %conv52.i = zext i1 %cmp50.i to i8
  %72 = ptrtoint ptr %StrobeEnable.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv52.i, ptr %StrobeEnable.i, align 1
  %is_memory_gddr5.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %20, i32 0, i32 12
  %73 = ptrtoint ptr %is_memory_gddr5.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %is_memory_gddr5.i, align 4, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool54.not.i = icmp eq i8 %74, 0
  br i1 %tobool54.not.i, label %if.else116.i, label %if.then55.i

if.then55.i:                                      ; preds = %land.end.i
  br i1 %cmp50.i, label %if.then.i.i, label %if.else6.i.i

if.then.i.i:                                      ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12500, i32 %18)
  %cmp.i.i = icmp ult i32 %18, 12500
  %75 = trunc i32 %18 to i16
  %div.lhs.trunc.i.i = add i16 %75, -10000
  %div26.i.i = udiv i16 %div.lhs.trunc.i.i, 2500
  %conv.i.i = trunc i16 %div26.i.i to i8
  %conv.i262.i = zext i16 %div26.i.i to i32
  %conv.i.sink.i = select i1 %cmp.i.i, i8 0, i8 %conv.i.i
  %mc_para_index.0.i264.i = select i1 %cmp.i.i, i32 0, i32 %conv.i262.i
  %76 = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37, i32 %i.087, i32 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv.i.sink.i, ptr %76, align 1
  %78 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %device.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %call84.i = call i32 %83(ptr noundef %79, i32 noundef 2713) #6
  %shr85.i = lshr i32 %call84.i, 16
  %and86.i = and i32 %shr85.i, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and86.i, i32 %mc_para_index.0.i264.i)
  %cmp87.not.i = icmp ugt i32 %and86.i, %mc_para_index.0.i264.i
  %84 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %device.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  br i1 %cmp87.not.i, label %if.else99.i, label %if.then89.i

if.else6.i.i:                                     ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65000, i32 %18)
  %cmp7.i.i = icmp ult i32 %18, 65000
  br i1 %cmp7.i.i, label %if.else6.i.i.if.else112.i_crit_edge, label %if.else10.i.i

if.else6.i.i.if.else112.i_crit_edge:              ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else112.i

if.else10.i.i:                                    ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 135000, i32 %18)
  %cmp11.i.i = icmp ugt i32 %18, 135000
  br i1 %cmp11.i.i, label %if.else10.i.i.if.else112.i_crit_edge, label %if.else14.i.i

if.else10.i.i.if.else112.i_crit_edge:             ; preds = %if.else10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else112.i

if.else14.i.i:                                    ; preds = %if.else10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub15.i.i = add nsw i32 %18, -60000
  %div16.i.i = udiv i32 %sub15.i.i, 5000
  %conv17.i.i = trunc i32 %div16.i.i to i8
  br label %if.else112.i

if.then89.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call94.i = call i32 %89(ptr noundef %85, i32 noundef 2709) #6
  %90 = and i32 %call94.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool97.i = icmp ne i32 %90, 0
  br label %if.end130.i

if.else99.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call104.i = call i32 %89(ptr noundef %85, i32 noundef 2710) #6
  %91 = and i32 %call104.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool107.i = icmp ne i32 %91, 0
  br label %if.end130.i

if.else112.i:                                     ; preds = %if.else14.i.i, %if.else10.i.i.if.else112.i_crit_edge, %if.else6.i.i.if.else112.i_crit_edge
  %mc_para_index.0.i.ph.i = phi i8 [ 15, %if.else10.i.i.if.else112.i_crit_edge ], [ 0, %if.else6.i.i.if.else112.i_crit_edge ], [ %conv17.i.i, %if.else14.i.i ]
  %StrobeRatio274.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37, i32 %i.087, i32 8
  %92 = ptrtoint ptr %StrobeRatio274.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %mc_para_index.0.i.ph.i, ptr %StrobeRatio274.i, align 1
  %93 = ptrtoint ptr %EdcReadEnable.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %EdcReadEnable.i, align 1
  %94 = ptrtoint ptr %EdcWriteEnable.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %EdcWriteEnable.i, align 1
  %dll_default_on.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %20, i32 0, i32 53
  %95 = ptrtoint ptr %dll_default_on.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %dll_default_on.i, align 4, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool113.i = icmp ne i8 %96, 0
  br label %if.end130.i

if.else116.i:                                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %18)
  %cmp.i266.i = icmp ult i32 %18, 10000
  br i1 %cmp.i266.i, label %if.else116.i.tonga_get_ddr3_mclk_frequency_ratio.exit.i_crit_edge, label %if.else.i267.i

if.else116.i.tonga_get_ddr3_mclk_frequency_ratio.exit.i_crit_edge: ; preds = %if.else116.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tonga_get_ddr3_mclk_frequency_ratio.exit.i

if.else.i267.i:                                   ; preds = %if.else116.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 79999, i32 %18)
  %cmp1.i.i = icmp ugt i32 %18, 79999
  br i1 %cmp1.i.i, label %if.else.i267.i.tonga_get_ddr3_mclk_frequency_ratio.exit.i_crit_edge, label %if.else3.i.i

if.else.i267.i.tonga_get_ddr3_mclk_frequency_ratio.exit.i_crit_edge: ; preds = %if.else.i267.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tonga_get_ddr3_mclk_frequency_ratio.exit.i

if.else3.i.i:                                     ; preds = %if.else.i267.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add nsw i32 %18, -10000
  %div.i.i = udiv i32 %sub.i.i, 5000
  %97 = trunc i32 %div.i.i to i8
  %conv.i268.i = add nuw nsw i8 %97, 1
  br label %tonga_get_ddr3_mclk_frequency_ratio.exit.i

tonga_get_ddr3_mclk_frequency_ratio.exit.i:       ; preds = %if.else3.i.i, %if.else.i267.i.tonga_get_ddr3_mclk_frequency_ratio.exit.i_crit_edge, %if.else116.i.tonga_get_ddr3_mclk_frequency_ratio.exit.i_crit_edge
  %mc_para_index.0.i269.i = phi i8 [ %conv.i268.i, %if.else3.i.i ], [ 0, %if.else116.i.tonga_get_ddr3_mclk_frequency_ratio.exit.i_crit_edge ], [ 15, %if.else.i267.i.tonga_get_ddr3_mclk_frequency_ratio.exit.i_crit_edge ]
  %StrobeRatio118.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37, i32 %i.087, i32 8
  %98 = ptrtoint ptr %StrobeRatio118.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %mc_para_index.0.i269.i, ptr %StrobeRatio118.i, align 1
  %99 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %device.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %call123.i = call i32 %104(ptr noundef %100, i32 noundef 2709) #6
  %105 = and i32 %call123.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %extract.t255.i = icmp ne i32 %105, 0
  br label %if.end130.i

if.end130.i:                                      ; preds = %tonga_get_ddr3_mclk_frequency_ratio.exit.i, %if.else112.i, %if.else99.i, %if.then89.i
  %dll_state_on.0.off0.i = phi i1 [ %tobool97.i, %if.then89.i ], [ %tobool107.i, %if.else99.i ], [ %tobool113.i, %if.else112.i ], [ %extract.t255.i, %tonga_get_ddr3_mclk_frequency_ratio.exit.i ]
  %106 = ptrtoint ptr %StrobeEnable.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %StrobeEnable.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool132.i = icmp ne i8 %107, 0
  %108 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %backend, align 4
  %vDLL_CNTL.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %109, i32 0, i32 11, i32 6
  %110 = ptrtoint ptr %vDLL_CNTL.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %vDLL_CNTL.i.i, align 4
  %vMCLK_PWRMGT_CNTL.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %109, i32 0, i32 11, i32 7
  %112 = ptrtoint ptr %vMCLK_PWRMGT_CNTL.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %vMCLK_PWRMGT_CNTL.i.i, align 4
  %vMPLL_AD_FUNC_CNTL.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %109, i32 0, i32 11, i32 8
  %114 = ptrtoint ptr %vMPLL_AD_FUNC_CNTL.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %vMPLL_AD_FUNC_CNTL.i.i, align 4
  %vMPLL_DQ_FUNC_CNTL.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %109, i32 0, i32 11, i32 9
  %116 = ptrtoint ptr %vMPLL_DQ_FUNC_CNTL.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %vMPLL_DQ_FUNC_CNTL.i.i, align 4
  %vMPLL_FUNC_CNTL.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %109, i32 0, i32 11, i32 10
  %118 = ptrtoint ptr %vMPLL_FUNC_CNTL.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %vMPLL_FUNC_CNTL.i.i, align 4
  %vMPLL_FUNC_CNTL_1.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %109, i32 0, i32 11, i32 11
  %120 = ptrtoint ptr %vMPLL_FUNC_CNTL_1.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %vMPLL_FUNC_CNTL_1.i.i, align 4
  %vMPLL_FUNC_CNTL_2.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %109, i32 0, i32 11, i32 12
  %122 = ptrtoint ptr %vMPLL_FUNC_CNTL_2.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %vMPLL_FUNC_CNTL_2.i.i, align 4
  %vMPLL_SS1.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %109, i32 0, i32 11, i32 13
  %124 = ptrtoint ptr %vMPLL_SS1.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %vMPLL_SS1.i.i, align 4
  %vMPLL_SS2.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %109, i32 0, i32 11, i32 14
  %126 = ptrtoint ptr %vMPLL_SS2.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %vMPLL_SS2.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mpll_param.i.i) #6
  %128 = call ptr @memset(ptr %mpll_param.i.i, i32 255, i32 32)
  %call.i.i = call i32 @atomctrl_get_memory_pll_dividers_si(ptr noundef %hwmgr, i32 noundef %18, ptr noundef nonnull %mpll_param.i.i, i1 noundef zeroext %tobool132.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool10.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool10.not.i.i, label %do.end18.i.i, label %if.then.i270.i

if.then.i270.i:                                   ; preds = %if.end130.i
  %call11.i.i = call i32 @___ratelimit(ptr noundef nonnull @tonga_calculate_mclk_params._rs, ptr noundef nonnull @__func__.tonga_calculate_mclk_params) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.then.i270.i.tonga_populate_single_memory_level.exit.thread81_crit_edge, label %do.end.i.i

if.then.i270.i.tonga_populate_single_memory_level.exit.thread81_crit_edge: ; preds = %if.then.i270.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tonga_populate_single_memory_level.exit.thread81

do.end.i.i:                                       ; preds = %if.then.i270.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.165) #10
  br label %tonga_populate_single_memory_level.exit.thread81

do.end18.i.i:                                     ; preds = %if.end130.i
  %and.i.i = and i32 %119, -267386881
  %129 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %14, align 4
  %shl.i.i = shl i32 %130, 20
  %and19.i.i = and i32 %shl.i.i, 267386880
  %or.i.i = or i32 %and19.i.i, %and.i.i
  %and20.i.i = and i32 %121, -268435444
  %131 = ptrtoint ptr %mpll_param.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %bf.load.i.i = load i32, ptr %mpll_param.i.i, align 4
  %132 = lshr i32 %bf.load.i.i, 4
  %shl21.i.i = and i32 %132, 268369920
  %or23.i.i = or i32 %shl21.i.i, %and20.i.i
  %shl28.i.i = and i32 %132, 65520
  %or30.i.i = or i32 %or23.i.i, %shl28.i.i
  %133 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %13, align 4
  %and33.i.i = and i32 %134, 3
  %or34.i.i = or i32 %or30.i.i, %and33.i.i
  %and35.i.i = and i32 %115, -8
  %135 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %9, align 4
  %and37.i.i = and i32 %136, 7
  %or38.i.i = or i32 %and37.i.i, %and35.i.i
  %is_memory_gddr5.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %109, i32 0, i32 12
  %137 = ptrtoint ptr %is_memory_gddr5.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %is_memory_gddr5.i.i, align 4, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool39.not.i.i = icmp eq i8 %138, 0
  br i1 %tobool39.not.i.i, label %do.end18.i.i.if.end50.i.i_crit_edge, label %if.then40.i.i

do.end18.i.i.if.end50.i.i_crit_edge:              ; preds = %do.end18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.i.i

if.then40.i.i:                                    ; preds = %do.end18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and41.i.i = and i32 %117, -24
  %139 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %11, align 4
  %shl42.i.i = shl i32 %140, 4
  %and43.i.i = and i32 %shl42.i.i, 16
  %or44.i.i = or i32 %and37.i.i, %and41.i.i
  %or49.i.i = or i32 %or44.i.i, %and43.i.i
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %if.then40.i.i, %do.end18.i.i.if.end50.i.i_crit_edge
  %mpll_dq_func_cntl.0.i.i = phi i32 [ %or49.i.i, %if.then40.i.i ], [ %117, %do.end18.i.i.if.end50.i.i_crit_edge ]
  %141 = ptrtoint ptr %platform_descriptor.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %platform_descriptor.i.i, align 4
  %and1.i.i.i = and i32 %142, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %cmp.i.not.i.i, label %if.end50.i.i.for.inc_crit_edge, label %if.then52.i.i

if.end50.i.i.for.inc_crit_edge:                   ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then52.i.i:                                    ; preds = %if.end50.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ss_info.i.i) #6
  %143 = ptrtoint ptr %ss_info.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 -1, ptr %ss_info.i.i, align 4, !annotation !369
  %144 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 -1, ptr %15, align 4, !annotation !369
  %145 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 -1, ptr %16, align 4, !annotation !369
  %call54.i.i = call i32 @atomctrl_get_mpll_reference_clock(ptr noundef %hwmgr) #6
  %146 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %147)
  %cmp.i271.i = icmp eq i32 %147, 1
  %..i.i = select i1 %cmp.i271.i, i32 2, i32 1
  %mul59.i.i = shl i32 %18, %..i.i
  %148 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %9, align 4
  %mul62.i.i = shl i32 %mul59.i.i, %149
  %call65.i.i = call i32 @atomctrl_get_memory_clock_spread_spectrum(ptr noundef %hwmgr, i32 noundef %mul62.i.i, ptr noundef nonnull %ss_info.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i.i)
  %cmp66.i.i = icmp eq i32 %call65.i.i, 0
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.then52.i.i.if.end84.i.i_crit_edge

if.then52.i.i.if.end84.i.i_crit_edge:             ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84.i.i

if.then67.i.i:                                    ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div.i272.i = udiv i32 %mul62.i.i, %call54.i.i
  %mul64.i.i = mul i32 %div.i272.i, %div.i272.i
  %mul68.i.i = mul i32 %call54.i.i, 5
  %150 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %15, align 4
  %div69.i.i = udiv i32 %mul68.i.i, %151
  %152 = ptrtoint ptr %ss_info.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %ss_info.i.i, align 4
  %mul70.i.i = mul i32 %151, 131
  %mul72.i.i = mul i32 %mul70.i.i, %153
  %div73.i.i = udiv i32 %mul72.i.i, 100
  %mul74.i.i = mul i32 %mul64.i.i, %div73.i.i
  %div75.i.i = udiv i32 %mul74.i.i, %mul62.i.i
  %and76.i.i = and i32 %125, -67108864
  %and78.i.i = and i32 %div75.i.i, 67108863
  %or79.i.i = or i32 %and78.i.i, %and76.i.i
  %and80.i.i = and i32 %127, -4096
  %and82.i.i = and i32 %div69.i.i, 4095
  %or83.i.i = or i32 %and82.i.i, %and80.i.i
  br label %if.end84.i.i

if.end84.i.i:                                     ; preds = %if.then67.i.i, %if.then52.i.i.if.end84.i.i_crit_edge
  %mpll_ss1.0.i.i = phi i32 [ %or79.i.i, %if.then67.i.i ], [ %125, %if.then52.i.i.if.end84.i.i_crit_edge ]
  %mpll_ss2.0.i.i = phi i32 [ %or83.i.i, %if.then67.i.i ], [ %127, %if.then52.i.i.if.end84.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ss_info.i.i) #6
  br label %for.inc

tonga_populate_single_memory_level.exit.thread:   ; preds = %do.end.i, %if.then3.i.tonga_populate_single_memory_level.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvdd.i) #6
  br label %cleanup

tonga_populate_single_memory_level.exit.thread81: ; preds = %do.end.i.i, %if.then.i270.i.tonga_populate_single_memory_level.exit.thread81_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mpll_param.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvdd.i) #6
  br label %cleanup

for.inc:                                          ; preds = %if.end84.i.i, %if.end50.i.i.for.inc_crit_edge
  %mpll_ss1.1.i.i = phi i32 [ %mpll_ss1.0.i.i, %if.end84.i.i ], [ %125, %if.end50.i.i.for.inc_crit_edge ]
  %mpll_ss2.1.i.i = phi i32 [ %mpll_ss2.0.i.i, %if.end84.i.i ], [ %127, %if.end50.i.i.for.inc_crit_edge ]
  %and86.i.i = and i32 %113, -800
  %154 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %10, align 4
  %and88.i.i = and i32 %155, 31
  %or89.i.i = select i1 %dll_state_on.0.off0.i, i32 768, i32 0
  %or94.i.i = or i32 %and86.i.i, %or89.i.i
  %or100.i.i = or i32 %or94.i.i, %and88.i.i
  %MclkFrequency.i.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37, i32 %i.087, i32 2
  %156 = ptrtoint ptr %MclkFrequency.i.i to i32
  call void @__asan_storeN_noabort(i32 %156, i32 4)
  store i32 %18, ptr %MclkFrequency.i.i, align 1
  %MpllFuncCntl.i.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37, i32 %i.087, i32 18
  %157 = ptrtoint ptr %MpllFuncCntl.i.i to i32
  call void @__asan_storeN_noabort(i32 %157, i32 4)
  store i32 %or.i.i, ptr %MpllFuncCntl.i.i, align 1
  %MpllFuncCntl_1.i.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37, i32 %i.087, i32 19
  %158 = ptrtoint ptr %MpllFuncCntl_1.i.i to i32
  call void @__asan_storeN_noabort(i32 %158, i32 4)
  store i32 %or34.i.i, ptr %MpllFuncCntl_1.i.i, align 1
  %MpllFuncCntl_2.i.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37, i32 %i.087, i32 20
  %159 = ptrtoint ptr %MpllFuncCntl_2.i.i to i32
  call void @__asan_storeN_noabort(i32 %159, i32 4)
  store i32 %123, ptr %MpllFuncCntl_2.i.i, align 1
  %MpllAdFuncCntl.i.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37, i32 %i.087, i32 21
  %160 = ptrtoint ptr %MpllAdFuncCntl.i.i to i32
  call void @__asan_storeN_noabort(i32 %160, i32 4)
  store i32 %or38.i.i, ptr %MpllAdFuncCntl.i.i, align 1
  %MpllDqFuncCntl.i.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37, i32 %i.087, i32 22
  %161 = ptrtoint ptr %MpllDqFuncCntl.i.i to i32
  call void @__asan_storeN_noabort(i32 %161, i32 4)
  store i32 %mpll_dq_func_cntl.0.i.i, ptr %MpllDqFuncCntl.i.i, align 1
  %MclkPwrmgtCntl.i.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37, i32 %i.087, i32 23
  %162 = ptrtoint ptr %MclkPwrmgtCntl.i.i to i32
  call void @__asan_storeN_noabort(i32 %162, i32 4)
  store i32 %or100.i.i, ptr %MclkPwrmgtCntl.i.i, align 1
  %DllCntl.i.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37, i32 %i.087, i32 24
  %163 = ptrtoint ptr %DllCntl.i.i to i32
  call void @__asan_storeN_noabort(i32 %163, i32 4)
  store i32 %111, ptr %DllCntl.i.i, align 1
  %MpllSs1.i.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37, i32 %i.087, i32 25
  %164 = ptrtoint ptr %MpllSs1.i.i to i32
  call void @__asan_storeN_noabort(i32 %164, i32 4)
  store i32 %mpll_ss1.1.i.i, ptr %MpllSs1.i.i, align 1
  %MpllSs2.i.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37, i32 %i.087, i32 26
  %165 = ptrtoint ptr %MpllSs2.i.i to i32
  call void @__asan_storeN_noabort(i32 %165, i32 4)
  store i32 %mpll_ss2.1.i.i, ptr %MpllSs2.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mpll_param.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvdd.i) #6
  %inc = add nuw i32 %i.087, 1
  %166 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %mclk_table, align 4
  %cmp = icmp ult i32 %inc, %167
  br i1 %cmp, label %for.inc.do.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %EnabledForActivity = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37, i32 0, i32 10
  %168 = ptrtoint ptr %EnabledForActivity to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 1, ptr %EnabledForActivity, align 1
  %ActivityLevel = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37, i32 0, i32 15
  %169 = ptrtoint ptr %ActivityLevel to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 31, ptr %ActivityLevel, align 8
  %170 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %mclk_table, align 4
  %conv = trunc i32 %171 to i8
  %MemoryDpmLevelCount = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 23
  %172 = ptrtoint ptr %MemoryDpmLevelCount to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %conv, ptr %MemoryDpmLevelCount, align 1
  %call39 = call i32 @phm_get_dpm_level_enable_mask_value(ptr noundef %mclk_table) #6
  %mclk_dpm_enable_mask = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 70, i32 5
  %173 = ptrtoint ptr %mclk_dpm_enable_mask to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %call39, ptr %mclk_dpm_enable_mask, align 4
  %174 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %mclk_table, align 4
  %sub = add i32 %175, -1
  %DisplayWatermark = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37, i32 %sub, i32 16
  %176 = ptrtoint ptr %DisplayWatermark to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 1, ptr %DisplayWatermark, align 2
  %call45 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add, ptr noundef %MemoryLevel, i32 noundef 256, i32 noundef 262144) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %tonga_populate_single_memory_level.exit.thread81, %tonga_populate_single_memory_level.exit.thread, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call45, %for.end ], [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ %call.i, %tonga_populate_single_memory_level.exit.thread ], [ %call.i.i, %tonga_populate_single_memory_level.exit.thread81 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tonga_initialize_mc_reg_table(ptr noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %mc_reg_table = getelementptr inbounds %struct.tonga_smumgr, ptr %1, i32 0, i32 6
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
  %call.i = tail call i32 %7(ptr noundef %3, i32 noundef 1485) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 2772) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr.i = lshr i32 %call.i, 16
  %conv.i = trunc i32 %shr.i to i8
  %9 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %write_register = getelementptr inbounds %struct.cgs_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_register, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %call6 = tail call i32 %16(ptr noundef %10, i32 noundef 2600) #6
  tail call void %14(ptr noundef %10, i32 noundef 2715, i32 noundef %call6) #6
  %17 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %write_register9 = getelementptr inbounds %struct.cgs_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %write_register9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_register9, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  %call15 = tail call i32 %24(ptr noundef %18, i32 noundef 2601) #6
  tail call void %22(ptr noundef %18, i32 noundef 2716, i32 noundef %call15) #6
  %25 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %write_register18 = getelementptr inbounds %struct.cgs_ops, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %write_register18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_register18, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  %call24 = tail call i32 %32(ptr noundef %26, i32 noundef 3470) #6
  tail call void %30(ptr noundef %26, i32 noundef 3471, i32 noundef %call24) #6
  %33 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %write_register27 = getelementptr inbounds %struct.cgs_ops, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %write_register27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_register27, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 4
  %call33 = tail call i32 %40(ptr noundef %34, i32 noundef 3459) #6
  tail call void %38(ptr noundef %34, i32 noundef 3460, i32 noundef %call33) #6
  %41 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %write_register36 = getelementptr inbounds %struct.cgs_ops, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %write_register36 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_register36, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %44, align 4
  %call42 = tail call i32 %48(ptr noundef %42, i32 noundef 3461) #6
  tail call void %46(ptr noundef %42, i32 noundef 3462, i32 noundef %call42) #6
  %49 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %write_register45 = getelementptr inbounds %struct.cgs_ops, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %write_register45 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write_register45, align 4
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %52, align 4
  %call51 = tail call i32 %56(ptr noundef %50, i32 noundef 3457) #6
  tail call void %54(ptr noundef %50, i32 noundef 3458, i32 noundef %call51) #6
  %57 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %device.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %write_register54 = getelementptr inbounds %struct.cgs_ops, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %write_register54 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write_register54, align 4
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %60, align 4
  %call60 = tail call i32 %64(ptr noundef %58, i32 noundef 3468) #6
  tail call void %62(ptr noundef %58, i32 noundef 3469, i32 noundef %call60) #6
  %65 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %device.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %write_register63 = getelementptr inbounds %struct.cgs_ops, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %write_register63 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write_register63, align 4
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %68, align 4
  %call69 = tail call i32 %72(ptr noundef %66, i32 noundef 3466) #6
  tail call void %70(ptr noundef %66, i32 noundef 3467, i32 noundef %call69) #6
  %73 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %device.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %write_register72 = getelementptr inbounds %struct.cgs_ops, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %write_register72 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write_register72, align 4
  %79 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %76, align 4
  %call78 = tail call i32 %80(ptr noundef %74, i32 noundef 2602) #6
  tail call void %78(ptr noundef %74, i32 noundef 2717, i32 noundef %call78) #6
  %81 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %device.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %write_register81 = getelementptr inbounds %struct.cgs_ops, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %write_register81 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write_register81, align 4
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %84, align 4
  %call87 = tail call i32 %88(ptr noundef %82, i32 noundef 2603) #6
  tail call void %86(ptr noundef %82, i32 noundef 2718, i32 noundef %call87) #6
  %89 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %device.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %write_register90 = getelementptr inbounds %struct.cgs_ops, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %write_register90 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write_register90, align 4
  %95 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %92, align 4
  %call96 = tail call i32 %96(ptr noundef %90, i32 noundef 2691) #6
  tail call void %94(ptr noundef %90, i32 noundef 2721, i32 noundef %call96) #6
  %97 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %device.i, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  %write_register99 = getelementptr inbounds %struct.cgs_ops, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %write_register99 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write_register99, align 4
  %103 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %100, align 4
  %call105 = tail call i32 %104(ptr noundef %98, i32 noundef 2731) #6
  tail call void %102(ptr noundef %98, i32 noundef 2722, i32 noundef %call105) #6
  %105 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %device.i, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %write_register108 = getelementptr inbounds %struct.cgs_ops, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %write_register108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %write_register108, align 4
  %111 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %108, align 4
  %call114 = tail call i32 %112(ptr noundef %106, i32 noundef 2769) #6
  tail call void %110(ptr noundef %106, i32 noundef 2770, i32 noundef %call114) #6
  %113 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %device.i, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %write_register117 = getelementptr inbounds %struct.cgs_ops, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %write_register117 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %write_register117, align 4
  %119 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %116, align 4
  %call123 = tail call i32 %120(ptr noundef %114, i32 noundef 2607) #6
  tail call void %118(ptr noundef %114, i32 noundef 2719, i32 noundef %call123) #6
  %121 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %device.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 4
  %write_register126 = getelementptr inbounds %struct.cgs_ops, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %write_register126 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write_register126, align 4
  %127 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %124, align 4
  %call132 = tail call i32 %128(ptr noundef %122, i32 noundef 2608) #6
  tail call void %126(ptr noundef %122, i32 noundef 2720, i32 noundef %call132) #6
  %129 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %device.i, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %130, align 4
  %write_register135 = getelementptr inbounds %struct.cgs_ops, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %write_register135 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %write_register135, align 4
  %135 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %132, align 4
  %call141 = tail call i32 %136(ptr noundef %130, i32 noundef 2605) #6
  tail call void %134(ptr noundef %130, i32 noundef 2759, i32 noundef %call141) #6
  %137 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %device.i, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  %write_register144 = getelementptr inbounds %struct.cgs_ops, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %write_register144 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %write_register144, align 4
  %143 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %140, align 4
  %call150 = tail call i32 %144(ptr noundef %138, i32 noundef 2606) #6
  tail call void %142(ptr noundef %138, i32 noundef 2760, i32 noundef %call150) #6
  %145 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %device.i, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 4
  %write_register153 = getelementptr inbounds %struct.cgs_ops, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %write_register153 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %write_register153, align 4
  %151 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %148, align 4
  %call159 = tail call i32 %152(ptr noundef %146, i32 noundef 2604) #6
  tail call void %150(ptr noundef %146, i32 noundef 2771, i32 noundef %call159) #6
  %153 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %device.i, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 4
  %write_register162 = getelementptr inbounds %struct.cgs_ops, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %write_register162 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %write_register162, align 4
  %159 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %156, align 4
  %call168 = tail call i32 %160(ptr noundef %154, i32 noundef 2775) #6
  tail call void %158(ptr noundef %154, i32 noundef 2776, i32 noundef %call168) #6
  %161 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %device.i, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %162, align 4
  %write_register171 = getelementptr inbounds %struct.cgs_ops, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %write_register171 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %write_register171, align 4
  %167 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %164, align 4
  %call177 = tail call i32 %168(ptr noundef %162, i32 noundef 2773) #6
  tail call void %166(ptr noundef %162, i32 noundef 2774, i32 noundef %call177) #6
  %call178 = tail call i32 @atomctrl_initialize_mc_reg_table(ptr noundef %hwmgr, i8 noundef zeroext %conv.i, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %tobool.not = icmp eq i32 %call178, 0
  br i1 %tobool.not, label %if.then179, label %if.end.if.end190_crit_edge

if.end.if.end190_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end190

if.then179:                                       ; preds = %if.end
  %169 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %170)
  %cmp.i = icmp ult i8 %170, 17
  br i1 %cmp.i, label %do.body8.i, label %if.then.i

if.then.i:                                        ; preds = %if.then179
  %call.i287 = tail call i32 @___ratelimit(ptr noundef nonnull @tonga_copy_vbios_smc_reg_table._rs, ptr noundef nonnull @__func__.tonga_copy_vbios_smc_reg_table) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i287)
  %tobool.not.i = icmp eq i32 %call.i287, 0
  br i1 %tobool.not.i, label %if.then.i.if.end190_crit_edge, label %do.end.i

if.then.i.if.end190_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end190

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.166) #10
  br label %if.end190

do.body8.i:                                       ; preds = %if.then179
  %num_entries.i = getelementptr inbounds %struct.pp_atomctrl_mc_reg_table, ptr %call7.i.i, i32 0, i32 1
  %171 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %num_entries.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %172)
  %cmp10.i = icmp ult i8 %172, 17
  br i1 %cmp10.i, label %for.cond.preheader.i, label %if.then12.i

for.cond.preheader.i:                             ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %cmp28102.not.i = icmp eq i8 %170, 0
  br i1 %cmp28102.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.then12.i:                                      ; preds = %do.body8.i
  %call13.i = tail call i32 @___ratelimit(ptr noundef nonnull @tonga_copy_vbios_smc_reg_table._rs.167, ptr noundef nonnull @__func__.tonga_copy_vbios_smc_reg_table) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.then12.i.if.end190_crit_edge, label %do.end18.i

if.then12.i.if.end190_crit_edge:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end190

do.end18.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.166) #10
  br label %if.end190

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pp_atomctrl_mc_reg_table, ptr %call7.i.i, i32 0, i32 3, i32 %indvars.iv.i
  %173 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %arrayidx.i, align 4
  %s133.i = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 6, i32 4, i32 %indvars.iv.i, i32 1
  %175 = ptrtoint ptr %s133.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %174, ptr %s133.i, align 2
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %176 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %call7.i.i, align 8
  %178 = zext i8 %177 to i32
  %cmp28.i = icmp ult i32 %indvars.iv.next.i, %178
  br i1 %cmp28.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %.lcssa101.i = phi i8 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %177, %for.body.i.for.end.i_crit_edge ]
  %179 = ptrtoint ptr %mc_reg_table to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %.lcssa101.i, ptr %mc_reg_table, align 4
  %180 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %num_entries.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %cmp40106.not.i = icmp eq i8 %181, 0
  br i1 %cmp40106.not.i, label %for.end.i.if.then183_crit_edge, label %for.end.i.for.body42.i_crit_edge

for.end.i.for.body42.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body42.i

for.end.i.if.then183_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then183

for.body42.i:                                     ; preds = %for.inc70.i.for.body42.i_crit_edge, %for.end.i.for.body42.i_crit_edge
  %indvars.iv113.i = phi i32 [ %indvars.iv.next114.i, %for.inc70.i.for.body42.i_crit_edge ], [ 0, %for.end.i.for.body42.i_crit_edge ]
  %arrayidx44.i = getelementptr %struct.pp_atomctrl_mc_reg_table, ptr %call7.i.i, i32 0, i32 2, i32 %indvars.iv113.i
  %182 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx44.i, align 4
  %arrayidx47.i = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 6, i32 3, i32 %indvars.iv113.i
  %184 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %arrayidx47.i, align 4
  %185 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %cmp53104.not.i = icmp eq i8 %186, 0
  br i1 %cmp53104.not.i, label %for.body42.i.for.inc70.i_crit_edge, label %for.body42.i.for.body55.i_crit_edge

for.body42.i.for.body55.i_crit_edge:              ; preds = %for.body42.i
  br label %for.body55.i

for.body42.i.for.inc70.i_crit_edge:               ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc70.i

for.body55.i:                                     ; preds = %for.body55.i.for.body55.i_crit_edge, %for.body42.i.for.body55.i_crit_edge
  %indvars.iv111.i = phi i32 [ %indvars.iv.next112.i, %for.body55.i.for.body55.i_crit_edge ], [ 0, %for.body42.i.for.body55.i_crit_edge ]
  %arrayidx60.i = getelementptr %struct.pp_atomctrl_mc_reg_table, ptr %call7.i.i, i32 0, i32 2, i32 %indvars.iv113.i, i32 1, i32 %indvars.iv111.i
  %187 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx60.i, align 4
  %arrayidx66.i = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 6, i32 3, i32 %indvars.iv113.i, i32 1, i32 %indvars.iv111.i
  %189 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %arrayidx66.i, align 4
  %indvars.iv.next112.i = add nuw nsw i32 %indvars.iv111.i, 1
  %190 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %call7.i.i, align 8
  %192 = zext i8 %191 to i32
  %cmp53.i = icmp ult i32 %indvars.iv.next112.i, %192
  br i1 %cmp53.i, label %for.body55.i.for.body55.i_crit_edge, label %for.body55.i.for.inc70.i_crit_edge

for.body55.i.for.inc70.i_crit_edge:               ; preds = %for.body55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc70.i

for.body55.i.for.body55.i_crit_edge:              ; preds = %for.body55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body55.i

for.inc70.i:                                      ; preds = %for.body55.i.for.inc70.i_crit_edge, %for.body42.i.for.inc70.i_crit_edge
  %indvars.iv.next114.i = add nuw nsw i32 %indvars.iv113.i, 1
  %193 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %num_entries.i, align 1
  %195 = zext i8 %194 to i32
  %cmp40.i = icmp ult i32 %indvars.iv.next114.i, %195
  br i1 %cmp40.i, label %for.inc70.i.for.body42.i_crit_edge, label %if.then183thread-pre-split

for.inc70.i.for.body42.i_crit_edge:               ; preds = %for.inc70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body42.i

if.then183thread-pre-split:                       ; preds = %for.inc70.i
  call void @__sanitizer_cov_trace_pc() #8
  %196 = ptrtoint ptr %mc_reg_table to i32
  call void @__asan_load1_noabort(i32 %196)
  %.pr = load i8, ptr %mc_reg_table, align 4
  br label %if.then183

if.then183:                                       ; preds = %if.then183thread-pre-split, %for.end.i.if.then183_crit_edge
  %197 = phi i8 [ %.pr, %if.then183thread-pre-split ], [ %.lcssa101.i, %for.end.i.if.then183_crit_edge ]
  %.lcssa.i = phi i8 [ %194, %if.then183thread-pre-split ], [ 0, %for.end.i.if.then183_crit_edge ]
  %num_entries74.i = getelementptr inbounds %struct.tonga_smumgr, ptr %1, i32 0, i32 6, i32 1
  %198 = ptrtoint ptr %num_entries74.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %.lcssa.i, ptr %num_entries74.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %cmp4.not.i = icmp eq i8 %197, 0
  br i1 %cmp4.not.i, label %tonga_set_s0_mc_reg_index.exitthread-pre-split, label %if.then183.for.body.i289_crit_edge

if.then183.for.body.i289_crit_edge:               ; preds = %if.then183
  br label %for.body.i289

for.body.i289:                                    ; preds = %tonga_check_s0_mc_reg_index.exit.i.for.body.i289_crit_edge, %if.then183.for.body.i289_crit_edge
  %i.05.i = phi i32 [ %inc.i, %tonga_check_s0_mc_reg_index.exit.i.for.body.i289_crit_edge ], [ 0, %if.then183.for.body.i289_crit_edge ]
  %arrayidx.i288 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 6, i32 4, i32 %i.05.i
  %s1.i = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 6, i32 4, i32 %i.05.i, i32 1
  %199 = ptrtoint ptr %s1.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %s1.i, align 2
  %201 = zext i16 %200 to i64
  call void @__sanitizer_cov_trace_switch(i64 %201, ptr @__sancov_gen_cov_switch_values.182)
  switch i16 %200, label %for.body.i289.tonga_check_s0_mc_reg_index.exit.i_crit_edge [
    i16 2600, label %for.body.i289._crit_edge
    i16 3470, label %sw.bb1.i.i
    i16 3459, label %sw.bb2.i.i
    i16 3461, label %sw.bb3.i.i
    i16 3457, label %sw.bb4.i.i
    i16 2601, label %sw.bb5.i.i
    i16 2602, label %sw.bb6.i.i
    i16 2603, label %sw.bb7.i.i
    i16 3468, label %sw.bb8.i.i
    i16 3466, label %sw.bb9.i.i
    i16 2605, label %sw.bb10.i.i
    i16 2606, label %sw.bb11.i.i
    i16 2607, label %sw.bb12.i.i
    i16 2608, label %sw.bb13.i.i
    i16 2691, label %sw.bb14.i.i
    i16 2731, label %sw.bb15.i.i
    i16 2769, label %sw.bb16.i.i
    i16 2604, label %sw.bb17.i.i
    i16 2775, label %sw.bb18.i.i
    i16 2773, label %sw.bb19.i.i
  ]

for.body.i289._crit_edge:                         ; preds = %for.body.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %202

for.body.i289.tonga_check_s0_mc_reg_index.exit.i_crit_edge: ; preds = %for.body.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %tonga_check_s0_mc_reg_index.exit.i

sw.bb1.i.i:                                       ; preds = %for.body.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %202

sw.bb2.i.i:                                       ; preds = %for.body.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %202

sw.bb3.i.i:                                       ; preds = %for.body.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %202

sw.bb4.i.i:                                       ; preds = %for.body.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %202

sw.bb5.i.i:                                       ; preds = %for.body.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %202

sw.bb6.i.i:                                       ; preds = %for.body.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %202

sw.bb7.i.i:                                       ; preds = %for.body.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %202

sw.bb8.i.i:                                       ; preds = %for.body.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %202

sw.bb9.i.i:                                       ; preds = %for.body.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %202

sw.bb10.i.i:                                      ; preds = %for.body.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %202

sw.bb11.i.i:                                      ; preds = %for.body.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %202

sw.bb12.i.i:                                      ; preds = %for.body.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %202

sw.bb13.i.i:                                      ; preds = %for.body.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %202

sw.bb14.i.i:                                      ; preds = %for.body.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %202

sw.bb15.i.i:                                      ; preds = %for.body.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %202

sw.bb16.i.i:                                      ; preds = %for.body.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %202

sw.bb17.i.i:                                      ; preds = %for.body.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %202

sw.bb18.i.i:                                      ; preds = %for.body.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %202

sw.bb19.i.i:                                      ; preds = %for.body.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %202

202:                                              ; preds = %sw.bb19.i.i, %sw.bb18.i.i, %sw.bb17.i.i, %sw.bb16.i.i, %sw.bb15.i.i, %sw.bb14.i.i, %sw.bb13.i.i, %sw.bb12.i.i, %sw.bb11.i.i, %sw.bb10.i.i, %sw.bb9.i.i, %sw.bb8.i.i, %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %for.body.i289._crit_edge
  %.sink.i.i = phi i16 [ 2774, %sw.bb19.i.i ], [ 2776, %sw.bb18.i.i ], [ 2771, %sw.bb17.i.i ], [ 2770, %sw.bb16.i.i ], [ 2722, %sw.bb15.i.i ], [ 2721, %sw.bb14.i.i ], [ 2720, %sw.bb13.i.i ], [ 2719, %sw.bb12.i.i ], [ 2760, %sw.bb11.i.i ], [ 2759, %sw.bb10.i.i ], [ 3467, %sw.bb9.i.i ], [ 3469, %sw.bb8.i.i ], [ 2718, %sw.bb7.i.i ], [ 2717, %sw.bb6.i.i ], [ 2716, %sw.bb5.i.i ], [ 3458, %sw.bb4.i.i ], [ 3462, %sw.bb3.i.i ], [ 3460, %sw.bb2.i.i ], [ 3471, %sw.bb1.i.i ], [ 2715, %for.body.i289._crit_edge ]
  br label %tonga_check_s0_mc_reg_index.exit.i

tonga_check_s0_mc_reg_index.exit.i:               ; preds = %202, %for.body.i289.tonga_check_s0_mc_reg_index.exit.i_crit_edge
  %.sroa.speculated.i = phi i16 [ %.sink.i.i, %202 ], [ %200, %for.body.i289.tonga_check_s0_mc_reg_index.exit.i_crit_edge ]
  %203 = ptrtoint ptr %arrayidx.i288 to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %.sroa.speculated.i, ptr %arrayidx.i288, align 4
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %204 = ptrtoint ptr %mc_reg_table to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %mc_reg_table, align 4
  %conv.i290 = zext i8 %205 to i32
  %cmp.i291 = icmp ult i32 %inc.i, %conv.i290
  br i1 %cmp.i291, label %tonga_check_s0_mc_reg_index.exit.i.for.body.i289_crit_edge, label %tonga_check_s0_mc_reg_index.exit.i.tonga_set_s0_mc_reg_index.exit_crit_edge

tonga_check_s0_mc_reg_index.exit.i.tonga_set_s0_mc_reg_index.exit_crit_edge: ; preds = %tonga_check_s0_mc_reg_index.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tonga_set_s0_mc_reg_index.exit

tonga_check_s0_mc_reg_index.exit.i.for.body.i289_crit_edge: ; preds = %tonga_check_s0_mc_reg_index.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i289

tonga_set_s0_mc_reg_index.exitthread-pre-split:   ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #8
  %206 = ptrtoint ptr %mc_reg_table to i32
  call void @__asan_load1_noabort(i32 %206)
  %.pr313 = load i8, ptr %mc_reg_table, align 4
  br label %tonga_set_s0_mc_reg_index.exit

tonga_set_s0_mc_reg_index.exit:                   ; preds = %tonga_set_s0_mc_reg_index.exitthread-pre-split, %tonga_check_s0_mc_reg_index.exit.i.tonga_set_s0_mc_reg_index.exit_crit_edge
  %207 = phi i8 [ %.pr313, %tonga_set_s0_mc_reg_index.exitthread-pre-split ], [ %205, %tonga_check_s0_mc_reg_index.exit.i.tonga_set_s0_mc_reg_index.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %cmp295.not.i = icmp eq i8 %207, 0
  br i1 %cmp295.not.i, label %if.then188.thread, label %do.body.lr.ph.i

if.then188.thread:                                ; preds = %tonga_set_s0_mc_reg_index.exit
  call void @__sanitizer_cov_trace_pc() #8
  %208 = ptrtoint ptr %mc_reg_table to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 0, ptr %mc_reg_table, align 4
  br label %if.end190

do.body.lr.ph.i:                                  ; preds = %tonga_set_s0_mc_reg_index.exit
  %backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %209 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %backend.i, align 4
  %is_memory_gddr5.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %210, i32 0, i32 12
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc201.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %indvars.iv313.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %indvars.iv.next314.i, %for.inc201.i.do.body.i_crit_edge ]
  %j.0296.i = phi i8 [ %207, %do.body.lr.ph.i ], [ %j.1.i, %for.inc201.i.do.body.i_crit_edge ]
  %conv4.i = zext i8 %j.0296.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %j.0296.i)
  %cmp5.i = icmp ult i8 %j.0296.i, 16
  br i1 %cmp5.i, label %do.end12.i, label %if.then.i295

if.then.i295:                                     ; preds = %do.body.i
  %call.i293 = tail call i32 @___ratelimit(ptr noundef nonnull @tonga_set_mc_special_registers._rs, ptr noundef nonnull @__func__.tonga_set_mc_special_registers) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i293)
  %tobool.not.i294 = icmp eq i32 %call.i293, 0
  br i1 %tobool.not.i294, label %if.then.i295.if.end190_crit_edge, label %do.end.i296

if.then.i295.if.end190_crit_edge:                 ; preds = %if.then.i295
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end190

do.end.i296:                                      ; preds = %if.then.i295
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.166) #10
  br label %if.end190

do.end12.i:                                       ; preds = %do.body.i
  %s1.i297 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 6, i32 4, i32 %indvars.iv313.i, i32 1
  %211 = ptrtoint ptr %s1.i297 to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %s1.i297, align 2
  %213 = zext i16 %212 to i64
  call void @__sanitizer_cov_trace_switch(i64 %213, ptr @__sancov_gen_cov_switch_values.183)
  switch i16 %212, label %do.end12.i.for.inc201.i_crit_edge [
    i16 2689, label %sw.bb.i
    i16 2690, label %sw.bb161.i
  ]

do.end12.i.for.inc201.i_crit_edge:                ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc201.i

sw.bb.i:                                          ; preds = %do.end12.i
  %214 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %device.i, align 4
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %215, align 4
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %217, align 4
  %call15.i = tail call i32 %219(ptr noundef %215, i32 noundef 2691) #6
  %arrayidx18.i = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 6, i32 4, i32 %conv4.i
  %s119.i = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 6, i32 4, i32 %conv4.i, i32 1
  %220 = ptrtoint ptr %s119.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 2691, ptr %s119.i, align 2
  %221 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 2721, ptr %arrayidx18.i, align 4
  %222 = ptrtoint ptr %num_entries74.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %num_entries74.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %cmp26289.not.i = icmp eq i8 %223, 0
  br i1 %cmp26289.not.i, label %sw.bb.i.for.end.i299_crit_edge, label %for.body28.lr.ph.i

sw.bb.i.for.end.i299_crit_edge:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i299

for.body28.lr.ph.i:                               ; preds = %sw.bb.i
  %and.i = and i32 %call15.i, -65536
  %wide.trip.count303.i = zext i8 %223 to i32
  br label %for.body28.i

for.body28.i:                                     ; preds = %for.body28.i.for.body28.i_crit_edge, %for.body28.lr.ph.i
  %indvars.iv301.i = phi i32 [ 0, %for.body28.lr.ph.i ], [ %indvars.iv.next302.i, %for.body28.i.for.body28.i_crit_edge ]
  %arrayidx32.i = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 6, i32 3, i32 %indvars.iv301.i, i32 1, i32 %indvars.iv313.i
  %224 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx32.i, align 4
  %shr.i298 = lshr i32 %225, 16
  %or.i = or i32 %shr.i298, %and.i
  %arrayidx39.i = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 6, i32 3, i32 %indvars.iv301.i, i32 1, i32 %conv4.i
  %226 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %or.i, ptr %arrayidx39.i, align 4
  %indvars.iv.next302.i = add nuw nsw i32 %indvars.iv301.i, 1
  %exitcond304.not.i = icmp eq i32 %indvars.iv.next302.i, %wide.trip.count303.i
  br i1 %exitcond304.not.i, label %for.body28.i.for.end.i299_crit_edge, label %for.body28.i.for.body28.i_crit_edge

for.body28.i.for.body28.i_crit_edge:              ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body28.i

for.body28.i.for.end.i299_crit_edge:              ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i299

for.end.i299:                                     ; preds = %for.body28.i.for.end.i299_crit_edge, %sw.bb.i.for.end.i299_crit_edge
  %inc40.i = add i8 %j.0296.i, 1
  %conv42.i = zext i8 %inc40.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %inc40.i)
  %cmp43.i = icmp ult i8 %inc40.i, 16
  br i1 %cmp43.i, label %do.end57.i, label %if.then45.i

if.then45.i:                                      ; preds = %for.end.i299
  %call46.i = tail call i32 @___ratelimit(ptr noundef nonnull @tonga_set_mc_special_registers._rs.170, ptr noundef nonnull @__func__.tonga_set_mc_special_registers) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.then45.i.if.end190_crit_edge, label %do.end51.i

if.then45.i.if.end190_crit_edge:                  ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end190

do.end51.i:                                       ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #8
  %call53.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.166) #10
  br label %if.end190

do.end57.i:                                       ; preds = %for.end.i299
  %227 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %device.i, align 4
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %228, align 4
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %230, align 4
  %call62.i = tail call i32 %232(ptr noundef %228, i32 noundef 2731) #6
  %arrayidx65.i = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 6, i32 4, i32 %conv42.i
  %s166.i = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 6, i32 4, i32 %conv42.i, i32 1
  %233 = ptrtoint ptr %s166.i to i32
  call void @__asan_store2_noabort(i32 %233)
  store i16 2731, ptr %s166.i, align 2
  %234 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 2722, ptr %arrayidx65.i, align 4
  %235 = ptrtoint ptr %num_entries74.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %num_entries74.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %236)
  %cmp75291.not.i = icmp eq i8 %236, 0
  br i1 %cmp75291.not.i, label %do.end57.i.for.end105.i_crit_edge, label %for.body77.lr.ph.i

do.end57.i.for.end105.i_crit_edge:                ; preds = %do.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end105.i

for.body77.lr.ph.i:                               ; preds = %do.end57.i
  %and78.i = and i32 %call62.i, -65536
  %wide.trip.count307.i = zext i8 %236 to i32
  br label %for.body77.i

for.body77.i:                                     ; preds = %for.inc103.i.for.body77.i_crit_edge, %for.body77.lr.ph.i
  %indvars.iv305.i = phi i32 [ 0, %for.body77.lr.ph.i ], [ %indvars.iv.next306.i, %for.inc103.i.for.body77.i_crit_edge ]
  %arrayidx84.i = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 6, i32 3, i32 %indvars.iv305.i, i32 1, i32 %indvars.iv313.i
  %237 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %arrayidx84.i, align 4
  %and85.i = and i32 %238, 65535
  %or86.i = or i32 %and85.i, %and78.i
  %arrayidx92.i = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 6, i32 3, i32 %indvars.iv305.i, i32 1, i32 %conv42.i
  %239 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %or86.i, ptr %arrayidx92.i, align 4
  %240 = ptrtoint ptr %is_memory_gddr5.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %is_memory_gddr5.i, align 4, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %241)
  %tobool93.not.i = icmp eq i8 %241, 0
  br i1 %tobool93.not.i, label %if.then94.i, label %for.body77.i.for.inc103.i_crit_edge

for.body77.i.for.inc103.i_crit_edge:              ; preds = %for.body77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc103.i

if.then94.i:                                      ; preds = %for.body77.i
  call void @__sanitizer_cov_trace_pc() #8
  %or101.i = or i32 %or86.i, 256
  %242 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %or101.i, ptr %arrayidx92.i, align 4
  br label %for.inc103.i

for.inc103.i:                                     ; preds = %if.then94.i, %for.body77.i.for.inc103.i_crit_edge
  %indvars.iv.next306.i = add nuw nsw i32 %indvars.iv305.i, 1
  %exitcond308.not.i = icmp eq i32 %indvars.iv.next306.i, %wide.trip.count307.i
  br i1 %exitcond308.not.i, label %for.inc103.i.for.end105.i_crit_edge, label %for.inc103.i.for.body77.i_crit_edge

for.inc103.i.for.body77.i_crit_edge:              ; preds = %for.inc103.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body77.i

for.inc103.i.for.end105.i_crit_edge:              ; preds = %for.inc103.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end105.i

for.end105.i:                                     ; preds = %for.inc103.i.for.end105.i_crit_edge, %do.end57.i.for.end105.i_crit_edge
  %inc106.i = add i8 %j.0296.i, 2
  %243 = ptrtoint ptr %is_memory_gddr5.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %is_memory_gddr5.i, align 4, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %244)
  %tobool108.not.i = icmp eq i8 %244, 0
  br i1 %tobool108.not.i, label %do.body110.i, label %for.end105.i.for.inc201.i_crit_edge

for.end105.i.for.inc201.i_crit_edge:              ; preds = %for.end105.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc201.i

do.body110.i:                                     ; preds = %for.end105.i
  %conv111.i = zext i8 %inc106.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %inc106.i)
  %cmp112.i = icmp ult i8 %inc106.i, 16
  br i1 %cmp112.i, label %do.end126.i, label %if.then114.i

if.then114.i:                                     ; preds = %do.body110.i
  %call115.i = tail call i32 @___ratelimit(ptr noundef nonnull @tonga_set_mc_special_registers._rs.173, ptr noundef nonnull @__func__.tonga_set_mc_special_registers) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.i)
  %tobool116.not.i = icmp eq i32 %call115.i, 0
  br i1 %tobool116.not.i, label %if.then114.i.if.end190_crit_edge, label %do.end120.i

if.then114.i.if.end190_crit_edge:                 ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end190

do.end120.i:                                      ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #8
  %call122.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.166) #10
  br label %if.end190

do.end126.i:                                      ; preds = %do.body110.i
  %arrayidx129.i = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 6, i32 4, i32 %conv111.i
  %s1130.i = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 6, i32 4, i32 %conv111.i, i32 1
  %245 = ptrtoint ptr %s1130.i to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 2612, ptr %s1130.i, align 2
  %246 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 2612, ptr %arrayidx129.i, align 4
  br i1 %cmp75291.not.i, label %do.end126.i.for.end158.i_crit_edge, label %for.body141.preheader.i

do.end126.i.for.end158.i_crit_edge:               ; preds = %do.end126.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end158.i

for.body141.preheader.i:                          ; preds = %do.end126.i
  %wide.trip.count311.i = zext i8 %236 to i32
  br label %for.body141.i

for.body141.i:                                    ; preds = %for.body141.i.for.body141.i_crit_edge, %for.body141.preheader.i
  %indvars.iv309.i = phi i32 [ 0, %for.body141.preheader.i ], [ %indvars.iv.next310.i, %for.body141.i.for.body141.i_crit_edge ]
  %arrayidx147.i = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 6, i32 3, i32 %indvars.iv309.i, i32 1, i32 %indvars.iv313.i
  %247 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %arrayidx147.i, align 4
  %shr149.i = lshr i32 %248, 16
  %arrayidx155.i = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 6, i32 3, i32 %indvars.iv309.i, i32 1, i32 %conv111.i
  %249 = ptrtoint ptr %arrayidx155.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %shr149.i, ptr %arrayidx155.i, align 4
  %indvars.iv.next310.i = add nuw nsw i32 %indvars.iv309.i, 1
  %exitcond312.not.i = icmp eq i32 %indvars.iv.next310.i, %wide.trip.count311.i
  br i1 %exitcond312.not.i, label %for.body141.i.for.end158.i_crit_edge, label %for.body141.i.for.body141.i_crit_edge

for.body141.i.for.body141.i_crit_edge:            ; preds = %for.body141.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body141.i

for.body141.i.for.end158.i_crit_edge:             ; preds = %for.body141.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end158.i

for.end158.i:                                     ; preds = %for.body141.i.for.end158.i_crit_edge, %do.end126.i.for.end158.i_crit_edge
  %inc159.i = add i8 %j.0296.i, 3
  br label %for.inc201.i

sw.bb161.i:                                       ; preds = %do.end12.i
  %250 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %device.i, align 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %251, align 4
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %253, align 4
  %call166.i = tail call i32 %255(ptr noundef %251, i32 noundef 2769) #6
  %arrayidx169.i = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 6, i32 4, i32 %conv4.i
  %s1170.i = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 6, i32 4, i32 %conv4.i, i32 1
  %256 = ptrtoint ptr %s1170.i to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 2769, ptr %s1170.i, align 2
  %257 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 2770, ptr %arrayidx169.i, align 4
  %258 = ptrtoint ptr %num_entries74.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %num_entries74.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %259)
  %cmp179287.not.i = icmp eq i8 %259, 0
  br i1 %cmp179287.not.i, label %sw.bb161.i.for.end199.i_crit_edge, label %for.body181.lr.ph.i

sw.bb161.i.for.end199.i_crit_edge:                ; preds = %sw.bb161.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end199.i

for.body181.lr.ph.i:                              ; preds = %sw.bb161.i
  %and182.i = and i32 %call166.i, -65536
  %wide.trip.count.i = zext i8 %259 to i32
  br label %for.body181.i

for.body181.i:                                    ; preds = %for.body181.i.for.body181.i_crit_edge, %for.body181.lr.ph.i
  %indvars.iv.i301 = phi i32 [ 0, %for.body181.lr.ph.i ], [ %indvars.iv.next.i302, %for.body181.i.for.body181.i_crit_edge ]
  %arrayidx188.i = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 6, i32 3, i32 %indvars.iv.i301, i32 1, i32 %indvars.iv313.i
  %260 = ptrtoint ptr %arrayidx188.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx188.i, align 4
  %and189.i = and i32 %261, 65535
  %or190.i = or i32 %and189.i, %and182.i
  %arrayidx196.i = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 6, i32 3, i32 %indvars.iv.i301, i32 1, i32 %conv4.i
  %262 = ptrtoint ptr %arrayidx196.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %or190.i, ptr %arrayidx196.i, align 4
  %indvars.iv.next.i302 = add nuw nsw i32 %indvars.iv.i301, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i302, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body181.i.for.end199.i_crit_edge, label %for.body181.i.for.body181.i_crit_edge

for.body181.i.for.body181.i_crit_edge:            ; preds = %for.body181.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body181.i

for.body181.i.for.end199.i_crit_edge:             ; preds = %for.body181.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end199.i

for.end199.i:                                     ; preds = %for.body181.i.for.end199.i_crit_edge, %sw.bb161.i.for.end199.i_crit_edge
  %inc200.i = add i8 %j.0296.i, 1
  br label %for.inc201.i

for.inc201.i:                                     ; preds = %for.end199.i, %for.end158.i, %for.end105.i.for.inc201.i_crit_edge, %do.end12.i.for.inc201.i_crit_edge
  %j.1.i = phi i8 [ %j.0296.i, %do.end12.i.for.inc201.i_crit_edge ], [ %inc200.i, %for.end199.i ], [ %inc106.i, %for.end105.i.for.inc201.i_crit_edge ], [ %inc159.i, %for.end158.i ]
  %indvars.iv.next314.i = add nuw nsw i32 %indvars.iv313.i, 1
  %263 = ptrtoint ptr %mc_reg_table to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %mc_reg_table, align 4
  %265 = zext i8 %264 to i32
  %cmp.i303 = icmp ult i32 %indvars.iv.next314.i, %265
  br i1 %cmp.i303, label %for.inc201.i.do.body.i_crit_edge, label %if.then188

for.inc201.i.do.body.i_crit_edge:                 ; preds = %for.inc201.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.then188:                                       ; preds = %for.inc201.i
  %266 = ptrtoint ptr %mc_reg_table to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 %j.1.i, ptr %mc_reg_table, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %j.1.i)
  %cmp3.not.i = icmp eq i8 %j.1.i, 0
  br i1 %cmp3.not.i, label %if.then188.if.end190_crit_edge, label %for.cond3.preheader.lr.ph.i

if.then188.if.end190_crit_edge:                   ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end190

for.cond3.preheader.lr.ph.i:                      ; preds = %if.then188
  %267 = ptrtoint ptr %num_entries74.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %num_entries74.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %268)
  %cmp61.i = icmp ugt i8 %268, 1
  %validflag.i = getelementptr inbounds %struct.tonga_smumgr, ptr %1, i32 0, i32 6, i32 2
  %wide.trip.count8.i = zext i8 %j.1.i to i32
  %wide.trip.count.i306 = zext i8 %268 to i32
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %for.inc22.i.for.cond3.preheader.i_crit_edge, %for.cond3.preheader.lr.ph.i
  %indvars.iv6.i = phi i32 [ 0, %for.cond3.preheader.lr.ph.i ], [ %indvars.iv.next7.i, %for.inc22.i.for.cond3.preheader.i_crit_edge ]
  br i1 %cmp61.i, label %for.cond3.preheader.i.for.body8.i_crit_edge, label %for.cond3.preheader.i.for.inc22.i_crit_edge

for.cond3.preheader.i.for.inc22.i_crit_edge:      ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc22.i

for.cond3.preheader.i.for.body8.i_crit_edge:      ; preds = %for.cond3.preheader.i
  br label %for.body8.i

for.cond3.i:                                      ; preds = %for.body8.i
  %indvars.iv.next.i307 = add nuw nsw i32 %indvars.iv.i309, 1
  %exitcond.not.i308 = icmp eq i32 %indvars.iv.next.i307, %wide.trip.count.i306
  br i1 %exitcond.not.i308, label %for.cond3.i.for.inc22.i_crit_edge, label %for.cond3.i.for.body8.i_crit_edge

for.cond3.i.for.body8.i_crit_edge:                ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body8.i

for.cond3.i.for.inc22.i_crit_edge:                ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc22.i

for.body8.i:                                      ; preds = %for.cond3.i.for.body8.i_crit_edge, %for.cond3.preheader.i.for.body8.i_crit_edge
  %indvars.iv.i309 = phi i32 [ %indvars.iv.next.i307, %for.cond3.i.for.body8.i_crit_edge ], [ 1, %for.cond3.preheader.i.for.body8.i_crit_edge ]
  %sub.i = add nsw i32 %indvars.iv.i309, -1
  %arrayidx10.i = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 6, i32 3, i32 %sub.i, i32 1, i32 %indvars.iv6.i
  %269 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %arrayidx10.i, align 4
  %arrayidx16.i = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 6, i32 3, i32 %indvars.iv.i309, i32 1, i32 %indvars.iv6.i
  %271 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %arrayidx16.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %270, i32 %272)
  %cmp17.not.i = icmp eq i32 %270, %272
  br i1 %cmp17.not.i, label %for.cond3.i, label %if.then.i310

if.then.i310:                                     ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i = shl nuw i32 1, %indvars.iv6.i
  %273 = ptrtoint ptr %validflag.i to i32
  call void @__asan_load2_noabort(i32 %273)
  %274 = load i16, ptr %validflag.i, align 2
  %275 = trunc i32 %shl.i to i16
  %conv21.i = or i16 %274, %275
  store i16 %conv21.i, ptr %validflag.i, align 2
  br label %for.inc22.i

for.inc22.i:                                      ; preds = %if.then.i310, %for.cond3.i.for.inc22.i_crit_edge, %for.cond3.preheader.i.for.inc22.i_crit_edge
  %indvars.iv.next7.i = add nuw nsw i32 %indvars.iv6.i, 1
  %exitcond9.not.i = icmp eq i32 %indvars.iv.next7.i, %wide.trip.count8.i
  br i1 %exitcond9.not.i, label %for.inc22.i.if.end190_crit_edge, label %for.inc22.i.for.cond3.preheader.i_crit_edge

for.inc22.i.for.cond3.preheader.i_crit_edge:      ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond3.preheader.i

for.inc22.i.if.end190_crit_edge:                  ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end190

if.end190:                                        ; preds = %for.inc22.i.if.end190_crit_edge, %if.then188.if.end190_crit_edge, %do.end120.i, %if.then114.i.if.end190_crit_edge, %do.end51.i, %if.then45.i.if.end190_crit_edge, %do.end.i296, %if.then.i295.if.end190_crit_edge, %if.then188.thread, %do.end18.i, %if.then12.i.if.end190_crit_edge, %do.end.i, %if.then.i.if.end190_crit_edge, %if.end.if.end190_crit_edge
  %result.1316 = phi i32 [ 0, %if.then188.thread ], [ 0, %if.then188.if.end190_crit_edge ], [ -22, %if.then114.i.if.end190_crit_edge ], [ -22, %do.end120.i ], [ -22, %if.then45.i.if.end190_crit_edge ], [ -22, %do.end51.i ], [ -22, %if.then.i295.if.end190_crit_edge ], [ -22, %do.end.i296 ], [ -22, %if.then12.i.if.end190_crit_edge ], [ -22, %do.end18.i ], [ -22, %if.then.i.if.end190_crit_edge ], [ -22, %do.end.i ], [ %call178, %if.end.if.end190_crit_edge ], [ 0, %for.inc22.i.if.end190_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end190, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.1316, %if.end190 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tonga_get_offsetof(i32 noundef %type, i32 noundef %member) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %type, label %entry.do.end_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %member)
  %1 = icmp ult i32 %member, 15
  br i1 %1, label %switch.hole_check, label %sw.bb.do.end_crit_edge

sw.bb.do.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

sw.bb13:                                          ; preds = %entry
  %switch.tableidx = add i32 %member, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 3
  br i1 %2, label %switch.lookup22, label %sw.bb13.do.end_crit_edge

sw.bb13.do.end_crit_edge:                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %sw.bb13.do.end_crit_edge, %sw.bb.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, i32 noundef %type, i32 noundef %member) #10
  br label %return

switch.hole_check:                                ; preds = %sw.bb
  %switch.maskindex = trunc i32 %member to i16
  %switch.shifted = lshr i16 31871, %switch.maskindex
  %3 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %switch.lobit.not = icmp eq i16 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [15 x i32], ptr @switch.table.tonga_get_offsetof, i32 0, i32 %member
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

switch.lookup22:                                  ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep23 = getelementptr inbounds [3 x i32], ptr @switch.table.tonga_get_offsetof.180, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep23 to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load24 = load i32, ptr %switch.gep23, align 4
  br label %return

return:                                           ; preds = %switch.lookup22, %switch.lookup, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %switch.load, %switch.lookup ], [ %switch.load24, %switch.lookup22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tonga_get_mac_definition(i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %value)
  %0 = icmp ult i32 %value, 8
  br i1 %0, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, i32 noundef %value) #10
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.tonga_get_mac_definition, i32 0, i32 %value
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tonga_is_dpm_running(ptr nocapture noundef readonly %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call = tail call i32 %5(ptr noundef %1, i32 noundef 1, i32 noundef 260112) #6
  %6 = and i32 %call, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp ne i32 %6, 0
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tonga_update_dpm_settings(ptr noundef %hwmgr, ptr noundef readonly %profile_setting) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  %GraphicsLevel = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 35
  %dpm_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dpm_table_start, align 8
  %add = add i32 %5, 376
  %add3 = add i32 %5, 792
  %MemoryLevel = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 37
  %cmp = icmp eq ptr %profile_setting, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %profile_setting to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %profile_setting, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.if.end80_crit_edge, label %if.then6

if.end.if.end80_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 393, ptr noundef null) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.then6.if.end9_crit_edge
  %GraphicsDpmLevelCount = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 22
  %10 = ptrtoint ptr %GraphicsDpmLevelCount to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %GraphicsDpmLevelCount, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp11301.not = icmp eq i8 %11, 0
  br i1 %cmp11301.not, label %if.end9.for.end_crit_edge, label %for.body.lr.ph

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end9
  %sclk_activity = getelementptr inbounds %struct.profile_mode_setting, ptr %profile_setting, i32 0, i32 3
  %add21 = add i32 %5, 386
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %sclk_up_hyst = getelementptr inbounds %struct.profile_mode_setting, ptr %profile_setting, i32 0, i32 1
  %sclk_down_hyst = getelementptr inbounds %struct.profile_mode_setting, ptr %profile_setting, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0302 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ActivityLevel = getelementptr %struct.SMU72_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0302, i32 4
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
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
  %call24 = tail call i32 %22(ptr noundef %18, i32 noundef 1, i32 noundef %and) #6
  %23 = ptrtoint ptr %ActivityLevel to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %ActivityLevel, align 1
  %conv27 = zext i16 %24 to i32
  %call28 = tail call i32 @phm_set_field_to_u32(i32 noundef %add22, i32 noundef %call24, i32 noundef %conv27, i32 noundef 2) #6
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
  tail call void %30(ptr noundef %26, i32 noundef 1, i32 noundef %and, i32 noundef %call28) #6
  br label %if.end32

if.end32:                                         ; preds = %if.then17, %for.body.if.end32_crit_edge
  %UpHyst = getelementptr %struct.SMU72_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0302, i32 15
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43

lor.lhs.false:                                    ; preds = %if.end32
  %DownHyst = getelementptr %struct.SMU72_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0302, i32 16
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then43:                                        ; preds = %lor.lhs.false.if.then43_crit_edge, %if.end32.if.then43_crit_edge
  %39 = ptrtoint ptr %UpHyst to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %34, ptr %UpHyst, align 1
  %40 = ptrtoint ptr %sclk_down_hyst to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sclk_down_hyst, align 2
  %DownHyst49 = getelementptr %struct.SMU72_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0302, i32 16
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
  %call61 = tail call i32 %48(ptr noundef %44, i32 noundef 1, i32 noundef %and56) #6
  %49 = ptrtoint ptr %UpHyst to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %UpHyst, align 1
  %conv64 = zext i8 %50 to i32
  %call65 = tail call i32 @phm_set_field_to_u32(i32 noundef %add52, i32 noundef %call61, i32 noundef %conv64, i32 noundef 1) #6
  %51 = ptrtoint ptr %DownHyst49 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %DownHyst49, align 1
  %conv68 = zext i8 %52 to i32
  %call69 = tail call i32 @phm_set_field_to_u32(i32 noundef %add55, i32 noundef %call65, i32 noundef %conv68, i32 noundef 1) #6
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
  tail call void %58(ptr noundef %54, i32 noundef 1, i32 noundef %and56, i32 noundef %call69) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then43, %lor.lhs.false.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0302, 1
  %59 = ptrtoint ptr %GraphicsDpmLevelCount to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %GraphicsDpmLevelCount, align 4
  %conv = zext i8 %60 to i32
  %cmp11 = icmp ult i32 %inc, %conv
  br i1 %cmp11, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end9.for.end_crit_edge
  %61 = ptrtoint ptr %sclk_dpm_key_disabled to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sclk_dpm_key_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool76.not = icmp eq i32 %62, 0
  br i1 %tobool76.not, label %if.then77, label %for.end.if.end80_crit_edge

for.end.if.end80_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

if.then77:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call78 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 394, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.then84:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  %call85 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 395, ptr noundef null) #6
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.then82.if.end86_crit_edge
  %MemoryDpmLevelCount = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 23
  %67 = ptrtoint ptr %MemoryDpmLevelCount to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %MemoryDpmLevelCount, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp90305.not = icmp eq i8 %68, 0
  br i1 %cmp90305.not, label %if.end86.for.end168_crit_edge, label %for.body92.lr.ph

if.end86.for.end168_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end168

for.body92.lr.ph:                                 ; preds = %if.end86
  %mclk_activity = getelementptr inbounds %struct.profile_mode_setting, ptr %profile_setting, i32 0, i32 7
  %add104 = add i32 %5, 816
  %device107 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %mclk_up_hyst = getelementptr inbounds %struct.profile_mode_setting, ptr %profile_setting, i32 0, i32 5
  %mclk_down_hyst = getelementptr inbounds %struct.profile_mode_setting, ptr %profile_setting, i32 0, i32 6
  br label %for.body92

for.body92:                                       ; preds = %for.inc166.for.body92_crit_edge, %for.body92.lr.ph
  %i.1306 = phi i32 [ 0, %for.body92.lr.ph ], [ %inc167, %for.inc166.for.body92_crit_edge ]
  %ActivityLevel94 = getelementptr %struct.SMU72_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.1306, i32 15
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end120

if.then99:                                        ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %ActivityLevel94 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 %72, ptr %ActivityLevel94, align 1
  %mul103 = shl i32 %i.1306, 6
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
  %call111 = tail call i32 %79(ptr noundef %75, i32 noundef 1, i32 noundef %and106) #6
  %80 = ptrtoint ptr %ActivityLevel94 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %ActivityLevel94, align 1
  %conv114 = zext i16 %81 to i32
  %call115 = tail call i32 @phm_set_field_to_u32(i32 noundef %add105, i32 noundef %call111, i32 noundef %conv114, i32 noundef 2) #6
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
  tail call void %87(ptr noundef %83, i32 noundef 1, i32 noundef %and106, i32 noundef %call115) #6
  br label %if.end120

if.end120:                                        ; preds = %if.then99, %for.body92.if.end120_crit_edge
  %UpHyst122 = getelementptr %struct.SMU72_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.1306, i32 11
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then134

lor.lhs.false127:                                 ; preds = %if.end120
  %DownHyst129 = getelementptr %struct.SMU72_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.1306, i32 12
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then134

lor.lhs.false127.for.inc166_crit_edge:            ; preds = %lor.lhs.false127
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc166

if.then134:                                       ; preds = %lor.lhs.false127.if.then134_crit_edge, %if.end120.if.then134_crit_edge
  %96 = ptrtoint ptr %UpHyst122 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %91, ptr %UpHyst122, align 1
  %97 = ptrtoint ptr %mclk_down_hyst to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %mclk_down_hyst, align 2
  %DownHyst140 = getelementptr %struct.SMU72_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.1306, i32 12
  %99 = ptrtoint ptr %DownHyst140 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %DownHyst140, align 1
  %mul141 = shl i32 %i.1306, 6
  %add142 = add i32 %mul141, %add3
  %add143 = add i32 %add142, 20
  %add146 = add i32 %add142, 21
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
  %call152 = tail call i32 %105(ptr noundef %101, i32 noundef 1, i32 noundef %and147) #6
  %106 = ptrtoint ptr %UpHyst122 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %UpHyst122, align 1
  %conv155 = zext i8 %107 to i32
  %call156 = tail call i32 @phm_set_field_to_u32(i32 noundef %add143, i32 noundef %call152, i32 noundef %conv155, i32 noundef 1) #6
  %108 = ptrtoint ptr %DownHyst140 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %DownHyst140, align 1
  %conv159 = zext i8 %109 to i32
  %call160 = tail call i32 @phm_set_field_to_u32(i32 noundef %add146, i32 noundef %call156, i32 noundef %conv159, i32 noundef 1) #6
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
  tail call void %115(ptr noundef %111, i32 noundef 1, i32 noundef %and147, i32 noundef %call160) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end168

for.inc166.for.body92_crit_edge:                  ; preds = %for.inc166
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body92

for.end168:                                       ; preds = %for.inc166.for.end168_crit_edge, %if.end86.for.end168_crit_edge
  %118 = ptrtoint ptr %mclk_dpm_key_disabled to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %mclk_dpm_key_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool170.not = icmp eq i32 %119, 0
  br i1 %tobool170.not, label %if.then171, label %for.end168.cleanup_crit_edge

for.end168.cleanup_crit_edge:                     ; preds = %for.end168
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then171:                                       ; preds = %for.end168
  call void @__sanitizer_cov_trace_pc() #8
  %call172 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 396, ptr noundef null) #6
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
declare dso_local i32 @phm_wait_for_indirect_register_unequal(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_upload_smu_firmware_image(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_program_jump_on_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_wait_on_indirect_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_send_msg_to_smc_offset(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc_with_parameter(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_copy_bytes_to_smc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tonga_program_memory_timing_parameters(ptr noundef %hwmgr) unnamed_addr #0 align 64 {
entry:
  %arb_regs = alloca %struct.SMU72_Discrete_MCArbDramTimingTable, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %arb_regs) #6
  %4 = call ptr @memset(ptr %arb_regs, i32 0, i32 384)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp39.not = icmp eq i32 %6, 0
  br i1 %cmp39.not, label %entry.if.then19_crit_edge, label %for.cond1.preheader.lr.ph

entry.if.then19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %mclk_table = getelementptr inbounds %struct.smu7_dpm_table, ptr %1, i32 0, i32 1
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc15.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %i.041 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc16, %for.inc15.for.cond1.preheader_crit_edge ]
  %result.040 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %result.2, %for.inc15.for.cond1.preheader_crit_edge ]
  %7 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mclk_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp437.not = icmp eq i32 %8, 0
  br i1 %cmp437.not, label %for.cond1.preheader.for.inc15_crit_edge, label %for.body5.lr.ph

for.cond1.preheader.for.inc15_crit_edge:          ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc15

for.body5.lr.ph:                                  ; preds = %for.cond1.preheader
  %value = getelementptr %struct.smu7_single_dpm_table, ptr %1, i32 0, i32 1, i32 %i.041, i32 1
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
  %call.i = tail call i32 @atomctrl_set_engine_dram_timings_rv770(ptr noundef %hwmgr, i32 noundef %10, i32 noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %for.inc, label %if.then.i

if.then.i:                                        ; preds = %for.body5
  %call1.i = tail call i32 @___ratelimit(ptr noundef nonnull @tonga_populate_memory_timing_parameters._rs, ptr noundef nonnull @__func__.tonga_populate_memory_timing_parameters) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i.for.inc15_crit_edge, label %do.end.i

if.then.i.for.inc15_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc15

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.11) #10
  br label %for.inc15

for.inc:                                          ; preds = %for.body5
  %arrayidx14 = getelementptr [8 x [4 x %struct.SMU72_Discrete_MCArbDramTimingTableEntry]], ptr %arb_regs, i32 0, i32 %i.041, i32 %j.038
  %13 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call9.i = tail call i32 %18(ptr noundef %14, i32 noundef 2525) #6
  %19 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call14.i = tail call i32 %24(ptr noundef %20, i32 noundef 2526) #6
  %25 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call19.i = tail call i32 %30(ptr noundef %26, i32 noundef 2562) #6
  %31 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %call9.i, ptr %arrayidx14, align 1
  %McArbDramTiming2.i = getelementptr [8 x [4 x %struct.SMU72_Discrete_MCArbDramTimingTableEntry]], ptr %arb_regs, i32 0, i32 %i.041, i32 %j.038, i32 1
  %32 = ptrtoint ptr %McArbDramTiming2.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %call14.i, ptr %McArbDramTiming2.i, align 1
  %33 = trunc i32 %call19.i to i8
  %conv.i = and i8 %33, 31
  %McArbBurstTime.i = getelementptr [8 x [4 x %struct.SMU72_Discrete_MCArbDramTimingTableEntry]], ptr %arb_regs, i32 0, i32 %i.041, i32 %j.038, i32 2
  %34 = ptrtoint ptr %McArbBurstTime.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv.i, ptr %McArbBurstTime.i, align 1
  %inc = add nuw i32 %j.038, 1
  %35 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mclk_table, align 4
  %cmp4 = icmp ult i32 %inc, %36
  br i1 %cmp4, label %for.inc.for.body5_crit_edge, label %for.inc.for.inc15_crit_edge

for.inc.for.inc15_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc15

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body5

for.inc15:                                        ; preds = %for.inc.for.inc15_crit_edge, %do.end.i, %if.then.i.for.inc15_crit_edge, %for.cond1.preheader.for.inc15_crit_edge
  %result.2 = phi i32 [ %call.i, %if.then.i.for.inc15_crit_edge ], [ %call.i, %do.end.i ], [ %result.040, %for.cond1.preheader.for.inc15_crit_edge ], [ 0, %for.inc.for.inc15_crit_edge ]
  %inc16 = add nuw i32 %i.041, 1
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %1, align 4
  %cmp = icmp ult i32 %inc16, %38
  br i1 %cmp, label %for.inc15.for.cond1.preheader_crit_edge, label %for.end17

for.inc15.for.cond1.preheader_crit_edge:          ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader

for.end17:                                        ; preds = %for.inc15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.2)
  %tobool18.not = icmp eq i32 %result.2, 0
  br i1 %tobool18.not, label %for.end17.if.then19_crit_edge, label %for.end17.if.end21_crit_edge

for.end17.if.end21_crit_edge:                     ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

for.end17.if.then19_crit_edge:                    ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.then19:                                        ; preds = %for.end17.if.then19_crit_edge, %entry.if.then19_crit_edge
  %arb_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 7
  %39 = ptrtoint ptr %arb_table_start to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arb_table_start, align 4
  %call20 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %40, ptr noundef nonnull %arb_regs, i32 noundef 384, i32 noundef 262144) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %for.end17.if.end21_crit_edge
  %result.3 = phi i32 [ %result.2, %for.end17.if.end21_crit_edge ], [ %call20, %if.then19 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %arb_regs) #6
  ret i32 %result.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_set_engine_dram_timings_rv770(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tonga_populate_smc_acp_level(ptr noundef %hwmgr, ptr nocapture noundef %table) unnamed_addr #0 align 64 {
entry:
  %dividers = alloca %struct.pp_atomctrl_clock_dividers_vi, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dividers) #6
  %0 = call ptr @memset(ptr %dividers, i32 255, i32 16)
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %1 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %backend, align 4
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %3 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pptable, align 4
  %mm_dep_table = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %mm_dep_table to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mm_dep_table, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %conv = trunc i32 %8 to i8
  %AcpLevelCount = getelementptr inbounds %struct.SMU72_Discrete_DpmTable, ptr %table, i32 0, i32 28
  %9 = ptrtoint ptr %AcpLevelCount to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %AcpLevelCount, align 1
  %AcpBootLevel = getelementptr inbounds %struct.SMU72_Discrete_DpmTable, ptr %table, i32 0, i32 49
  %10 = ptrtoint ptr %AcpBootLevel to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %AcpBootLevel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %cmp107.not = icmp eq i8 %conv, 0
  br i1 %cmp107.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %vddc_lookup_table = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %4, i32 0, i32 15
  %vdd_gfx_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %2, i32 0, i32 8
  %vddgfx_lookup_table = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %4, i32 0, i32 16
  %vddci_voltage_table = getelementptr inbounds %struct.smu7_hwmgr, ptr %2, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %do.end53.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %do.end53.for.body_crit_edge ]
  %11 = ptrtoint ptr %mm_dep_table to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mm_dep_table, align 4
  %aclk = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %12, i32 0, i32 1, i32 %indvars.iv, i32 3
  %13 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %aclk, align 4
  %arrayidx8 = getelementptr %struct.SMU72_Discrete_DpmTable, ptr %table, i32 0, i32 42, i32 %indvars.iv
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %arrayidx8, align 1
  %16 = ptrtoint ptr %vddc_lookup_table to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vddc_lookup_table, align 4
  %vddc = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %6, i32 0, i32 1, i32 %indvars.iv, i32 7
  %18 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vddc, align 4
  %call = call zeroext i8 @phm_get_voltage_index(ptr noundef %17, i16 noundef zeroext %19) #6
  %MinVoltage = getelementptr %struct.SMU72_Discrete_DpmTable, ptr %table, i32 0, i32 42, i32 %indvars.iv, i32 1
  %20 = ptrtoint ptr %MinVoltage to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %call, ptr %MinVoltage, align 1
  %21 = ptrtoint ptr %vdd_gfx_control to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vdd_gfx_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp15 = icmp eq i32 %22, 2
  br i1 %cmp15, label %cond.true, label %for.body.cond.end_crit_edge

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %vddgfx_lookup_table to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vddgfx_lookup_table, align 4
  %vddgfx = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %6, i32 0, i32 1, i32 %indvars.iv, i32 8
  %25 = ptrtoint ptr %vddgfx to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vddgfx, align 2
  %call20 = call zeroext i8 @phm_get_voltage_index(ptr noundef %24, i16 noundef zeroext %26) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body.cond.end_crit_edge
  %cond = phi i8 [ %call20, %cond.true ], [ 0, %for.body.cond.end_crit_edge ]
  %VddGfx = getelementptr %struct.SMU72_Discrete_DpmTable, ptr %table, i32 0, i32 42, i32 %indvars.iv, i32 1, i32 2
  %27 = ptrtoint ptr %VddGfx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %cond, ptr %VddGfx, align 1
  %28 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vddc, align 4
  %conv31 = zext i16 %29 to i32
  %sub = add nsw i32 %conv31, -200
  %call32 = call zeroext i8 @phm_get_voltage_id(ptr noundef %vddci_voltage_table, i32 noundef %sub) #6
  %Vddci = getelementptr %struct.SMU72_Discrete_DpmTable, ptr %table, i32 0, i32 42, i32 %indvars.iv, i32 1, i32 1
  %30 = ptrtoint ptr %Vddci to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call32, ptr %Vddci, align 1
  %Phases = getelementptr %struct.SMU72_Discrete_DpmTable, ptr %table, i32 0, i32 42, i32 %indvars.iv, i32 1, i32 3
  %31 = ptrtoint ptr %Phases to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %Phases, align 1
  %32 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %arrayidx8, align 1
  %call45 = call i32 @atomctrl_get_dfs_pll_dividers_vi(ptr noundef %hwmgr, i32 noundef %33, ptr noundef nonnull %dividers) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool.not = icmp eq i32 %call45, 0
  br i1 %tobool.not, label %do.end53, label %if.then

if.then:                                          ; preds = %cond.end
  %call46 = call i32 @___ratelimit(ptr noundef nonnull @tonga_populate_smc_acp_level._rs, ptr noundef nonnull @__func__.tonga_populate_smc_acp_level) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.101) #10
  br label %cleanup

do.end53:                                         ; preds = %cond.end
  %34 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dividers, align 4
  %conv54 = trunc i32 %35 to i8
  %Divider = getelementptr %struct.SMU72_Discrete_DpmTable, ptr %table, i32 0, i32 42, i32 %indvars.iv, i32 2
  %36 = ptrtoint ptr %Divider to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv54, ptr %Divider, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %37 = ptrtoint ptr %AcpLevelCount to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %AcpLevelCount, align 1
  %39 = zext i8 %38 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %39
  br i1 %cmp, label %do.end53.for.body_crit_edge, label %do.end53.cleanup_crit_edge

do.end53.cleanup_crit_edge:                       ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end53.for.body_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %do.end53.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call45, %do.end ], [ %call45, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end53.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tonga_populate_smc_uvd_level(ptr noundef %hwmgr, ptr nocapture noundef %table) unnamed_addr #0 align 64 {
entry:
  %dividers = alloca %struct.pp_atomctrl_clock_dividers_vi, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dividers) #6
  %0 = call ptr @memset(ptr %dividers, i32 255, i32 16)
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %1 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %backend, align 4
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %3 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pptable, align 4
  %mm_dep_table = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %mm_dep_table to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mm_dep_table, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %conv = trunc i32 %8 to i8
  %UvdLevelCount = getelementptr inbounds %struct.SMU72_Discrete_DpmTable, ptr %table, i32 0, i32 26
  %9 = ptrtoint ptr %UvdLevelCount to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %UvdLevelCount, align 1
  %UvdBootLevel = getelementptr inbounds %struct.SMU72_Discrete_DpmTable, ptr %table, i32 0, i32 47
  %10 = ptrtoint ptr %UvdBootLevel to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %UvdBootLevel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %cmp161.not = icmp eq i8 %conv, 0
  br i1 %cmp161.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %vddc_lookup_table = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %4, i32 0, i32 15
  %vdd_gfx_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %2, i32 0, i32 8
  %vddgfx_lookup_table = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %4, i32 0, i32 16
  %vddci_voltage_table = getelementptr inbounds %struct.smu7_hwmgr, ptr %2, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %do.end82.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %do.end82.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %6, i32 0, i32 1, i32 %indvars.iv
  %vclk = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %6, i32 0, i32 1, i32 %indvars.iv, i32 1
  %11 = ptrtoint ptr %vclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vclk, align 4
  %arrayidx7 = getelementptr %struct.SMU72_Discrete_DpmTable, ptr %table, i32 0, i32 40, i32 %indvars.iv
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %arrayidx7, align 1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %DclkFrequency = getelementptr %struct.SMU72_Discrete_DpmTable, ptr %table, i32 0, i32 40, i32 %indvars.iv, i32 1
  %16 = ptrtoint ptr %DclkFrequency to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %DclkFrequency, align 1
  %17 = ptrtoint ptr %vddc_lookup_table to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vddc_lookup_table, align 4
  %vddc = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %6, i32 0, i32 1, i32 %indvars.iv, i32 7
  %19 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vddc, align 4
  %call = call zeroext i8 @phm_get_voltage_index(ptr noundef %18, i16 noundef zeroext %20) #6
  %MinVoltage = getelementptr %struct.SMU72_Discrete_DpmTable, ptr %table, i32 0, i32 40, i32 %indvars.iv, i32 2
  %21 = ptrtoint ptr %MinVoltage to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call, ptr %MinVoltage, align 1
  %22 = ptrtoint ptr %vdd_gfx_control to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vdd_gfx_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp20 = icmp eq i32 %23, 2
  br i1 %cmp20, label %cond.true, label %for.body.cond.end_crit_edge

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %vddgfx_lookup_table to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vddgfx_lookup_table, align 4
  %vddgfx = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %6, i32 0, i32 1, i32 %indvars.iv, i32 8
  %26 = ptrtoint ptr %vddgfx to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vddgfx, align 2
  %call25 = call zeroext i8 @phm_get_voltage_index(ptr noundef %25, i16 noundef zeroext %27) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body.cond.end_crit_edge
  %cond = phi i8 [ %call25, %cond.true ], [ 0, %for.body.cond.end_crit_edge ]
  %VddGfx = getelementptr %struct.SMU72_Discrete_DpmTable, ptr %table, i32 0, i32 40, i32 %indvars.iv, i32 2, i32 2
  %28 = ptrtoint ptr %VddGfx to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %cond, ptr %VddGfx, align 1
  %29 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vddc, align 4
  %conv36 = zext i16 %30 to i32
  %sub = add nsw i32 %conv36, -200
  %call37 = call zeroext i8 @phm_get_voltage_id(ptr noundef %vddci_voltage_table, i32 noundef %sub) #6
  %Vddci = getelementptr %struct.SMU72_Discrete_DpmTable, ptr %table, i32 0, i32 40, i32 %indvars.iv, i32 2, i32 1
  %31 = ptrtoint ptr %Vddci to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %call37, ptr %Vddci, align 1
  %Phases = getelementptr %struct.SMU72_Discrete_DpmTable, ptr %table, i32 0, i32 40, i32 %indvars.iv, i32 2, i32 3
  %32 = ptrtoint ptr %Phases to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %Phases, align 1
  %33 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %arrayidx7, align 1
  %call50 = call i32 @atomctrl_get_dfs_pll_dividers_vi(ptr noundef %hwmgr, i32 noundef %34, ptr noundef nonnull %dividers) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool.not = icmp eq i32 %call50, 0
  br i1 %tobool.not, label %do.end58, label %if.then

if.then:                                          ; preds = %cond.end
  %call51 = call i32 @___ratelimit(ptr noundef nonnull @tonga_populate_smc_uvd_level._rs, ptr noundef nonnull @__func__.tonga_populate_smc_uvd_level) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end58:                                         ; preds = %cond.end
  %35 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dividers, align 4
  %conv59 = trunc i32 %36 to i8
  %VclkDivider = getelementptr %struct.SMU72_Discrete_DpmTable, ptr %table, i32 0, i32 40, i32 %indvars.iv, i32 3
  %37 = ptrtoint ptr %VclkDivider to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv59, ptr %VclkDivider, align 1
  %38 = ptrtoint ptr %DclkFrequency to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %DclkFrequency, align 1
  %call67 = call i32 @atomctrl_get_dfs_pll_dividers_vi(ptr noundef %hwmgr, i32 noundef %39, ptr noundef nonnull %dividers) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool69.not = icmp eq i32 %call67, 0
  br i1 %tobool69.not, label %do.end82, label %if.then70

if.then70:                                        ; preds = %do.end58
  %call71 = call i32 @___ratelimit(ptr noundef nonnull @tonga_populate_smc_uvd_level._rs.103, ptr noundef nonnull @__func__.tonga_populate_smc_uvd_level) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then70.cleanup_crit_edge, label %if.then70.cleanup.sink.split_crit_edge

if.then70.cleanup.sink.split_crit_edge:           ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then70.cleanup_crit_edge:                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end82:                                         ; preds = %do.end58
  %40 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dividers, align 4
  %conv84 = trunc i32 %41 to i8
  %DclkDivider = getelementptr %struct.SMU72_Discrete_DpmTable, ptr %table, i32 0, i32 40, i32 %indvars.iv, i32 4
  %42 = ptrtoint ptr %DclkDivider to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv84, ptr %DclkDivider, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %43 = ptrtoint ptr %UvdLevelCount to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %UvdLevelCount, align 1
  %45 = zext i8 %44 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %45
  br i1 %cmp, label %do.end82.for.body_crit_edge, label %do.end82.cleanup_crit_edge

do.end82.cleanup_crit_edge:                       ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end82.for.body_crit_edge:                      ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup.sink.split:                               ; preds = %if.then70.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.str.106.sink = phi ptr [ @.str.102, %if.then.cleanup.sink.split_crit_edge ], [ @.str.106, %if.then70.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call50, %if.then.cleanup.sink.split_crit_edge ], [ %call67, %if.then70.cleanup.sink.split_crit_edge ]
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %.str.106.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end82.cleanup_crit_edge, %if.then70.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call50, %if.then.cleanup_crit_edge ], [ %call67, %if.then70.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %do.end82.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tonga_populate_smc_boot_level(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef writeonly %table) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  %GraphicsBootLevel = getelementptr inbounds %struct.SMU72_Discrete_DpmTable, ptr %table, i32 0, i32 51
  %4 = ptrtoint ptr %GraphicsBootLevel to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %GraphicsBootLevel, align 1
  %MemoryBootLevel = getelementptr inbounds %struct.SMU72_Discrete_DpmTable, ptr %table, i32 0, i32 59
  %5 = ptrtoint ptr %MemoryBootLevel to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %MemoryBootLevel, align 1
  %sclk_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 4
  %6 = ptrtoint ptr %sclk_bootup_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sclk_bootup_value, align 4
  %GraphicsBootLevel1 = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 51
  %call = tail call i32 @phm_find_boot_level(ptr noundef %1, i32 noundef %7, ptr noundef %GraphicsBootLevel1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %GraphicsBootLevel1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %GraphicsBootLevel1, align 8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mclk_table = getelementptr inbounds %struct.smu7_dpm_table, ptr %1, i32 0, i32 1
  %mclk_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 5
  %9 = ptrtoint ptr %mclk_bootup_value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mclk_bootup_value, align 4
  %MemoryBootLevel8 = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 1, i32 59
  %call9 = tail call i32 @phm_find_boot_level(ptr noundef %mclk_table, i32 noundef %10, ptr noundef %MemoryBootLevel8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %if.end.if.end19_crit_edge, label %if.then11

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %MemoryBootLevel8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %MemoryBootLevel8, align 2
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then11, %if.end.if.end19_crit_edge
  %vbios_boot_state = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31
  %vddc_voltage_table = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 41
  %vddc_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 1
  %12 = ptrtoint ptr %vddc_bootup_value to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vddc_bootup_value, align 2
  %conv = zext i16 %13 to i32
  %call21 = tail call zeroext i8 @phm_get_voltage_id(ptr noundef %vddc_voltage_table, i32 noundef %conv) #6
  %BootVoltage = getelementptr inbounds %struct.SMU72_Discrete_DpmTable, ptr %table, i32 0, i32 86
  %14 = ptrtoint ptr %BootVoltage to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call21, ptr %BootVoltage, align 1
  %vddgfx_voltage_table = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 44
  %vddgfx_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 3
  %15 = ptrtoint ptr %vddgfx_bootup_value to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vddgfx_bootup_value, align 2
  %conv23 = zext i16 %16 to i32
  %call24 = tail call zeroext i8 @phm_get_voltage_id(ptr noundef %vddgfx_voltage_table, i32 noundef %conv23) #6
  %VddGfx = getelementptr inbounds %struct.SMU72_Discrete_DpmTable, ptr %table, i32 0, i32 86, i32 2
  %17 = ptrtoint ptr %VddGfx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %call24, ptr %VddGfx, align 1
  %vddci_voltage_table = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 42
  %vddci_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 2
  %18 = ptrtoint ptr %vddci_bootup_value to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vddci_bootup_value, align 4
  %conv27 = zext i16 %19 to i32
  %call28 = tail call zeroext i8 @phm_get_voltage_id(ptr noundef %vddci_voltage_table, i32 noundef %conv27) #6
  %Vddci = getelementptr inbounds %struct.SMU72_Discrete_DpmTable, ptr %table, i32 0, i32 86, i32 1
  %20 = ptrtoint ptr %Vddci to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %call28, ptr %Vddci, align 1
  %21 = ptrtoint ptr %vbios_boot_state to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vbios_boot_state, align 4
  %BootMVdd = getelementptr inbounds %struct.SMU72_Discrete_DpmTable, ptr %table, i32 0, i32 61
  %23 = ptrtoint ptr %BootMVdd to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %22, ptr %BootMVdd, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tonga_populate_bapm_parameters_in_dpm_table(ptr nocapture noundef readonly %hwmgr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %power_tune_defaults = getelementptr inbounds %struct.tonga_smumgr, ptr %1, i32 0, i32 4
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
  %mul = shl i16 %9, 8
  %DefaultTdp = getelementptr inbounds %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 76
  %10 = ptrtoint ptr %DefaultTdp to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %mul, ptr %DefaultTdp, align 1
  %usConfigurableTDP = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %usConfigurableTDP to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %usConfigurableTDP, align 2
  %mul4 = shl i16 %12, 8
  %TargetTdp = getelementptr inbounds %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 77
  %13 = ptrtoint ptr %TargetTdp to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %mul4, ptr %TargetTdp, align 1
  %usTargetOperatingTemp = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %7, i32 0, i32 14
  %14 = ptrtoint ptr %usTargetOperatingTemp to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %usTargetOperatingTemp, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %15)
  %cmp = icmp ult i16 %15, 256
  br i1 %cmp, label %entry.do.end13_crit_edge, label %if.then

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @tonga_populate_bapm_parameters_in_dpm_table._rs, ptr noundef nonnull @__func__.tonga_populate_bapm_parameters_in_dpm_table) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.do.end13_crit_edge, label %do.end

if.then.do.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.112) #10
  br label %do.end13

do.end13:                                         ; preds = %do.end, %if.then.do.end13_crit_edge, %entry.do.end13_crit_edge
  %16 = ptrtoint ptr %usTargetOperatingTemp to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %usTargetOperatingTemp, align 4
  %conv15 = trunc i16 %17 to i8
  %GpuTjMax = getelementptr inbounds %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 84
  %18 = ptrtoint ptr %GpuTjMax to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv15, ptr %GpuTjMax, align 1
  %GpuTjHyst = getelementptr inbounds %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 85
  %19 = ptrtoint ptr %GpuTjHyst to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 8, ptr %GpuTjHyst, align 1
  %dte_ambient_temp_base = getelementptr inbounds %struct.tonga_pt_defaults, ptr %3, i32 0, i32 5
  %20 = ptrtoint ptr %dte_ambient_temp_base to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dte_ambient_temp_base, align 1
  %DTEAmbientTempBase = getelementptr inbounds %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 82
  %22 = ptrtoint ptr %DTEAmbientTempBase to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %DTEAmbientTempBase, align 1
  %bapm_temp_gradient = getelementptr inbounds %struct.tonga_pt_defaults, ptr %3, i32 0, i32 7
  %23 = ptrtoint ptr %bapm_temp_gradient to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bapm_temp_gradient, align 4
  %BAPM_TEMP_GRADIENT = getelementptr inbounds %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 87
  %25 = ptrtoint ptr %BAPM_TEMP_GRADIENT to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %BAPM_TEMP_GRADIENT, align 1
  %bapmti_r = getelementptr inbounds %struct.tonga_pt_defaults, ptr %3, i32 0, i32 8
  %bapmti_rc = getelementptr inbounds %struct.tonga_pt_defaults, ptr %3, i32 0, i32 9
  %arrayidx27 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 80, i32 0, i32 0
  %arrayidx30 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 81, i32 0, i32 0
  %26 = ptrtoint ptr %bapmti_r to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %bapmti_r, align 2
  %28 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %27, ptr %arrayidx27, align 1
  %29 = ptrtoint ptr %bapmti_rc to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %bapmti_rc, align 2
  %31 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %30, ptr %arrayidx30, align 1
  %incdec.ptr = getelementptr %struct.tonga_pt_defaults, ptr %3, i32 0, i32 8, i32 1
  %incdec.ptr32 = getelementptr %struct.tonga_pt_defaults, ptr %3, i32 0, i32 9, i32 1
  %arrayidx27.1 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 80, i32 0, i32 1
  %arrayidx30.1 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 81, i32 0, i32 1
  %32 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %incdec.ptr, align 2
  %34 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %33, ptr %arrayidx27.1, align 1
  %35 = ptrtoint ptr %incdec.ptr32 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %incdec.ptr32, align 2
  %37 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %36, ptr %arrayidx30.1, align 1
  %incdec.ptr.1 = getelementptr %struct.tonga_pt_defaults, ptr %3, i32 0, i32 8, i32 2
  %incdec.ptr32.1 = getelementptr %struct.tonga_pt_defaults, ptr %3, i32 0, i32 9, i32 2
  %arrayidx27.2 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 80, i32 0, i32 2
  %arrayidx30.2 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 81, i32 0, i32 2
  %38 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %incdec.ptr.1, align 2
  %40 = ptrtoint ptr %arrayidx27.2 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %39, ptr %arrayidx27.2, align 1
  %41 = ptrtoint ptr %incdec.ptr32.1 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %incdec.ptr32.1, align 2
  %43 = ptrtoint ptr %arrayidx30.2 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 %42, ptr %arrayidx30.2, align 1
  %incdec.ptr.2 = getelementptr %struct.tonga_pt_defaults, ptr %3, i32 0, i32 8, i32 3
  %incdec.ptr32.2 = getelementptr %struct.tonga_pt_defaults, ptr %3, i32 0, i32 9, i32 3
  %arrayidx27.19 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 80, i32 1, i32 0
  %arrayidx30.110 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 81, i32 1, i32 0
  %44 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %incdec.ptr.2, align 2
  %46 = ptrtoint ptr %arrayidx27.19 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 %45, ptr %arrayidx27.19, align 1
  %47 = ptrtoint ptr %incdec.ptr32.2 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %incdec.ptr32.2, align 2
  %49 = ptrtoint ptr %arrayidx30.110 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 %48, ptr %arrayidx30.110, align 1
  %incdec.ptr.111 = getelementptr %struct.tonga_pt_defaults, ptr %3, i32 0, i32 8, i32 4
  %incdec.ptr32.112 = getelementptr %struct.tonga_pt_defaults, ptr %3, i32 0, i32 9, i32 4
  %arrayidx27.1.1 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 80, i32 1, i32 1
  %arrayidx30.1.1 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 81, i32 1, i32 1
  %50 = ptrtoint ptr %incdec.ptr.111 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %incdec.ptr.111, align 2
  %52 = ptrtoint ptr %arrayidx27.1.1 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 %51, ptr %arrayidx27.1.1, align 1
  %53 = ptrtoint ptr %incdec.ptr32.112 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %incdec.ptr32.112, align 2
  %55 = ptrtoint ptr %arrayidx30.1.1 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %54, ptr %arrayidx30.1.1, align 1
  %incdec.ptr.1.1 = getelementptr %struct.tonga_pt_defaults, ptr %3, i32 0, i32 8, i32 5
  %incdec.ptr32.1.1 = getelementptr %struct.tonga_pt_defaults, ptr %3, i32 0, i32 9, i32 5
  %arrayidx27.2.1 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 80, i32 1, i32 2
  %arrayidx30.2.1 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 81, i32 1, i32 2
  %56 = ptrtoint ptr %incdec.ptr.1.1 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %incdec.ptr.1.1, align 2
  %58 = ptrtoint ptr %arrayidx27.2.1 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 2)
  store i16 %57, ptr %arrayidx27.2.1, align 1
  %59 = ptrtoint ptr %incdec.ptr32.1.1 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %incdec.ptr32.1.1, align 2
  %61 = ptrtoint ptr %arrayidx30.2.1 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 %60, ptr %arrayidx30.2.1, align 1
  %incdec.ptr.2.1 = getelementptr %struct.tonga_pt_defaults, ptr %3, i32 0, i32 8, i32 6
  %incdec.ptr32.2.1 = getelementptr %struct.tonga_pt_defaults, ptr %3, i32 0, i32 9, i32 6
  %arrayidx27.213 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 80, i32 2, i32 0
  %arrayidx30.214 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 81, i32 2, i32 0
  %62 = ptrtoint ptr %incdec.ptr.2.1 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %incdec.ptr.2.1, align 2
  %64 = ptrtoint ptr %arrayidx27.213 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 2)
  store i16 %63, ptr %arrayidx27.213, align 1
  %65 = ptrtoint ptr %incdec.ptr32.2.1 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %incdec.ptr32.2.1, align 2
  %67 = ptrtoint ptr %arrayidx30.214 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 %66, ptr %arrayidx30.214, align 1
  %incdec.ptr.215 = getelementptr %struct.tonga_pt_defaults, ptr %3, i32 0, i32 8, i32 7
  %incdec.ptr32.216 = getelementptr %struct.tonga_pt_defaults, ptr %3, i32 0, i32 9, i32 7
  %arrayidx27.1.2 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 80, i32 2, i32 1
  %arrayidx30.1.2 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 81, i32 2, i32 1
  %68 = ptrtoint ptr %incdec.ptr.215 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %incdec.ptr.215, align 2
  %70 = ptrtoint ptr %arrayidx27.1.2 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %69, ptr %arrayidx27.1.2, align 1
  %71 = ptrtoint ptr %incdec.ptr32.216 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %incdec.ptr32.216, align 2
  %73 = ptrtoint ptr %arrayidx30.1.2 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 %72, ptr %arrayidx30.1.2, align 1
  %incdec.ptr.1.2 = getelementptr %struct.tonga_pt_defaults, ptr %3, i32 0, i32 8, i32 8
  %incdec.ptr32.1.2 = getelementptr %struct.tonga_pt_defaults, ptr %3, i32 0, i32 9, i32 8
  %arrayidx27.2.2 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 80, i32 2, i32 2
  %arrayidx30.2.2 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 81, i32 2, i32 2
  %74 = ptrtoint ptr %incdec.ptr.1.2 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %incdec.ptr.1.2, align 2
  %76 = ptrtoint ptr %arrayidx27.2.2 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 2)
  store i16 %75, ptr %arrayidx27.2.2, align 1
  %77 = ptrtoint ptr %incdec.ptr32.1.2 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %incdec.ptr32.1.2, align 2
  %79 = ptrtoint ptr %arrayidx30.2.2 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 2)
  store i16 %78, ptr %arrayidx30.2.2, align 1
  %incdec.ptr.2.2 = getelementptr %struct.tonga_pt_defaults, ptr %3, i32 0, i32 8, i32 9
  %incdec.ptr32.2.2 = getelementptr %struct.tonga_pt_defaults, ptr %3, i32 0, i32 9, i32 9
  %arrayidx27.3 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 80, i32 3, i32 0
  %arrayidx30.3 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 81, i32 3, i32 0
  %80 = ptrtoint ptr %incdec.ptr.2.2 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %incdec.ptr.2.2, align 2
  %82 = ptrtoint ptr %arrayidx27.3 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 %81, ptr %arrayidx27.3, align 1
  %83 = ptrtoint ptr %incdec.ptr32.2.2 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %incdec.ptr32.2.2, align 2
  %85 = ptrtoint ptr %arrayidx30.3 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 2)
  store i16 %84, ptr %arrayidx30.3, align 1
  %incdec.ptr.3 = getelementptr %struct.tonga_pt_defaults, ptr %3, i32 0, i32 8, i32 10
  %incdec.ptr32.3 = getelementptr %struct.tonga_pt_defaults, ptr %3, i32 0, i32 9, i32 10
  %arrayidx27.1.3 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 80, i32 3, i32 1
  %arrayidx30.1.3 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 81, i32 3, i32 1
  %86 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %incdec.ptr.3, align 2
  %88 = ptrtoint ptr %arrayidx27.1.3 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 2)
  store i16 %87, ptr %arrayidx27.1.3, align 1
  %89 = ptrtoint ptr %incdec.ptr32.3 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %incdec.ptr32.3, align 2
  %91 = ptrtoint ptr %arrayidx30.1.3 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 2)
  store i16 %90, ptr %arrayidx30.1.3, align 1
  %incdec.ptr.1.3 = getelementptr %struct.tonga_pt_defaults, ptr %3, i32 0, i32 8, i32 11
  %incdec.ptr32.1.3 = getelementptr %struct.tonga_pt_defaults, ptr %3, i32 0, i32 9, i32 11
  %arrayidx27.2.3 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 80, i32 3, i32 2
  %arrayidx30.2.3 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 81, i32 3, i32 2
  %92 = ptrtoint ptr %incdec.ptr.1.3 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %incdec.ptr.1.3, align 2
  %94 = ptrtoint ptr %arrayidx27.2.3 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 2)
  store i16 %93, ptr %arrayidx27.2.3, align 1
  %95 = ptrtoint ptr %incdec.ptr32.1.3 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %incdec.ptr32.1.3, align 2
  %97 = ptrtoint ptr %arrayidx30.2.3 to i32
  call void @__asan_storeN_noabort(i32 %97, i32 2)
  store i16 %96, ptr %arrayidx30.2.3, align 1
  %incdec.ptr.2.3 = getelementptr %struct.tonga_pt_defaults, ptr %3, i32 0, i32 8, i32 12
  %incdec.ptr32.2.3 = getelementptr %struct.tonga_pt_defaults, ptr %3, i32 0, i32 9, i32 12
  %arrayidx27.4 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 80, i32 4, i32 0
  %arrayidx30.4 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 81, i32 4, i32 0
  %98 = ptrtoint ptr %incdec.ptr.2.3 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %incdec.ptr.2.3, align 2
  %100 = ptrtoint ptr %arrayidx27.4 to i32
  call void @__asan_storeN_noabort(i32 %100, i32 2)
  store i16 %99, ptr %arrayidx27.4, align 1
  %101 = ptrtoint ptr %incdec.ptr32.2.3 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %incdec.ptr32.2.3, align 2
  %103 = ptrtoint ptr %arrayidx30.4 to i32
  call void @__asan_storeN_noabort(i32 %103, i32 2)
  store i16 %102, ptr %arrayidx30.4, align 1
  %incdec.ptr.4 = getelementptr %struct.tonga_pt_defaults, ptr %3, i32 0, i32 8, i32 13
  %incdec.ptr32.4 = getelementptr %struct.tonga_pt_defaults, ptr %3, i32 0, i32 9, i32 13
  %arrayidx27.1.4 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 80, i32 4, i32 1
  %arrayidx30.1.4 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 81, i32 4, i32 1
  %104 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %incdec.ptr.4, align 2
  %106 = ptrtoint ptr %arrayidx27.1.4 to i32
  call void @__asan_storeN_noabort(i32 %106, i32 2)
  store i16 %105, ptr %arrayidx27.1.4, align 1
  %107 = ptrtoint ptr %incdec.ptr32.4 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %incdec.ptr32.4, align 2
  %109 = ptrtoint ptr %arrayidx30.1.4 to i32
  call void @__asan_storeN_noabort(i32 %109, i32 2)
  store i16 %108, ptr %arrayidx30.1.4, align 1
  %incdec.ptr.1.4 = getelementptr %struct.tonga_pt_defaults, ptr %3, i32 0, i32 8, i32 14
  %incdec.ptr32.1.4 = getelementptr %struct.tonga_pt_defaults, ptr %3, i32 0, i32 9, i32 14
  %arrayidx27.2.4 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 80, i32 4, i32 2
  %arrayidx30.2.4 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 81, i32 4, i32 2
  %110 = ptrtoint ptr %incdec.ptr.1.4 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %incdec.ptr.1.4, align 2
  %112 = ptrtoint ptr %arrayidx27.2.4 to i32
  call void @__asan_storeN_noabort(i32 %112, i32 2)
  store i16 %111, ptr %arrayidx27.2.4, align 1
  %113 = ptrtoint ptr %incdec.ptr32.1.4 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %incdec.ptr32.1.4, align 2
  %115 = ptrtoint ptr %arrayidx30.2.4 to i32
  call void @__asan_storeN_noabort(i32 %115, i32 2)
  store i16 %114, ptr %arrayidx30.2.4, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tonga_populate_clock_stretcher_data_table(ptr nocapture noundef %hwmgr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %6 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr, align 4
  %cac_dtp_table = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %cac_dtp_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cac_dtp_table, align 4
  %usClockStretchAmount = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %usClockStretchAmount to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %usClockStretchAmount, align 2
  %conv = trunc i16 %11 to i8
  %pdev = getelementptr inbounds %struct.amdgpu_device, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %revision, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 8
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %device, align 2
  %device5 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %18 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device5, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %read_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %read_ind_register to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read_ind_register, align 4
  %call = tail call i32 %23(ptr noundef %19, i32 noundef 1, i32 noundef -1072692664) #6
  %24 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device5, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %read_ind_register9 = getelementptr inbounds %struct.cgs_ops, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %read_ind_register9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read_ind_register9, align 4
  %call11 = tail call i32 %29(ptr noundef %25, i32 noundef 1, i32 noundef -1072692656) #6
  %shr = lshr i32 %call, 24
  %and12 = and i32 %call11, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and12)
  %cmp = icmp eq i32 %and12, 1
  %.598 = select i1 %cmp, i32 950, i32 1500
  %.599 = select i1 %cmp, i32 1350, i32 1000
  %mul14 = mul nuw nsw i32 %shr, %.598
  %div15 = udiv i32 %mul14, 255
  %add16 = add nuw nsw i32 %div15, %.599
  call void @__sanitizer_cov_trace_const_cmp4(i32 1660, i32 %add16)
  %cmp17 = icmp ult i32 %add16, 1660
  %. = zext i1 %cmp17 to i32
  %ClockStretcherAmount = getelementptr inbounds %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 90
  %30 = ptrtoint ptr %ClockStretcherAmount to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv, ptr %ClockStretcherAmount, align 8
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp23586.not = icmp eq i32 %32, 0
  br i1 %cmp23586.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %Sclk_CKS_masterEn0_7 = getelementptr inbounds %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 91
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %switch.old = icmp ult i8 %15, 2
  %add94 = sub nuw nsw i32 3646, %add16
  %add114 = sub nuw nsw i32 3365, %add16
  br label %for.body

for.body:                                         ; preds = %if.end140.for.body_crit_edge, %for.body.lr.ph
  %conv22589 = phi i32 [ 0, %for.body.lr.ph ], [ %conv22, %if.end140.for.body_crit_edge ]
  %volt_offset.0588 = phi i8 [ 0, %for.body.lr.ph ], [ %volt_offset.1, %if.end140.for.body_crit_edge ]
  %i.0587 = phi i8 [ 0, %for.body.lr.ph ], [ %inc, %if.end140.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %5, i32 0, i32 1, i32 %conv22589
  %cks_enable = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %5, i32 0, i32 1, i32 %conv22589, i32 10
  %33 = ptrtoint ptr %cks_enable to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %cks_enable, align 1
  %conv25 = zext i8 %34 to i32
  %shl = shl i32 %conv25, %conv22589
  %35 = ptrtoint ptr %Sclk_CKS_masterEn0_7 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %Sclk_CKS_masterEn0_7, align 1
  %37 = trunc i32 %shl to i8
  %conv29 = or i8 %36, %37
  store i8 %conv29, ptr %Sclk_CKS_masterEn0_7, align 1
  %38 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.185)
  switch i16 %17, label %for.body.if.else85_crit_edge [
    i16 26928, label %land.lhs.true
    i16 26912, label %land.lhs.true42
  ]

for.body.if.else85_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else85

land.lhs.true:                                    ; preds = %for.body
  %39 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.186)
  switch i8 %15, label %land.lhs.true.if.else85_crit_edge [
    i8 -16, label %land.lhs.true.if.then48_crit_edge
    i8 -15, label %land.lhs.true.if.then48_crit_edge600
    i8 -1, label %land.lhs.true.if.then48_crit_edge601
  ]

land.lhs.true.if.then48_crit_edge601:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then48

land.lhs.true.if.then48_crit_edge600:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then48

land.lhs.true.if.then48_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then48

land.lhs.true.if.else85_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else85

land.lhs.true42:                                  ; preds = %for.body
  br i1 %switch.old, label %land.lhs.true42.if.then48_crit_edge, label %land.lhs.true42.if.else85_crit_edge

land.lhs.true42.if.else85_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else85

land.lhs.true42.if.then48_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then48

if.then48:                                        ; preds = %land.lhs.true42.if.then48_crit_edge, %land.lhs.true.if.then48_crit_edge, %land.lhs.true.if.then48_crit_edge600, %land.lhs.true.if.then48_crit_edge601
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx, align 4
  %div52 = udiv i32 %41, 100
  %mul53 = mul i32 %div52, 20838
  %div54 = udiv i32 %mul53, 10000
  %42 = add nuw nsw i32 %add16, %div54
  %sub55 = sub nsw i32 7792, %42
  %mul56 = mul nsw i32 %sub55, 1000
  %mul62 = mul i32 %div52, 5301
  %div63 = udiv i32 %mul62, 1000
  %sub64 = sub nsw i32 8730, %div63
  %div65 = udiv i32 %mul56, %sub64
  %mul72 = mul i32 %div52, 2404
  %div73 = udiv i32 %mul72, 100000
  %43 = add nuw nsw i32 %add16, %div73
  %sub74 = sub nsw i32 5301, %43
  %mul75 = mul nsw i32 %sub74, 1000
  %mul81 = mul i32 %div52, 3193
  %div82 = udiv i32 %mul81, 1000
  %sub83 = sub nsw i32 6146, %div82
  %div84 = udiv i32 %mul75, %sub83
  br label %if.end126

if.else85:                                        ; preds = %land.lhs.true42.if.else85_crit_edge, %land.lhs.true.if.else85_crit_edge, %for.body.if.else85_crit_edge
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx, align 4
  %div90 = udiv i32 %45, 100
  %mul91 = mul i32 %div90, 14041
  %div92 = udiv i32 %mul91, 10000
  %sub95 = add nsw i32 %add94, %div92
  %mul96 = mul nsw i32 %sub95, 1000
  %mul102 = mul i32 %div90, 13924
  %div103 = udiv i32 %mul102, 10000
  %sub104 = sub nsw i32 4026, %div103
  %div105 = udiv i32 %mul96, %sub104
  %mul111 = mul i32 %div90, 13946
  %div112 = udiv i32 %mul111, 10000
  %sub115 = add nsw i32 %add114, %div112
  %mul116 = mul nsw i32 %sub115, 1000
  %mul122 = mul i32 %div90, 11454
  %div123 = udiv i32 %mul122, 10000
  %sub124 = sub nsw i32 3664, %div123
  %div125 = udiv i32 %mul116, %sub124
  br label %if.end126

if.end126:                                        ; preds = %if.else85, %if.then48
  %volt_without_cks.0 = phi i32 [ %div65, %if.then48 ], [ %div105, %if.else85 ]
  %volt_with_cks.0 = phi i32 [ %div84, %if.then48 ], [ %div125, %if.else85 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %volt_without_cks.0, i32 %volt_with_cks.0)
  %cmp127.not = icmp ult i32 %volt_without_cks.0, %volt_with_cks.0
  br i1 %cmp127.not, label %if.end126.if.end140_crit_edge, label %if.then129

if.end126.if.end140_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end140

if.then129:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  %sub130 = sub i32 %volt_without_cks.0, %volt_with_cks.0
  %cks_voffset = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %5, i32 0, i32 1, i32 %conv22589, i32 11
  %46 = ptrtoint ptr %cks_voffset to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %cks_voffset, align 4
  %conv134 = zext i8 %47 to i32
  %add135 = add i32 %sub130, %conv134
  %mul136 = mul i32 %add135, 100
  %div137 = udiv i32 %mul136, 625
  %48 = trunc i32 %div137 to i8
  %conv139 = add i8 %48, 1
  br label %if.end140

if.end140:                                        ; preds = %if.then129, %if.end126.if.end140_crit_edge
  %volt_offset.1 = phi i8 [ %conv139, %if.then129 ], [ %volt_offset.0588, %if.end126.if.end140_crit_edge ]
  %arrayidx143 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 94, i32 %conv22589
  %49 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %volt_offset.1, ptr %arrayidx143, align 1
  %inc = add i8 %i.0587, 1
  %conv22 = zext i8 %inc to i32
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %5, align 4
  %cmp23 = icmp ugt i32 %51, %conv22
  br i1 %cmp23, label %if.end140.for.body_crit_edge, label %if.end140.for.end_crit_edge

if.end140.for.end_crit_edge:                      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end140.for.body_crit_edge:                     ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end140.for.end_crit_edge, %entry.for.end_crit_edge
  %52 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device5, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %write_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %write_ind_register to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_ind_register, align 4
  %read_ind_register149 = getelementptr inbounds %struct.cgs_ops, ptr %55, i32 0, i32 2
  %58 = ptrtoint ptr %read_ind_register149 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read_ind_register149, align 4
  %call151 = tail call i32 %59(ptr noundef %53, i32 noundef 1, i32 noundef -1071643828) #6
  %and152 = and i32 %call151, -2
  tail call void %57(ptr noundef %53, i32 noundef 1, i32 noundef -1071643828, i32 noundef %and152) #6
  %60 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device5, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %write_ind_register156 = getelementptr inbounds %struct.cgs_ops, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %write_ind_register156 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write_ind_register156, align 4
  %read_ind_register160 = getelementptr inbounds %struct.cgs_ops, ptr %63, i32 0, i32 2
  %66 = ptrtoint ptr %read_ind_register160 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %read_ind_register160, align 4
  %call162 = tail call i32 %67(ptr noundef %61, i32 noundef 1, i32 noundef -1071643828) #6
  %or164 = or i32 %call162, 2
  tail call void %65(ptr noundef %61, i32 noundef 1, i32 noundef -1071643828, i32 noundef %or164) #6
  %68 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %device5, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %write_ind_register167 = getelementptr inbounds %struct.cgs_ops, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %write_ind_register167 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write_ind_register167, align 4
  %read_ind_register171 = getelementptr inbounds %struct.cgs_ops, ptr %71, i32 0, i32 2
  %74 = ptrtoint ptr %read_ind_register171 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read_ind_register171, align 4
  %call173 = tail call i32 %75(ptr noundef %69, i32 noundef 1, i32 noundef -1071643828) #6
  %or175 = or i32 %call173, 4
  tail call void %73(ptr noundef %69, i32 noundef 1, i32 noundef -1071643828, i32 noundef %or175) #6
  %76 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %device5, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %write_ind_register178 = getelementptr inbounds %struct.cgs_ops, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %write_ind_register178 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write_ind_register178, align 4
  %read_ind_register182 = getelementptr inbounds %struct.cgs_ops, ptr %79, i32 0, i32 2
  %82 = ptrtoint ptr %read_ind_register182 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %read_ind_register182, align 4
  %call184 = tail call i32 %83(ptr noundef %77, i32 noundef 1, i32 noundef -1071643828) #6
  %and185 = and i32 %call184, -3
  tail call void %81(ptr noundef %77, i32 noundef 1, i32 noundef -1071643828, i32 noundef %and185) #6
  %conv.mask = and i16 %11, 255
  %conv187 = zext i16 %conv.mask to i32
  %switch.tableidx = add i8 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %84 = icmp ult i8 %switch.tableidx, 5
  br i1 %84, label %switch.lookup, label %if.else208

if.else208:                                       ; preds = %for.end
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 5
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %86, -3
  store i32 %and1.i, ptr %arrayidx.i, align 4
  %call209 = tail call i32 @___ratelimit(ptr noundef nonnull @tonga_populate_clock_stretcher_data_table._rs, ptr noundef nonnull @__func__.tonga_populate_clock_stretcher_data_table) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %tobool.not = icmp eq i32 %call209, 0
  br i1 %tobool.not, label %if.else208.cleanup_crit_edge, label %do.end

if.else208.cleanup_crit_edge:                     ; preds = %if.else208
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.else208
  call void @__sanitizer_cov_trace_pc() #8
  %call212 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.113) #10
  br label %cleanup

switch.lookup:                                    ; preds = %for.end
  %87 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.tonga_populate_clock_stretcher_data_table, i32 0, i32 %87
  %88 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %88)
  %switch.load = load i32, ptr %switch.gep, align 4
  %89 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %device5, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %read_ind_register220 = getelementptr inbounds %struct.cgs_ops, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %read_ind_register220 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %read_ind_register220, align 4
  %call222 = tail call i32 %94(ptr noundef %90, i32 noundef 1, i32 noundef -1071643824) #6
  %and223 = and i32 %call222, -3997817
  %arrayidx225 = getelementptr [2 x [4 x i16]], ptr @tonga_clock_stretcher_lookup_table, i32 0, i32 %switch.load
  %95 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx225, align 2
  %CKS_LOOKUPTable = getelementptr inbounds %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 96
  %97 = ptrtoint ptr %CKS_LOOKUPTable to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %96, ptr %CKS_LOOKUPTable, align 4
  %arrayidx231 = getelementptr [2 x [4 x i16]], ptr @tonga_clock_stretcher_lookup_table, i32 0, i32 %switch.load, i32 1
  %98 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %arrayidx231, align 2
  %maxFreq = getelementptr inbounds %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 96, i32 0, i32 0, i32 1
  %100 = ptrtoint ptr %maxFreq to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %99, ptr %maxFreq, align 2
  %GraphicsDpmLevelCount = getelementptr inbounds %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 22
  %101 = ptrtoint ptr %GraphicsDpmLevelCount to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %GraphicsDpmLevelCount, align 4
  %conv238 = zext i8 %102 to i32
  %sub239 = add nsw i32 %conv238, -1
  %SclkFrequency = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 35, i32 %sub239, i32 1
  %103 = ptrtoint ptr %SclkFrequency to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %SclkFrequency, align 4
  %div241 = udiv i32 %104, 100
  %conv246 = zext i16 %96 to i32
  %conv247 = and i32 %div241, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv247, i32 %conv246)
  %cmp248 = icmp ugt i32 %conv247, %conv246
  %conv254 = zext i16 %99 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv247, i32 %conv254)
  %cmp256 = icmp ult i32 %conv247, %conv254
  %or.cond = select i1 %cmp248, i1 %cmp256, i1 false
  br i1 %or.cond, label %if.then258, label %switch.lookup.if.end281_crit_edge

switch.lookup.if.end281_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end281

if.then258:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx261 = getelementptr [2 x [4 x i16]], ptr @tonga_clock_stretcher_lookup_table, i32 0, i32 %switch.load, i32 3
  %105 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %arrayidx261, align 2
  %conv262 = zext i16 %106 to i32
  %shl263 = shl nuw i32 %conv262, 16
  %or264 = or i32 %shl263, %and223
  %arrayidx267 = getelementptr [2 x [4 x i16]], ptr @tonga_clock_stretcher_lookup_table, i32 0, i32 %switch.load, i32 2
  %107 = ptrtoint ptr %arrayidx267 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %arrayidx267, align 2
  %conv268 = zext i16 %108 to i32
  %shl269 = shl i32 %conv268, 18
  %or270 = or i32 %or264, %shl269
  %arrayidx277 = getelementptr [2 x [6 x i8]], ptr @tonga_clock_stretch_amount_conversion, i32 0, i32 %conv262, i32 %conv187
  %109 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx277, align 1
  %conv278 = zext i8 %110 to i32
  %shl279 = shl nuw nsw i32 %conv278, 3
  %or280 = or i32 %or270, %shl279
  br label %if.end281

if.end281:                                        ; preds = %if.then258, %switch.lookup.if.end281_crit_edge
  %value.0 = phi i32 [ %or280, %if.then258 ], [ %and223, %switch.lookup.if.end281_crit_edge ]
  %arrayidx304 = getelementptr [2 x [4 x i16]], ptr @tonga_clock_stretcher_lookup_table, i32 0, i32 %switch.load, i32 2
  %111 = ptrtoint ptr %arrayidx304 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %arrayidx304, align 2
  %113 = trunc i16 %112 to i8
  %conv307 = and i8 %113, 127
  %setting = getelementptr inbounds %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 96, i32 0, i32 0, i32 2
  %arrayidx314 = getelementptr [2 x [4 x i16]], ptr @tonga_clock_stretcher_lookup_table, i32 0, i32 %switch.load, i32 3
  %114 = ptrtoint ptr %arrayidx314 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %arrayidx314, align 2
  %conv315 = trunc i16 %115 to i8
  %shl316 = shl i8 %conv315, 7
  %or323 = or i8 %shl316, %conv307
  %116 = ptrtoint ptr %setting to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %or323, ptr %setting, align 4
  %117 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %device5, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 4
  %write_ind_register327 = getelementptr inbounds %struct.cgs_ops, ptr %120, i32 0, i32 3
  %121 = ptrtoint ptr %write_ind_register327 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %write_ind_register327, align 4
  tail call void %122(ptr noundef %118, i32 noundef 1, i32 noundef -1071643824, i32 noundef %value.0) #6
  %ClockStretcherDataTable = getelementptr inbounds %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 95
  br label %for.body333

for.body333:                                      ; preds = %for.end408.for.body333_crit_edge, %if.end281
  %indvars.iv595 = phi i32 [ 0, %if.end281 ], [ %indvars.iv.next596, %for.end408.for.body333_crit_edge ]
  %arrayidx338 = getelementptr [2 x [4 x [4 x i32]]], ptr @tonga_clock_stretcher_ddt_table, i32 0, i32 %., i32 %indvars.iv595, i32 2
  %123 = ptrtoint ptr %arrayidx338 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx338, align 4
  %conv339 = trunc i32 %124 to i8
  %arrayidx342 = getelementptr [4 x %struct.SMU_ClockStretcherDataTableEntry], ptr %ClockStretcherDataTable, i32 0, i32 %indvars.iv595
  %125 = ptrtoint ptr %arrayidx342 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv339, ptr %arrayidx342, align 4
  %arrayidx347 = getelementptr [2 x [4 x [4 x i32]]], ptr @tonga_clock_stretcher_ddt_table, i32 0, i32 %., i32 %indvars.iv595, i32 3
  %126 = ptrtoint ptr %arrayidx347 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx347, align 4
  %conv348 = trunc i32 %127 to i8
  %maxVID = getelementptr [4 x %struct.SMU_ClockStretcherDataTableEntry], ptr %ClockStretcherDataTable, i32 0, i32 %indvars.iv595, i32 1
  %128 = ptrtoint ptr %maxVID to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv348, ptr %maxVID, align 1
  %129 = ptrtoint ptr %GraphicsDpmLevelCount to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %GraphicsDpmLevelCount, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %cmp359591.not = icmp eq i8 %130, 0
  br i1 %cmp359591.not, label %for.body333.for.end408_crit_edge, label %for.body361.lr.ph

for.body333.for.end408_crit_edge:                 ; preds = %for.body333
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end408

for.body361.lr.ph:                                ; preds = %for.body333
  %arrayidx337 = getelementptr [2 x [4 x [4 x i32]]], ptr @tonga_clock_stretcher_ddt_table, i32 0, i32 %., i32 %indvars.iv595
  %131 = ptrtoint ptr %arrayidx337 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx337, align 4
  %mul372 = mul i32 %132, 100
  %arrayidx383 = getelementptr [2 x [4 x [4 x i32]]], ptr @tonga_clock_stretcher_ddt_table, i32 0, i32 %., i32 %indvars.iv595, i32 1
  %setting402 = getelementptr [4 x %struct.SMU_ClockStretcherDataTableEntry], ptr %ClockStretcherDataTable, i32 0, i32 %indvars.iv595, i32 2
  br label %for.body361

for.body361:                                      ; preds = %if.end392.for.body361_crit_edge, %for.body361.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body361.lr.ph ], [ %indvars.iv.next, %if.end392.for.body361_crit_edge ]
  %SclkFrequency366 = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 1, i32 35, i32 %indvars.iv, i32 1
  %133 = ptrtoint ptr %SclkFrequency366 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %SclkFrequency366, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %mul372)
  %cmp373.not = icmp ult i32 %134, %mul372
  br i1 %cmp373.not, label %for.body361.if.end392_crit_edge, label %if.then375

for.body361.if.end392_crit_edge:                  ; preds = %for.body361
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end392

if.then375:                                       ; preds = %for.body361
  call void @__sanitizer_cov_trace_pc() #8
  %135 = ptrtoint ptr %arrayidx383 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx383, align 4
  %mul384 = mul i32 %136, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %mul384)
  %cmp385 = icmp ult i32 %134, %mul384
  %spec.select = select i1 %cmp385, i32 3, i32 2
  br label %if.end392

if.end392:                                        ; preds = %if.then375, %for.body361.if.end392_crit_edge
  %cks_setting.0 = phi i32 [ 0, %for.body361.if.end392_crit_edge ], [ %spec.select, %if.then375 ]
  %mul395 = shl nuw nsw i32 %indvars.iv, 1
  %shl396 = shl i32 %cks_setting.0, %mul395
  %137 = ptrtoint ptr %setting402 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %setting402, align 2
  %139 = trunc i32 %shl396 to i16
  %conv405 = or i16 %138, %139
  store i16 %conv405, ptr %setting402, align 2
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %140 = ptrtoint ptr %GraphicsDpmLevelCount to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %GraphicsDpmLevelCount, align 4
  %142 = zext i8 %141 to i32
  %cmp359 = icmp ult i32 %indvars.iv.next, %142
  br i1 %cmp359, label %if.end392.for.body361_crit_edge, label %if.end392.for.end408_crit_edge

if.end392.for.end408_crit_edge:                   ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end408

if.end392.for.body361_crit_edge:                  ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body361

for.end408:                                       ; preds = %if.end392.for.end408_crit_edge, %for.body333.for.end408_crit_edge
  %indvars.iv.next596 = add nuw nsw i32 %indvars.iv595, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next596, 4
  br i1 %exitcond.not, label %for.end423, label %for.end408.for.body333_crit_edge

for.end408.for.body333_crit_edge:                 ; preds = %for.end408
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body333

for.end423:                                       ; preds = %for.end408
  call void @__sanitizer_cov_trace_pc() #8
  %143 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %device5, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 4
  %read_ind_register426 = getelementptr inbounds %struct.cgs_ops, ptr %146, i32 0, i32 2
  %147 = ptrtoint ptr %read_ind_register426 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %read_ind_register426, align 4
  %call428 = tail call i32 %148(ptr noundef %144, i32 noundef 1, i32 noundef -1071643824) #6
  %and429 = and i32 %call428, -2
  %149 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %device5, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %150, align 4
  %write_ind_register432 = getelementptr inbounds %struct.cgs_ops, ptr %152, i32 0, i32 3
  %153 = ptrtoint ptr %write_ind_register432 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %write_ind_register432, align 4
  tail call void %154(ptr noundef %150, i32 noundef 1, i32 noundef -1071643824, i32 noundef %and429) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end423, %do.end, %if.else208.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end423 ], [ -22, %do.end ], [ -22, %if.else208.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tonga_populate_vr_config(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef %table) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %vdd_gfx_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %vdd_gfx_control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vdd_gfx_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %if.else7

if.then:                                          ; preds = %entry
  %VRConfig = getelementptr inbounds %struct.SMU72_Discrete_DpmTable, ptr %table, i32 0, i32 4
  %4 = ptrtoint ptr %VRConfig to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %VRConfig, align 1
  %or = or i32 %5, 256
  store i32 %or, ptr %VRConfig, align 1
  %voltage_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %voltage_control to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %voltage_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp1 = icmp eq i32 %7, 2
  br i1 %cmp1, label %if.then3, label %do.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %or6 = or i32 %5, 258
  %8 = ptrtoint ptr %VRConfig to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %or6, ptr %VRConfig, align 1
  br label %if.end26

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114) #10
  br label %if.end26

if.else7:                                         ; preds = %entry
  %voltage_control12 = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %voltage_control12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %voltage_control12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp13 = icmp eq i32 %10, 2
  br i1 %cmp13, label %if.then15, label %do.end22

if.then15:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #8
  %VRConfig10 = getelementptr inbounds %struct.SMU72_Discrete_DpmTable, ptr %table, i32 0, i32 4
  %11 = ptrtoint ptr %VRConfig10 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %VRConfig10, align 1
  %or18 = or i32 %12, 1
  store i32 %or18, ptr %VRConfig10, align 1
  br label %if.end26

do.end22:                                         ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #8
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117) #10
  br label %if.end26

if.end26:                                         ; preds = %do.end22, %if.then15, %do.end, %if.then3
  %vddci_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 40
  %13 = ptrtoint ptr %vddci_control to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vddci_control, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %14, label %if.end26.if.end44_crit_edge [
    i32 2, label %if.end26.if.end44.sink.split_crit_edge
    i32 1, label %if.then38
  ]

if.end26.if.end44.sink.split_crit_edge:           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.sink.split

if.end26.if.end44_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then38:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.sink.split

if.end44.sink.split:                              ; preds = %if.then38, %if.end26.if.end44.sink.split_crit_edge
  %.sink1 = phi i32 [ 196608, %if.then38 ], [ 131072, %if.end26.if.end44.sink.split_crit_edge ]
  %VRConfig32 = getelementptr inbounds %struct.SMU72_Discrete_DpmTable, ptr %table, i32 0, i32 4
  %16 = ptrtoint ptr %VRConfig32 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %VRConfig32, align 1
  %or42 = or i32 %17, %.sink1
  store i32 %or42, ptr %VRConfig32, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.end44.sink.split, %if.end26.if.end44_crit_edge
  %mvdd_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 23
  %18 = ptrtoint ptr %mvdd_control to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mvdd_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp45 = icmp eq i32 %19, 1
  br i1 %cmp45, label %if.then47, label %if.end44.if.end52_crit_edge

if.end44.if.end52_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %VRConfig50 = getelementptr inbounds %struct.SMU72_Discrete_DpmTable, ptr %table, i32 0, i32 4
  %20 = ptrtoint ptr %VRConfig50 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %VRConfig50, align 1
  %or51 = or i32 %21, 67108864
  store i32 %or51, ptr %VRConfig50, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %if.end44.if.end52_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @atomctrl_get_pp_assign_pin(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tonga_init_arb_table_index(ptr noundef %hwmgr) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #6
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp, align 4, !annotation !369
  %arb_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %arb_table_start to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arb_table_start, align 4
  %call = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef %4, ptr noundef nonnull %tmp, i32 noundef 262144) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tmp, align 4
  %and = and i32 %6, 16777215
  %or = or i32 %and, 184549376
  store i32 %or, ptr %tmp, align 4
  %7 = ptrtoint ptr %arb_table_start to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arb_table_start, align 4
  %call3 = call i32 @smu7_write_smc_sram_dword(ptr noundef %hwmgr, i32 noundef %8, i32 noundef %or, i32 noundef 262144) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tonga_populate_pm_fuses(ptr noundef %hwmgr) unnamed_addr #0 align 64 {
entry:
  %temp.i = alloca i32, align 4
  %pm_fuse_table_offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pm_fuse_table_offset) #6
  %2 = ptrtoint ptr %pm_fuse_table_offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pm_fuse_table_offset, align 4, !annotation !369
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %call1 = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131148, ptr noundef nonnull %pm_fuse_table_offset, i32 noundef 262144) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end10, label %do.body

do.body:                                          ; preds = %if.then
  %call3 = call i32 @___ratelimit(ptr noundef nonnull @tonga_populate_pm_fuses._rs, ptr noundef nonnull @__func__.tonga_populate_pm_fuses) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.then
  %5 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smu_backend, align 4
  %power_tune_defaults.i = getelementptr inbounds %struct.tonga_smumgr, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %power_tune_defaults.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %power_tune_defaults.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4
  %power_tune_table.i = getelementptr inbounds %struct.tonga_smumgr, ptr %6, i32 0, i32 3
  %11 = ptrtoint ptr %power_tune_table.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %power_tune_table.i, align 4
  %svi_load_line_vddC.i = getelementptr inbounds %struct.tonga_pt_defaults, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %svi_load_line_vddC.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %svi_load_line_vddC.i, align 1
  %SviLoadLineVddC.i = getelementptr inbounds %struct.tonga_smumgr, ptr %6, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %SviLoadLineVddC.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %SviLoadLineVddC.i, align 1
  %SviLoadLineTrimVddC.i = getelementptr inbounds %struct.tonga_smumgr, ptr %6, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %SviLoadLineTrimVddC.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %SviLoadLineTrimVddC.i, align 2
  %SviLoadLineOffsetVddC.i = getelementptr inbounds %struct.tonga_smumgr, ptr %6, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %SviLoadLineOffsetVddC.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %SviLoadLineOffsetVddC.i, align 1
  %17 = load ptr, ptr %smu_backend, align 4
  %power_tune_defaults.i2 = getelementptr inbounds %struct.tonga_smumgr, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %power_tune_defaults.i2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %power_tune_defaults.i2, align 8
  %pptable.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %20 = ptrtoint ptr %pptable.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pptable.i, align 4
  %cac_dtp_table.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %cac_dtp_table.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cac_dtp_table.i, align 4
  %usTDC.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %usTDC.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %usTDC.i, align 4
  %mul.i = shl i16 %25, 8
  %TDC_VDDC_PkgLimit.i = getelementptr inbounds %struct.tonga_smumgr, ptr %17, i32 0, i32 3, i32 4
  %26 = ptrtoint ptr %TDC_VDDC_PkgLimit.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %mul.i, ptr %TDC_VDDC_PkgLimit.i, align 4
  %tdc_vddc_throttle_release_limit_perc.i = getelementptr inbounds %struct.tonga_pt_defaults, ptr %19, i32 0, i32 2
  %27 = ptrtoint ptr %tdc_vddc_throttle_release_limit_perc.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tdc_vddc_throttle_release_limit_perc.i, align 2
  %TDC_VDDC_ThrottleReleaseLimitPerc.i = getelementptr inbounds %struct.tonga_smumgr, ptr %17, i32 0, i32 3, i32 5
  %29 = ptrtoint ptr %TDC_VDDC_ThrottleReleaseLimitPerc.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %TDC_VDDC_ThrottleReleaseLimitPerc.i, align 2
  %tdc_mawt.i = getelementptr inbounds %struct.tonga_pt_defaults, ptr %19, i32 0, i32 3
  %30 = ptrtoint ptr %tdc_mawt.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tdc_mawt.i, align 1
  %TDC_MAWt.i = getelementptr inbounds %struct.tonga_smumgr, ptr %17, i32 0, i32 3, i32 6
  %32 = ptrtoint ptr %TDC_MAWt.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %TDC_MAWt.i, align 1
  %33 = ptrtoint ptr %pm_fuse_table_offset to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pm_fuse_table_offset, align 4
  %35 = load ptr, ptr %smu_backend, align 4
  %power_tune_defaults.i4 = getelementptr inbounds %struct.tonga_smumgr, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %power_tune_defaults.i4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %power_tune_defaults.i4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #6
  %38 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %temp.i, align 4, !annotation !369
  %add.i = add i32 %34, 8
  %call.i = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef %add.i, ptr noundef nonnull %temp.i, i32 noundef 262144) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end58, label %do.body.i

do.body.i:                                        ; preds = %if.end10
  %call1.i = call i32 @___ratelimit(ptr noundef nonnull @tonga_populate_dw8._rs, ptr noundef nonnull @__func__.tonga_populate_dw8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body.i.do.body46_crit_edge, label %do.end.i

do.body.i.do.body46_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body46

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.152) #10
  br label %do.body46

do.body46:                                        ; preds = %do.end.i, %do.body.i.do.body46_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #6
  %call47 = call i32 @___ratelimit(ptr noundef nonnull @tonga_populate_pm_fuses._rs.128, ptr noundef nonnull @__func__.tonga_populate_pm_fuses) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %do.body46.cleanup_crit_edge, label %do.body46.cleanup.sink.split_crit_edge

do.body46.cleanup.sink.split_crit_edge:           ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.body46.cleanup_crit_edge:                      ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end58:                                         ; preds = %if.end10
  %tdc_waterfall_ctl.i = getelementptr inbounds %struct.tonga_pt_defaults, ptr %37, i32 0, i32 4
  %39 = ptrtoint ptr %tdc_waterfall_ctl.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %tdc_waterfall_ctl.i, align 4
  %TdcWaterfallCtl.i = getelementptr inbounds %struct.tonga_smumgr, ptr %35, i32 0, i32 3, i32 7
  %41 = ptrtoint ptr %TdcWaterfallCtl.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %TdcWaterfallCtl.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #6
  %42 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %smu_backend, align 4
  %uglygep.i = getelementptr i8, ptr %43, i32 2088
  %44 = call ptr @memset(ptr %uglygep.i, i32 0, i32 16)
  %45 = load ptr, ptr %smu_backend, align 4
  %usFanOutputSensitivity.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 14
  %46 = ptrtoint ptr %usFanOutputSensitivity.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %usFanOutputSensitivity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %47)
  %48 = icmp slt i16 %47, 1
  br i1 %48, label %if.then.i, label %if.end58.tonga_populate_fuzzy_fan.exit_crit_edge

if.end58.tonga_populate_fuzzy_fan.exit_crit_edge: ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %tonga_populate_fuzzy_fan.exit

if.then.i:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %usDefaultFanOutputSensitivity.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 15
  %49 = ptrtoint ptr %usDefaultFanOutputSensitivity.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %usDefaultFanOutputSensitivity.i, align 2
  %51 = ptrtoint ptr %usFanOutputSensitivity.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %usFanOutputSensitivity.i, align 4
  br label %tonga_populate_fuzzy_fan.exit

tonga_populate_fuzzy_fan.exit:                    ; preds = %if.then.i, %if.end58.tonga_populate_fuzzy_fan.exit_crit_edge
  %52 = ptrtoint ptr %usFanOutputSensitivity.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %usFanOutputSensitivity.i, align 4
  %FuzzyFan_PwmSetDelta.i = getelementptr inbounds %struct.tonga_smumgr, ptr %45, i32 0, i32 3, i32 14
  %54 = ptrtoint ptr %FuzzyFan_PwmSetDelta.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %FuzzyFan_PwmSetDelta.i, align 4
  %55 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %smu_backend, align 4
  %uglygep.i8 = getelementptr i8, ptr %56, i32 2112
  %57 = call ptr @memset(ptr %uglygep.i8, i32 0, i32 16)
  %58 = load ptr, ptr %smu_backend, align 4
  %59 = ptrtoint ptr %pptable.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pptable.i, align 4
  %BapmVddCBaseLeakageHiSidd.i = getelementptr inbounds %struct.tonga_smumgr, ptr %58, i32 0, i32 3, i32 20
  %BapmVddCBaseLeakageLoSidd.i = getelementptr inbounds %struct.tonga_smumgr, ptr %58, i32 0, i32 3, i32 21
  %cac_dtp_table.i11 = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %60, i32 0, i32 12
  %61 = ptrtoint ptr %cac_dtp_table.i11 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cac_dtp_table.i11, align 4
  %usHighCACLeakage.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %62, i32 0, i32 6
  %63 = ptrtoint ptr %usHighCACLeakage.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %usHighCACLeakage.i, align 4
  %65 = udiv i16 %64, 100
  %mul.i12 = shl i16 %65, 8
  %usLowCACLeakage.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %62, i32 0, i32 5
  %66 = ptrtoint ptr %usLowCACLeakage.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %usLowCACLeakage.i, align 2
  %68 = udiv i16 %67, 100
  %mul5.i = shl i16 %68, 8
  %69 = ptrtoint ptr %BapmVddCBaseLeakageHiSidd.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %mul.i12, ptr %BapmVddCBaseLeakageHiSidd.i, align 4
  %70 = ptrtoint ptr %BapmVddCBaseLeakageLoSidd.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %mul5.i, ptr %BapmVddCBaseLeakageLoSidd.i, align 2
  %71 = ptrtoint ptr %pm_fuse_table_offset to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pm_fuse_table_offset, align 4
  %power_tune_table = getelementptr inbounds %struct.tonga_smumgr, ptr %1, i32 0, i32 3
  %call122 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %72, ptr noundef %power_tune_table, i32 noundef 60, i32 noundef 262144) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %tonga_populate_fuzzy_fan.exit.cleanup_crit_edge, label %do.body125

tonga_populate_fuzzy_fan.exit.cleanup_crit_edge:  ; preds = %tonga_populate_fuzzy_fan.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body125:                                       ; preds = %tonga_populate_fuzzy_fan.exit
  %call126 = call i32 @___ratelimit(ptr noundef nonnull @tonga_populate_pm_fuses._rs.148, ptr noundef nonnull @__func__.tonga_populate_pm_fuses) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %do.body125.cleanup_crit_edge, label %do.body125.cleanup.sink.split_crit_edge

do.body125.cleanup.sink.split_crit_edge:          ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.body125.cleanup_crit_edge:                     ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body125.cleanup.sink.split_crit_edge, %do.body46.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %.str.151.sink = phi ptr [ @.str.119, %do.body.cleanup.sink.split_crit_edge ], [ @.str.131, %do.body46.cleanup.sink.split_crit_edge ], [ @.str.151, %do.body125.cleanup.sink.split_crit_edge ]
  %call133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %.str.151.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body125.cleanup_crit_edge, %tonga_populate_fuzzy_fan.exit.cleanup_crit_edge, %do.body46.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pm_fuse_table_offset) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tonga_populate_initial_mc_reg_table(ptr noundef %hwmgr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %mc_regs = getelementptr inbounds %struct.tonga_smumgr, ptr %1, i32 0, i32 5
  %2 = call ptr @memset(ptr %mc_regs, i32 0, i32 324)
  %3 = load ptr, ptr %smu_backend, align 4
  %mc_reg_table1.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %mc_reg_table1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mc_reg_table1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp45.not.i = icmp eq i8 %5, 0
  br i1 %cmp45.not.i, label %entry.do.end9_crit_edge, label %for.body.lr.ph.i

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

for.body.lr.ph.i:                                 ; preds = %entry
  %validflag.i = getelementptr inbounds %struct.tonga_smumgr, ptr %3, i32 0, i32 6, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %j.047.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc25.i, %for.inc.i.for.body.i_crit_edge ]
  %i.046.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %i.1.i, %for.inc.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %validflag.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %validflag.i, align 2
  %conv4.i = zext i16 %7 to i32
  %shl.i = shl nuw i32 1, %j.047.i
  %and.i = and i32 %shl.i, %conv4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %do.body.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

do.body.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.046.i)
  %cmp5.i = icmp ult i32 %i.046.i, 16
  br i1 %cmp5.i, label %do.end14.i, label %if.then7.i

if.then7.i:                                       ; preds = %do.body.i
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @tonga_populate_mc_reg_address._rs, ptr noundef nonnull @__func__.tonga_populate_mc_reg_address) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %if.then7.i.if.then_crit_edge, label %do.end.i

if.then7.i.if.then_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

do.end.i:                                         ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.158) #10
  br label %if.then

do.end14.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 6, i32 4, i32 %j.047.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i, align 4
  %arrayidx16.i = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 5, i32 2, i32 %i.046.i
  %10 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %arrayidx16.i, align 1
  %s1.i = getelementptr %struct.tonga_smumgr, ptr %3, i32 0, i32 6, i32 4, i32 %j.047.i, i32 1
  %11 = ptrtoint ptr %s1.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %s1.i, align 2
  %s123.i = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 5, i32 2, i32 %i.046.i, i32 1
  %13 = ptrtoint ptr %s123.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %s123.i, align 1
  %inc.i = add nuw nsw i32 %i.046.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end14.i, %for.body.i.for.inc.i_crit_edge
  %i.1.i = phi i32 [ %inc.i, %do.end14.i ], [ %i.046.i, %for.body.i.for.inc.i_crit_edge ]
  %inc25.i = add nuw nsw i32 %j.047.i, 1
  %14 = ptrtoint ptr %mc_reg_table1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mc_reg_table1.i, align 8
  %conv.i = zext i8 %15 to i32
  %cmp.i = icmp ult i32 %inc25.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.end9_crit_edge

for.inc.i.do.end9_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.then:                                          ; preds = %do.end.i, %if.then7.i.if.then_crit_edge
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @tonga_populate_initial_mc_reg_table._rs, ptr noundef nonnull @__func__.tonga_populate_initial_mc_reg_table) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.153) #10
  br label %cleanup

do.end9:                                          ; preds = %for.inc.i.do.end9_crit_edge, %entry.do.end9_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %entry.do.end9_crit_edge ], [ %i.1.i, %for.inc.i.do.end9_crit_edge ]
  %conv26.i = trunc i32 %i.0.lcssa.i to i8
  %16 = ptrtoint ptr %mc_regs to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv26.i, ptr %mc_regs, align 1
  %backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %17 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %backend.i, align 4
  %mclk_table.i = getelementptr inbounds %struct.smu7_dpm_table, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %mclk_table.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mclk_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp1.not.i = icmp eq i32 %20, 0
  br i1 %cmp1.not.i, label %do.end9.tonga_convert_mc_reg_table_to_smc.exit_crit_edge, label %do.end9.for.body.i41_crit_edge

do.end9.for.body.i41_crit_edge:                   ; preds = %do.end9
  br label %for.body.i41

do.end9.tonga_convert_mc_reg_table_to_smc.exit_crit_edge: ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %tonga_convert_mc_reg_table_to_smc.exit

for.body.i41:                                     ; preds = %tonga_convert_mc_reg_table_entry_to_smc.exit.i.for.body.i41_crit_edge, %do.end9.for.body.i41_crit_edge
  %i.02.i = phi i32 [ %inc.i42, %tonga_convert_mc_reg_table_entry_to_smc.exit.i.for.body.i41_crit_edge ], [ 0, %do.end9.for.body.i41_crit_edge ]
  %value.i = getelementptr %struct.smu7_dpm_table, ptr %18, i32 0, i32 1, i32 1, i32 %i.02.i, i32 1
  %21 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %value.i, align 4
  %arrayidx4.i = getelementptr %struct.tonga_smumgr, ptr %1, i32 0, i32 5, i32 3, i32 %i.02.i
  %23 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %smu_backend, align 4
  %num_entries.i.i = getelementptr inbounds %struct.tonga_smumgr, ptr %24, i32 0, i32 6, i32 1
  %25 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %num_entries.i.i, align 1
  %conv.i.i = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp1.not.i.i = icmp eq i8 %26, 0
  br i1 %cmp1.not.i.i, label %for.body.i41.for.end.thread.i.i_crit_edge, label %for.body.i41.for.body.i.i_crit_edge

for.body.i41.for.body.i.i_crit_edge:              ; preds = %for.body.i41
  br label %for.body.i.i

for.body.i41.for.end.thread.i.i_crit_edge:        ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i41.for.body.i.i_crit_edge
  %i.02.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i41.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.tonga_smumgr, ptr %24, i32 0, i32 6, i32 3, i32 %i.02.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %22)
  %cmp3.not.i.i = icmp ult i32 %28, %22
  br i1 %cmp3.not.i.i, label %for.inc.i.i, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ %conv.i.i, %for.inc.i.i.for.end.i.i_crit_edge ], [ %i.02.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i.i, i32 %conv.i.i)
  %cmp8.i.i = icmp eq i32 %i.0.lcssa.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i.i)
  %cmp10.not.i.i = icmp eq i32 %i.0.lcssa.i.i, 0
  %dec.i.i = add nsw i32 %i.0.lcssa.i.i, -1
  br i1 %cmp10.not.i.i, label %for.end.i.i.for.end.thread.i.i_crit_edge, label %for.end.i.i._crit_edge

for.end.i.i._crit_edge:                           ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %29

for.end.i.i.for.end.thread.i.i_crit_edge:         ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread.i.i

for.end.thread.i.i:                               ; preds = %for.end.i.i.for.end.thread.i.i_crit_edge, %for.body.i41.for.end.thread.i.i_crit_edge
  %cmp813.i.i = phi i1 [ %cmp8.i.i, %for.end.i.i.for.end.thread.i.i_crit_edge ], [ true, %for.body.i41.for.end.thread.i.i_crit_edge ]
  br label %29

29:                                               ; preds = %for.end.thread.i.i, %for.end.i.i._crit_edge
  %cmp812.i.i = phi i1 [ %cmp813.i.i, %for.end.thread.i.i ], [ %cmp8.i.i, %for.end.i.i._crit_edge ]
  %i.0.lcssa10.i.i = phi i32 [ 0, %for.end.thread.i.i ], [ %i.0.lcssa.i.i, %for.end.i.i._crit_edge ]
  %30 = phi i32 [ 0, %for.end.thread.i.i ], [ %dec.i.i, %for.end.i.i._crit_edge ]
  %i.1.i.i = select i1 %cmp812.i.i, i32 %30, i32 %i.0.lcssa10.i.i
  %mc_reg_table.i.i = getelementptr inbounds %struct.tonga_smumgr, ptr %24, i32 0, i32 6
  %31 = ptrtoint ptr %mc_reg_table.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mc_reg_table.i.i, align 8
  %conv18.i.i = zext i8 %32 to i32
  %validflag.i.i = getelementptr inbounds %struct.tonga_smumgr, ptr %24, i32 0, i32 6, i32 2
  %33 = ptrtoint ptr %validflag.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %validflag.i.i, align 2
  %conv20.i.i = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp8.not.i.i.i = icmp eq i8 %32, 0
  br i1 %cmp8.not.i.i.i, label %.tonga_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge, label %.for.body.i.i.i_crit_edge

.for.body.i.i.i_crit_edge:                        ; preds = %29
  br label %for.body.i.i.i

.tonga_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge: ; preds = %29
  call void @__sanitizer_cov_trace_pc() #8
  br label %tonga_convert_mc_reg_table_entry_to_smc.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %.for.body.i.i.i_crit_edge
  %j.010.i.i.i = phi i32 [ %inc3.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %.for.body.i.i.i_crit_edge ]
  %i.09.i.i.i = phi i32 [ %i.1.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %.for.body.i.i.i_crit_edge ]
  %shl.i.i.i = shl nuw i32 1, %j.010.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, %conv20.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i.i = getelementptr %struct.tonga_smumgr, ptr %24, i32 0, i32 6, i32 3, i32 %i.1.i.i, i32 1, i32 %j.010.i.i.i
  %35 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i.i, align 4
  %arrayidx2.i.i.i = getelementptr [16 x i32], ptr %arrayidx4.i, i32 0, i32 %i.09.i.i.i
  %37 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %arrayidx2.i.i.i, align 1
  %inc.i.i.i = add i32 %i.09.i.i.i, 1
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %i.1.i.i.i = phi i32 [ %inc.i.i.i, %if.then.i.i.i ], [ %i.09.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge ]
  %inc3.i.i.i = add nuw nsw i32 %j.010.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc3.i.i.i, %conv18.i.i
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.tonga_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

for.inc.i.i.i.tonga_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tonga_convert_mc_reg_table_entry_to_smc.exit.i

tonga_convert_mc_reg_table_entry_to_smc.exit.i:   ; preds = %for.inc.i.i.i.tonga_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge, %.tonga_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge
  %inc.i42 = add nuw i32 %i.02.i, 1
  %38 = ptrtoint ptr %mclk_table.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mclk_table.i, align 4
  %cmp.i43 = icmp ult i32 %inc.i42, %39
  br i1 %cmp.i43, label %tonga_convert_mc_reg_table_entry_to_smc.exit.i.for.body.i41_crit_edge, label %tonga_convert_mc_reg_table_entry_to_smc.exit.i.tonga_convert_mc_reg_table_to_smc.exit_crit_edge

tonga_convert_mc_reg_table_entry_to_smc.exit.i.tonga_convert_mc_reg_table_to_smc.exit_crit_edge: ; preds = %tonga_convert_mc_reg_table_entry_to_smc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tonga_convert_mc_reg_table_to_smc.exit

tonga_convert_mc_reg_table_entry_to_smc.exit.i.for.body.i41_crit_edge: ; preds = %tonga_convert_mc_reg_table_entry_to_smc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i41

tonga_convert_mc_reg_table_to_smc.exit:           ; preds = %tonga_convert_mc_reg_table_entry_to_smc.exit.i.tonga_convert_mc_reg_table_to_smc.exit_crit_edge, %do.end9.tonga_convert_mc_reg_table_to_smc.exit_crit_edge
  %mc_reg_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %mc_reg_table_start to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mc_reg_table_start, align 4
  %call28 = tail call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %41, ptr noundef %mc_regs, i32 noundef 324, i32 noundef 262144) #6
  br label %cleanup

cleanup:                                          ; preds = %tonga_convert_mc_reg_table_to_smc.exit, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %tonga_convert_mc_reg_table_to_smc.exit ], [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ]
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_reference_clock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_engine_pll_dividers_vi(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @phm_get_voltage_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_dfs_pll_dividers_vi(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_find_boot_level(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_write_smc_sram_dword(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tonga_get_dependency_volt_by_clk(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef readonly %allowed_clock_voltage_table, i32 noundef %clock, ptr nocapture noundef writeonly %voltage, ptr nocapture noundef writeonly %mvdd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %2 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pptable, align 4
  %4 = ptrtoint ptr %allowed_clock_voltage_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %allowed_clock_voltage_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0128 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %allowed_clock_voltage_table, i32 0, i32 1, i32 %i.0128
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %clock)
  %cmp3.not = icmp ult i32 %7, %clock
  br i1 %cmp3.not, label %for.inc, label %if.then4

if.then4:                                         ; preds = %for.body
  %vddgfx_lookup_table = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %3, i32 0, i32 16
  %8 = ptrtoint ptr %vddgfx_lookup_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vddgfx_lookup_table, align 4
  %vddgfx = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %allowed_clock_voltage_table, i32 0, i32 1, i32 %i.0128, i32 6
  %10 = ptrtoint ptr %vddgfx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vddgfx, align 4
  %call = tail call zeroext i8 @phm_get_voltage_index(ptr noundef %9, i16 noundef zeroext %11) #6
  %VddGfx = getelementptr inbounds %struct.SMU_VoltageLevel, ptr %voltage, i32 0, i32 2
  %12 = ptrtoint ptr %VddGfx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call, ptr %VddGfx, align 1
  %vddc_lookup_table = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %3, i32 0, i32 15
  %13 = ptrtoint ptr %vddc_lookup_table to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vddc_lookup_table, align 4
  %vddc = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %allowed_clock_voltage_table, i32 0, i32 1, i32 %i.0128, i32 5
  %15 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vddc, align 2
  %call9 = tail call zeroext i8 @phm_get_voltage_index(ptr noundef %14, i16 noundef zeroext %16) #6
  %17 = ptrtoint ptr %voltage to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %call9, ptr %voltage, align 1
  %vddci = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %allowed_clock_voltage_table, i32 0, i32 1, i32 %i.0128, i32 7
  %18 = ptrtoint ptr %vddci to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vddci, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not = icmp eq i16 %19, 0
  %vddci_voltage_table17 = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 42
  br i1 %tobool.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %19 to i32
  br label %if.end24

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vddc, align 2
  %conv21 = zext i16 %21 to i32
  %sub = add nsw i32 %conv21, -200
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then12
  %sub.sink = phi i32 [ %sub, %if.else ], [ %conv, %if.then12 ]
  %call22 = tail call zeroext i8 @phm_get_voltage_id(ptr noundef %vddci_voltage_table17, i32 noundef %sub.sink) #6
  %22 = getelementptr inbounds %struct.SMU_VoltageLevel, ptr %voltage, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %call22, ptr %22, align 1
  %mvdd27 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %allowed_clock_voltage_table, i32 0, i32 1, i32 %i.0128, i32 8
  %24 = ptrtoint ptr %mvdd27 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %mvdd27, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool28.not = icmp eq i16 %25, 0
  br i1 %tobool28.not, label %if.end24.if.end34_crit_edge, label %if.then29

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %conv33 = zext i16 %25 to i32
  %26 = ptrtoint ptr %mvdd to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv33, ptr %mvdd, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.end24.if.end34_crit_edge
  %Phases = getelementptr inbounds %struct.SMU_VoltageLevel, ptr %voltage, i32 0, i32 3
  %27 = ptrtoint ptr %Phases to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %Phases, align 1
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0128, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %vddgfx_lookup_table36 = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %3, i32 0, i32 16
  %28 = ptrtoint ptr %vddgfx_lookup_table36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vddgfx_lookup_table36, align 4
  %sub38 = add i32 %5, -1
  %vddgfx40 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %allowed_clock_voltage_table, i32 0, i32 1, i32 %sub38, i32 6
  %30 = ptrtoint ptr %vddgfx40 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vddgfx40, align 4
  %call41 = tail call zeroext i8 @phm_get_voltage_index(ptr noundef %29, i16 noundef zeroext %31) #6
  %VddGfx42 = getelementptr inbounds %struct.SMU_VoltageLevel, ptr %voltage, i32 0, i32 2
  %32 = ptrtoint ptr %VddGfx42 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %call41, ptr %VddGfx42, align 1
  %vddc_lookup_table43 = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %3, i32 0, i32 15
  %33 = ptrtoint ptr %vddc_lookup_table43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vddc_lookup_table43, align 4
  %vddc47 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %allowed_clock_voltage_table, i32 0, i32 1, i32 %sub38, i32 5
  %35 = ptrtoint ptr %vddc47 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vddc47, align 2
  %call48 = tail call zeroext i8 @phm_get_voltage_index(ptr noundef %34, i16 noundef zeroext %36) #6
  %37 = ptrtoint ptr %voltage to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %call48, ptr %voltage, align 1
  %vddci53 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %allowed_clock_voltage_table, i32 0, i32 1, i32 %sub38, i32 7
  %38 = ptrtoint ptr %vddci53 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vddci53, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool54.not = icmp eq i16 %39, 0
  br i1 %tobool54.not, label %for.end.if.end64_crit_edge, label %if.then55

for.end.if.end64_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then55:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %vddci_voltage_table56 = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 42
  %conv61 = zext i16 %39 to i32
  %call62 = tail call zeroext i8 @phm_get_voltage_id(ptr noundef %vddci_voltage_table56, i32 noundef %conv61) #6
  %Vddci63 = getelementptr inbounds %struct.SMU_VoltageLevel, ptr %voltage, i32 0, i32 1
  %40 = ptrtoint ptr %Vddci63 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %call62, ptr %Vddci63, align 1
  br label %if.end64

if.end64:                                         ; preds = %if.then55, %for.end.if.end64_crit_edge
  %mvdd68 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %allowed_clock_voltage_table, i32 0, i32 1, i32 %sub38, i32 8
  %41 = ptrtoint ptr %mvdd68 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %mvdd68, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool69.not = icmp eq i16 %42, 0
  br i1 %tobool69.not, label %if.end64.cleanup_crit_edge, label %if.then70

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then70:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %conv75 = zext i16 %42 to i32
  %43 = ptrtoint ptr %mvdd to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv75, ptr %mvdd, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %if.end64.cleanup_crit_edge, %if.end34, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then70 ], [ 0, %if.end64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @smu7_get_sleep_divider_id_from_clock(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_engine_clock_spread_spectrum(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_memory_pll_dividers_si(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_mpll_reference_clock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_memory_clock_spread_spectrum(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_initialize_mc_reg_table(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_set_field_to_u32(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 166)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 166)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !120, !122, !124, !125, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !153, !154, !156, !157, !158, !159, !160, !162, !163, !164, !165, !166, !168, !169, !170, !171, !172, !174, !175, !176, !177, !178, !180, !181, !182, !183, !185, !186, !187, !188, !190, !191, !192, !194, !195, !196, !197, !198, !200, !201, !202, !203, !204, !206, !208, !210, !212, !213, !214, !215, !217, !218, !219, !221, !222, !223, !224, !225, !227, !228, !229, !230, !232, !233, !234, !235, !237, !238, !239, !240, !242, !243, !244, !245, !247, !248, !249, !250, !252, !253, !254, !255, !257, !258, !259, !260, !262, !263, !264, !265, !267, !268, !269, !270, !271, !273, !274, !275, !276, !277, !279, !280, !281, !282, !284, !285, !286, !287, !288, !290, !291, !292, !293, !295, !296, !297, !299, !300, !301, !302, !303, !305, !306, !307, !308, !310, !311, !312, !313, !314, !316, !317, !318, !319, !320, !322, !323, !324, !325, !326, !328, !329, !330, !331, !332, !334, !335, !336, !338, !339, !340, !341, !343, !344, !345, !347, !348, !349, !351, !352, !353, !354, !356, !357, !358}
!llvm.module.flags = !{!359, !360, !361, !362, !363, !364, !365, !366}
!llvm.ident = !{!367}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 3244, i32 10}
!2 = !{ptr @tonga_smu_funcs, !3, !"tonga_smu_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 3243, i32 29}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 144, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @tonga_start_in_protection_mode._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @tonga_start_in_protection_mode._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2592, i32 2}
!12 = !{ptr @tonga_update_sclk_threshold._rs, !11, !"_rs", i1 false, i1 false}
!13 = !{ptr @__func__.tonga_update_sclk_threshold, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @tonga_update_sclk_threshold._entry, !11, !"_entry", i1 false, i1 false}
!16 = !{ptr @tonga_update_sclk_threshold._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @tonga_update_sclk_threshold._rs.7, !19, !"_rs", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2597, i32 2}
!20 = !{ptr @tonga_update_sclk_threshold._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @tonga_update_sclk_threshold._entry_ptr.9, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @tonga_populate_memory_timing_parameters._rs, !24, !"_rs", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 1472, i32 2}
!25 = !{ptr @__func__.tonga_populate_memory_timing_parameters, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @tonga_populate_memory_timing_parameters._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @tonga_populate_memory_timing_parameters._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"_rs", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2260, i32 3}
!31 = !{ptr @__func__.tonga_init_smc_table, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @tonga_init_smc_table._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @tonga_init_smc_table._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"_rs", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2269, i32 2}
!37 = !{ptr @tonga_init_smc_table._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @tonga_init_smc_table._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = distinct !{null, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @tonga_init_smc_table._rs.17, !41, !"_rs", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2273, i32 2}
!42 = !{ptr @tonga_init_smc_table._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @tonga_init_smc_table._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @tonga_init_smc_table._rs.21, !46, !"_rs", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2277, i32 2}
!47 = !{ptr @tonga_init_smc_table._entry.22, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @tonga_init_smc_table._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @tonga_init_smc_table._rs.25, !51, !"_rs", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2281, i32 2}
!52 = !{ptr @tonga_init_smc_table._entry.26, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @tonga_init_smc_table._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @tonga_init_smc_table._rs.29, !56, !"_rs", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2285, i32 2}
!57 = !{ptr @tonga_init_smc_table._entry.30, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @tonga_init_smc_table._entry_ptr.31, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @tonga_init_smc_table._rs.33, !61, !"_rs", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2289, i32 2}
!62 = !{ptr @tonga_init_smc_table._entry.34, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @tonga_init_smc_table._entry_ptr.35, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.36, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @tonga_init_smc_table._rs.37, !66, !"_rs", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2297, i32 2}
!67 = !{ptr @tonga_init_smc_table._entry.38, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @tonga_init_smc_table._entry_ptr.39, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.40, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @tonga_init_smc_table._rs.41, !71, !"_rs", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2302, i32 2}
!72 = !{ptr @tonga_init_smc_table._entry.42, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @tonga_init_smc_table._entry_ptr.43, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.44, !71, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"_rs", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2306, i32 2}
!77 = !{ptr @tonga_init_smc_table._entry.46, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @tonga_init_smc_table._entry_ptr.47, !76, !"_entry_ptr", i1 false, i1 false}
!79 = distinct !{null, !76, !"<string literal>", i1 false, i1 false}
!80 = distinct !{null, !81, !"_rs", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2310, i32 2}
!82 = !{ptr @tonga_init_smc_table._entry.50, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @tonga_init_smc_table._entry_ptr.51, !81, !"_entry_ptr", i1 false, i1 false}
!84 = distinct !{null, !81, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @tonga_init_smc_table._rs.53, !86, !"_rs", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2316, i32 3}
!87 = !{ptr @tonga_init_smc_table._entry.54, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @tonga_init_smc_table._entry_ptr.55, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.56, !86, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @tonga_init_smc_table._rs.57, !91, !"_rs", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2346, i32 2}
!92 = !{ptr @tonga_init_smc_table._entry.58, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @tonga_init_smc_table._entry_ptr.59, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.60, !91, !"<string literal>", i1 false, i1 false}
!95 = distinct !{null, !96, !"_rs", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2355, i32 2}
!97 = !{ptr @tonga_init_smc_table._entry.62, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @tonga_init_smc_table._entry_ptr.63, !96, !"_entry_ptr", i1 false, i1 false}
!99 = distinct !{null, !96, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @tonga_init_smc_table._rs.65, !101, !"_rs", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2442, i32 2}
!102 = !{ptr @tonga_init_smc_table._entry.66, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @tonga_init_smc_table._entry_ptr.67, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.68, !101, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @tonga_init_smc_table._rs.69, !106, !"_rs", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2446, i32 2}
!107 = !{ptr @tonga_init_smc_table._entry.70, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @tonga_init_smc_table._entry_ptr.71, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.72, !106, !"<string literal>", i1 false, i1 false}
!110 = distinct !{null, !111, !"_rs", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2450, i32 2}
!112 = !{ptr @tonga_init_smc_table._entry.74, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @tonga_init_smc_table._entry_ptr.75, !111, !"_entry_ptr", i1 false, i1 false}
!114 = distinct !{null, !111, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @tonga_init_smc_table._rs.77, !116, !"_rs", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2454, i32 2}
!117 = !{ptr @tonga_init_smc_table._entry.78, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @tonga_init_smc_table._entry_ptr.79, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.80, !116, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @tonga_power_tune_data_set_array, !121, !"tonga_power_tune_data_set_array", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 64, i32 39}
!122 = distinct !{null, !123, !"_rs", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 452, i32 2}
!124 = !{ptr @__func__.tonga_populate_smc_voltage_tables, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @tonga_populate_smc_voltage_tables._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @tonga_populate_smc_voltage_tables._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = distinct !{null, !123, !"<string literal>", i1 false, i1 false}
!128 = distinct !{null, !129, !"_rs", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 457, i32 2}
!130 = !{ptr @tonga_populate_smc_voltage_tables._entry.83, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @tonga_populate_smc_voltage_tables._entry_ptr.84, !129, !"_entry_ptr", i1 false, i1 false}
!132 = distinct !{null, !129, !"<string literal>", i1 false, i1 false}
!133 = distinct !{null, !134, !"_rs", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 462, i32 2}
!135 = !{ptr @tonga_populate_smc_voltage_tables._entry.87, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @tonga_populate_smc_voltage_tables._entry_ptr.88, !134, !"_entry_ptr", i1 false, i1 false}
!137 = distinct !{null, !134, !"<string literal>", i1 false, i1 false}
!138 = distinct !{null, !139, !"_rs", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 467, i32 2}
!140 = !{ptr @tonga_populate_smc_voltage_tables._entry.91, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @tonga_populate_smc_voltage_tables._entry_ptr.92, !139, !"_entry_ptr", i1 false, i1 false}
!142 = distinct !{null, !139, !"<string literal>", i1 false, i1 false}
!143 = distinct !{null, !144, !"_rs", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 472, i32 2}
!145 = !{ptr @tonga_populate_smc_voltage_tables._entry.95, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @tonga_populate_smc_voltage_tables._entry_ptr.96, !144, !"_entry_ptr", i1 false, i1 false}
!147 = distinct !{null, !144, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @tonga_populate_smc_acpi_level._rs, !149, !"_rs", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 1201, i32 2}
!150 = !{ptr @__func__.tonga_populate_smc_acpi_level, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @tonga_populate_smc_acpi_level._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @tonga_populate_smc_acpi_level._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.98, !149, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @tonga_populate_mvdd_value._rs, !155, !"_rs", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 1162, i32 3}
!156 = !{ptr @__func__.tonga_populate_mvdd_value, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @tonga_populate_mvdd_value._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @tonga_populate_mvdd_value._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.99, !155, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @tonga_populate_smc_vce_level._rs, !161, !"_rs", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 1401, i32 3}
!162 = !{ptr @__func__.tonga_populate_smc_vce_level, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @tonga_populate_smc_vce_level._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @tonga_populate_smc_vce_level._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.100, !161, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @tonga_populate_smc_acp_level._rs, !167, !"_rs", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 1446, i32 3}
!168 = !{ptr @__func__.tonga_populate_smc_acp_level, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @tonga_populate_smc_acp_level._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @tonga_populate_smc_acp_level._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.101, !167, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @tonga_populate_smc_uvd_level._rs, !173, !"_rs", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 1344, i32 3}
!174 = !{ptr @__func__.tonga_populate_smc_uvd_level, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @tonga_populate_smc_uvd_level._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @tonga_populate_smc_uvd_level._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.102, !173, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @tonga_populate_smc_uvd_level._rs.103, !179, !"_rs", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 1352, i32 3}
!180 = !{ptr @tonga_populate_smc_uvd_level._entry.104, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @tonga_populate_smc_uvd_level._entry_ptr.105, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.106, !179, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.107, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 1539, i32 3}
!185 = !{ptr @.str.108, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @tonga_populate_smc_boot_level._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @tonga_populate_smc_boot_level._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.110, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 1551, i32 3}
!190 = !{ptr @tonga_populate_smc_boot_level._entry.109, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @tonga_populate_smc_boot_level._entry_ptr.111, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @tonga_populate_bapm_parameters_in_dpm_table._rs, !193, !"_rs", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 1843, i32 2}
!194 = !{ptr @__func__.tonga_populate_bapm_parameters_in_dpm_table, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @tonga_populate_bapm_parameters_in_dpm_table._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @tonga_populate_bapm_parameters_in_dpm_table._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.112, !193, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @tonga_populate_clock_stretcher_data_table._rs, !199, !"_rs", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 1661, i32 3}
!200 = !{ptr @__func__.tonga_populate_clock_stretcher_data_table, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @tonga_populate_clock_stretcher_data_table._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @tonga_populate_clock_stretcher_data_table._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.113, !199, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @tonga_clock_stretcher_lookup_table, !205, !"tonga_clock_stretcher_lookup_table", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 78, i32 23}
!206 = !{ptr @tonga_clock_stretch_amount_conversion, !207, !"tonga_clock_stretch_amount_conversion", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 92, i32 22}
!208 = !{ptr @tonga_clock_stretcher_ddt_table, !209, !"tonga_clock_stretcher_ddt_table", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 86, i32 23}
!210 = !{ptr @.str.114, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 1761, i32 4}
!212 = !{ptr @.str.115, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @tonga_populate_vr_config._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @tonga_populate_vr_config._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.117, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 1774, i32 4}
!217 = !{ptr @tonga_populate_vr_config._entry.116, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @tonga_populate_vr_config._entry_ptr.118, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @tonga_populate_pm_fuses._rs, !220, !"_rs", i1 false, i1 false}
!220 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2006, i32 4}
!221 = !{ptr @__func__.tonga_populate_pm_fuses, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @tonga_populate_pm_fuses._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @tonga_populate_pm_fuses._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.119, !220, !"<string literal>", i1 false, i1 false}
!225 = distinct !{null, !226, !"_rs", i1 false, i1 false}
!226 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2012, i32 4}
!227 = !{ptr @tonga_populate_pm_fuses._entry.121, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @tonga_populate_pm_fuses._entry_ptr.122, !226, !"_entry_ptr", i1 false, i1 false}
!229 = distinct !{null, !226, !"<string literal>", i1 false, i1 false}
!230 = distinct !{null, !231, !"_rs", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2017, i32 4}
!232 = !{ptr @tonga_populate_pm_fuses._entry.125, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @tonga_populate_pm_fuses._entry_ptr.126, !231, !"_entry_ptr", i1 false, i1 false}
!234 = distinct !{null, !231, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @tonga_populate_pm_fuses._rs.128, !236, !"_rs", i1 false, i1 false}
!236 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2022, i32 4}
!237 = !{ptr @tonga_populate_pm_fuses._entry.129, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @tonga_populate_pm_fuses._entry_ptr.130, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.131, !236, !"<string literal>", i1 false, i1 false}
!240 = distinct !{null, !241, !"_rs", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2028, i32 4}
!242 = !{ptr @tonga_populate_pm_fuses._entry.133, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @tonga_populate_pm_fuses._entry_ptr.134, !241, !"_entry_ptr", i1 false, i1 false}
!244 = distinct !{null, !241, !"<string literal>", i1 false, i1 false}
!245 = distinct !{null, !246, !"_rs", i1 false, i1 false}
!246 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2034, i32 4}
!247 = !{ptr @tonga_populate_pm_fuses._entry.137, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @tonga_populate_pm_fuses._entry_ptr.138, !246, !"_entry_ptr", i1 false, i1 false}
!249 = distinct !{null, !246, !"<string literal>", i1 false, i1 false}
!250 = distinct !{null, !251, !"_rs", i1 false, i1 false}
!251 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2041, i32 4}
!252 = !{ptr @tonga_populate_pm_fuses._entry.141, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @tonga_populate_pm_fuses._entry_ptr.142, !251, !"_entry_ptr", i1 false, i1 false}
!254 = distinct !{null, !251, !"<string literal>", i1 false, i1 false}
!255 = distinct !{null, !256, !"_rs", i1 false, i1 false}
!256 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2047, i32 4}
!257 = !{ptr @tonga_populate_pm_fuses._entry.145, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @tonga_populate_pm_fuses._entry_ptr.146, !256, !"_entry_ptr", i1 false, i1 false}
!259 = distinct !{null, !256, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @tonga_populate_pm_fuses._rs.148, !261, !"_rs", i1 false, i1 false}
!261 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2056, i32 4}
!262 = !{ptr @tonga_populate_pm_fuses._entry.149, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @tonga_populate_pm_fuses._entry_ptr.150, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.151, !261, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @tonga_populate_dw8._rs, !266, !"_rs", i1 false, i1 false}
!266 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 1920, i32 3}
!267 = !{ptr @__func__.tonga_populate_dw8, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @tonga_populate_dw8._entry, !266, !"_entry", i1 false, i1 false}
!269 = !{ptr @tonga_populate_dw8._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.152, !266, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @tonga_populate_initial_mc_reg_table._rs, !272, !"_rs", i1 false, i1 false}
!272 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2191, i32 2}
!273 = !{ptr @__func__.tonga_populate_initial_mc_reg_table, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @tonga_populate_initial_mc_reg_table._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @tonga_populate_initial_mc_reg_table._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.153, !272, !"<string literal>", i1 false, i1 false}
!277 = distinct !{null, !278, !"_rs", i1 false, i1 false}
!278 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2196, i32 2}
!279 = !{ptr @tonga_populate_initial_mc_reg_table._entry.155, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @tonga_populate_initial_mc_reg_table._entry_ptr.156, !278, !"_entry_ptr", i1 false, i1 false}
!281 = distinct !{null, !278, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @tonga_populate_mc_reg_address._rs, !283, !"_rs", i1 false, i1 false}
!283 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2072, i32 4}
!284 = !{ptr @__func__.tonga_populate_mc_reg_address, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @tonga_populate_mc_reg_address._entry, !283, !"_entry", i1 false, i1 false}
!286 = !{ptr @tonga_populate_mc_reg_address._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.158, !283, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @tonga_populate_all_graphic_levels._rs, !289, !"_rs", i1 false, i1 false}
!289 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 736, i32 3}
!290 = !{ptr @__func__.tonga_populate_all_graphic_levels, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @tonga_populate_all_graphic_levels._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @tonga_populate_all_graphic_levels._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.160, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 746, i32 4}
!295 = !{ptr @tonga_populate_all_graphic_levels._entry.159, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @tonga_populate_all_graphic_levels._entry_ptr.161, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @tonga_populate_single_graphic_level._rs, !298, !"_rs", i1 false, i1 false}
!298 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 638, i32 2}
!299 = !{ptr @__func__.tonga_populate_single_graphic_level, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @tonga_populate_single_graphic_level._entry, !298, !"_entry", i1 false, i1 false}
!301 = !{ptr @tonga_populate_single_graphic_level._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.162, !298, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @tonga_calculate_sclk_params._rs, !304, !"_rs", i1 false, i1 false}
!304 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 556, i32 2}
!305 = !{ptr @__func__.tonga_calculate_sclk_params, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @tonga_calculate_sclk_params._entry, !304, !"_entry", i1 false, i1 false}
!307 = !{ptr @tonga_calculate_sclk_params._entry_ptr, !304, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @tonga_populate_all_memory_levels._rs, !309, !"_rs", i1 false, i1 false}
!309 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 1108, i32 3}
!310 = !{ptr @__func__.tonga_populate_all_memory_levels, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @tonga_populate_all_memory_levels._entry, !309, !"_entry", i1 false, i1 false}
!312 = !{ptr @tonga_populate_all_memory_levels._entry_ptr, !309, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.163, !309, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @tonga_populate_single_memory_level._rs, !315, !"_rs", i1 false, i1 false}
!315 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 987, i32 3}
!316 = !{ptr @__func__.tonga_populate_single_memory_level, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @tonga_populate_single_memory_level._entry, !315, !"_entry", i1 false, i1 false}
!318 = !{ptr @tonga_populate_single_memory_level._entry_ptr, !315, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.164, !315, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @tonga_calculate_mclk_params._rs, !321, !"_rs", i1 false, i1 false}
!321 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 812, i32 2}
!322 = !{ptr @__func__.tonga_calculate_mclk_params, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @tonga_calculate_mclk_params._entry, !321, !"_entry", i1 false, i1 false}
!324 = !{ptr @tonga_calculate_mclk_params._entry_ptr, !321, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.165, !321, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @tonga_copy_vbios_smc_reg_table._rs, !327, !"_rs", i1 false, i1 false}
!327 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2950, i32 2}
!328 = !{ptr @__func__.tonga_copy_vbios_smc_reg_table, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @tonga_copy_vbios_smc_reg_table._entry, !327, !"_entry", i1 false, i1 false}
!330 = !{ptr @tonga_copy_vbios_smc_reg_table._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.166, !327, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @tonga_copy_vbios_smc_reg_table._rs.167, !333, !"_rs", i1 false, i1 false}
!333 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2952, i32 2}
!334 = !{ptr @tonga_copy_vbios_smc_reg_table._entry.168, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @tonga_copy_vbios_smc_reg_table._entry_ptr.169, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @tonga_set_mc_special_registers._rs, !337, !"_rs", i1 false, i1 false}
!337 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2982, i32 3}
!338 = !{ptr @__func__.tonga_set_mc_special_registers, !337, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @tonga_set_mc_special_registers._entry, !337, !"_entry", i1 false, i1 false}
!340 = !{ptr @tonga_set_mc_special_registers._entry_ptr, !337, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @tonga_set_mc_special_registers._rs.170, !342, !"_rs", i1 false, i1 false}
!342 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2999, i32 4}
!343 = !{ptr @tonga_set_mc_special_registers._entry.171, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @tonga_set_mc_special_registers._entry_ptr.172, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @tonga_set_mc_special_registers._rs.173, !346, !"_rs", i1 false, i1 false}
!346 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 3015, i32 5}
!347 = !{ptr @tonga_set_mc_special_registers._entry.174, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @tonga_set_mc_special_registers._entry_ptr.175, !346, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.176, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2646, i32 2}
!351 = !{ptr @.str.177, !350, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @tonga_get_offsetof._entry, !350, !"_entry", i1 false, i1 false}
!353 = !{ptr @tonga_get_offsetof._entry_ptr, !350, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.178, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/tonga_smumgr.c", i32 2670, i32 2}
!356 = !{ptr @.str.179, !355, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @tonga_get_mac_definition._entry, !355, !"_entry", i1 false, i1 false}
!358 = !{ptr @tonga_get_mac_definition._entry_ptr, !355, !"_entry_ptr", i1 false, i1 false}
!359 = !{i32 1, !"wchar_size", i32 2}
!360 = !{i32 1, !"min_enum_size", i32 4}
!361 = !{i32 8, !"branch-target-enforcement", i32 0}
!362 = !{i32 8, !"sign-return-address", i32 0}
!363 = !{i32 8, !"sign-return-address-all", i32 0}
!364 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!365 = !{i32 7, !"uwtable", i32 1}
!366 = !{i32 7, !"frame-pointer", i32 2}
!367 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!368 = !{i8 0, i8 2}
!369 = !{!"auto-init"}
!370 = !{i64 1225308, i64 1225335}
!371 = !{i64 1225818, i64 1225845, i64 1225879, i64 1225900}
