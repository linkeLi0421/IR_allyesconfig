; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/smumgr/iceland_smumgr.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c"
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
%struct.iceland_pt_defaults = type { i8, i8, i8, i8, i8, i8, i32, i32, [15 x i16], [15 x i16] }
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
%struct.cgs_firmware_info = type { i16, i16, i16, i32, i64, i32, ptr, i8 }
%struct.cgs_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.smu7_smumgr = type { %struct.smu7_buffer_entry, %struct.smu7_buffer_entry, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32 }
%struct.smu7_buffer_entry = type { i32, i64, ptr, ptr }
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
%struct.iceland_smumgr = type { %struct.smu7_smumgr, %struct.SMU71_Discrete_DpmTable, %struct.SMU71_Discrete_PmFuses, %struct.SMU71_Discrete_Ulv, ptr, %struct.SMU71_Discrete_MCRegisters, %struct.iceland_mc_reg_table }
%struct.SMU71_Discrete_DpmTable = type { %struct.SMU71_PIDController, %struct.SMU71_PIDController, %struct.SMU71_PIDController, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.SMU71_Discrete_VoltageLevel], [4 x %struct.SMU71_Discrete_VoltageLevel], [4 x %struct.SMU71_Discrete_VoltageLevel], i8, i8, i8, i8, [5 x i32], [8 x %struct.SMU71_Discrete_GraphicsLevel], %struct.SMU71_Discrete_MemoryLevel, [4 x %struct.SMU71_Discrete_MemoryLevel], [8 x %struct.SMU71_Discrete_LinkLevel], %struct.SMU71_Discrete_ACPILevel, i32, [32 x i32], i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, i16, i16, [5 x [3 x [1 x i16]]], [5 x [3 x [1 x i16]]], i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i32, i16, i16, i16, i16 }
%struct.SMU71_PIDController = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SMU71_Discrete_VoltageLevel = type { i16, i16, i16, i8, i8 }
%struct.SMU71_Discrete_GraphicsLevel = type { i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.SMU71_Discrete_MemoryLevel = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SMU71_Discrete_LinkLevel = type { i8, i8, i8, i8, i32, i32, i32 }
%struct.SMU71_Discrete_ACPILevel = type { i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SMU71_Discrete_PmFuses = type { [8 x i8], [8 x i8], [8 x i8], i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, [16 x i8], i16, i16, i16, i16, [16 x i8], i8, i8, [2 x i8], i16, i16 }
%struct.SMU71_Discrete_Ulv = type { i32, i32, i16, i8, i8, i32 }
%struct.SMU71_Discrete_MCRegisters = type { i8, [3 x i8], [16 x %struct.SMU71_Discrete_MCRegisterAddress], [4 x %struct.SMU71_Discrete_MCRegisterSet] }
%struct.SMU71_Discrete_MCRegisterAddress = type { i16, i16 }
%struct.SMU71_Discrete_MCRegisterSet = type { [16 x i32] }
%struct.iceland_mc_reg_table = type { i8, i8, i16, [16 x %struct.iceland_mc_reg_entry], [16 x %struct.SMU71_Discrete_MCRegisterAddress] }
%struct.iceland_mc_reg_entry = type { i32, [16 x i32] }
%struct.SMU71_Discrete_FanTable = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i8, i8 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.90, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.90 = type { ptr }
%struct.phm_clock_voltage_dependency_table = type { i32, [0 x %struct.phm_clock_voltage_dependency_record] }
%struct.phm_clock_voltage_dependency_record = type { i32, i32 }
%struct.pp_atomctrl_internal_ss_info = type { i32, i32, i32 }
%struct.phm_phase_shedding_limits_table = type { i32, [0 x %struct.phm_phase_shedding_limits_record] }
%struct.phm_phase_shedding_limits_record = type { i32, i32, i32 }
%struct.pp_atomctrl_memory_clock_param = type { %union.pp_atomctrl_s_mpll_fb_divider, i32, i32, i32, i32, i32, i32, i32 }
%union.pp_atomctrl_s_mpll_fb_divider = type { %struct.anon.116 }
%struct.anon.116 = type { i32 }
%struct.pp_atomctrl_mc_reg_table = type { i8, i8, [20 x %struct.pp_atomctrl_mc_reg_entry], [32 x %struct.pp_atomctrl_mc_register_address] }
%struct.pp_atomctrl_mc_reg_entry = type { i32, [32 x i32] }
%struct.pp_atomctrl_mc_register_address = type { i16, i8 }
%struct.SMU71_Discrete_MCArbDramTimingTable = type { [8 x [4 x %struct.SMU71_Discrete_MCArbDramTimingTableEntry]] }
%struct.SMU71_Discrete_MCArbDramTimingTableEntry = type { i32, i32, i8, [3 x i8] }
%struct.phm_cac_tdp_table = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8 }
%struct.phm_ppm_table = type { i8, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.phm_cac_leakage_table = type { i32, [0 x %union.phm_cac_leakage_record] }
%union.phm_cac_leakage_record = type { %struct.anon }
%struct.anon = type { i16, i32 }
%struct.anon.1 = type { i16, i16, i16 }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iceland_smu\00", [20 x i8] zeroinitializer }, align 32
@iceland_smu_funcs = dso_local constant { %struct.pp_smumgr_func, [48 x i8] } { %struct.pp_smumgr_func { ptr @.str, ptr @iceland_smu_init, ptr @smu7_smu_fini, ptr @iceland_start_smu, ptr @smu7_check_fw_load_finish, ptr @smu7_request_smu_load_fw, ptr @iceland_request_smu_load_specific_fw, ptr @smu7_get_argument, ptr @smu7_send_msg_to_smc, ptr @smu7_send_msg_to_smc_with_parameter, ptr null, ptr null, ptr null, ptr @iceland_process_firmware_header, ptr @iceland_update_sclk_threshold, ptr @iceland_thermal_setup_fan_table, ptr null, ptr @iceland_init_smc_table, ptr @iceland_populate_all_graphic_levels, ptr @iceland_populate_all_memory_levels, ptr @iceland_initialize_mc_reg_table, ptr @iceland_get_offsetof, ptr @iceland_get_mac_definition, ptr @iceland_is_dpm_running, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@iceland_smu_upload_firmware_image._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013amdgpu: [ powerplay ] SMC ucode is not 4 bytes aligned\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"iceland_smu_upload_firmware_image\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c\00", [61 x i8] zeroinitializer }, align 32
@iceland_smu_upload_firmware_image._entry_ptr = internal global ptr @iceland_smu_upload_firmware_image._entry, section ".printk_index", align 4
@iceland_smu_upload_firmware_image._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013amdgpu: [ powerplay ] SMC address is beyond the SMC RAM area\0A\00", [32 x i8] zeroinitializer }, align 32
@iceland_smu_upload_firmware_image._entry_ptr.6 = internal global ptr @iceland_smu_upload_firmware_image._entry.4, section ".printk_index", align 4
@iceland_upload_smc_firmware_data._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.iceland_upload_smc_firmware_data = private unnamed_addr constant [33 x i8] c"iceland_upload_smc_firmware_data\00", align 1
@iceland_upload_smc_firmware_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_upload_smc_firmware_data, ptr @.str.3, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\014amdgpu: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@iceland_upload_smc_firmware_data._entry_ptr = internal global ptr @iceland_upload_smc_firmware_data._entry, section ".printk_index", align 4
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"SMC address is beyond the SMC RAM area.\00", [56 x i8] zeroinitializer }, align 32
@iceland_upload_smc_firmware_data._rs.10 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@iceland_upload_smc_firmware_data._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_upload_smc_firmware_data, ptr @.str.3, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_upload_smc_firmware_data._entry_ptr.12 = internal global ptr @iceland_upload_smc_firmware_data._entry.11, section ".printk_index", align 4
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SMC size must be divisible by 4.\00", [63 x i8] zeroinitializer }, align 32
@iceland_update_sclk_threshold._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.iceland_update_sclk_threshold = private unnamed_addr constant [30 x i8] c"iceland_update_sclk_threshold\00", align 1
@iceland_update_sclk_threshold._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_update_sclk_threshold, ptr @.str.3, i32 2202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_update_sclk_threshold._entry_ptr = internal global ptr @iceland_update_sclk_threshold._entry, section ".printk_index", align 4
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to upload MC reg table!\00", [33 x i8] zeroinitializer }, align 32
@iceland_update_sclk_threshold._rs.15 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@iceland_update_sclk_threshold._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_update_sclk_threshold, ptr @.str.3, i32 2207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_update_sclk_threshold._entry_ptr.17 = internal global ptr @iceland_update_sclk_threshold._entry.16, section ".printk_index", align 4
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to program memory timing parameters!\00", [52 x i8] zeroinitializer }, align 32
@iceland_populate_memory_timing_parameters._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.iceland_populate_memory_timing_parameters = private unnamed_addr constant [42 x i8] c"iceland_populate_memory_timing_parameters\00", align 1
@iceland_populate_memory_timing_parameters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_memory_timing_parameters, ptr @.str.3, i32 1598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_memory_timing_parameters._entry_ptr = internal global ptr @iceland_populate_memory_timing_parameters._entry, section ".printk_index", align 4
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error calling VBIOS to set DRAM_TIMING.\00", [56 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.iceland_init_smc_table = private unnamed_addr constant [23 x i8] c"iceland_init_smc_table\00", align 1
@iceland_init_smc_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_init_smc_table, ptr @.str.3, i32 1960, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._entry_ptr = internal global ptr @iceland_init_smc_table._entry, section ".printk_index", align 4
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize ULV state!\00", [32 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_init_smc_table, ptr @.str.3, i32 1968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._entry_ptr.23 = internal global ptr @iceland_init_smc_table._entry.22, section ".printk_index", align 4
@iceland_init_smc_table._rs.25 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_init_smc_table, ptr @.str.3, i32 1972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._entry_ptr.27 = internal global ptr @iceland_init_smc_table._entry.26, section ".printk_index", align 4
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to initialize Graphics Level!\00", [59 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._rs.29 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_init_smc_table, ptr @.str.3, i32 1976, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._entry_ptr.31 = internal global ptr @iceland_init_smc_table._entry.30, section ".printk_index", align 4
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to initialize Memory Level!\00", [61 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._rs.33 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_init_smc_table, ptr @.str.3, i32 1980, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._entry_ptr.35 = internal global ptr @iceland_init_smc_table._entry.34, section ".printk_index", align 4
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialize ACPI Level!\00", [63 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_init_smc_table, ptr @.str.3, i32 1984, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._entry_ptr.39 = internal global ptr @iceland_init_smc_table._entry.38, section ".printk_index", align 4
@iceland_init_smc_table._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_init_smc_table, ptr @.str.3, i32 1988, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._entry_ptr.43 = internal global ptr @iceland_init_smc_table._entry.42, section ".printk_index", align 4
@iceland_init_smc_table._rs.45 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_init_smc_table, ptr @.str.3, i32 1994, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._entry_ptr.47 = internal global ptr @iceland_init_smc_table._entry.46, section ".printk_index", align 4
@.str.48 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to Write ARB settings for the initial state.\00", [44 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_init_smc_table, ptr @.str.3, i32 1998, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._entry_ptr.51 = internal global ptr @iceland_init_smc_table._entry.50, section ".printk_index", align 4
@iceland_init_smc_table._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_init_smc_table, ptr @.str.3, i32 2005, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._entry_ptr.55 = internal global ptr @iceland_init_smc_table._entry.54, section ".printk_index", align 4
@iceland_init_smc_table._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_init_smc_table, ptr @.str.3, i32 2008, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._entry_ptr.59 = internal global ptr @iceland_init_smc_table._entry.58, section ".printk_index", align 4
@iceland_init_smc_table._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_init_smc_table, ptr @.str.3, i32 2011, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._entry_ptr.63 = internal global ptr @iceland_init_smc_table._entry.62, section ".printk_index", align 4
@iceland_init_smc_table._rs.65 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_init_smc_table, ptr @.str.3, i32 2036, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._entry_ptr.67 = internal global ptr @iceland_init_smc_table._entry.66, section ".printk_index", align 4
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to populate SVI2 setting!\00", [63 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._rs.69 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_init_smc_table, ptr @.str.3, i32 2064, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._entry_ptr.71 = internal global ptr @iceland_init_smc_table._entry.70, section ".printk_index", align 4
@.str.72 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to upload dpm data to SMC memory!\00", [55 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._rs.73 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_init_smc_table, ptr @.str.3, i32 2076, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._entry_ptr.75 = internal global ptr @iceland_init_smc_table._entry.74, section ".printk_index", align 4
@.str.76 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to populate initialize MC Reg table!\00", [52 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._rs.77 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_init_smc_table, ptr @.str.3, i32 2080, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_init_smc_table._entry_ptr.79 = internal global ptr @iceland_init_smc_table._entry.78, section ".printk_index", align 4
@.str.80 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to  populate PM fuses to SMC memory!\00", [52 x i8] zeroinitializer }, align 32
@defaults_icelandxt = internal constant { %struct.iceland_pt_defaults, [52 x i8] } { %struct.iceland_pt_defaults { i8 1, i8 15, i8 -3, i8 25, i8 5, i8 45, i32 0, i32 0, [15 x i16] [i16 167, i16 0, i16 0, i16 181, i16 0, i16 0, i16 159, i16 0, i16 0, i16 214, i16 0, i16 0, i16 215, i16 0, i16 0], [15 x i16] [i16 490, i16 0, i16 0, i16 548, i16 0, i16 0, i16 606, i16 0, i16 0, i16 654, i16 0, i16 0, i16 683, i16 0, i16 0] }, [52 x i8] zeroinitializer }, align 32
@defaults_icelandpro = internal constant { %struct.iceland_pt_defaults, [52 x i8] } { %struct.iceland_pt_defaults { i8 1, i8 15, i8 -3, i8 25, i8 5, i8 45, i32 0, i32 0, [15 x i16] [i16 183, i16 0, i16 0, i16 195, i16 0, i16 0, i16 181, i16 0, i16 0, i16 234, i16 0, i16 0, i16 230, i16 0, i16 0], [15 x i16] [i16 490, i16 0, i16 0, i16 548, i16 0, i16 0, i16 606, i16 0, i16 0, i16 654, i16 0, i16 0, i16 683, i16 0, i16 0] }, [52 x i8] zeroinitializer }, align 32
@defaults_iceland = internal constant { %struct.iceland_pt_defaults, [52 x i8] } { %struct.iceland_pt_defaults { i8 1, i8 15, i8 -3, i8 25, i8 5, i8 45, i32 0, i32 720896, [15 x i16] [i16 121, i16 595, i16 605, i16 174, i16 114, i16 128, i16 131, i16 134, i16 111, i16 200, i16 201, i16 201, i16 47, i16 77, i16 97], [15 x i16] [i16 380, i16 370, i16 384, i16 444, i16 435, i16 445, i16 518, i16 512, i16 515, i16 605, i16 602, i16 597, i16 707, i16 709, i16 692] }, [52 x i8] zeroinitializer }, align 32
@iceland_initialize_power_tune_defaults._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.3, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014amdgpu: Unknown V.I. Device ID.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"iceland_initialize_power_tune_defaults\00", [57 x i8] zeroinitializer }, align 32
@iceland_initialize_power_tune_defaults._entry_ptr = internal global ptr @iceland_initialize_power_tune_defaults._entry, section ".printk_index", align 4
@__func__.iceland_populate_smc_voltage_tables = private unnamed_addr constant [36 x i8] c"iceland_populate_smc_voltage_tables\00", align 1
@iceland_populate_smc_voltage_tables._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_smc_voltage_tables, ptr @.str.3, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_smc_voltage_tables._entry_ptr = internal global ptr @iceland_populate_smc_voltage_tables._entry, section ".printk_index", align 4
@iceland_populate_smc_voltage_tables._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_smc_voltage_tables, ptr @.str.3, i32 705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_smc_voltage_tables._entry_ptr.86 = internal global ptr @iceland_populate_smc_voltage_tables._entry.85, section ".printk_index", align 4
@iceland_populate_smc_voltage_tables._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_smc_voltage_tables, ptr @.str.3, i32 709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_smc_voltage_tables._entry_ptr.90 = internal global ptr @iceland_populate_smc_voltage_tables._entry.89, section ".printk_index", align 4
@__func__.iceland_populate_smc_vddc_table = private unnamed_addr constant [32 x i8] c"iceland_populate_smc_vddc_table\00", align 1
@iceland_populate_smc_vddc_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_smc_vddc_table, ptr @.str.3, i32 629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_smc_vddc_table._entry_ptr = internal global ptr @iceland_populate_smc_vddc_table._entry, section ".printk_index", align 4
@iceland_get_std_voltage_value_sidd._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.iceland_get_std_voltage_value_sidd = private unnamed_addr constant [35 x i8] c"iceland_get_std_voltage_value_sidd\00", align 1
@iceland_get_std_voltage_value_sidd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_get_std_voltage_value_sidd, ptr @.str.3, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_get_std_voltage_value_sidd._entry_ptr = internal global ptr @iceland_get_std_voltage_value_sidd._entry, section ".printk_index", align 4
@.str.93 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"The SCLK/VDDC Dependency Table does not exist.\00", [49 x i8] zeroinitializer }, align 32
@iceland_get_std_voltage_value_sidd._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @__func__.iceland_get_std_voltage_value_sidd, ptr @.str.3, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014amdgpu: CAC Leakage Table does not exist, using vddc.\0A\00", [39 x i8] zeroinitializer }, align 32
@iceland_get_std_voltage_value_sidd._entry_ptr.96 = internal global ptr @iceland_get_std_voltage_value_sidd._entry.94, section ".printk_index", align 4
@iceland_get_std_voltage_value_sidd._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @__func__.iceland_get_std_voltage_value_sidd, ptr @.str.3, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [122 x i8], [38 x i8] } { [122 x i8] c"\014amdgpu: Index from SCLK/VDDC Dependency Table exceeds the CAC Leakage Table index, using maximum index from CAC table.\0A\00", [38 x i8] zeroinitializer }, align 32
@iceland_get_std_voltage_value_sidd._entry_ptr.99 = internal global ptr @iceland_get_std_voltage_value_sidd._entry.97, section ".printk_index", align 4
@iceland_get_std_voltage_value_sidd._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @__func__.iceland_get_std_voltage_value_sidd, ptr @.str.3, i32 581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [139 x i8], [53 x i8] } { [139 x i8] c"\014amdgpu: Index from SCLK/VDDC Dependency Table exceeds the CAC Leakage Table index in second look up, using maximum index from CAC table.\00", [53 x i8] zeroinitializer }, align 32
@iceland_get_std_voltage_value_sidd._entry_ptr.102 = internal global ptr @iceland_get_std_voltage_value_sidd._entry.100, section ".printk_index", align 4
@iceland_get_std_voltage_value_sidd._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @__func__.iceland_get_std_voltage_value_sidd, ptr @.str.3, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\014amdgpu: Unable to get std_vddc from SCLK/VDDC Dependency Table, using vddc.\0A\00", [49 x i8] zeroinitializer }, align 32
@iceland_get_std_voltage_value_sidd._entry_ptr.105 = internal global ptr @iceland_get_std_voltage_value_sidd._entry.103, section ".printk_index", align 4
@__func__.iceland_populate_smc_vdd_ci_table = private unnamed_addr constant [34 x i8] c"iceland_populate_smc_vdd_ci_table\00", align 1
@iceland_populate_smc_vdd_ci_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_smc_vdd_ci_table, ptr @.str.3, i32 656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_smc_vdd_ci_table._entry_ptr = internal global ptr @iceland_populate_smc_vdd_ci_table._entry, section ".printk_index", align 4
@__func__.iceland_populate_smc_mvdd_table = private unnamed_addr constant [32 x i8] c"iceland_populate_smc_mvdd_table\00", align 1
@iceland_populate_smc_mvdd_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_smc_mvdd_table, ptr @.str.3, i32 681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_smc_mvdd_table._entry_ptr = internal global ptr @iceland_populate_smc_mvdd_table._entry, section ".printk_index", align 4
@iceland_populate_ulv_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.iceland_populate_ulv_level = private unnamed_addr constant [27 x i8] c"iceland_populate_ulv_level\00", align 1
@iceland_populate_ulv_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_ulv_level, ptr @.str.3, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_ulv_level._entry_ptr = internal global ptr @iceland_populate_ulv_level._entry, section ".printk_index", align 4
@.str.108 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"can not get ULV voltage value\00", [34 x i8] zeroinitializer }, align 32
@iceland_populate_smc_acpi_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.iceland_populate_smc_acpi_level = private unnamed_addr constant [32 x i8] c"iceland_populate_smc_acpi_level\00", align 1
@iceland_populate_smc_acpi_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_smc_acpi_level, ptr @.str.3, i32 1454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_smc_acpi_level._entry_ptr = internal global ptr @iceland_populate_smc_acpi_level._entry, section ".printk_index", align 4
@.str.109 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Error retrieving Engine Clock dividers from VBIOS.\00", [45 x i8] zeroinitializer }, align 32
@iceland_populate_mvdd_value._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.iceland_populate_mvdd_value = private unnamed_addr constant [28 x i8] c"iceland_populate_mvdd_value\00", align 1
@iceland_populate_mvdd_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_mvdd_value, ptr @.str.3, i32 1413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_mvdd_value._entry_ptr = internal global ptr @iceland_populate_mvdd_value._entry, section ".printk_index", align 4
@.str.110 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MVDD Voltage is outside the supported range.\00", [51 x i8] zeroinitializer }, align 32
@iceland_populate_smc_boot_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.3, i32 1663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"\013amdgpu: VBIOS did not find boot engine clock value in dependency table. Using Graphics DPM level 0!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"iceland_populate_smc_boot_level\00", [32 x i8] zeroinitializer }, align 32
@iceland_populate_smc_boot_level._entry_ptr = internal global ptr @iceland_populate_smc_boot_level._entry, section ".printk_index", align 4
@iceland_populate_smc_boot_level._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.112, ptr @.str.3, i32 1673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\013amdgpu: VBIOS did not find boot engine clock value in dependency table. Using Memory DPM level 0!\0A\00", [59 x i8] zeroinitializer }, align 32
@iceland_populate_smc_boot_level._entry_ptr.115 = internal global ptr @iceland_populate_smc_boot_level._entry.113, section ".printk_index", align 4
@iceland_populate_smc_svi2_config._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.iceland_populate_smc_svi2_config = private unnamed_addr constant [33 x i8] c"iceland_populate_smc_svi2_config\00", align 1
@iceland_populate_smc_svi2_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_smc_svi2_config, ptr @.str.3, i32 1924, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_smc_svi2_config._entry_ptr = internal global ptr @iceland_populate_smc_svi2_config._entry, section ".printk_index", align 4
@.str.116 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"SVI2 domain configuration is incorrect!\00", [56 x i8] zeroinitializer }, align 32
@iceland_populate_initial_mc_reg_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.iceland_populate_initial_mc_reg_table = private unnamed_addr constant [38 x i8] c"iceland_populate_initial_mc_reg_table\00", align 1
@iceland_populate_initial_mc_reg_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_initial_mc_reg_table, ptr @.str.3, i32 1810, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_initial_mc_reg_table._entry_ptr = internal global ptr @iceland_populate_initial_mc_reg_table._entry, section ".printk_index", align 4
@.str.117 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Failed to initialize MCRegTable for the MC register addresses!\00", [33 x i8] zeroinitializer }, align 32
@iceland_populate_initial_mc_reg_table._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_initial_mc_reg_table, ptr @.str.3, i32 1814, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_initial_mc_reg_table._entry_ptr.120 = internal global ptr @iceland_populate_initial_mc_reg_table._entry.119, section ".printk_index", align 4
@iceland_populate_mc_reg_address._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.iceland_populate_mc_reg_address = private unnamed_addr constant [32 x i8] c"iceland_populate_mc_reg_address\00", align 1
@iceland_populate_mc_reg_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_mc_reg_address, ptr @.str.3, i32 1698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_mc_reg_address._entry_ptr = internal global ptr @iceland_populate_mc_reg_address._entry, section ".printk_index", align 4
@.str.122 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Index of mc_reg_table->address[] array out of boundary\00", [41 x i8] zeroinitializer }, align 32
@iceland_populate_pm_fuses._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.iceland_populate_pm_fuses = private unnamed_addr constant [26 x i8] c"iceland_populate_pm_fuses\00", align 1
@iceland_populate_pm_fuses._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_pm_fuses, ptr @.str.3, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_pm_fuses._entry_ptr = internal global ptr @iceland_populate_pm_fuses._entry, section ".printk_index", align 4
@.str.123 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Attempt to get pm_fuse_table_offset Failed!\00", [52 x i8] zeroinitializer }, align 32
@iceland_populate_pm_fuses._rs.124 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@iceland_populate_pm_fuses._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_pm_fuses, ptr @.str.3, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_pm_fuses._entry_ptr.126 = internal global ptr @iceland_populate_pm_fuses._entry.125, section ".printk_index", align 4
@.str.127 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Attempt to populate bapm vddc vid Failed!\00", [54 x i8] zeroinitializer }, align 32
@iceland_populate_pm_fuses._rs.128 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@iceland_populate_pm_fuses._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_pm_fuses, ptr @.str.3, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_pm_fuses._entry_ptr.130 = internal global ptr @iceland_populate_pm_fuses._entry.129, section ".printk_index", align 4
@.str.131 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Attempt to populate vddc vid Failed!\00", [59 x i8] zeroinitializer }, align 32
@iceland_populate_pm_fuses._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_pm_fuses, ptr @.str.3, i32 466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_pm_fuses._entry_ptr.134 = internal global ptr @iceland_populate_pm_fuses._entry.133, section ".printk_index", align 4
@iceland_populate_pm_fuses._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_pm_fuses, ptr @.str.3, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_pm_fuses._entry_ptr.138 = internal global ptr @iceland_populate_pm_fuses._entry.137, section ".printk_index", align 4
@iceland_populate_pm_fuses._rs.140 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@iceland_populate_pm_fuses._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_pm_fuses, ptr @.str.3, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_pm_fuses._entry_ptr.142 = internal global ptr @iceland_populate_pm_fuses._entry.141, section ".printk_index", align 4
@.str.143 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Attempt to populate TdcWaterfallCtl, LPMLTemperature Min and Max Failed!\00", [55 x i8] zeroinitializer }, align 32
@iceland_populate_pm_fuses._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_pm_fuses, ptr @.str.3, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_pm_fuses._entry_ptr.146 = internal global ptr @iceland_populate_pm_fuses._entry.145, section ".printk_index", align 4
@iceland_populate_pm_fuses._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_pm_fuses, ptr @.str.3, i32 488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_pm_fuses._entry_ptr.150 = internal global ptr @iceland_populate_pm_fuses._entry.149, section ".printk_index", align 4
@iceland_populate_pm_fuses._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_pm_fuses, ptr @.str.3, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_pm_fuses._entry_ptr.154 = internal global ptr @iceland_populate_pm_fuses._entry.153, section ".printk_index", align 4
@iceland_populate_pm_fuses._rs.156 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@iceland_populate_pm_fuses._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_pm_fuses, ptr @.str.3, i32 501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_pm_fuses._entry_ptr.158 = internal global ptr @iceland_populate_pm_fuses._entry.157, section ".printk_index", align 4
@.str.159 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Attempt to download PmFuseTable Failed!\00", [56 x i8] zeroinitializer }, align 32
@iceland_populate_bapm_vddc_vid_sidd._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.iceland_populate_bapm_vddc_vid_sidd = private unnamed_addr constant [36 x i8] c"iceland_populate_bapm_vddc_vid_sidd\00", align 1
@iceland_populate_bapm_vddc_vid_sidd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_bapm_vddc_vid_sidd, ptr @.str.3, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_bapm_vddc_vid_sidd._entry_ptr = internal global ptr @iceland_populate_bapm_vddc_vid_sidd._entry, section ".printk_index", align 4
@.str.160 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"The CAC Leakage table does not exist!\00", [58 x i8] zeroinitializer }, align 32
@iceland_populate_bapm_vddc_vid_sidd._rs.161 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@iceland_populate_bapm_vddc_vid_sidd._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_bapm_vddc_vid_sidd, ptr @.str.3, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_bapm_vddc_vid_sidd._entry_ptr.163 = internal global ptr @iceland_populate_bapm_vddc_vid_sidd._entry.162, section ".printk_index", align 4
@.str.164 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"There should never be more than 8 entries for BapmVddcVid!!!\00", [35 x i8] zeroinitializer }, align 32
@iceland_populate_bapm_vddc_vid_sidd._rs.165 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@iceland_populate_bapm_vddc_vid_sidd._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_bapm_vddc_vid_sidd, ptr @.str.3, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_bapm_vddc_vid_sidd._entry_ptr.167 = internal global ptr @iceland_populate_bapm_vddc_vid_sidd._entry.166, section ".printk_index", align 4
@.str.168 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"CACLeakageTable->count and VddcDependencyOnSCLk->count not equal\00", [63 x i8] zeroinitializer }, align 32
@iceland_populate_bapm_vddc_vid_sidd._rs.169 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@iceland_populate_bapm_vddc_vid_sidd._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_bapm_vddc_vid_sidd, ptr @.str.3, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_bapm_vddc_vid_sidd._entry_ptr.171 = internal global ptr @iceland_populate_bapm_vddc_vid_sidd._entry.170, section ".printk_index", align 4
@.str.172 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Iceland should always support EVV\00", [62 x i8] zeroinitializer }, align 32
@iceland_populate_vddc_vid._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.iceland_populate_vddc_vid = private unnamed_addr constant [26 x i8] c"iceland_populate_vddc_vid\00", align 1
@iceland_populate_vddc_vid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_vddc_vid, ptr @.str.3, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_vddc_vid._entry_ptr = internal global ptr @iceland_populate_vddc_vid._entry, section ".printk_index", align 4
@.str.173 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"There should never be more than 8 entries for VddcVid!!!\00", [39 x i8] zeroinitializer }, align 32
@iceland_populate_dw8._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.iceland_populate_dw8 = private unnamed_addr constant [21 x i8] c"iceland_populate_dw8\00", align 1
@iceland_populate_dw8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_dw8, ptr @.str.3, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_dw8._entry_ptr = internal global ptr @iceland_populate_dw8._entry, section ".printk_index", align 4
@.str.174 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Attempt to read PmFuses.DW6 (SviLoadLineEn) from SMC Failed!\00", [35 x i8] zeroinitializer }, align 32
@iceland_populate_single_graphic_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.iceland_populate_single_graphic_level = private unnamed_addr constant [38 x i8] c"iceland_populate_single_graphic_level\00", align 1
@iceland_populate_single_graphic_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_single_graphic_level, ptr @.str.3, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_single_graphic_level._entry_ptr = internal global ptr @iceland_populate_single_graphic_level._entry, section ".printk_index", align 4
@.str.175 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"can not find VDDC voltage value for VDDC engine clock dependency table\00", [57 x i8] zeroinitializer }, align 32
@iceland_calculate_sclk_params._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.iceland_calculate_sclk_params = private unnamed_addr constant [30 x i8] c"iceland_calculate_sclk_params\00", align 1
@iceland_calculate_sclk_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_calculate_sclk_params, ptr @.str.3, i32 814, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_calculate_sclk_params._entry_ptr = internal global ptr @iceland_calculate_sclk_params._entry, section ".printk_index", align 4
@iceland_populate_all_memory_levels._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.iceland_populate_all_memory_levels = private unnamed_addr constant [35 x i8] c"iceland_populate_all_memory_levels\00", align 1
@iceland_populate_all_memory_levels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_all_memory_levels, ptr @.str.3, i32 1363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_all_memory_levels._entry_ptr = internal global ptr @iceland_populate_all_memory_levels._entry, section ".printk_index", align 4
@.str.176 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"can not populate memory level as memory clock is zero\00", [42 x i8] zeroinitializer }, align 32
@iceland_populate_single_memory_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.iceland_populate_single_memory_level = private unnamed_addr constant [37 x i8] c"iceland_populate_single_memory_level\00", align 1
@iceland_populate_single_memory_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_single_memory_level, ptr @.str.3, i32 1244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_single_memory_level._entry_ptr = internal global ptr @iceland_populate_single_memory_level._entry, section ".printk_index", align 4
@.str.177 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"can not find MinVddc voltage value from memory VDDC voltage dependency table\00", [51 x i8] zeroinitializer }, align 32
@iceland_populate_single_memory_level._rs.178 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@iceland_populate_single_memory_level._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_populate_single_memory_level, ptr @.str.3, i32 1255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_populate_single_memory_level._entry_ptr.180 = internal global ptr @iceland_populate_single_memory_level._entry.179, section ".printk_index", align 4
@.str.181 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"can not find MinVddci voltage value from memory VDDCI voltage dependency table\00", [49 x i8] zeroinitializer }, align 32
@iceland_calculate_mclk_params._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.iceland_calculate_mclk_params = private unnamed_addr constant [30 x i8] c"iceland_calculate_mclk_params\00", align 1
@iceland_calculate_mclk_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_calculate_mclk_params, ptr @.str.3, i32 1070, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_calculate_mclk_params._entry_ptr = internal global ptr @iceland_calculate_mclk_params._entry, section ".printk_index", align 4
@.str.182 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Error retrieving Memory Clock Parameters from VBIOS.\00", [43 x i8] zeroinitializer }, align 32
@iceland_copy_vbios_smc_reg_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.iceland_copy_vbios_smc_reg_table = private unnamed_addr constant [33 x i8] c"iceland_copy_vbios_smc_reg_table\00", align 1
@iceland_copy_vbios_smc_reg_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_copy_vbios_smc_reg_table, ptr @.str.3, i32 2486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_copy_vbios_smc_reg_table._entry_ptr = internal global ptr @iceland_copy_vbios_smc_reg_table._entry, section ".printk_index", align 4
@.str.183 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid VramInfo table.\00", [40 x i8] zeroinitializer }, align 32
@iceland_copy_vbios_smc_reg_table._rs.184 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@iceland_copy_vbios_smc_reg_table._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_copy_vbios_smc_reg_table, ptr @.str.3, i32 2488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_copy_vbios_smc_reg_table._entry_ptr.186 = internal global ptr @iceland_copy_vbios_smc_reg_table._entry.185, section ".printk_index", align 4
@iceland_set_mc_special_registers._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.iceland_set_mc_special_registers = private unnamed_addr constant [33 x i8] c"iceland_set_mc_special_registers\00", align 1
@iceland_set_mc_special_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_set_mc_special_registers, ptr @.str.3, i32 2518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_set_mc_special_registers._entry_ptr = internal global ptr @iceland_set_mc_special_registers._entry, section ".printk_index", align 4
@iceland_set_mc_special_registers._rs.187 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@iceland_set_mc_special_registers._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_set_mc_special_registers, ptr @.str.3, i32 2534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_set_mc_special_registers._entry_ptr.189 = internal global ptr @iceland_set_mc_special_registers._entry.188, section ".printk_index", align 4
@iceland_set_mc_special_registers._rs.190 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@iceland_set_mc_special_registers._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.iceland_set_mc_special_registers, ptr @.str.3, i32 2551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iceland_set_mc_special_registers._entry_ptr.192 = internal global ptr @iceland_set_mc_special_registers._entry.191, section ".printk_index", align 4
@iceland_get_offsetof._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.194, ptr @.str.3, i32 2250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014amdgpu: can't get the offset of type %x member %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iceland_get_offsetof\00", [43 x i8] zeroinitializer }, align 32
@iceland_get_offsetof._entry_ptr = internal global ptr @iceland_get_offsetof._entry, section ".printk_index", align 4
@iceland_get_mac_definition._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.196, ptr @.str.3, i32 2273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014amdgpu: can't get the mac of %x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iceland_get_mac_definition\00", [37 x i8] zeroinitializer }, align 32
@iceland_get_mac_definition._entry_ptr = internal global ptr @iceland_get_mac_definition._entry, section ".printk_index", align 4
@switch.table.iceland_get_offsetof = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 48, i32 44, i32 60, i32 64, i32 12, i32 16, i32 104, i32 48, i32 48, i32 48, i32 76, i32 80, i32 84, i32 88, i32 92], [36 x i8] zeroinitializer }, align 32
@switch.table.iceland_get_mac_definition = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 4, i32 8, i32 32, i32 8, i32 8, i32 4, i32 4], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 26880, i64 26881, i64 26882, i64 26883]
@__sancov_gen_cov_switch_values.197 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.198 = internal global [22 x i64] [i64 20, i64 16, i64 2600, i64 2601, i64 2602, i64 2603, i64 2604, i64 2605, i64 2606, i64 2607, i64 2608, i64 2691, i64 2731, i64 2769, i64 2773, i64 2775, i64 3457, i64 3459, i64 3461, i64 3466, i64 3468, i64 3470]
@__sancov_gen_cov_switch_values.199 = internal global [4 x i64] [i64 2, i64 16, i64 2689, i64 2690]
@__sancov_gen_cov_switch_values.200 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2663, i32 10 }
@___asan_gen_.204 = private unnamed_addr constant [18 x i8] c"iceland_smu_funcs\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2662, i32 29 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 197, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 202, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 164, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 178, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2202, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2205, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1597, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1959, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1967, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1971, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1975, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1979, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1983, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1987, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1993, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1997, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2004, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2008, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2011, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2035, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2063, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2075, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2079, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant [19 x i8] c"defaults_icelandxt\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 84, i32 41 }
@___asan_gen_.381 = private unnamed_addr constant [20 x i8] c"defaults_icelandpro\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 97, i32 41 }
@___asan_gen_.384 = private unnamed_addr constant [17 x i8] c"defaults_iceland\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 73, i32 41 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 300, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 700, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 704, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 708, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 629, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 540, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 545, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 561, i32 5 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 581, i32 6 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 590, i32 4 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 656, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 681, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 725, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1453, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1412, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1663, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1673, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1923, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1809, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1813, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1697, i32 4 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 446, i32 4 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 452, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 458, i32 4 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 464, i32 4 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 469, i32 4 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 473, i32 4 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 480, i32 4 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 486, i32 4 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 492, i32 4 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 499, i32 4 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 396, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 398, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 400, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 409, i32 3 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 422, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 345, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 904, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 813, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1362, i32 3 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1243, i32 3 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1254, i32 3 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1069, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2485, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2487, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2517, i32 3 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2533, i32 4 }
@___asan_gen_.711 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2550, i32 5 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2250, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.732 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.733 = private constant [70 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c\00", align 1
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2273, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant [34 x i8] c"switch.table.iceland_get_offsetof\00", align 1
@___asan_gen_.736 = private unnamed_addr constant [40 x i8] c"switch.table.iceland_get_mac_definition\00", align 1
@llvm.compiler.used = appending global [253 x ptr] [ptr @iceland_calculate_mclk_params._entry, ptr @iceland_calculate_mclk_params._entry_ptr, ptr @iceland_calculate_sclk_params._entry, ptr @iceland_calculate_sclk_params._entry_ptr, ptr @iceland_copy_vbios_smc_reg_table._entry, ptr @iceland_copy_vbios_smc_reg_table._entry.185, ptr @iceland_copy_vbios_smc_reg_table._entry_ptr, ptr @iceland_copy_vbios_smc_reg_table._entry_ptr.186, ptr @iceland_get_mac_definition._entry, ptr @iceland_get_mac_definition._entry_ptr, ptr @iceland_get_offsetof._entry, ptr @iceland_get_offsetof._entry_ptr, ptr @iceland_get_std_voltage_value_sidd._entry, ptr @iceland_get_std_voltage_value_sidd._entry.100, ptr @iceland_get_std_voltage_value_sidd._entry.103, ptr @iceland_get_std_voltage_value_sidd._entry.94, ptr @iceland_get_std_voltage_value_sidd._entry.97, ptr @iceland_get_std_voltage_value_sidd._entry_ptr, ptr @iceland_get_std_voltage_value_sidd._entry_ptr.102, ptr @iceland_get_std_voltage_value_sidd._entry_ptr.105, ptr @iceland_get_std_voltage_value_sidd._entry_ptr.96, ptr @iceland_get_std_voltage_value_sidd._entry_ptr.99, ptr @iceland_init_smc_table._entry, ptr @iceland_init_smc_table._entry.22, ptr @iceland_init_smc_table._entry.26, ptr @iceland_init_smc_table._entry.30, ptr @iceland_init_smc_table._entry.34, ptr @iceland_init_smc_table._entry.38, ptr @iceland_init_smc_table._entry.42, ptr @iceland_init_smc_table._entry.46, ptr @iceland_init_smc_table._entry.50, ptr @iceland_init_smc_table._entry.54, ptr @iceland_init_smc_table._entry.58, ptr @iceland_init_smc_table._entry.62, ptr @iceland_init_smc_table._entry.66, ptr @iceland_init_smc_table._entry.70, ptr @iceland_init_smc_table._entry.74, ptr @iceland_init_smc_table._entry.78, ptr @iceland_init_smc_table._entry_ptr, ptr @iceland_init_smc_table._entry_ptr.23, ptr @iceland_init_smc_table._entry_ptr.27, ptr @iceland_init_smc_table._entry_ptr.31, ptr @iceland_init_smc_table._entry_ptr.35, ptr @iceland_init_smc_table._entry_ptr.39, ptr @iceland_init_smc_table._entry_ptr.43, ptr @iceland_init_smc_table._entry_ptr.47, ptr @iceland_init_smc_table._entry_ptr.51, ptr @iceland_init_smc_table._entry_ptr.55, ptr @iceland_init_smc_table._entry_ptr.59, ptr @iceland_init_smc_table._entry_ptr.63, ptr @iceland_init_smc_table._entry_ptr.67, ptr @iceland_init_smc_table._entry_ptr.71, ptr @iceland_init_smc_table._entry_ptr.75, ptr @iceland_init_smc_table._entry_ptr.79, ptr @iceland_initialize_power_tune_defaults._entry, ptr @iceland_initialize_power_tune_defaults._entry_ptr, ptr @iceland_populate_all_memory_levels._entry, ptr @iceland_populate_all_memory_levels._entry_ptr, ptr @iceland_populate_bapm_vddc_vid_sidd._entry, ptr @iceland_populate_bapm_vddc_vid_sidd._entry.162, ptr @iceland_populate_bapm_vddc_vid_sidd._entry.166, ptr @iceland_populate_bapm_vddc_vid_sidd._entry.170, ptr @iceland_populate_bapm_vddc_vid_sidd._entry_ptr, ptr @iceland_populate_bapm_vddc_vid_sidd._entry_ptr.163, ptr @iceland_populate_bapm_vddc_vid_sidd._entry_ptr.167, ptr @iceland_populate_bapm_vddc_vid_sidd._entry_ptr.171, ptr @iceland_populate_dw8._entry, ptr @iceland_populate_dw8._entry_ptr, ptr @iceland_populate_initial_mc_reg_table._entry, ptr @iceland_populate_initial_mc_reg_table._entry.119, ptr @iceland_populate_initial_mc_reg_table._entry_ptr, ptr @iceland_populate_initial_mc_reg_table._entry_ptr.120, ptr @iceland_populate_mc_reg_address._entry, ptr @iceland_populate_mc_reg_address._entry_ptr, ptr @iceland_populate_memory_timing_parameters._entry, ptr @iceland_populate_memory_timing_parameters._entry_ptr, ptr @iceland_populate_mvdd_value._entry, ptr @iceland_populate_mvdd_value._entry_ptr, ptr @iceland_populate_pm_fuses._entry, ptr @iceland_populate_pm_fuses._entry.125, ptr @iceland_populate_pm_fuses._entry.129, ptr @iceland_populate_pm_fuses._entry.133, ptr @iceland_populate_pm_fuses._entry.137, ptr @iceland_populate_pm_fuses._entry.141, ptr @iceland_populate_pm_fuses._entry.145, ptr @iceland_populate_pm_fuses._entry.149, ptr @iceland_populate_pm_fuses._entry.153, ptr @iceland_populate_pm_fuses._entry.157, ptr @iceland_populate_pm_fuses._entry_ptr, ptr @iceland_populate_pm_fuses._entry_ptr.126, ptr @iceland_populate_pm_fuses._entry_ptr.130, ptr @iceland_populate_pm_fuses._entry_ptr.134, ptr @iceland_populate_pm_fuses._entry_ptr.138, ptr @iceland_populate_pm_fuses._entry_ptr.142, ptr @iceland_populate_pm_fuses._entry_ptr.146, ptr @iceland_populate_pm_fuses._entry_ptr.150, ptr @iceland_populate_pm_fuses._entry_ptr.154, ptr @iceland_populate_pm_fuses._entry_ptr.158, ptr @iceland_populate_single_graphic_level._entry, ptr @iceland_populate_single_graphic_level._entry_ptr, ptr @iceland_populate_single_memory_level._entry, ptr @iceland_populate_single_memory_level._entry.179, ptr @iceland_populate_single_memory_level._entry_ptr, ptr @iceland_populate_single_memory_level._entry_ptr.180, ptr @iceland_populate_smc_acpi_level._entry, ptr @iceland_populate_smc_acpi_level._entry_ptr, ptr @iceland_populate_smc_boot_level._entry, ptr @iceland_populate_smc_boot_level._entry.113, ptr @iceland_populate_smc_boot_level._entry_ptr, ptr @iceland_populate_smc_boot_level._entry_ptr.115, ptr @iceland_populate_smc_mvdd_table._entry, ptr @iceland_populate_smc_mvdd_table._entry_ptr, ptr @iceland_populate_smc_svi2_config._entry, ptr @iceland_populate_smc_svi2_config._entry_ptr, ptr @iceland_populate_smc_vdd_ci_table._entry, ptr @iceland_populate_smc_vdd_ci_table._entry_ptr, ptr @iceland_populate_smc_vddc_table._entry, ptr @iceland_populate_smc_vddc_table._entry_ptr, ptr @iceland_populate_smc_voltage_tables._entry, ptr @iceland_populate_smc_voltage_tables._entry.85, ptr @iceland_populate_smc_voltage_tables._entry.89, ptr @iceland_populate_smc_voltage_tables._entry_ptr, ptr @iceland_populate_smc_voltage_tables._entry_ptr.86, ptr @iceland_populate_smc_voltage_tables._entry_ptr.90, ptr @iceland_populate_ulv_level._entry, ptr @iceland_populate_ulv_level._entry_ptr, ptr @iceland_populate_vddc_vid._entry, ptr @iceland_populate_vddc_vid._entry_ptr, ptr @iceland_set_mc_special_registers._entry, ptr @iceland_set_mc_special_registers._entry.188, ptr @iceland_set_mc_special_registers._entry.191, ptr @iceland_set_mc_special_registers._entry_ptr, ptr @iceland_set_mc_special_registers._entry_ptr.189, ptr @iceland_set_mc_special_registers._entry_ptr.192, ptr @iceland_smu_upload_firmware_image._entry, ptr @iceland_smu_upload_firmware_image._entry.4, ptr @iceland_smu_upload_firmware_image._entry_ptr, ptr @iceland_smu_upload_firmware_image._entry_ptr.6, ptr @iceland_update_sclk_threshold._entry, ptr @iceland_update_sclk_threshold._entry.16, ptr @iceland_update_sclk_threshold._entry_ptr, ptr @iceland_update_sclk_threshold._entry_ptr.17, ptr @iceland_upload_smc_firmware_data._entry, ptr @iceland_upload_smc_firmware_data._entry.11, ptr @iceland_upload_smc_firmware_data._entry_ptr, ptr @iceland_upload_smc_firmware_data._entry_ptr.12, ptr @.str, ptr @iceland_smu_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @iceland_upload_smc_firmware_data._rs, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @iceland_upload_smc_firmware_data._rs.10, ptr @.str.13, ptr @iceland_update_sclk_threshold._rs, ptr @.str.14, ptr @iceland_update_sclk_threshold._rs.15, ptr @.str.18, ptr @iceland_populate_memory_timing_parameters._rs, ptr @.str.19, ptr @iceland_init_smc_table._rs, ptr @.str.20, ptr @iceland_init_smc_table._rs.25, ptr @.str.28, ptr @iceland_init_smc_table._rs.29, ptr @.str.32, ptr @iceland_init_smc_table._rs.33, ptr @.str.36, ptr @iceland_init_smc_table._rs.45, ptr @.str.48, ptr @iceland_init_smc_table._rs.65, ptr @.str.68, ptr @iceland_init_smc_table._rs.69, ptr @.str.72, ptr @iceland_init_smc_table._rs.73, ptr @.str.76, ptr @iceland_init_smc_table._rs.77, ptr @.str.80, ptr @defaults_icelandxt, ptr @defaults_icelandpro, ptr @defaults_iceland, ptr @.str.81, ptr @.str.82, ptr @iceland_get_std_voltage_value_sidd._rs, ptr @.str.93, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @iceland_populate_ulv_level._rs, ptr @.str.108, ptr @iceland_populate_smc_acpi_level._rs, ptr @.str.109, ptr @iceland_populate_mvdd_value._rs, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @iceland_populate_smc_svi2_config._rs, ptr @.str.116, ptr @iceland_populate_initial_mc_reg_table._rs, ptr @.str.117, ptr @iceland_populate_mc_reg_address._rs, ptr @.str.122, ptr @iceland_populate_pm_fuses._rs, ptr @.str.123, ptr @iceland_populate_pm_fuses._rs.124, ptr @.str.127, ptr @iceland_populate_pm_fuses._rs.128, ptr @.str.131, ptr @iceland_populate_pm_fuses._rs.140, ptr @.str.143, ptr @iceland_populate_pm_fuses._rs.156, ptr @.str.159, ptr @iceland_populate_bapm_vddc_vid_sidd._rs, ptr @.str.160, ptr @iceland_populate_bapm_vddc_vid_sidd._rs.161, ptr @.str.164, ptr @iceland_populate_bapm_vddc_vid_sidd._rs.165, ptr @.str.168, ptr @iceland_populate_bapm_vddc_vid_sidd._rs.169, ptr @.str.172, ptr @iceland_populate_vddc_vid._rs, ptr @.str.173, ptr @iceland_populate_dw8._rs, ptr @.str.174, ptr @iceland_populate_single_graphic_level._rs, ptr @.str.175, ptr @iceland_calculate_sclk_params._rs, ptr @iceland_populate_all_memory_levels._rs, ptr @.str.176, ptr @iceland_populate_single_memory_level._rs, ptr @.str.177, ptr @iceland_populate_single_memory_level._rs.178, ptr @.str.181, ptr @iceland_calculate_mclk_params._rs, ptr @.str.182, ptr @iceland_copy_vbios_smc_reg_table._rs, ptr @.str.183, ptr @iceland_copy_vbios_smc_reg_table._rs.184, ptr @iceland_set_mc_special_registers._rs, ptr @iceland_set_mc_special_registers._rs.187, ptr @iceland_set_mc_special_registers._rs.190, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @switch.table.iceland_get_offsetof, ptr @switch.table.iceland_get_mac_definition], section "llvm.metadata"
@0 = internal global [180 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_smu_funcs to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_smu_upload_firmware_image._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_smu_upload_firmware_image._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_upload_smc_firmware_data._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_upload_smc_firmware_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_upload_smc_firmware_data._rs.10 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_upload_smc_firmware_data._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_update_sclk_threshold._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_update_sclk_threshold._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_update_sclk_threshold._rs.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_update_sclk_threshold._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_memory_timing_parameters._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_memory_timing_parameters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_init_smc_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_init_smc_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_init_smc_table._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_init_smc_table._rs.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_init_smc_table._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_init_smc_table._rs.29 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_init_smc_table._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_init_smc_table._rs.33 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_init_smc_table._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_init_smc_table._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_init_smc_table._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_init_smc_table._rs.45 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_init_smc_table._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_init_smc_table._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_init_smc_table._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_init_smc_table._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_init_smc_table._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_init_smc_table._rs.65 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_init_smc_table._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_init_smc_table._rs.69 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_init_smc_table._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_init_smc_table._rs.73 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_init_smc_table._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_init_smc_table._rs.77 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_init_smc_table._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @defaults_icelandxt to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @defaults_icelandpro to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @defaults_iceland to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_initialize_power_tune_defaults._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_smc_voltage_tables._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_smc_voltage_tables._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_smc_voltage_tables._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_smc_vddc_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_get_std_voltage_value_sidd._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_get_std_voltage_value_sidd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_get_std_voltage_value_sidd._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_get_std_voltage_value_sidd._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_get_std_voltage_value_sidd._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 139, i32 192, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_get_std_voltage_value_sidd._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_smc_vdd_ci_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_smc_mvdd_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_ulv_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_ulv_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_smc_acpi_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_smc_acpi_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_mvdd_value._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_mvdd_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_smc_boot_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_smc_boot_level._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_smc_svi2_config._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_smc_svi2_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_initial_mc_reg_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_initial_mc_reg_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_initial_mc_reg_table._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_mc_reg_address._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_mc_reg_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_pm_fuses._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_pm_fuses._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_pm_fuses._rs.124 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_pm_fuses._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_pm_fuses._rs.128 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_pm_fuses._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_pm_fuses._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_pm_fuses._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_pm_fuses._rs.140 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_pm_fuses._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_pm_fuses._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_pm_fuses._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_pm_fuses._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_pm_fuses._rs.156 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_pm_fuses._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_bapm_vddc_vid_sidd._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_bapm_vddc_vid_sidd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_bapm_vddc_vid_sidd._rs.161 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_bapm_vddc_vid_sidd._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_bapm_vddc_vid_sidd._rs.165 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_bapm_vddc_vid_sidd._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_bapm_vddc_vid_sidd._rs.169 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_bapm_vddc_vid_sidd._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_vddc_vid._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_vddc_vid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_dw8._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_dw8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_single_graphic_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_single_graphic_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_calculate_sclk_params._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_calculate_sclk_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_all_memory_levels._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_all_memory_levels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_single_memory_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_single_memory_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_single_memory_level._rs.178 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_populate_single_memory_level._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_calculate_mclk_params._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_calculate_mclk_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_copy_vbios_smc_reg_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_copy_vbios_smc_reg_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_copy_vbios_smc_reg_table._rs.184 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_copy_vbios_smc_reg_table._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_set_mc_special_registers._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_set_mc_special_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_set_mc_special_registers._rs.187 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_set_mc_special_registers._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_set_mc_special_registers._rs.190 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_set_mc_special_registers._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_get_offsetof._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iceland_get_mac_definition._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iceland_get_offsetof to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iceland_get_mac_definition to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iceland_smu_init(ptr noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 3152) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %1 = ptrtoint ptr %smu_backend to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %smu_backend, align 4
  %call1 = tail call i32 @smu7_init(ptr noundef %hwmgr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then2 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_smu_fini(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iceland_start_smu(ptr noundef %hwmgr) #0 align 64 {
entry:
  %info.i = alloca %struct.cgs_firmware_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %call = tail call zeroext i1 @smu7_is_smc_ram_running(ptr noundef %hwmgr) #8
  br i1 %call, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info.i) #8
  %2 = call ptr @memset(ptr %info.i, i32 0, i32 40)
  %cmp.i = icmp eq ptr %hwmgr, null
  br i1 %cmp.i, label %if.then.iceland_smu_upload_firmware_image.exit_crit_edge, label %lor.lhs.false.i

if.then.iceland_smu_upload_firmware_image.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %iceland_smu_upload_firmware_image.exit

lor.lhs.false.i:                                  ; preds = %if.then
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %3 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device.i, align 4
  %cmp1.i = icmp eq ptr %4, null
  br i1 %cmp1.i, label %lor.lhs.false.i.iceland_smu_upload_firmware_image.exit_crit_edge, label %if.end.i

lor.lhs.false.i.iceland_smu_upload_firmware_image.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iceland_smu_upload_firmware_image.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %get_firmware_info.i = getelementptr inbounds %struct.cgs_ops, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %get_firmware_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_firmware_info.i, align 4
  %call.i = tail call i32 @smu7_convert_fw_type_to_cgs(i32 noundef 0) #8
  %call4.i = call i32 %8(ptr noundef nonnull %4, i32 noundef %call.i, ptr noundef nonnull %info.i) #8
  %image_size.i = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i, i32 0, i32 3
  %9 = ptrtoint ptr %image_size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %image_size.i, align 8
  %and.i = and i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %if.end.i.iceland_smu_upload_firmware_image.exit.sink.split_crit_edge

if.end.i.iceland_smu_upload_firmware_image.exit.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iceland_smu_upload_firmware_image.exit.sink.split

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %10)
  %cmp9.i = icmp ugt i32 %10, 131072
  br i1 %cmp9.i, label %if.end7.i.iceland_smu_upload_firmware_image.exit.sink.split_crit_edge, label %if.end16.i

if.end7.i.iceland_smu_upload_firmware_image.exit.sink.split_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iceland_smu_upload_firmware_image.exit.sink.split

if.end16.i:                                       ; preds = %if.end7.i
  %11 = ptrtoint ptr %info.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %info.i, align 8
  %conv.i = zext i16 %12 to i32
  %smu_version.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 3
  %13 = ptrtoint ptr %smu_version.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv.i, ptr %smu_version.i, align 4
  %call17.i = call i32 @phm_wait_for_indirect_register_unequal(ptr noundef nonnull %hwmgr, i32 noundef 128, i32 noundef -1073741820, i32 noundef 0, i32 noundef 128) #8
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
  %call21.i = call i32 %19(ptr noundef %15, i32 noundef 1, i32 noundef -2147483632) #8
  %20 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %write_ind_register.i = getelementptr inbounds %struct.cgs_ops, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %write_ind_register.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_ind_register.i, align 4
  %or.i = or i32 %call21.i, 1
  call void %25(ptr noundef %21, i32 noundef 1, i32 noundef -2147483632, i32 noundef %or.i) #8
  %26 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %write_ind_register.i.i = getelementptr inbounds %struct.cgs_ops, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %write_ind_register.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_ind_register.i.i, align 4
  %read_ind_register.i.i = getelementptr inbounds %struct.cgs_ops, ptr %29, i32 0, i32 2
  %32 = ptrtoint ptr %read_ind_register.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read_ind_register.i.i, align 4
  %call.i.i = call i32 %33(ptr noundef %27, i32 noundef 1, i32 noundef -2147483644) #8
  %or.i.i = or i32 %call.i.i, 1
  call void %31(ptr noundef %27, i32 noundef 1, i32 noundef -2147483644, i32 noundef %or.i.i) #8
  %34 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %write_ind_register.i41.i = getelementptr inbounds %struct.cgs_ops, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %write_ind_register.i41.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_ind_register.i41.i, align 4
  %read_ind_register.i42.i = getelementptr inbounds %struct.cgs_ops, ptr %37, i32 0, i32 2
  %40 = ptrtoint ptr %read_ind_register.i42.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read_ind_register.i42.i, align 4
  %call.i43.i = call i32 %41(ptr noundef %35, i32 noundef 1, i32 noundef -2147483648) #8
  %or.i44.i = or i32 %call.i43.i, 1
  call void %39(ptr noundef %35, i32 noundef 1, i32 noundef -2147483648, i32 noundef %or.i44.i) #8
  %42 = ptrtoint ptr %image_size.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %image_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %43)
  %cmp.i.i = icmp ult i32 %43, 131073
  br i1 %cmp.i.i, label %do.end6.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end16.i
  %call.i45.i = call i32 @___ratelimit(ptr noundef nonnull @iceland_upload_smc_firmware_data._rs, ptr noundef nonnull @__func__.iceland_upload_smc_firmware_data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45.i)
  %tobool.not.i.i = icmp eq i32 %call.i45.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end_crit_edge, label %if.then.i.i.cleanup.sink.split.i.i_crit_edge

if.then.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i.i

if.then.i.i.if.end_crit_edge:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end6.i.i:                                      ; preds = %if.end16.i
  %ucode_start_address.i = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i, i32 0, i32 5
  %44 = ptrtoint ptr %ucode_start_address.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ucode_start_address.i, align 8
  %kptr.i = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i, i32 0, i32 6
  %46 = ptrtoint ptr %kptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %kptr.i, align 4
  %48 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %write_register.i.i = getelementptr inbounds %struct.cgs_ops, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %write_register.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write_register.i.i, align 4
  call void %53(ptr noundef %49, i32 noundef 128, i32 noundef %45) #8
  %54 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %write_register10.i.i = getelementptr inbounds %struct.cgs_ops, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %write_register10.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write_register10.i.i, align 4
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %57, align 4
  %call15.i.i = call i32 %61(ptr noundef %55, i32 noundef 146) #8
  %or.i47.i = or i32 %call15.i.i, 1
  call void %59(ptr noundef %55, i32 noundef 146, i32 noundef %or.i47.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %43)
  %cmp161.i.i = icmp ugt i32 %43, 3
  br i1 %cmp161.i.i, label %do.end6.i.i.while.body.i.i_crit_edge, label %do.end6.i.i.while.end.i.i_crit_edge

do.end6.i.i.while.end.i.i_crit_edge:              ; preds = %do.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

do.end6.i.i.while.body.i.i_crit_edge:             ; preds = %do.end6.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %do.end6.i.i.while.body.i.i_crit_edge
  %src.addr.03.i.i = phi ptr [ %add.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %47, %do.end6.i.i.while.body.i.i_crit_edge ]
  %byte_count.02.i.i = phi i32 [ %sub.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %43, %do.end6.i.i.while.body.i.i_crit_edge ]
  %62 = ptrtoint ptr %src.addr.03.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %src.addr.03.i.i, align 1
  %conv.i.i = zext i8 %63 to i32
  %mul.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx17.i.i = getelementptr i8, ptr %src.addr.03.i.i, i32 1
  %64 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx17.i.i, align 1
  %conv18.i.i = zext i8 %65 to i32
  %mul19.i.i = shl nuw nsw i32 %conv18.i.i, 16
  %add.i.i = or i32 %mul19.i.i, %mul.i.i
  %arrayidx20.i.i = getelementptr i8, ptr %src.addr.03.i.i, i32 2
  %66 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx20.i.i, align 1
  %conv21.i.i = zext i8 %67 to i32
  %mul22.i.i = shl nuw nsw i32 %conv21.i.i, 8
  %add23.i.i = or i32 %add.i.i, %mul22.i.i
  %arrayidx24.i.i = getelementptr i8, ptr %src.addr.03.i.i, i32 3
  %68 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx24.i.i, align 1
  %conv25.i.i = zext i8 %69 to i32
  %add26.i.i = or i32 %add23.i.i, %conv25.i.i
  %70 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %device.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %write_register29.i.i = getelementptr inbounds %struct.cgs_ops, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %write_register29.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write_register29.i.i, align 4
  call void %75(ptr noundef %71, i32 noundef 129, i32 noundef %add26.i.i) #8
  %add.ptr.i.i = getelementptr i8, ptr %src.addr.03.i.i, i32 4
  %sub.i.i = add i32 %byte_count.02.i.i, -4
  %cmp16.i.i = icmp ugt i32 %sub.i.i, 3
  br i1 %cmp16.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.while.end.i.i_crit_edge

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %do.end6.i.i.while.end.i.i_crit_edge
  %byte_count.0.lcssa.i.i = phi i32 [ %43, %do.end6.i.i.while.end.i.i_crit_edge ], [ %sub.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  %76 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %device.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %write_register33.i.i = getelementptr inbounds %struct.cgs_ops, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %write_register33.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write_register33.i.i, align 4
  %82 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %79, align 4
  %call39.i.i = call i32 %83(ptr noundef %77, i32 noundef 146) #8
  %and40.i.i = and i32 %call39.i.i, -2
  call void %81(ptr noundef %77, i32 noundef 146, i32 noundef %and40.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %byte_count.0.lcssa.i.i)
  %cmp43.i.i = icmp eq i32 %byte_count.0.lcssa.i.i, 0
  br i1 %cmp43.i.i, label %while.end.i.i.if.end_crit_edge, label %if.then45.i.i

while.end.i.i.if.end_crit_edge:                   ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then45.i.i:                                    ; preds = %while.end.i.i
  %call46.i.i = call i32 @___ratelimit(ptr noundef nonnull @iceland_upload_smc_firmware_data._rs.10, ptr noundef nonnull @__func__.iceland_upload_smc_firmware_data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i)
  %tobool47.not.i.i = icmp eq i32 %call46.i.i, 0
  br i1 %tobool47.not.i.i, label %if.then45.i.i.if.end_crit_edge, label %if.then45.i.i.cleanup.sink.split.i.i_crit_edge

if.then45.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i.i

if.then45.i.i.if.end_crit_edge:                   ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cleanup.sink.split.i.i:                           ; preds = %if.then45.i.i.cleanup.sink.split.i.i_crit_edge, %if.then.i.i.cleanup.sink.split.i.i_crit_edge
  %.str.13.sink.i.i = phi ptr [ @.str.9, %if.then.i.i.cleanup.sink.split.i.i_crit_edge ], [ @.str.13, %if.then45.i.i.cleanup.sink.split.i.i_crit_edge ]
  %call53.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %.str.13.sink.i.i) #12
  br label %if.end

iceland_smu_upload_firmware_image.exit.sink.split: ; preds = %if.end7.i.iceland_smu_upload_firmware_image.exit.sink.split_crit_edge, %if.end.i.iceland_smu_upload_firmware_image.exit.sink.split_crit_edge
  %.str.1.sink = phi ptr [ @.str.1, %if.end.i.iceland_smu_upload_firmware_image.exit.sink.split_crit_edge ], [ @.str.5, %if.end7.i.iceland_smu_upload_firmware_image.exit.sink.split_crit_edge ]
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.1.sink) #12
  br label %iceland_smu_upload_firmware_image.exit

iceland_smu_upload_firmware_image.exit:           ; preds = %iceland_smu_upload_firmware_image.exit.sink.split, %lor.lhs.false.i.iceland_smu_upload_firmware_image.exit_crit_edge, %if.then.iceland_smu_upload_firmware_image.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info.i) #8
  br label %cleanup

if.end:                                           ; preds = %cleanup.sink.split.i.i, %if.then45.i.i.if.end_crit_edge, %while.end.i.i.if.end_crit_edge, %if.then.i.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info.i) #8
  %call.i15 = call i32 @smu7_program_jump_on_start(ptr noundef nonnull %hwmgr) #8
  %84 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %device.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %write_ind_register.i.i16 = getelementptr inbounds %struct.cgs_ops, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %write_ind_register.i.i16 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %write_ind_register.i.i16, align 4
  %read_ind_register.i.i17 = getelementptr inbounds %struct.cgs_ops, ptr %87, i32 0, i32 2
  %90 = ptrtoint ptr %read_ind_register.i.i17 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read_ind_register.i.i17, align 4
  %call.i.i18 = call i32 %91(ptr noundef %85, i32 noundef 1, i32 noundef -2147483644) #8
  %and.i.i = and i32 %call.i.i18, -2
  call void %89(ptr noundef %85, i32 noundef 1, i32 noundef -2147483644, i32 noundef %and.i.i) #8
  %92 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %device.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %write_ind_register.i2.i = getelementptr inbounds %struct.cgs_ops, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %write_ind_register.i2.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write_ind_register.i2.i, align 4
  %read_ind_register.i3.i = getelementptr inbounds %struct.cgs_ops, ptr %95, i32 0, i32 2
  %98 = ptrtoint ptr %read_ind_register.i3.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %read_ind_register.i3.i, align 4
  %call.i4.i = call i32 %99(ptr noundef %93, i32 noundef 1, i32 noundef -2147483648) #8
  %and.i5.i = and i32 %call.i4.i, -2
  call void %97(ptr noundef %93, i32 noundef 1, i32 noundef -2147483648, i32 noundef %and.i5.i) #8
  %call2.i = call i32 @phm_wait_on_indirect_register(ptr noundef nonnull %hwmgr, i32 noundef 128, i32 noundef 208896, i32 noundef 1, i32 noundef 1) #8
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  %soft_regs_start = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 3
  %call5 = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131120, ptr noundef %soft_regs_start, i32 noundef 262144) #8
  %call6 = call i32 @smu7_request_smu_load_fw(ptr noundef %hwmgr) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %iceland_smu_upload_firmware_image.exit
  %retval.0 = phi i32 [ %call6, %if.end4 ], [ -22, %iceland_smu_upload_firmware_image.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_check_fw_load_finish(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_request_smu_load_fw(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iceland_request_smu_load_specific_fw(ptr nocapture noundef readnone %hwmgr, i32 noundef %firmwareType) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_get_argument(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_send_msg_to_smc(ptr noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_send_msg_to_smc_with_parameter(ptr noundef, i16 noundef zeroext, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iceland_process_firmware_header(ptr noundef %hwmgr) #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #8
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tmp, align 4, !annotation !402
  %call = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131124, ptr noundef nonnull %tmp, i32 noundef 262144) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tmp, align 4
  %dpm_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dpm_table_start, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call4 = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131120, ptr noundef nonnull %tmp, i32 noundef 262144) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then7, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
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

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %call17 = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131140, ptr noundef nonnull %tmp, i32 noundef 262144) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.end9.if.end21_crit_edge

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then20:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tmp, align 4
  %mc_reg_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %mc_reg_table_start to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %mc_reg_table_start, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end9.if.end21_crit_edge
  %call22 = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131128, ptr noundef nonnull %tmp, i32 noundef 262144) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.end21.if.end26_crit_edge

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tmp, align 4
  %fan_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 6
  %17 = ptrtoint ptr %fan_table_start to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %fan_table_start, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end21.if.end26_crit_edge
  %call34 = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131144, ptr noundef nonnull %tmp, i32 noundef 262144) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then37, label %if.end26.if.end38_crit_edge

if.end26.if.end38_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then37:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tmp, align 4
  %arb_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 7
  %20 = ptrtoint ptr %arb_table_start to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arb_table_start, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end26.if.end38_crit_edge
  %call46 = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131092, ptr noundef nonnull %tmp, i32 noundef 262144) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then49, label %if.end38.if.end50_crit_edge

if.end38.if.end50_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then49:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tmp, align 4
  %microcode_version_info = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 39
  %23 = ptrtoint ptr %microcode_version_info to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %microcode_version_info, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end38.if.end50_crit_edge
  %call58 = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131172, ptr noundef nonnull %tmp, i32 noundef 262144) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.end50.if.end62_crit_edge

if.end50.if.end62_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then61:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tmp, align 4
  %ulv_setting_starts = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 8
  %26 = ptrtoint ptr %ulv_setting_starts to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %ulv_setting_starts, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end50.if.end62_crit_edge
  %27 = or i32 %call4, %call
  %28 = or i32 %27, %call22
  %29 = or i32 %28, %call34
  %30 = or i32 %29, %call46
  %31 = or i32 %30, %call58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %.not = icmp ne i32 %31, 0
  %cond = zext i1 %.not to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #8
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iceland_update_sclk_threshold(ptr noundef %hwmgr) #0 align 64 {
entry:
  %low_sclk_interrupt_threshold = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %low_sclk_interrupt_threshold) #8
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %low_sclk_interrupt_threshold to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %low_sclk_interrupt_threshold, align 4
  %dpm_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dpm_table_start, align 8
  %add = add i32 %11, 1464
  %call3 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add, ptr noundef nonnull %low_sclk_interrupt_threshold, i32 noundef 4, i32 noundef 262144) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

if.end.i:                                         ; preds = %if.end
  %mc_regs.i = getelementptr inbounds %struct.iceland_smumgr, ptr %13, i32 0, i32 5
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
  br i1 %cmp1.not.i.i, label %if.end.i.iceland_update_and_upload_mc_reg_table.exit_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.iceland_update_and_upload_mc_reg_table.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iceland_update_and_upload_mc_reg_table.exit

for.body.i.i:                                     ; preds = %iceland_convert_mc_reg_table_entry_to_smc.exit.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %i.02.i.i = phi i32 [ %inc.i.i, %iceland_convert_mc_reg_table_entry_to_smc.exit.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %value.i.i = getelementptr %struct.smu7_dpm_table, ptr %20, i32 0, i32 1, i32 1, i32 %i.02.i.i, i32 1
  %23 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %value.i.i, align 4
  %arrayidx4.i.i = getelementptr %struct.iceland_smumgr, ptr %13, i32 0, i32 5, i32 3, i32 %i.02.i.i
  %25 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %smu_backend, align 4
  %num_entries.i.i.i = getelementptr inbounds %struct.iceland_smumgr, ptr %26, i32 0, i32 6, i32 1
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i.for.body.i.i.i_crit_edge
  %i.02.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.iceland_smumgr, ptr %26, i32 0, i32 6, i32 3, i32 %i.02.i.i.i
  %29 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %24)
  %cmp3.not.i.i.i = icmp ult i32 %30, %24
  br i1 %cmp3.not.i.i.i, label %for.inc.i.i.i, label %for.body.i.i.i.for.end.i.i.i_crit_edge

for.body.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.02.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.for.end.i.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.inc.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %31

for.end.i.i.i.for.end.thread.i.i.i_crit_edge:     ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i.i.i

for.end.thread.i.i.i:                             ; preds = %for.end.i.i.i.for.end.thread.i.i.i_crit_edge, %for.body.i.i.for.end.thread.i.i.i_crit_edge
  %cmp813.i.i.i = phi i1 [ %cmp8.i.i.i, %for.end.i.i.i.for.end.thread.i.i.i_crit_edge ], [ true, %for.body.i.i.for.end.thread.i.i.i_crit_edge ]
  br label %31

31:                                               ; preds = %for.end.thread.i.i.i, %for.end.i.i.i._crit_edge
  %cmp812.i.i.i = phi i1 [ %cmp813.i.i.i, %for.end.thread.i.i.i ], [ %cmp8.i.i.i, %for.end.i.i.i._crit_edge ]
  %i.0.lcssa10.i.i.i = phi i32 [ 0, %for.end.thread.i.i.i ], [ %i.0.lcssa.i.i.i, %for.end.i.i.i._crit_edge ]
  %32 = phi i32 [ 0, %for.end.thread.i.i.i ], [ %dec.i.i.i, %for.end.i.i.i._crit_edge ]
  %i.1.i.i.i = select i1 %cmp812.i.i.i, i32 %32, i32 %i.0.lcssa10.i.i.i
  %mc_reg_table.i.i.i = getelementptr inbounds %struct.iceland_smumgr, ptr %26, i32 0, i32 6
  %33 = ptrtoint ptr %mc_reg_table.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %mc_reg_table.i.i.i, align 4
  %conv18.i.i.i = zext i8 %34 to i32
  %validflag.i.i.i = getelementptr inbounds %struct.iceland_smumgr, ptr %26, i32 0, i32 6, i32 2
  %35 = ptrtoint ptr %validflag.i.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %validflag.i.i.i, align 2
  %conv20.i.i.i = zext i16 %36 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp8.not.i.i.i.i = icmp eq i8 %34, 0
  br i1 %cmp8.not.i.i.i.i, label %.iceland_convert_mc_reg_table_entry_to_smc.exit.i.i_crit_edge, label %.for.body.i.i.i.i_crit_edge

.for.body.i.i.i.i_crit_edge:                      ; preds = %31
  br label %for.body.i.i.i.i

.iceland_convert_mc_reg_table_entry_to_smc.exit.i.i_crit_edge: ; preds = %31
  call void @__sanitizer_cov_trace_pc() #10
  br label %iceland_convert_mc_reg_table_entry_to_smc.exit.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %.for.body.i.i.i.i_crit_edge
  %j.010.i.i.i.i = phi i32 [ %inc3.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %.for.body.i.i.i.i_crit_edge ]
  %i.09.i.i.i.i = phi i32 [ %i.1.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %.for.body.i.i.i.i_crit_edge ]
  %shl.i.i.i.i = shl nuw i32 1, %j.010.i.i.i.i
  %and.i.i.i.i = and i32 %shl.i.i.i.i, %conv20.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %if.then.i.i.i.i

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i.i.i = getelementptr %struct.iceland_smumgr, ptr %26, i32 0, i32 6, i32 3, i32 %i.1.i.i.i, i32 1, i32 %j.010.i.i.i.i
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
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i.i.iceland_convert_mc_reg_table_entry_to_smc.exit.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.iceland_convert_mc_reg_table_entry_to_smc.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iceland_convert_mc_reg_table_entry_to_smc.exit.i.i

iceland_convert_mc_reg_table_entry_to_smc.exit.i.i: ; preds = %for.inc.i.i.i.i.iceland_convert_mc_reg_table_entry_to_smc.exit.i.i_crit_edge, %.iceland_convert_mc_reg_table_entry_to_smc.exit.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.02.i.i, 1
  %40 = ptrtoint ptr %mclk_table.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mclk_table.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %41
  br i1 %cmp.i.i, label %iceland_convert_mc_reg_table_entry_to_smc.exit.i.i.for.body.i.i_crit_edge, label %iceland_convert_mc_reg_table_entry_to_smc.exit.i.i.iceland_update_and_upload_mc_reg_table.exit_crit_edge

iceland_convert_mc_reg_table_entry_to_smc.exit.i.i.iceland_update_and_upload_mc_reg_table.exit_crit_edge: ; preds = %iceland_convert_mc_reg_table_entry_to_smc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iceland_update_and_upload_mc_reg_table.exit

iceland_convert_mc_reg_table_entry_to_smc.exit.i.i.for.body.i.i_crit_edge: ; preds = %iceland_convert_mc_reg_table_entry_to_smc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

iceland_update_and_upload_mc_reg_table.exit:      ; preds = %iceland_convert_mc_reg_table_entry_to_smc.exit.i.i.iceland_update_and_upload_mc_reg_table.exit_crit_edge, %if.end.i.iceland_update_and_upload_mc_reg_table.exit_crit_edge
  %mc_reg_table_start.i = getelementptr inbounds %struct.smu7_smumgr, ptr %13, i32 0, i32 5
  %42 = ptrtoint ptr %mc_reg_table_start.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mc_reg_table_start.i, align 4
  %add.i = add i32 %43, 68
  %data6.i = getelementptr inbounds %struct.iceland_smumgr, ptr %13, i32 0, i32 5, i32 3
  %mclk_table.i = getelementptr inbounds %struct.smu7_dpm_table, ptr %15, i32 0, i32 1
  %44 = ptrtoint ptr %mclk_table.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mclk_table.i, align 4
  %mul.i = shl i32 %45, 6
  %call7.i = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add.i, ptr noundef %data6.i, i32 noundef %mul.i, i32 noundef 262144) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp5 = icmp eq i32 %call7.i, 0
  br i1 %cmp5, label %iceland_update_and_upload_mc_reg_table.exit.do.end14_crit_edge, label %if.then6

iceland_update_and_upload_mc_reg_table.exit.do.end14_crit_edge: ; preds = %iceland_update_and_upload_mc_reg_table.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

if.then6:                                         ; preds = %iceland_update_and_upload_mc_reg_table.exit
  %call7 = call i32 @___ratelimit(ptr noundef nonnull @iceland_update_sclk_threshold._rs, ptr noundef nonnull @__func__.iceland_update_sclk_threshold) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then6.cleanup_crit_edge, label %if.then6.cleanup.sink.split_crit_edge

if.then6.cleanup.sink.split_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end14:                                         ; preds = %iceland_update_and_upload_mc_reg_table.exit.do.end14_crit_edge, %if.end.do.end14_crit_edge
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
  br i1 %tobool.not.i, label %do.end14.cleanup_crit_edge, label %iceland_program_mem_timing_parameters.exit

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

iceland_program_mem_timing_parameters.exit:       ; preds = %do.end14
  %call.i = call fastcc i32 @iceland_program_memory_timing_parameters(ptr noundef %hwmgr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp17 = icmp eq i32 %call.i, 0
  br i1 %cmp17, label %iceland_program_mem_timing_parameters.exit.cleanup_crit_edge, label %if.then18

iceland_program_mem_timing_parameters.exit.cleanup_crit_edge: ; preds = %iceland_program_mem_timing_parameters.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then18:                                        ; preds = %iceland_program_mem_timing_parameters.exit
  %call19 = call i32 @___ratelimit(ptr noundef nonnull @iceland_update_sclk_threshold._rs.15, ptr noundef nonnull @__func__.iceland_update_sclk_threshold) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then18.cleanup_crit_edge, label %if.then18.cleanup.sink.split_crit_edge

if.then18.cleanup.sink.split_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then18.cleanup.sink.split_crit_edge, %if.then6.cleanup.sink.split_crit_edge
  %.str.18.sink = phi ptr [ @.str.14, %if.then6.cleanup.sink.split_crit_edge ], [ @.str.18, %if.then18.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call7.i, %if.then6.cleanup.sink.split_crit_edge ], [ %call.i, %if.then18.cleanup.sink.split_crit_edge ]
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %.str.18.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then18.cleanup_crit_edge, %iceland_program_mem_timing_parameters.exit.cleanup_crit_edge, %do.end14.cleanup_crit_edge, %if.then6.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7.i, %if.then6.cleanup_crit_edge ], [ %call.i, %if.then18.cleanup_crit_edge ], [ 0, %iceland_program_mem_timing_parameters.exit.cleanup_crit_edge ], [ 0, %do.end14.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %low_sclk_interrupt_threshold) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iceland_thermal_setup_fan_table(ptr noundef %hwmgr) #0 align 64 {
entry:
  %fan_table = alloca %struct.SMU71_Discrete_FanTable, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fan_table) #8
  %2 = call ptr @memset(ptr %fan_table, i32 0, i32 36)
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %fanInfo = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4
  %5 = ptrtoint ptr %fanInfo to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fanInfo, align 4, !range !403
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end5, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i418 = and i32 %4, -1073741825
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and1.i418, ptr %arrayidx.i, align 4
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
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i420 = and i32 %4, -1073741825
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and1.i420, ptr %arrayidx.i, align 4
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
  %call12 = tail call i32 %16(ptr noundef %12, i32 noundef 1, i32 noundef -1070595992) #8
  %and = and i32 %call12, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp13 = icmp eq i32 %and, 0
  br i1 %cmp13, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %and1.i422 = and i32 %18, -1073741825
  store i32 %and1.i422, ptr %arrayidx.i, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %advanceFanControlParameters = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5
  %usPWMMin = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 3
  %19 = ptrtoint ptr %usPWMMin to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %usPWMMin, align 2
  %conv = zext i16 %20 to i32
  %mul = mul nuw nsw i32 %and, %conv
  %conv20 = zext i32 %mul to i64
  %21 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3777893186295716171, i64 %conv20) #13, !srcloc !404
  %22 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3777893186295716171, i64 %conv20, i64 %21) #13, !srcloc !405
  %div188416 = lshr i64 %22, 11
  %conv210 = trunc i64 %div188416 to i16
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
  %TempMin = getelementptr inbounds %struct.SMU71_Discrete_FanTable, ptr %fan_table, i32 0, i32 1
  %33 = ptrtoint ptr %TempMin to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %conv260, ptr %TempMin, align 1
  %add265 = add nuw nsw i32 %conv213, 50
  %div266 = udiv i32 %add265, 100
  %conv267 = trunc i32 %div266 to i16
  %TempMed = getelementptr inbounds %struct.SMU71_Discrete_FanTable, ptr %fan_table, i32 0, i32 2
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
  %TempMax = getelementptr inbounds %struct.SMU71_Discrete_FanTable, ptr %fan_table, i32 0, i32 3
  %37 = ptrtoint ptr %TempMax to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %conv273, ptr %TempMax, align 1
  %Slope1 = getelementptr inbounds %struct.SMU71_Discrete_FanTable, ptr %fan_table, i32 0, i32 4
  %38 = ptrtoint ptr %Slope1 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %conv247, ptr %Slope1, align 1
  %Slope2 = getelementptr inbounds %struct.SMU71_Discrete_FanTable, ptr %fan_table, i32 0, i32 5
  %39 = ptrtoint ptr %Slope2 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %conv253, ptr %Slope2, align 1
  %FdoMin = getelementptr inbounds %struct.SMU71_Discrete_FanTable, ptr %fan_table, i32 0, i32 6
  %40 = ptrtoint ptr %FdoMin to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %conv210, ptr %FdoMin, align 1
  %ucTHyst = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 6
  %41 = ptrtoint ptr %ucTHyst to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ucTHyst, align 4
  %conv276 = zext i8 %42 to i16
  %HystDown = getelementptr inbounds %struct.SMU71_Discrete_FanTable, ptr %fan_table, i32 0, i32 8
  %43 = ptrtoint ptr %HystDown to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 %conv276, ptr %HystDown, align 1
  %HystUp = getelementptr inbounds %struct.SMU71_Discrete_FanTable, ptr %fan_table, i32 0, i32 7
  %44 = ptrtoint ptr %HystUp to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 1, ptr %HystUp, align 1
  %HystSlope = getelementptr inbounds %struct.SMU71_Discrete_FanTable, ptr %fan_table, i32 0, i32 9
  %45 = ptrtoint ptr %HystSlope to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 1, ptr %HystSlope, align 1
  %TempRespLim = getelementptr inbounds %struct.SMU71_Discrete_FanTable, ptr %fan_table, i32 0, i32 10
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
  %call278 = tail call i32 %52(ptr noundef %48) #8
  %ulCycleDelay = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 7
  %53 = ptrtoint ptr %ulCycleDelay to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ulCycleDelay, align 4
  %mul281 = mul i32 %54, %call278
  %div282 = udiv i32 %mul281, 1600
  %RefreshPeriod = getelementptr inbounds %struct.SMU71_Discrete_FanTable, ptr %fan_table, i32 0, i32 14
  %55 = ptrtoint ptr %RefreshPeriod to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %div282, ptr %RefreshPeriod, align 1
  %conv283 = trunc i32 %and to i16
  %FdoMax = getelementptr inbounds %struct.SMU71_Discrete_FanTable, ptr %fan_table, i32 0, i32 15
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
  %call288 = tail call i32 %62(ptr noundef %58, i32 noundef 1, i32 noundef -1070596080) #8
  %and289 = lshr i32 %call288, 20
  %conv291 = trunc i32 %and289 to i8
  %TempSrc = getelementptr inbounds %struct.SMU71_Discrete_FanTable, ptr %fan_table, i32 0, i32 16
  %63 = ptrtoint ptr %TempSrc to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv291, ptr %TempSrc, align 1
  %64 = ptrtoint ptr %fan_table_start to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %fan_table_start, align 8
  %call293 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %65, ptr noundef nonnull %fan_table, i32 noundef 36, i32 noundef 262144) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then14, %if.then6, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then1 ], [ 0, %if.then6 ], [ 0, %if.then14 ], [ %call293, %if.end18 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fan_table) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iceland_init_smc_table(ptr noundef %hwmgr) #0 align 64 {
entry:
  %dividers.i = alloca %struct.pp_atomctrl_clock_dividers_vi, align 4
  %voltage_response_time.i.i = alloca i32, align 4
  %ulv_voltage.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  %smc_state_table = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwmgr, align 4
  %pdev.i = getelementptr inbounds %struct.amdgpu_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device.i, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i16 %9, label %sw.default.i [
    i16 26880, label %entry.sw.bb.i_crit_edge
    i16 26883, label %entry.sw.bb.i_crit_edge460
    i16 26881, label %entry.sw.bb2.i_crit_edge
    i16 26882, label %entry.sw.bb2.i_crit_edge461
  ]

entry.sw.bb2.i_crit_edge461:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

entry.sw.bb.i_crit_edge460:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge460
  %power_tune_defaults.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %power_tune_defaults.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @defaults_icelandxt, ptr %power_tune_defaults.i, align 4
  br label %iceland_initialize_power_tune_defaults.exit

sw.bb2.i:                                         ; preds = %entry.sw.bb2.i_crit_edge, %entry.sw.bb2.i_crit_edge461
  %power_tune_defaults3.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %power_tune_defaults3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @defaults_icelandpro, ptr %power_tune_defaults3.i, align 4
  br label %iceland_initialize_power_tune_defaults.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %power_tune_defaults4.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %power_tune_defaults4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @defaults_iceland, ptr %power_tune_defaults4.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #12
  br label %iceland_initialize_power_tune_defaults.exit

iceland_initialize_power_tune_defaults.exit:      ; preds = %sw.default.i, %sw.bb2.i, %sw.bb.i
  %14 = call ptr @memset(ptr %smc_state_table, i32 0, i32 1480)
  %voltage_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %voltage_control to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %voltage_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not = icmp eq i32 %16, 0
  br i1 %cmp.not, label %iceland_initialize_power_tune_defaults.exit.if.end_crit_edge, label %if.then

iceland_initialize_power_tune_defaults.exit.if.end_crit_edge: ; preds = %iceland_initialize_power_tune_defaults.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %iceland_initialize_power_tune_defaults.exit
  %17 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %backend, align 4
  %vddc_voltage_table.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %18, i32 0, i32 41
  %19 = ptrtoint ptr %vddc_voltage_table.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vddc_voltage_table.i.i, align 4
  %VddcLevelCount.i.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 8
  %21 = ptrtoint ptr %VddcLevelCount.i.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %VddcLevelCount.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp1.not.i.i = icmp eq i32 %20, 0
  br i1 %cmp1.not.i.i, label %if.then.iceland_populate_smc_vddc_table.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.then.iceland_populate_smc_vddc_table.exit.i_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %iceland_populate_smc_vddc_table.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then
  %voltage_control.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %18, i32 0, i32 7
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %count.02.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.smu7_hwmgr, ptr %18, i32 0, i32 41, i32 3, i32 %count.02.i.i
  %arrayidx4.i.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 11, i32 %count.02.i.i
  tail call fastcc void @iceland_populate_smc_voltage_table(ptr noundef %hwmgr, ptr noundef %arrayidx.i.i, ptr noundef %arrayidx4.i.i) #8
  %22 = ptrtoint ptr %voltage_control.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %voltage_control.i.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %23, label %for.body.i.i.for.inc.i.i_crit_edge [
    i32 1, label %if.then14.i.i
    i32 2, label %if.then24.i.i
  ]

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then14.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %smio_low.i.i = getelementptr %struct.smu7_hwmgr, ptr %18, i32 0, i32 41, i32 3, i32 %count.02.i.i, i32 1
  %25 = ptrtoint ptr %smio_low.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %smio_low.i.i, align 4
  %Smio.i.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 11, i32 %count.02.i.i, i32 3
  %27 = ptrtoint ptr %Smio.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %Smio.i.i, align 1
  %29 = trunc i32 %26 to i8
  %conv20.i.i = or i8 %28, %29
  store i8 %conv20.i.i, ptr %Smio.i.i, align 1
  br label %for.inc.i.i

if.then24.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %Smio27.i.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 11, i32 %count.02.i.i, i32 3
  %30 = ptrtoint ptr %Smio27.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %Smio27.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then24.i.i, %if.then14.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %count.02.i.i, 1
  %31 = ptrtoint ptr %VddcLevelCount.i.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %VddcLevelCount.i.i, align 1
  %cmp.i.i = icmp ult i32 %inc.i.i, %32
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.iceland_populate_smc_vddc_table.exit.i_crit_edge

for.inc.i.i.iceland_populate_smc_vddc_table.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iceland_populate_smc_vddc_table.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

iceland_populate_smc_vddc_table.exit.i:           ; preds = %for.inc.i.i.iceland_populate_smc_vddc_table.exit.i_crit_edge, %if.then.iceland_populate_smc_vddc_table.exit.i_crit_edge
  %33 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %backend, align 4
  %vddci_voltage_table.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %34, i32 0, i32 42
  %35 = ptrtoint ptr %vddci_voltage_table.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vddci_voltage_table.i.i, align 4
  %VddciLevelCount.i.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 9
  %37 = ptrtoint ptr %VddciLevelCount.i.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %VddciLevelCount.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp1.not.i2.i = icmp eq i32 %36, 0
  br i1 %cmp1.not.i2.i, label %iceland_populate_smc_vdd_ci_table.exit.thread.i, label %for.body.lr.ph.i3.i

iceland_populate_smc_vdd_ci_table.exit.thread.i:  ; preds = %iceland_populate_smc_vddc_table.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %backend, align 4
  %mvdd_voltage_table.i27.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %39, i32 0, i32 43
  %40 = ptrtoint ptr %mvdd_voltage_table.i27.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mvdd_voltage_table.i27.i, align 4
  %MvddLevelCount.i28.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 10
  %42 = ptrtoint ptr %MvddLevelCount.i28.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %MvddLevelCount.i28.i, align 1
  br label %if.end

for.body.lr.ph.i3.i:                              ; preds = %iceland_populate_smc_vddc_table.exit.i
  %vddci_control.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %34, i32 0, i32 40
  br label %for.body.i7.i

for.body.i7.i:                                    ; preds = %for.inc.i14.i.for.body.i7.i_crit_edge, %for.body.lr.ph.i3.i
  %count.02.i4.i = phi i32 [ 0, %for.body.lr.ph.i3.i ], [ %inc.i12.i, %for.inc.i14.i.for.body.i7.i_crit_edge ]
  %arrayidx.i5.i = getelementptr %struct.smu7_hwmgr, ptr %34, i32 0, i32 42, i32 3, i32 %count.02.i4.i
  %arrayidx4.i6.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 12, i32 %count.02.i4.i
  tail call fastcc void @iceland_populate_smc_voltage_table(ptr noundef %hwmgr, ptr noundef %arrayidx.i5.i, ptr noundef %arrayidx4.i6.i) #8
  %43 = ptrtoint ptr %vddci_control.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vddci_control.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp13.i.i = icmp eq i32 %44, 1
  br i1 %cmp13.i.i, label %if.then14.i11.i, label %for.body.i7.i.for.inc.i14.i_crit_edge

for.body.i7.i.for.inc.i14.i_crit_edge:            ; preds = %for.body.i7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i14.i

if.then14.i11.i:                                  ; preds = %for.body.i7.i
  call void @__sanitizer_cov_trace_pc() #10
  %smio_low.i8.i = getelementptr %struct.smu7_hwmgr, ptr %34, i32 0, i32 42, i32 3, i32 %count.02.i4.i, i32 1
  %45 = ptrtoint ptr %smio_low.i8.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %smio_low.i8.i, align 4
  %Smio.i9.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 12, i32 %count.02.i4.i, i32 3
  %47 = ptrtoint ptr %Smio.i9.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %Smio.i9.i, align 1
  %49 = trunc i32 %46 to i8
  %conv20.i10.i = or i8 %48, %49
  store i8 %conv20.i10.i, ptr %Smio.i9.i, align 1
  br label %for.inc.i14.i

for.inc.i14.i:                                    ; preds = %if.then14.i11.i, %for.body.i7.i.for.inc.i14.i_crit_edge
  %inc.i12.i = add nuw i32 %count.02.i4.i, 1
  %50 = ptrtoint ptr %VddciLevelCount.i.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %VddciLevelCount.i.i, align 1
  %cmp.i13.i = icmp ult i32 %inc.i12.i, %51
  br i1 %cmp.i13.i, label %for.inc.i14.i.for.body.i7.i_crit_edge, label %iceland_populate_smc_vdd_ci_table.exit.i

for.inc.i14.i.for.body.i7.i_crit_edge:            ; preds = %for.inc.i14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i7.i

iceland_populate_smc_vdd_ci_table.exit.i:         ; preds = %for.inc.i14.i
  %52 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %backend, align 4
  %mvdd_voltage_table.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %53, i32 0, i32 43
  %54 = ptrtoint ptr %mvdd_voltage_table.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mvdd_voltage_table.i.i, align 4
  %MvddLevelCount.i.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 10
  %56 = ptrtoint ptr %MvddLevelCount.i.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %55, ptr %MvddLevelCount.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp1.not.i17.i = icmp eq i32 %51, 0
  br i1 %cmp1.not.i17.i, label %iceland_populate_smc_vdd_ci_table.exit.i.if.end_crit_edge, label %for.body.lr.ph.i18.i

iceland_populate_smc_vdd_ci_table.exit.i.if.end_crit_edge: ; preds = %iceland_populate_smc_vdd_ci_table.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.lr.ph.i18.i:                             ; preds = %iceland_populate_smc_vdd_ci_table.exit.i
  %mvdd_control.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %53, i32 0, i32 23
  br label %for.body.i21.i

for.body.i21.i:                                   ; preds = %for.inc.i26.i.for.body.i21.i_crit_edge, %for.body.lr.ph.i18.i
  %count.02.i19.i = phi i32 [ 0, %for.body.lr.ph.i18.i ], [ %inc.i24.i, %for.inc.i26.i.for.body.i21.i_crit_edge ]
  %arrayidx.i20.i = getelementptr %struct.smu7_hwmgr, ptr %53, i32 0, i32 43, i32 3, i32 %count.02.i19.i
  %arrayidx3.i.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 13, i32 %count.02.i19.i
  tail call fastcc void @iceland_populate_smc_voltage_table(ptr noundef %hwmgr, ptr noundef %arrayidx.i20.i, ptr noundef %arrayidx3.i.i) #8
  %57 = ptrtoint ptr %mvdd_control.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mvdd_control.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp12.i.i = icmp eq i32 %58, 1
  br i1 %cmp12.i.i, label %if.then13.i.i, label %for.body.i21.i.for.inc.i26.i_crit_edge

for.body.i21.i.for.inc.i26.i_crit_edge:           ; preds = %for.body.i21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i26.i

if.then13.i.i:                                    ; preds = %for.body.i21.i
  call void @__sanitizer_cov_trace_pc() #10
  %smio_low.i22.i = getelementptr %struct.smu7_hwmgr, ptr %53, i32 0, i32 43, i32 3, i32 %count.02.i19.i, i32 1
  %59 = ptrtoint ptr %smio_low.i22.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %smio_low.i22.i, align 4
  %Smio.i23.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 13, i32 %count.02.i19.i, i32 3
  %61 = ptrtoint ptr %Smio.i23.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %Smio.i23.i, align 1
  %63 = trunc i32 %60 to i8
  %conv19.i.i = or i8 %62, %63
  store i8 %conv19.i.i, ptr %Smio.i23.i, align 1
  br label %for.inc.i26.i

for.inc.i26.i:                                    ; preds = %if.then13.i.i, %for.body.i21.i.for.inc.i26.i_crit_edge
  %inc.i24.i = add nuw i32 %count.02.i19.i, 1
  %64 = ptrtoint ptr %VddciLevelCount.i.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %VddciLevelCount.i.i, align 1
  %cmp.i25.i = icmp ult i32 %inc.i24.i, %65
  br i1 %cmp.i25.i, label %for.inc.i26.i.for.body.i21.i_crit_edge, label %for.inc.i26.i.if.end_crit_edge

for.inc.i26.i.if.end_crit_edge:                   ; preds = %for.inc.i26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.inc.i26.i.for.body.i21.i_crit_edge:           ; preds = %for.inc.i26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i21.i

if.end:                                           ; preds = %for.inc.i26.i.if.end_crit_edge, %iceland_populate_smc_vdd_ci_table.exit.i.if.end_crit_edge, %iceland_populate_smc_vdd_ci_table.exit.thread.i, %iceland_initialize_power_tune_defaults.exit.if.end_crit_edge
  %platform_descriptor = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23
  %66 = ptrtoint ptr %platform_descriptor to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %platform_descriptor, align 4
  %and1.i = and i32 %67, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %SystemFlags = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 3
  %68 = ptrtoint ptr %SystemFlags to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %SystemFlags, align 1
  %or = or i32 %69, 1
  store i32 %or, ptr %SystemFlags, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %70 = ptrtoint ptr %platform_descriptor to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %platform_descriptor, align 4
  %and1.i435 = and i32 %71, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i435)
  %cmp.i436.not = icmp eq i32 %and1.i435, 0
  br i1 %cmp.i436.not, label %if.end4.if.end12_crit_edge, label %if.then9

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %SystemFlags10 = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 3
  %72 = ptrtoint ptr %SystemFlags10 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %SystemFlags10, align 1
  %or11 = or i32 %73, 2
  store i32 %or11, ptr %SystemFlags10, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end4.if.end12_crit_edge
  %is_memory_gddr5 = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 12
  %74 = ptrtoint ptr %is_memory_gddr5 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %is_memory_gddr5, align 4, !range !403
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not = icmp eq i8 %75, 0
  br i1 %tobool.not, label %if.end12.if.end16_crit_edge, label %if.then13

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then13:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %SystemFlags14 = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 3
  %76 = ptrtoint ptr %SystemFlags14 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %SystemFlags14, align 1
  %or15 = or i32 %77, 4
  store i32 %or15, ptr %SystemFlags14, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end12.if.end16_crit_edge
  %ulv_supported = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 55
  %78 = ptrtoint ptr %ulv_supported to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %ulv_supported, align 2, !range !403
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool17.not = icmp eq i8 %79, 0
  br i1 %tobool17.not, label %if.end16.if.end32_crit_edge, label %if.then18

if.end16.if.end32_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then18:                                        ; preds = %if.end16
  %ulv_setting = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %voltage_response_time.i.i) #8
  %80 = ptrtoint ptr %voltage_response_time.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %voltage_response_time.i.i, align 4, !annotation !402
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ulv_voltage.i.i) #8
  %81 = ptrtoint ptr %ulv_voltage.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %ulv_voltage.i.i, align 4, !annotation !402
  %82 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %backend, align 4
  %84 = ptrtoint ptr %ulv_setting to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 0, ptr %ulv_setting, align 1
  %CcPwrDynRm1.i.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 3, i32 1
  %85 = ptrtoint ptr %CcPwrDynRm1.i.i to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 0, ptr %CcPwrDynRm1.i.i, align 1
  %call.i.i = call i32 @pp_tables_get_response_times(ptr noundef %hwmgr, ptr noundef nonnull %voltage_response_time.i.i, ptr noundef nonnull %ulv_voltage.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i438 = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i438, label %do.end7.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then18
  %call1.i.i = call i32 @___ratelimit(ptr noundef nonnull @iceland_populate_ulv_level._rs, ptr noundef nonnull @__func__.iceland_populate_ulv_level) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.then21_crit_edge, label %do.end.i.i

if.then.i.i.if.then21_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.108) #12
  br label %if.then21

do.end7.i.i:                                      ; preds = %if.then18
  %86 = ptrtoint ptr %ulv_voltage.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ulv_voltage.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp8.i.i = icmp eq i32 %87, 0
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.end10.i.i

if.then9.i.i:                                     ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %ulv_supported.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %83, i32 0, i32 55
  %88 = ptrtoint ptr %ulv_supported.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %ulv_supported.i.i, align 2
  br label %do.end30

if.end10.i.i:                                     ; preds = %do.end7.i.i
  %voltage_control.i.i439 = getelementptr inbounds %struct.smu7_hwmgr, ptr %83, i32 0, i32 7
  %89 = ptrtoint ptr %voltage_control.i.i439 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %voltage_control.i.i439, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %90)
  %cmp11.not.i.i = icmp eq i32 %90, 2
  %dyn_state23.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29
  %91 = ptrtoint ptr %dyn_state23.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dyn_state23.i.i, align 4
  %v27.i.i = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, ptr %92, i32 2
  %93 = ptrtoint ptr %v27.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %v27.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %87)
  %cmp28.i.i = icmp ult i32 %94, %87
  br i1 %cmp11.not.i.i, label %if.else22.i.i, label %if.then12.i.i

if.then12.i.i:                                    ; preds = %if.end10.i.i
  br i1 %cmp28.i.i, label %if.then14.i.i440, label %if.else.i.i

if.then14.i.i440:                                 ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %VddcOffset.i.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 3, i32 2
  %95 = ptrtoint ptr %VddcOffset.i.i to i32
  call void @__asan_storeN_noabort(i32 %95, i32 2)
  store i16 0, ptr %VddcOffset.i.i, align 1
  br label %if.end41.i.i

if.else.i.i:                                      ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %94, %87
  %conv.i.i = trunc i32 %sub.i.i to i16
  %VddcOffset20.i.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 3, i32 2
  %96 = ptrtoint ptr %VddcOffset20.i.i to i32
  call void @__asan_storeN_noabort(i32 %96, i32 2)
  store i16 %conv.i.i, ptr %VddcOffset20.i.i, align 1
  br label %if.end41.i.i

if.else22.i.i:                                    ; preds = %if.end10.i.i
  br i1 %cmp28.i.i, label %if.then30.i.i, label %if.else31.i.i

if.then30.i.i:                                    ; preds = %if.else22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %VddcOffsetVid.i.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 3, i32 3
  %97 = ptrtoint ptr %VddcOffsetVid.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %VddcOffsetVid.i.i, align 1
  br label %if.end41.i.i

if.else31.i.i:                                    ; preds = %if.else22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub37.i.i = sub i32 %94, %87
  %mul.i.i = mul i32 %sub37.i.i, 100
  %div.i.i = udiv i32 %mul.i.i, 625
  %conv38.i.i = trunc i32 %div.i.i to i8
  %VddcOffsetVid39.i.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 3, i32 3
  %98 = ptrtoint ptr %VddcOffsetVid39.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv38.i.i, ptr %VddcOffsetVid39.i.i, align 1
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.else31.i.i, %if.then30.i.i, %if.else.i.i, %if.then14.i.i440
  %VddcPhase.i.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 3, i32 4
  %99 = ptrtoint ptr %VddcPhase.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %VddcPhase.i.i, align 1
  br label %do.end30

if.then21:                                        ; preds = %do.end.i.i, %if.then.i.i.if.then21_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ulv_voltage.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %voltage_response_time.i.i) #8
  %call22 = call i32 @___ratelimit(ptr noundef nonnull @iceland_init_smc_table._rs, ptr noundef nonnull @__func__.iceland_init_smc_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then21.cleanup_crit_edge, label %if.then21.cleanup.sink.split_crit_edge

if.then21.cleanup.sink.split_crit_edge:           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end30:                                         ; preds = %if.end41.i.i, %if.then9.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ulv_voltage.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %voltage_response_time.i.i) #8
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %100 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %device, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %write_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %write_ind_register to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write_ind_register, align 4
  call void %105(ptr noundef %101, i32 noundef 1, i32 noundef -1071644324, i32 noundef 262197) #8
  br label %if.end32

if.end32:                                         ; preds = %do.end30, %if.end16.if.end32_crit_edge
  %106 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %backend, align 4
  %108 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %smu_backend, align 4
  %pcie_speed_table.i = getelementptr inbounds %struct.smu7_dpm_table, ptr %107, i32 0, i32 2
  %pcie_spc_cap.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %107, i32 0, i32 19
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end32
  %i.01.i = phi i32 [ 0, %if.end32 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %value.i = getelementptr %struct.smu7_dpm_table, ptr %107, i32 0, i32 2, i32 1, i32 %i.01.i, i32 1
  %110 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %value.i, align 4
  %conv.i = trunc i32 %111 to i8
  %arrayidx3.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 22, i32 %i.01.i
  %112 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv.i, ptr %arrayidx3.i, align 1
  %param1.i = getelementptr %struct.smu7_dpm_table, ptr %107, i32 0, i32 2, i32 1, i32 %i.01.i, i32 2
  %113 = ptrtoint ptr %param1.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %param1.i, align 4
  %call.i442 = call zeroext i8 @encode_pcie_lane_width(i32 noundef %114) #8
  %PcieLaneCount.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 22, i32 %i.01.i, i32 1
  %115 = ptrtoint ptr %PcieLaneCount.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %call.i442, ptr %PcieLaneCount.i, align 1
  %EnabledForActivity.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 22, i32 %i.01.i, i32 2
  %116 = ptrtoint ptr %EnabledForActivity.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %EnabledForActivity.i, align 1
  %117 = ptrtoint ptr %pcie_spc_cap.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %pcie_spc_cap.i, align 4
  %conv11.i = trunc i32 %118 to i8
  %SPC.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 22, i32 %i.01.i, i32 3
  %119 = ptrtoint ptr %SPC.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv11.i, ptr %SPC.i, align 1
  %DownThreshold.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 22, i32 %i.01.i, i32 4
  %120 = ptrtoint ptr %DownThreshold.i to i32
  call void @__asan_storeN_noabort(i32 %120, i32 4)
  store i32 5, ptr %DownThreshold.i, align 1
  %UpThreshold.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 22, i32 %i.01.i, i32 5
  %121 = ptrtoint ptr %UpThreshold.i to i32
  call void @__asan_storeN_noabort(i32 %121, i32 4)
  store i32 30, ptr %UpThreshold.i, align 1
  %inc.i = add i32 %i.01.i, 1
  %122 = ptrtoint ptr %pcie_speed_table.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %pcie_speed_table.i, align 4
  %cmp.not.i = icmp ugt i32 %inc.i, %123
  br i1 %cmp.not.i, label %iceland_populate_smc_link_level.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

iceland_populate_smc_link_level.exit:             ; preds = %for.body.i
  %conv20.i = trunc i32 %123 to i8
  %LinkLevelCount.i = getelementptr inbounds %struct.iceland_smumgr, ptr %109, i32 0, i32 1, i32 16
  %124 = ptrtoint ptr %LinkLevelCount.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv20.i, ptr %LinkLevelCount.i, align 2
  %call22.i = call i32 @phm_get_dpm_level_enable_mask_value(ptr noundef %pcie_speed_table.i) #8
  %pcie_dpm_enable_mask.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %107, i32 0, i32 70, i32 6
  %125 = ptrtoint ptr %pcie_dpm_enable_mask.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %call22.i, ptr %pcie_dpm_enable_mask.i, align 4
  %call49 = call i32 @iceland_populate_all_graphic_levels(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp51 = icmp eq i32 %call49, 0
  br i1 %cmp51, label %do.end64, label %if.then52

if.then52:                                        ; preds = %iceland_populate_smc_link_level.exit
  %call53 = call i32 @___ratelimit(ptr noundef nonnull @iceland_init_smc_table._rs.25, ptr noundef nonnull @__func__.iceland_init_smc_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then52.cleanup_crit_edge, label %if.then52.cleanup.sink.split_crit_edge

if.then52.cleanup.sink.split_crit_edge:           ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end64:                                         ; preds = %iceland_populate_smc_link_level.exit
  %call65 = call i32 @iceland_populate_all_memory_levels(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp67 = icmp eq i32 %call65, 0
  br i1 %cmp67, label %do.end80, label %if.then68

if.then68:                                        ; preds = %do.end64
  %call69 = call i32 @___ratelimit(ptr noundef nonnull @iceland_init_smc_table._rs.29, ptr noundef nonnull @__func__.iceland_init_smc_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then68.cleanup_crit_edge, label %if.then68.cleanup.sink.split_crit_edge

if.then68.cleanup.sink.split_crit_edge:           ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then68.cleanup_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end80:                                         ; preds = %do.end64
  %126 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %backend, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dividers.i) #8
  %128 = call ptr @memset(ptr %dividers.i, i32 255, i32 16)
  %clock_registers.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %127, i32 0, i32 11
  %129 = ptrtoint ptr %clock_registers.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %clock_registers.i, align 4
  %vCG_SPLL_FUNC_CNTL_2.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %127, i32 0, i32 11, i32 1
  %131 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_2.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %vCG_SPLL_FUNC_CNTL_2.i, align 4
  %vDLL_CNTL.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %127, i32 0, i32 11, i32 6
  %133 = ptrtoint ptr %vDLL_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %vDLL_CNTL.i, align 4
  %vMCLK_PWRMGT_CNTL.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %127, i32 0, i32 11, i32 7
  %135 = ptrtoint ptr %vMCLK_PWRMGT_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %vMCLK_PWRMGT_CNTL.i, align 4
  %ACPILevel.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 23
  %137 = ptrtoint ptr %ACPILevel.i to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %138 = load i32, ptr %ACPILevel.i, align 1
  %and.i = and i32 %138, -2
  store i32 %and.i, ptr %ACPILevel.i, align 1
  %acpi_vddc.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %127, i32 0, i32 13
  %139 = ptrtoint ptr %acpi_vddc.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %acpi_vddc.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %140)
  %tobool.not.i = icmp eq i16 %140, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.end80.if.end.i_crit_edge

do.end80.if.end.i_crit_edge:                      ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else.i:                                        ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #10
  %min_vddc_in_pptable.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %127, i32 0, i32 27
  %141 = ptrtoint ptr %min_vddc_in_pptable.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %min_vddc_in_pptable.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %do.end80.if.end.i_crit_edge
  %mul.sink.in.in.i = phi i16 [ %142, %if.else.i ], [ %140, %do.end80.if.end.i_crit_edge ]
  %mul.sink.in.i = zext i16 %mul.sink.in.in.i to i32
  %mul.sink.i = shl nuw nsw i32 %mul.sink.in.i, 2
  %143 = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 23, i32 1
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_storeN_noabort(i32 %144, i32 4)
  store i32 %mul.sink.i, ptr %143, align 1
  %MinVddcPhases.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 23, i32 2
  %145 = ptrtoint ptr %MinVddcPhases.i to i32
  call void @__asan_storeN_noabort(i32 %145, i32 4)
  store i32 1, ptr %MinVddcPhases.i, align 1
  %call.i444 = call i32 @atomctrl_get_reference_clock(ptr noundef %hwmgr) #8
  %SclkFrequency.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 23, i32 3
  %146 = ptrtoint ptr %SclkFrequency.i to i32
  call void @__asan_storeN_noabort(i32 %146, i32 4)
  store i32 %call.i444, ptr %SclkFrequency.i, align 1
  %call15.i = call i32 @atomctrl_get_engine_pll_dividers_vi(ptr noundef %hwmgr, i32 noundef %call.i444, ptr noundef nonnull %dividers.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp.i445 = icmp eq i32 %call15.i, 0
  br i1 %cmp.i445, label %do.end26.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end.i
  %call18.i = call i32 @___ratelimit(ptr noundef nonnull @iceland_populate_smc_acpi_level._rs, ptr noundef nonnull @__func__.iceland_populate_smc_acpi_level) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.then17.i.if.then84_crit_edge, label %do.end.i

if.then17.i.if.then84_crit_edge:                  ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then84

do.end.i:                                         ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %call22.i446 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.109) #12
  br label %if.then84

do.end26.i:                                       ; preds = %if.end.i
  %147 = ptrtoint ptr %dividers.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %dividers.i, align 4
  %conv27.i = trunc i32 %148 to i8
  %SclkDid.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 23, i32 4
  %149 = ptrtoint ptr %SclkDid.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %conv27.i, ptr %SclkDid.i, align 1
  %DisplayWatermark.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 23, i32 5
  %150 = ptrtoint ptr %DisplayWatermark.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %DisplayWatermark.i, align 1
  %DeepSleepDivId.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 23, i32 6
  %151 = ptrtoint ptr %DeepSleepDivId.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %DeepSleepDivId.i, align 1
  %and32.i = and i32 %130, -4
  %or33.i = or i32 %and32.i, 1
  %and34.i = and i32 %132, -512
  %or35.i = or i32 %and34.i, 4
  %CgSpllFuncCntl.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 23, i32 8
  %152 = ptrtoint ptr %CgSpllFuncCntl.i to i32
  call void @__asan_storeN_noabort(i32 %152, i32 4)
  store i32 %or33.i, ptr %CgSpllFuncCntl.i, align 1
  %CgSpllFuncCntl2.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 23, i32 9
  %153 = ptrtoint ptr %CgSpllFuncCntl2.i to i32
  call void @__asan_storeN_noabort(i32 %153, i32 4)
  store i32 %or35.i, ptr %CgSpllFuncCntl2.i, align 1
  %vCG_SPLL_FUNC_CNTL_3.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %127, i32 0, i32 11, i32 2
  %154 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_3.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %vCG_SPLL_FUNC_CNTL_3.i, align 4
  %CgSpllFuncCntl3.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 23, i32 10
  %156 = ptrtoint ptr %CgSpllFuncCntl3.i to i32
  call void @__asan_storeN_noabort(i32 %156, i32 4)
  store i32 %155, ptr %CgSpllFuncCntl3.i, align 1
  %vCG_SPLL_FUNC_CNTL_4.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %127, i32 0, i32 11, i32 3
  %157 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_4.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %vCG_SPLL_FUNC_CNTL_4.i, align 4
  %CgSpllFuncCntl4.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 23, i32 11
  %159 = ptrtoint ptr %CgSpllFuncCntl4.i to i32
  call void @__asan_storeN_noabort(i32 %159, i32 4)
  store i32 %158, ptr %CgSpllFuncCntl4.i, align 1
  %vCG_SPLL_SPREAD_SPECTRUM.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %127, i32 0, i32 11, i32 4
  %160 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %vCG_SPLL_SPREAD_SPECTRUM.i, align 4
  %SpllSpreadSpectrum.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 23, i32 12
  %162 = ptrtoint ptr %SpllSpreadSpectrum.i to i32
  call void @__asan_storeN_noabort(i32 %162, i32 4)
  store i32 %161, ptr %SpllSpreadSpectrum.i, align 1
  %vCG_SPLL_SPREAD_SPECTRUM_2.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %127, i32 0, i32 11, i32 5
  %163 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM_2.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %vCG_SPLL_SPREAD_SPECTRUM_2.i, align 4
  %SpllSpreadSpectrum2.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 23, i32 13
  %165 = ptrtoint ptr %SpllSpreadSpectrum2.i to i32
  call void @__asan_storeN_noabort(i32 %165, i32 4)
  store i32 %164, ptr %SpllSpreadSpectrum2.i, align 1
  %CcPwrDynRm.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 23, i32 14
  %166 = ptrtoint ptr %CcPwrDynRm.i to i32
  call void @__asan_storeN_noabort(i32 %166, i32 4)
  store i32 0, ptr %CcPwrDynRm.i, align 1
  %CcPwrDynRm1.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 23, i32 15
  %167 = ptrtoint ptr %CcPwrDynRm1.i to i32
  call void @__asan_storeN_noabort(i32 %167, i32 4)
  store i32 0, ptr %CcPwrDynRm1.i, align 1
  %168 = ptrtoint ptr %143 to i32
  call void @__asan_loadN_noabort(i32 %168, i32 4)
  %169 = load i32, ptr %143, align 1
  %MemoryACPILevel.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 20
  %170 = ptrtoint ptr %MemoryACPILevel.i to i32
  call void @__asan_storeN_noabort(i32 %170, i32 4)
  store i32 %169, ptr %MemoryACPILevel.i, align 1
  %171 = ptrtoint ptr %MinVddcPhases.i to i32
  call void @__asan_loadN_noabort(i32 %171, i32 4)
  %172 = load i32, ptr %MinVddcPhases.i, align 1
  %MinVddcPhases94.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 20, i32 1
  %173 = ptrtoint ptr %MinVddcPhases94.i to i32
  call void @__asan_storeN_noabort(i32 %173, i32 4)
  store i32 %172, ptr %MinVddcPhases94.i, align 1
  %vddci_control.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %127, i32 0, i32 40
  %174 = ptrtoint ptr %vddci_control.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %vddci_control.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %cmp95.i = icmp eq i32 %175, 0
  br i1 %cmp95.i, label %do.end26.i.if.end117.i_crit_edge, label %if.else101.i

do.end26.i.if.end117.i_crit_edge:                 ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117.i

if.else101.i:                                     ; preds = %do.end26.i
  %acpi_vddci.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %127, i32 0, i32 50
  %176 = ptrtoint ptr %acpi_vddci.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %acpi_vddci.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %177)
  %cmp103.not.i = icmp eq i16 %177, 0
  br i1 %cmp103.not.i, label %if.else111.i, label %if.then105.i

if.then105.i:                                     ; preds = %if.else101.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv102.i = zext i16 %177 to i32
  %mul108.i = shl nuw nsw i32 %conv102.i, 2
  br label %if.end117.i

if.else111.i:                                     ; preds = %if.else101.i
  call void @__sanitizer_cov_trace_pc() #10
  %min_vddci_in_pptable.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %127, i32 0, i32 29
  %178 = ptrtoint ptr %min_vddci_in_pptable.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %min_vddci_in_pptable.i, align 2
  %conv112.i = zext i16 %179 to i32
  %mul113.i = shl nuw nsw i32 %conv112.i, 2
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.else111.i, %if.then105.i, %do.end26.i.if.end117.i_crit_edge
  %mul108.sink.i = phi i32 [ %mul108.i, %if.then105.i ], [ %mul113.i, %if.else111.i ], [ %169, %do.end26.i.if.end117.i_crit_edge ]
  %MinVddci110.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 20, i32 2
  %180 = ptrtoint ptr %MinVddci110.i to i32
  call void @__asan_storeN_noabort(i32 %180, i32 4)
  store i32 %mul108.sink.i, ptr %MinVddci110.i, align 1
  %181 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %backend, align 4
  %mvdd_control.i.i447 = getelementptr inbounds %struct.smu7_hwmgr, ptr %182, i32 0, i32 23
  %183 = ptrtoint ptr %mvdd_control.i.i447 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %mvdd_control.i.i447, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %cmp.not.i.i = icmp eq i32 %184, 0
  br i1 %cmp.not.i.i, label %if.end117.i.do.end96_crit_edge, label %for.cond.i.i

if.end117.i.do.end96_crit_edge:                   ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end96

for.cond.i.i:                                     ; preds = %if.end117.i
  %mvdd_dependency_on_mclk.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 3
  %185 = ptrtoint ptr %mvdd_dependency_on_mclk.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %mvdd_dependency_on_mclk.i.i, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %186, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %cmp1.not.i.i448 = icmp eq i32 %188, 0
  br i1 %cmp1.not.i.i448, label %if.then12.i.i451, label %if.then121.i

if.then12.i.i451:                                 ; preds = %for.cond.i.i
  %call.i.i449 = call i32 @___ratelimit(ptr noundef nonnull @iceland_populate_mvdd_value._rs, ptr noundef nonnull @__func__.iceland_populate_mvdd_value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i449)
  %tobool.not.i.i450 = icmp eq i32 %call.i.i449, 0
  br i1 %tobool.not.i.i450, label %if.then12.i.i451.do.end96_crit_edge, label %do.end.i.i452

if.then12.i.i451.do.end96_crit_edge:              ; preds = %if.then12.i.i451
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end96

do.end.i.i452:                                    ; preds = %if.then12.i.i451
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.110) #12
  br label %do.end96

if.then121.i:                                     ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx7.i.i = getelementptr %struct.smu7_hwmgr, ptr %182, i32 0, i32 43, i32 3, i32 0
  %189 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %arrayidx7.i.i, align 4
  %conv122.i = zext i16 %190 to i32
  %mul123.i = shl nuw nsw i32 %conv122.i, 2
  br label %do.end96

if.then84:                                        ; preds = %do.end.i, %if.then17.i.if.then84_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers.i) #8
  %call85 = call i32 @___ratelimit(ptr noundef nonnull @iceland_init_smc_table._rs.33, ptr noundef nonnull @__func__.iceland_init_smc_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then84.cleanup_crit_edge, label %if.then84.cleanup.sink.split_crit_edge

if.then84.cleanup.sink.split_crit_edge:           ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then84.cleanup_crit_edge:                      ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end96:                                         ; preds = %if.then121.i, %do.end.i.i452, %if.then12.i.i451.do.end96_crit_edge, %if.end117.i.do.end96_crit_edge
  %.sink.i = phi i32 [ %mul123.i, %if.then121.i ], [ 0, %do.end.i.i452 ], [ 0, %if.then12.i.i451.do.end96_crit_edge ], [ 0, %if.end117.i.do.end96_crit_edge ]
  %MinMvdd127.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 20, i32 3
  %191 = ptrtoint ptr %MinMvdd127.i to i32
  call void @__asan_storeN_noabort(i32 %191, i32 4)
  store i32 %.sink.i, ptr %MinMvdd127.i, align 1
  %or132.i = and i32 %136, -197377
  %and133.i = or i32 %or132.i, 196608
  %and139.i = and i32 %134, -50331649
  %DllCntl.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 20, i32 26
  %192 = ptrtoint ptr %DllCntl.i to i32
  call void @__asan_storeN_noabort(i32 %192, i32 4)
  store i32 %and139.i, ptr %DllCntl.i, align 1
  %MclkPwrmgtCntl.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 20, i32 25
  %193 = ptrtoint ptr %MclkPwrmgtCntl.i to i32
  call void @__asan_storeN_noabort(i32 %193, i32 4)
  store i32 %and133.i, ptr %MclkPwrmgtCntl.i, align 1
  %vMPLL_AD_FUNC_CNTL.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %127, i32 0, i32 11, i32 8
  %194 = ptrtoint ptr %vMPLL_AD_FUNC_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %vMPLL_AD_FUNC_CNTL.i, align 4
  %MpllAdFuncCntl.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 20, i32 23
  %196 = ptrtoint ptr %MpllAdFuncCntl.i to i32
  call void @__asan_storeN_noabort(i32 %196, i32 4)
  store i32 %195, ptr %MpllAdFuncCntl.i, align 1
  %vMPLL_DQ_FUNC_CNTL.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %127, i32 0, i32 11, i32 9
  %197 = ptrtoint ptr %vMPLL_DQ_FUNC_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %vMPLL_DQ_FUNC_CNTL.i, align 4
  %MpllDqFuncCntl.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 20, i32 24
  %199 = ptrtoint ptr %MpllDqFuncCntl.i to i32
  call void @__asan_storeN_noabort(i32 %199, i32 4)
  store i32 %198, ptr %MpllDqFuncCntl.i, align 1
  %vMPLL_FUNC_CNTL.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %127, i32 0, i32 11, i32 10
  %200 = ptrtoint ptr %vMPLL_FUNC_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %vMPLL_FUNC_CNTL.i, align 4
  %MpllFuncCntl.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 20, i32 20
  %202 = ptrtoint ptr %MpllFuncCntl.i to i32
  call void @__asan_storeN_noabort(i32 %202, i32 4)
  store i32 %201, ptr %MpllFuncCntl.i, align 1
  %vMPLL_FUNC_CNTL_1.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %127, i32 0, i32 11, i32 11
  %203 = ptrtoint ptr %vMPLL_FUNC_CNTL_1.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %vMPLL_FUNC_CNTL_1.i, align 4
  %MpllFuncCntl_1.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 20, i32 21
  %205 = ptrtoint ptr %MpllFuncCntl_1.i to i32
  call void @__asan_storeN_noabort(i32 %205, i32 4)
  store i32 %204, ptr %MpllFuncCntl_1.i, align 1
  %vMPLL_FUNC_CNTL_2.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %127, i32 0, i32 11, i32 12
  %206 = ptrtoint ptr %vMPLL_FUNC_CNTL_2.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %vMPLL_FUNC_CNTL_2.i, align 4
  %MpllFuncCntl_2.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 20, i32 22
  %208 = ptrtoint ptr %MpllFuncCntl_2.i to i32
  call void @__asan_storeN_noabort(i32 %208, i32 4)
  store i32 %207, ptr %MpllFuncCntl_2.i, align 1
  %vMPLL_SS1.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %127, i32 0, i32 11, i32 13
  %209 = ptrtoint ptr %vMPLL_SS1.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %vMPLL_SS1.i, align 4
  %MpllSs1.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 20, i32 27
  %211 = ptrtoint ptr %MpllSs1.i to i32
  call void @__asan_storeN_noabort(i32 %211, i32 4)
  store i32 %210, ptr %MpllSs1.i, align 1
  %vMPLL_SS2.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %127, i32 0, i32 11, i32 14
  %212 = ptrtoint ptr %vMPLL_SS2.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %vMPLL_SS2.i, align 4
  %MpllSs2.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 20, i32 28
  %214 = ptrtoint ptr %MpllSs2.i to i32
  call void @__asan_storeN_noabort(i32 %214, i32 4)
  store i32 %213, ptr %MpllSs2.i, align 1
  %EnabledForThrottle.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 20, i32 11
  %215 = ptrtoint ptr %EnabledForThrottle.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 0, ptr %EnabledForThrottle.i, align 1
  %EnabledForActivity.i453 = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 20, i32 12
  %216 = ptrtoint ptr %EnabledForActivity.i453 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 0, ptr %EnabledForActivity.i453, align 1
  %UpHyst.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 20, i32 13
  %217 = ptrtoint ptr %UpHyst.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 0, ptr %UpHyst.i, align 1
  %DownHyst.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 20, i32 14
  %218 = ptrtoint ptr %DownHyst.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 100, ptr %DownHyst.i, align 1
  %VoltageDownHyst.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 20, i32 15
  %219 = ptrtoint ptr %VoltageDownHyst.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 0, ptr %VoltageDownHyst.i, align 1
  %mclk_activity.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %127, i32 0, i32 102, i32 7
  %220 = ptrtoint ptr %mclk_activity.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %mclk_activity.i, align 2
  %ActivityLevel.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 20, i32 17
  %222 = ptrtoint ptr %ActivityLevel.i to i32
  call void @__asan_storeN_noabort(i32 %222, i32 2)
  store i16 %221, ptr %ActivityLevel.i, align 1
  %EdcReadEnable.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 20, i32 5
  %223 = call ptr @memset(ptr %EdcReadEnable.i, i32 0, i32 5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers.i) #8
  %call129 = call fastcc i32 @iceland_program_memory_timing_parameters(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %cmp131 = icmp eq i32 %call129, 0
  br i1 %cmp131, label %do.end144, label %if.then132

if.then132:                                       ; preds = %do.end96
  %call133 = call i32 @___ratelimit(ptr noundef nonnull @iceland_init_smc_table._rs.45, ptr noundef nonnull @__func__.iceland_init_smc_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.then132.cleanup_crit_edge, label %if.then132.cleanup.sink.split_crit_edge

if.then132.cleanup.sink.split_crit_edge:          ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then132.cleanup_crit_edge:                     ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end144:                                        ; preds = %do.end96
  %GraphicsBootLevel = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 26
  %224 = ptrtoint ptr %GraphicsBootLevel to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 0, ptr %GraphicsBootLevel, align 1
  %MemoryBootLevel = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 34
  %225 = ptrtoint ptr %MemoryBootLevel to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 0, ptr %MemoryBootLevel, align 1
  call fastcc void @iceland_populate_smc_boot_level(ptr noundef %hwmgr, ptr noundef %smc_state_table)
  call fastcc void @iceland_populate_smc_initial_state(ptr noundef %hwmgr)
  call fastcc void @iceland_populate_bapm_parameters_in_dpm_table(ptr noundef %hwmgr)
  %GraphicsVoltageChangeEnable = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 27
  %thermal_temp_setting = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 69
  %temperature_high = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 69, i32 1
  %226 = call ptr @memset(ptr %GraphicsVoltageChangeEnable, i32 1, i32 5)
  %227 = ptrtoint ptr %temperature_high to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %temperature_high, align 4
  %mul = shl i32 %228, 8
  %div = sdiv i32 %mul, 1000
  %conv = trunc i32 %div to i16
  %TemperatureLimitHigh = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 32
  %229 = ptrtoint ptr %TemperatureLimitHigh to i32
  call void @__asan_storeN_noabort(i32 %229, i32 2)
  store i16 %conv, ptr %TemperatureLimitHigh, align 1
  %230 = ptrtoint ptr %thermal_temp_setting to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %thermal_temp_setting, align 4
  %mul210 = shl i32 %231, 8
  %div211 = sdiv i32 %mul210, 1000
  %conv212 = trunc i32 %div211 to i16
  %TemperatureLimitLow = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 33
  %232 = ptrtoint ptr %TemperatureLimitLow to i32
  call void @__asan_storeN_noabort(i32 %232, i32 2)
  store i16 %conv212, ptr %TemperatureLimitLow, align 1
  %MemoryVoltageChangeEnable = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 35
  %233 = ptrtoint ptr %MemoryVoltageChangeEnable to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 1, ptr %MemoryVoltageChangeEnable, align 1
  %MemoryInterval = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 36
  %234 = ptrtoint ptr %MemoryInterval to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 1, ptr %MemoryInterval, align 1
  %VoltageResponseTime = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 40
  %235 = ptrtoint ptr %VoltageResponseTime to i32
  call void @__asan_storeN_noabort(i32 %235, i32 2)
  store i16 0, ptr %VoltageResponseTime, align 1
  %PhaseResponseTime = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 41
  %236 = ptrtoint ptr %PhaseResponseTime to i32
  call void @__asan_storeN_noabort(i32 %236, i32 2)
  store i16 0, ptr %PhaseResponseTime, align 1
  %MemoryThermThrottleEnable = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 37
  %237 = ptrtoint ptr %MemoryThermThrottleEnable to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 1, ptr %MemoryThermThrottleEnable, align 1
  %PCIeBootLinkLevel = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 42
  %238 = ptrtoint ptr %PCIeBootLinkLevel to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 0, ptr %PCIeBootLinkLevel, align 1
  %PCIeGenInterval = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 43
  %239 = ptrtoint ptr %PCIeGenInterval to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 1, ptr %PCIeGenInterval, align 1
  %call213 = call fastcc i32 @iceland_populate_smc_svi2_config(ptr noundef %hwmgr, ptr noundef %smc_state_table)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call213)
  %cmp215 = icmp eq i32 %call213, 0
  br i1 %cmp215, label %do.end229, label %if.then217

if.then217:                                       ; preds = %do.end144
  %call218 = call i32 @___ratelimit(ptr noundef nonnull @iceland_init_smc_table._rs.65, ptr noundef nonnull @__func__.iceland_init_smc_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %if.then217.cleanup_crit_edge, label %if.then217.cleanup.sink.split_crit_edge

if.then217.cleanup.sink.split_crit_edge:          ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then217.cleanup_crit_edge:                     ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end229:                                        ; preds = %do.end144
  %ThermGpio = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 49
  %240 = ptrtoint ptr %ThermGpio to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 17, ptr %ThermGpio, align 1
  %SclkStepSize = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 24
  %SystemFlags230 = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 3
  %241 = ptrtoint ptr %SclkStepSize to i32
  call void @__asan_storeN_noabort(i32 %241, i32 4)
  store i32 16384, ptr %SclkStepSize, align 1
  %BootVddc = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 61
  %242 = ptrtoint ptr %BootVddc to i32
  call void @__asan_loadN_noabort(i32 %242, i32 2)
  %243 = load i16, ptr %BootVddc, align 1
  %mul247 = shl i16 %243, 2
  store i16 %mul247, ptr %BootVddc, align 1
  %BootVddci = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 62
  %244 = ptrtoint ptr %BootVddci to i32
  call void @__asan_loadN_noabort(i32 %244, i32 2)
  %245 = load i16, ptr %BootVddci, align 1
  %mul251 = shl i16 %245, 2
  store i16 %mul251, ptr %BootVddci, align 1
  %BootMVdd = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 63
  %246 = ptrtoint ptr %BootMVdd to i32
  call void @__asan_loadN_noabort(i32 %246, i32 2)
  %247 = load i16, ptr %BootMVdd, align 1
  %mul255 = shl i16 %247, 2
  store i16 %mul255, ptr %BootMVdd, align 1
  %dpm_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 4
  %248 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %dpm_table_start, align 8
  %add = add i32 %249, 108
  %call259 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add, ptr noundef %SystemFlags230, i32 noundef 1372, i32 noundef 262144) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call259)
  %cmp261 = icmp eq i32 %call259, 0
  br i1 %cmp261, label %do.end275, label %if.then263

if.then263:                                       ; preds = %do.end229
  %call264 = call i32 @___ratelimit(ptr noundef nonnull @iceland_init_smc_table._rs.69, ptr noundef nonnull @__func__.iceland_init_smc_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call264)
  %tobool265.not = icmp eq i32 %call264, 0
  br i1 %tobool265.not, label %if.then263.cleanup_crit_edge, label %if.then263.cleanup.sink.split_crit_edge

if.then263.cleanup.sink.split_crit_edge:          ; preds = %if.then263
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then263.cleanup_crit_edge:                     ; preds = %if.then263
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end275:                                        ; preds = %do.end229
  %ulv_setting_starts = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 8
  %250 = ptrtoint ptr %ulv_setting_starts to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %ulv_setting_starts, align 8
  %ulv_setting277 = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 3
  %call278 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %251, ptr noundef %ulv_setting277, i32 noundef 16, i32 noundef 262144) #8
  %call279 = call fastcc i32 @iceland_populate_initial_mc_reg_table(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call279)
  %cmp281 = icmp eq i32 %call279, 0
  br i1 %cmp281, label %do.end295, label %if.then283

if.then283:                                       ; preds = %do.end275
  %call284 = call i32 @___ratelimit(ptr noundef nonnull @iceland_init_smc_table._rs.73, ptr noundef nonnull @__func__.iceland_init_smc_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call284)
  %tobool285.not = icmp eq i32 %call284, 0
  br i1 %tobool285.not, label %if.then283.cleanup_crit_edge, label %if.then283.cleanup.sink.split_crit_edge

if.then283.cleanup.sink.split_crit_edge:          ; preds = %if.then283
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then283.cleanup_crit_edge:                     ; preds = %if.then283
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end295:                                        ; preds = %do.end275
  %call296 = call fastcc i32 @iceland_populate_pm_fuses(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call296)
  %cmp298 = icmp eq i32 %call296, 0
  br i1 %cmp298, label %do.end295.cleanup_crit_edge, label %if.then300

do.end295.cleanup_crit_edge:                      ; preds = %do.end295
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then300:                                       ; preds = %do.end295
  %call301 = call i32 @___ratelimit(ptr noundef nonnull @iceland_init_smc_table._rs.77, ptr noundef nonnull @__func__.iceland_init_smc_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call301)
  %tobool302.not = icmp eq i32 %call301, 0
  br i1 %tobool302.not, label %if.then300.cleanup_crit_edge, label %if.then300.cleanup.sink.split_crit_edge

if.then300.cleanup.sink.split_crit_edge:          ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then300.cleanup_crit_edge:                     ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then300.cleanup.sink.split_crit_edge, %if.then283.cleanup.sink.split_crit_edge, %if.then263.cleanup.sink.split_crit_edge, %if.then217.cleanup.sink.split_crit_edge, %if.then132.cleanup.sink.split_crit_edge, %if.then84.cleanup.sink.split_crit_edge, %if.then68.cleanup.sink.split_crit_edge, %if.then52.cleanup.sink.split_crit_edge, %if.then21.cleanup.sink.split_crit_edge
  %.str.80.sink = phi ptr [ @.str.20, %if.then21.cleanup.sink.split_crit_edge ], [ @.str.28, %if.then52.cleanup.sink.split_crit_edge ], [ @.str.32, %if.then68.cleanup.sink.split_crit_edge ], [ @.str.36, %if.then84.cleanup.sink.split_crit_edge ], [ @.str.48, %if.then132.cleanup.sink.split_crit_edge ], [ @.str.68, %if.then217.cleanup.sink.split_crit_edge ], [ @.str.72, %if.then263.cleanup.sink.split_crit_edge ], [ @.str.76, %if.then283.cleanup.sink.split_crit_edge ], [ @.str.80, %if.then300.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i.i, %if.then21.cleanup.sink.split_crit_edge ], [ %call49, %if.then52.cleanup.sink.split_crit_edge ], [ %call65, %if.then68.cleanup.sink.split_crit_edge ], [ %call15.i, %if.then84.cleanup.sink.split_crit_edge ], [ %call129, %if.then132.cleanup.sink.split_crit_edge ], [ %call213, %if.then217.cleanup.sink.split_crit_edge ], [ %call259, %if.then263.cleanup.sink.split_crit_edge ], [ %call279, %if.then283.cleanup.sink.split_crit_edge ], [ %call296, %if.then300.cleanup.sink.split_crit_edge ]
  %call308 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %.str.80.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then300.cleanup_crit_edge, %do.end295.cleanup_crit_edge, %if.then283.cleanup_crit_edge, %if.then263.cleanup_crit_edge, %if.then217.cleanup_crit_edge, %if.then132.cleanup_crit_edge, %if.then84.cleanup_crit_edge, %if.then68.cleanup_crit_edge, %if.then52.cleanup_crit_edge, %if.then21.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.then21.cleanup_crit_edge ], [ %call49, %if.then52.cleanup_crit_edge ], [ %call65, %if.then68.cleanup_crit_edge ], [ %call15.i, %if.then84.cleanup_crit_edge ], [ %call129, %if.then132.cleanup_crit_edge ], [ %call213, %if.then217.cleanup_crit_edge ], [ %call259, %if.then263.cleanup_crit_edge ], [ %call279, %if.then283.cleanup_crit_edge ], [ %call296, %if.then300.cleanup_crit_edge ], [ 0, %do.end295.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iceland_populate_all_graphic_levels(ptr noundef %hwmgr) #0 align 64 {
entry:
  %dividers.i.i = alloca %struct.pp_atomctrl_clock_dividers_vi, align 4
  %ss_info.i.i = alloca %struct.pp_atomctrl_internal_ss_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  %add = add i32 %5, 292
  %GraphicsLevel = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 19
  %6 = call ptr @memset(ptr %GraphicsLevel, i32 0, i32 384)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp164.not = icmp eq i32 %8, 0
  br i1 %cmp164.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %uc_pll_ref_div.i.i = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_vi, ptr %dividers.i.i, i32 0, i32 3
  %ul_fb_div.i.i = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_vi, ptr %dividers.i.i, i32 0, i32 2
  %platform_descriptor.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23
  %uc_pll_post_div.i.i = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_vi, ptr %dividers.i.i, i32 0, i32 4
  %9 = getelementptr inbounds %struct.pp_atomctrl_internal_ss_info, ptr %ss_info.i.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.pp_atomctrl_internal_ss_info, ptr %ss_info.i.i, i32 0, i32 2
  %dyn_state.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29
  %vddc_phase_shed_limits_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 14
  %display_config.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 45
  %arrayidx.i105.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0165 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %value = getelementptr %struct.smu7_single_dpm_table, ptr %1, i32 0, i32 1, i32 %i.0165, i32 1
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 4
  %arrayidx6 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 19, i32 %i.0165
  %13 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %backend, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dividers.i.i) #8
  %15 = call ptr @memset(ptr %dividers.i.i, i32 255, i32 16)
  %vCG_SPLL_FUNC_CNTL_3.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %14, i32 0, i32 11, i32 2
  %16 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_3.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vCG_SPLL_FUNC_CNTL_3.i.i, align 4
  %vCG_SPLL_FUNC_CNTL_4.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %14, i32 0, i32 11, i32 3
  %18 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_4.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vCG_SPLL_FUNC_CNTL_4.i.i, align 4
  %vCG_SPLL_SPREAD_SPECTRUM.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %14, i32 0, i32 11, i32 4
  %20 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vCG_SPLL_SPREAD_SPECTRUM.i.i, align 4
  %vCG_SPLL_SPREAD_SPECTRUM_2.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %14, i32 0, i32 11, i32 5
  %22 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM_2.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vCG_SPLL_SPREAD_SPECTRUM_2.i.i, align 4
  %call.i.i = call i32 @atomctrl_get_engine_pll_dividers_vi(ptr noundef %hwmgr, i32 noundef %12, ptr noundef nonnull %dividers.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end11.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body
  %call5.i.i = call i32 @___ratelimit(ptr noundef nonnull @iceland_calculate_sclk_params._rs, ptr noundef nonnull @__func__.iceland_calculate_sclk_params) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.iceland_calculate_sclk_params.exit.i_crit_edge, label %do.end.i.i

if.then.i.i.iceland_calculate_sclk_params.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iceland_calculate_sclk_params.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.109) #12
  br label %iceland_calculate_sclk_params.exit.i

do.end11.i.i:                                     ; preds = %for.body
  %call12.i.i = call i32 @atomctrl_get_reference_clock(ptr noundef %hwmgr) #8
  %24 = ptrtoint ptr %uc_pll_ref_div.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %uc_pll_ref_div.i.i, align 4
  %conv.i.i = zext i8 %25 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 1
  %26 = ptrtoint ptr %ul_fb_div.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ul_fb_div.i.i, align 4
  %and.i.i = and i32 %27, 67108863
  %and22.i.i = and i32 %17, -335544320
  %or25.i.i = or i32 %and22.i.i, %and.i.i
  %or27.i.i = or i32 %or25.i.i, 268435456
  %28 = ptrtoint ptr %platform_descriptor.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %platform_descriptor.i.i, align 4
  %and1.i.i.i = and i32 %29, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %cmp.i.not.i.i, label %do.end11.i.i.if.end53.i.i_crit_edge, label %if.then29.i.i

do.end11.i.i.if.end53.i.i_crit_edge:              ; preds = %do.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i.i

if.then29.i.i:                                    ; preds = %do.end11.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ss_info.i.i) #8
  %30 = ptrtoint ptr %ss_info.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %ss_info.i.i, align 4, !annotation !402
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %9, align 4, !annotation !402
  %32 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %10, align 4, !annotation !402
  %33 = ptrtoint ptr %uc_pll_post_div.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %uc_pll_post_div.i.i, align 1
  %conv31.i.i = zext i8 %34 to i32
  %mul.i.i = mul i32 %12, %conv31.i.i
  %call32.i.i = call i32 @atomctrl_get_engine_clock_spread_spectrum(ptr noundef %hwmgr, i32 noundef %mul.i.i, ptr noundef nonnull %ss_info.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i)
  %cmp33.i.i = icmp eq i32 %call32.i.i, 0
  br i1 %cmp33.i.i, label %if.then35.i.i, label %if.then29.i.i.if.end52.i.i_crit_edge

if.then29.i.i.if.end52.i.i_crit_edge:             ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52.i.i

if.then35.i.i:                                    ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul36.i.i = mul i32 %call12.i.i, 5
  %35 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %9, align 4
  %mul37.i.i = mul i32 %36, %add.i.i
  %div.i.i = udiv i32 %mul36.i.i, %mul37.i.i
  %37 = ptrtoint ptr %ss_info.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ss_info.i.i, align 4
  %mul38.i.i = shl nuw nsw i32 %and.i.i, 2
  %mul39.i.i = mul i32 %mul38.i.i, %38
  %mul40.i.i = mul i32 %div.i.i, 10000
  %div41.i.i = udiv i32 %mul39.i.i, %mul40.i.i
  %and42.i.i = and i32 %21, -65522
  %shl43.i.i = shl i32 %div.i.i, 4
  %and44.i.i = and i32 %shl43.i.i, 65520
  %or45.i.i = or i32 %and42.i.i, %and44.i.i
  %or47.i.i = or i32 %or45.i.i, 1
  %and48.i.i = and i32 %23, -67108864
  %and50.i.i = and i32 %div41.i.i, 67108863
  %or51.i.i = or i32 %and50.i.i, %and48.i.i
  br label %if.end52.i.i

if.end52.i.i:                                     ; preds = %if.then35.i.i, %if.then29.i.i.if.end52.i.i_crit_edge
  %cg_spll_spread_spectrum.0.i.i = phi i32 [ %or47.i.i, %if.then35.i.i ], [ %21, %if.then29.i.i.if.end52.i.i_crit_edge ]
  %cg_spll_spread_spectrum_2.0.i.i = phi i32 [ %or51.i.i, %if.then35.i.i ], [ %23, %if.then29.i.i.if.end52.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ss_info.i.i) #8
  br label %if.end53.i.i

if.end53.i.i:                                     ; preds = %if.end52.i.i, %do.end11.i.i.if.end53.i.i_crit_edge
  %cg_spll_spread_spectrum.1.i.i = phi i32 [ %cg_spll_spread_spectrum.0.i.i, %if.end52.i.i ], [ %21, %do.end11.i.i.if.end53.i.i_crit_edge ]
  %cg_spll_spread_spectrum_2.1.i.i = phi i32 [ %cg_spll_spread_spectrum_2.0.i.i, %if.end52.i.i ], [ %23, %do.end11.i.i.if.end53.i.i_crit_edge ]
  %SclkFrequency.i.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 19, i32 %i.0165, i32 2
  %39 = ptrtoint ptr %SclkFrequency.i.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %12, ptr %SclkFrequency.i.i, align 1
  %CgSpllFuncCntl3.i.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 19, i32 %i.0165, i32 6
  %40 = ptrtoint ptr %CgSpllFuncCntl3.i.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %or27.i.i, ptr %CgSpllFuncCntl3.i.i, align 1
  %CgSpllFuncCntl4.i.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 19, i32 %i.0165, i32 7
  %41 = ptrtoint ptr %CgSpllFuncCntl4.i.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %19, ptr %CgSpllFuncCntl4.i.i, align 1
  %SpllSpreadSpectrum.i.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 19, i32 %i.0165, i32 8
  %42 = ptrtoint ptr %SpllSpreadSpectrum.i.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %cg_spll_spread_spectrum.1.i.i, ptr %SpllSpreadSpectrum.i.i, align 1
  %SpllSpreadSpectrum2.i.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 19, i32 %i.0165, i32 9
  %43 = ptrtoint ptr %SpllSpreadSpectrum2.i.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %cg_spll_spread_spectrum_2.1.i.i, ptr %SpllSpreadSpectrum2.i.i, align 1
  %44 = ptrtoint ptr %dividers.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dividers.i.i, align 4
  %conv54.i.i = trunc i32 %45 to i8
  %SclkDid.i.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 19, i32 %i.0165, i32 12
  %46 = ptrtoint ptr %SclkDid.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv54.i.i, ptr %SclkDid.i.i, align 1
  br label %iceland_calculate_sclk_params.exit.i

iceland_calculate_sclk_params.exit.i:             ; preds = %if.end53.i.i, %do.end.i.i, %if.then.i.i.iceland_calculate_sclk_params.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers.i.i) #8
  %47 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dyn_state.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i97.i = icmp eq i32 %50, 0
  br i1 %cmp.i97.i, label %if.then.i, label %iceland_calculate_sclk_params.exit.i.for.body.i.i_crit_edge

iceland_calculate_sclk_params.exit.i.for.body.i.i_crit_edge: ; preds = %iceland_calculate_sclk_params.exit.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %iceland_calculate_sclk_params.exit.i.for.body.i.i_crit_edge
  %i.03.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %iceland_calculate_sclk_params.exit.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %48, i32 0, i32 1, i32 %i.03.i.i
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %12)
  %cmp3.not.i.i = icmp ult i32 %52, %12
  br i1 %cmp3.not.i.i, label %for.inc.i.i, label %for.body.i.i.do.end8.i_crit_edge

for.body.i.i.do.end8.i_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %50
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %50, -1
  br label %do.end8.i

if.then.i:                                        ; preds = %iceland_calculate_sclk_params.exit.i
  %call2.i = call i32 @___ratelimit(ptr noundef nonnull @iceland_populate_single_graphic_level._rs, ptr noundef nonnull @__func__.iceland_populate_single_graphic_level) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.then.i.cleanup_crit_edge, label %do.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.175) #12
  br label %cleanup

do.end8.i:                                        ; preds = %for.end.i.i, %for.body.i.i.do.end8.i_crit_edge
  %sub.sink.i.i = phi i32 [ %sub.i.i, %for.end.i.i ], [ %i.03.i.i, %for.body.i.i.do.end8.i_crit_edge ]
  %v10.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %48, i32 0, i32 1, i32 %sub.sink.i.i, i32 1
  %53 = ptrtoint ptr %v10.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %v10.i.i, align 4
  %55 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx6, align 4
  %SclkFrequency.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 19, i32 %i.0165, i32 2
  %56 = ptrtoint ptr %SclkFrequency.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %12, ptr %SclkFrequency.i, align 1
  %MinVddcPhases.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 19, i32 %i.0165, i32 1
  %57 = ptrtoint ptr %MinVddcPhases.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 1, ptr %MinVddcPhases.i, align 1
  %vddc_phase_shed_control.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %14, i32 0, i32 67
  %58 = ptrtoint ptr %vddc_phase_shed_control.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %vddc_phase_shed_control.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool9.not.i = icmp eq i8 %59, 0
  br i1 %tobool9.not.i, label %do.end8.i.if.end14.i_crit_edge, label %if.then10.i

do.end8.i.if.end14.i_crit_edge:                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then10.i:                                      ; preds = %do.end8.i
  %60 = ptrtoint ptr %vddc_phase_shed_limits_table.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vddc_phase_shed_limits_table.i, align 4
  %62 = ptrtoint ptr %MinVddcPhases.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %MinVddcPhases.i, align 4
  %63 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp2.not.i.i = icmp eq i32 %64, 0
  br i1 %cmp2.not.i.i, label %if.then10.i.if.end14.i_crit_edge, label %if.then10.i.for.body.i99.i_crit_edge

if.then10.i.for.body.i99.i_crit_edge:             ; preds = %if.then10.i
  br label %for.body.i99.i

if.then10.i.if.end14.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

for.body.i99.i:                                   ; preds = %for.inc.i103.i.for.body.i99.i_crit_edge, %if.then10.i.for.body.i99.i_crit_edge
  %i.03.i98.i = phi i32 [ %inc.i101.i, %for.inc.i103.i.for.body.i99.i_crit_edge ], [ 0, %if.then10.i.for.body.i99.i_crit_edge ]
  %Sclk.i.i = getelementptr %struct.phm_phase_shedding_limits_table, ptr %61, i32 0, i32 1, i32 %i.03.i98.i, i32 1
  %65 = ptrtoint ptr %Sclk.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %Sclk.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %12)
  %cmp1.i.i = icmp ugt i32 %66, %12
  br i1 %cmp1.i.i, label %if.then.i100.i, label %for.inc.i103.i

if.then.i100.i:                                   ; preds = %for.body.i99.i
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %MinVddcPhases.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %i.03.i98.i, ptr %MinVddcPhases.i, align 4
  br label %if.end14.i

for.inc.i103.i:                                   ; preds = %for.body.i99.i
  %inc.i101.i = add nuw i32 %i.03.i98.i, 1
  %exitcond.not.i102.i = icmp eq i32 %inc.i101.i, %64
  br i1 %exitcond.not.i102.i, label %for.inc.i103.i.if.end14.i_crit_edge, label %for.inc.i103.i.for.body.i99.i_crit_edge

for.inc.i103.i.for.body.i99.i_crit_edge:          ; preds = %for.inc.i103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i99.i

for.inc.i103.i.if.end14.i_crit_edge:              ; preds = %for.inc.i103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.end14.i:                                       ; preds = %for.inc.i103.i.if.end14.i_crit_edge, %if.then.i100.i, %if.then10.i.if.end14.i_crit_edge, %do.end8.i.if.end14.i_crit_edge
  %sclk_activity.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %14, i32 0, i32 102, i32 3
  %68 = ptrtoint ptr %sclk_activity.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %sclk_activity.i, align 4
  %ActivityLevel.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 19, i32 %i.0165, i32 5
  %70 = ptrtoint ptr %ActivityLevel.i to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %69, ptr %ActivityLevel.i, align 1
  %CcPwrDynRm.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 19, i32 %i.0165, i32 10
  %71 = ptrtoint ptr %CcPwrDynRm.i to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 0, ptr %CcPwrDynRm.i, align 1
  %CcPwrDynRm1.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 19, i32 %i.0165, i32 11
  %72 = ptrtoint ptr %CcPwrDynRm1.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 0, ptr %CcPwrDynRm1.i, align 1
  %EnabledForActivity.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 19, i32 %i.0165, i32 14
  %73 = ptrtoint ptr %EnabledForActivity.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %EnabledForActivity.i, align 1
  %EnabledForThrottle.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 19, i32 %i.0165, i32 15
  %74 = ptrtoint ptr %EnabledForThrottle.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %EnabledForThrottle.i, align 1
  %sclk_up_hyst.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %14, i32 0, i32 102, i32 1
  %75 = ptrtoint ptr %sclk_up_hyst.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %sclk_up_hyst.i, align 1
  %UpHyst.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 19, i32 %i.0165, i32 16
  %77 = ptrtoint ptr %UpHyst.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %UpHyst.i, align 1
  %sclk_down_hyst.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %14, i32 0, i32 102, i32 2
  %78 = ptrtoint ptr %sclk_down_hyst.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %sclk_down_hyst.i, align 2
  %DownHyst.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 19, i32 %i.0165, i32 17
  %80 = ptrtoint ptr %DownHyst.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %DownHyst.i, align 1
  %VoltageDownHyst.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 19, i32 %i.0165, i32 18
  %81 = ptrtoint ptr %VoltageDownHyst.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %VoltageDownHyst.i, align 1
  %PowerThrottle.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 19, i32 %i.0165, i32 19
  %82 = ptrtoint ptr %PowerThrottle.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %PowerThrottle.i, align 1
  %83 = ptrtoint ptr %display_config.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %display_config.i, align 4
  %min_core_set_clock_in_sr.i = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %84, i32 0, i32 10
  %85 = ptrtoint ptr %min_core_set_clock_in_sr.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %min_core_set_clock_in_sr.i, align 4
  %display_timing.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %14, i32 0, i32 68
  %87 = ptrtoint ptr %display_timing.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %display_timing.i, align 4
  %88 = ptrtoint ptr %arrayidx.i105.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i105.i, align 4
  %and1.i.i = and i32 %89, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.i106.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %cmp.i106.not.i, label %if.end14.i.if.end_crit_edge, label %if.then18.i

if.end14.i.if.end_crit_edge:                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %call21.i = call zeroext i8 @smu7_get_sleep_divider_id_from_clock(i32 noundef %12, i32 noundef %86) #8
  %DeepSleepDivId.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 19, i32 %i.0165, i32 4
  %90 = ptrtoint ptr %DeepSleepDivId.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %call21.i, ptr %DeepSleepDivId.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then18.i, %if.end14.i.if.end_crit_edge
  %DisplayWatermark.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 19, i32 %i.0165, i32 13
  %91 = ptrtoint ptr %DisplayWatermark.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %DisplayWatermark.i, align 1
  %92 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %arrayidx6, align 1
  %mul.i = shl i32 %93, 2
  store i32 %mul.i, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0165)
  %cmp8 = icmp ugt i32 %i.0165, 1
  br i1 %cmp8, label %if.then9, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %DeepSleepDivId = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 19, i32 %i.0165, i32 4
  %94 = ptrtoint ptr %DeepSleepDivId to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %DeepSleepDivId, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %i.0165, 1
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %1, align 4
  %cmp = icmp ult i32 %inc, %96
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %EnabledForActivity = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 19, i32 0, i32 14
  %97 = ptrtoint ptr %EnabledForActivity to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 1, ptr %EnabledForActivity, align 2
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp19 = icmp ugt i32 %99, 1
  br i1 %cmp19, label %if.then20, label %for.end.if.end26_crit_edge

for.end.if.end26_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then20:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %99, -1
  %DisplayWatermark = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 19, i32 %sub, i32 13
  %100 = ptrtoint ptr %DisplayWatermark to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %DisplayWatermark, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %for.end.if.end26_crit_edge
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %1, align 4
  %conv = trunc i32 %102 to i8
  %GraphicsDpmLevelCount = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 14
  %103 = ptrtoint ptr %GraphicsDpmLevelCount to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv, ptr %GraphicsDpmLevelCount, align 4
  %call31 = call i32 @phm_get_dpm_level_enable_mask_value(ptr noundef %1) #8
  %sclk_dpm_enable_mask = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 70, i32 4
  %104 = ptrtoint ptr %sclk_dpm_enable_mask to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %call31, ptr %sclk_dpm_enable_mask, align 4
  %pcie_dpm_enable_mask = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 70, i32 6
  %105 = ptrtoint ptr %pcie_dpm_enable_mask to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pcie_dpm_enable_mask, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end26
  %highest_pcie_level_enabled.0 = phi i8 [ 0, %if.end26 ], [ %inc37, %while.cond.while.cond_crit_edge ]
  %conv33 = zext i8 %highest_pcie_level_enabled.0 to i32
  %shl = shl i32 2, %conv33
  %and = and i32 %shl, %106
  %cmp35.not = icmp eq i32 %and, 0
  %inc37 = add i8 %highest_pcie_level_enabled.0, 1
  br i1 %cmp35.not, label %while.cond.while.cond38_crit_edge, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.cond.while.cond38_crit_edge:                ; preds = %while.cond
  br label %while.cond38

while.cond38:                                     ; preds = %while.cond38.while.cond38_crit_edge, %while.cond.while.cond38_crit_edge
  %lowest_pcie_level_enabled.0 = phi i8 [ %inc47, %while.cond38.while.cond38_crit_edge ], [ 0, %while.cond.while.cond38_crit_edge ]
  %conv41 = zext i8 %lowest_pcie_level_enabled.0 to i32
  %shl42 = shl nuw i32 1, %conv41
  %and43 = and i32 %shl42, %106
  %cmp44 = icmp eq i32 %and43, 0
  %inc47 = add i8 %lowest_pcie_level_enabled.0, 1
  br i1 %cmp44, label %while.cond38.while.cond38_crit_edge, label %while.cond49.preheader

while.cond38.while.cond38_crit_edge:              ; preds = %while.cond38
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond38

while.cond49.preheader:                           ; preds = %while.cond38
  %add57 = add nuw nsw i32 %conv41, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %highest_pcie_level_enabled.0)
  %cmp52168.not = icmp eq i8 %highest_pcie_level_enabled.0, 0
  br i1 %cmp52168.not, label %while.cond49.preheader.while.end66_crit_edge, label %land.rhs.preheader

while.cond49.preheader.while.end66_crit_edge:     ; preds = %while.cond49.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end66

land.rhs.preheader:                               ; preds = %while.cond49.preheader
  %107 = add i8 %highest_pcie_level_enabled.0, -1
  %108 = zext i8 %107 to i32
  %109 = add nuw nsw i32 %108, 1
  br label %land.rhs

while.cond49:                                     ; preds = %land.rhs
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv33
  br i1 %exitcond.not, label %while.cond49.while.end66_crit_edge, label %while.cond49.land.rhs_crit_edge

while.cond49.land.rhs_crit_edge:                  ; preds = %while.cond49
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.cond49.while.end66_crit_edge:               ; preds = %while.cond49
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end66

land.rhs:                                         ; preds = %while.cond49.land.rhs_crit_edge, %land.rhs.preheader
  %indvars.iv = phi i32 [ 0, %land.rhs.preheader ], [ %indvars.iv.next, %while.cond49.land.rhs_crit_edge ]
  %add59 = add nuw nsw i32 %add57, %indvars.iv
  %shl60 = shl nuw i32 1, %add59
  %and61 = and i32 %shl60, %106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %cmp62 = icmp eq i32 %and61, 0
  br i1 %cmp62, label %while.cond49, label %land.rhs.while.end66_crit_edge

land.rhs.while.end66_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end66

while.end66:                                      ; preds = %land.rhs.while.end66_crit_edge, %while.cond49.while.end66_crit_edge, %while.cond49.preheader.while.end66_crit_edge
  %conv50.lcssa = phi i32 [ 0, %while.cond49.preheader.while.end66_crit_edge ], [ %109, %while.cond49.while.end66_crit_edge ], [ %indvars.iv, %land.rhs.while.end66_crit_edge ]
  %add70 = add nuw nsw i32 %add57, %conv50.lcssa
  %110 = call i32 @llvm.umin.i32(i32 %add70, i32 %conv33)
  %conv79 = trunc i32 %110 to i8
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %112)
  %cmp83172 = icmp ugt i32 %112, 2
  br i1 %cmp83172, label %while.end66.for.body85_crit_edge, label %while.end66.for.end91_crit_edge

while.end66.for.end91_crit_edge:                  ; preds = %while.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end91

while.end66.for.body85_crit_edge:                 ; preds = %while.end66
  br label %for.body85

for.body85:                                       ; preds = %for.body85.for.body85_crit_edge, %while.end66.for.body85_crit_edge
  %i.1173 = phi i32 [ %inc90, %for.body85.for.body85_crit_edge ], [ 2, %while.end66.for.body85_crit_edge ]
  %pcieDpmLevel = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 19, i32 %i.1173, i32 3
  %113 = ptrtoint ptr %pcieDpmLevel to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %highest_pcie_level_enabled.0, ptr %pcieDpmLevel, align 4
  %inc90 = add nuw i32 %i.1173, 1
  %114 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %1, align 4
  %cmp83 = icmp ult i32 %inc90, %115
  br i1 %cmp83, label %for.body85.for.body85_crit_edge, label %for.body85.for.end91_crit_edge

for.body85.for.end91_crit_edge:                   ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end91

for.body85.for.body85_crit_edge:                  ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body85

for.end91:                                        ; preds = %for.body85.for.end91_crit_edge, %while.end66.for.end91_crit_edge
  %pcieDpmLevel95 = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 19, i32 0, i32 3
  %116 = ptrtoint ptr %pcieDpmLevel95 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %lowest_pcie_level_enabled.0, ptr %pcieDpmLevel95, align 4
  %pcieDpmLevel99 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 19, i32 1, i32 3
  %117 = ptrtoint ptr %pcieDpmLevel99 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv79, ptr %pcieDpmLevel99, align 4
  %call100 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add, ptr noundef %GraphicsLevel, i32 noundef 384, i32 noundef 262144) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end91, %do.end.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call100, %for.end91 ], [ -22, %if.then.i.cleanup_crit_edge ], [ -22, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iceland_populate_all_memory_levels(ptr noundef %hwmgr) #0 align 64 {
entry:
  %mpll_param.i.i = alloca %struct.pp_atomctrl_memory_clock_param, align 4
  %ss_info.i.i = alloca %struct.pp_atomctrl_internal_ss_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  %MemoryLevel = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21
  %6 = call ptr @memset(ptr %MemoryLevel, i32 0, i32 288)
  %mclk_table = getelementptr inbounds %struct.smu7_dpm_table, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mclk_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp87.not = icmp eq i32 %8, 0
  br i1 %cmp87.not, label %entry.for.end_crit_edge, label %do.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %vddc_dependency_on_mclk.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 2
  %vddci_dependency_on_mclk.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 1
  %vddc_phase_shed_limits_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 14
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
  %i.088 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %for.inc.do.body_crit_edge ]
  %value = getelementptr %struct.smu7_dpm_table, ptr %1, i32 0, i32 1, i32 1, i32 %i.088, i32 1
  %17 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp3.not = icmp eq i32 %18, 0
  br i1 %cmp3.not, label %if.then, label %do.end9

if.then:                                          ; preds = %do.body
  %call = call i32 @___ratelimit(ptr noundef nonnull @iceland_populate_all_memory_levels._rs, ptr noundef nonnull @__func__.iceland_populate_all_memory_levels) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.176) #12
  br label %cleanup

do.end9:                                          ; preds = %do.body
  %arrayidx16 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %i.088
  %19 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %backend, align 4
  %21 = ptrtoint ptr %vddc_dependency_on_mclk.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vddc_dependency_on_mclk.i, align 4
  %cmp.not.i = icmp eq ptr %22, null
  br i1 %cmp.not.i, label %do.end9.if.end12.i_crit_edge, label %if.then.i

do.end9.if.end12.i_crit_edge:                     ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then.i:                                        ; preds = %do.end9
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i.i = icmp eq i32 %24, 0
  br i1 %cmp.i.i, label %if.then4.i, label %if.then.i.for.body.i.i_crit_edge

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %i.03.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %22, i32 0, i32 1, i32 %i.03.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %18)
  %cmp3.not.i.i = icmp ult i32 %26, %18
  br i1 %cmp3.not.i.i, label %for.inc.i.i, label %for.body.i.i.iceland_get_dependency_volt_by_clk.exit.thread.i_crit_edge

for.body.i.i.iceland_get_dependency_volt_by_clk.exit.thread.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iceland_get_dependency_volt_by_clk.exit.thread.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %24
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %24, -1
  br label %iceland_get_dependency_volt_by_clk.exit.thread.i

iceland_get_dependency_volt_by_clk.exit.thread.i: ; preds = %for.end.i.i, %for.body.i.i.iceland_get_dependency_volt_by_clk.exit.thread.i_crit_edge
  %sub.sink.i.i = phi i32 [ %sub.i.i, %for.end.i.i ], [ %i.03.i.i, %for.body.i.i.iceland_get_dependency_volt_by_clk.exit.thread.i_crit_edge ]
  %v10.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %22, i32 0, i32 1, i32 %sub.sink.i.i, i32 1
  %27 = ptrtoint ptr %v10.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %v10.i.i, align 4
  %29 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx16, align 4
  br label %if.end12.i

if.then4.i:                                       ; preds = %if.then.i
  %call5.i = call i32 @___ratelimit(ptr noundef nonnull @iceland_populate_single_memory_level._rs, ptr noundef nonnull @__func__.iceland_populate_single_memory_level) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.then4.i.cleanup_crit_edge, label %do.end.i

if.then4.i.cleanup_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.177) #12
  br label %cleanup

if.end12.i:                                       ; preds = %iceland_get_dependency_volt_by_clk.exit.thread.i, %do.end9.if.end12.i_crit_edge
  %vddci_control.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %20, i32 0, i32 40
  %30 = ptrtoint ptr %vddci_control.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vddci_control.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp13.i = icmp eq i32 %31, 0
  br i1 %cmp13.i, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %arrayidx16, align 1
  %MinVddci.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %i.088, i32 2
  %34 = ptrtoint ptr %MinVddci.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %MinVddci.i, align 1
  br label %if.end39.i

if.else.i:                                        ; preds = %if.end12.i
  %35 = ptrtoint ptr %vddci_dependency_on_mclk.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vddci_dependency_on_mclk.i, align 4
  %cmp17.not.i = icmp eq ptr %36, null
  br i1 %cmp17.not.i, label %if.else.i.if.end39.i_crit_edge, label %if.then18.i

if.else.i.if.end39.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.i

if.then18.i:                                      ; preds = %if.else.i
  %MinVddci21.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %i.088, i32 2
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i263.i = icmp eq i32 %38, 0
  br i1 %cmp.i263.i, label %if.then25.i, label %if.then18.i.for.body.i267.i_crit_edge

if.then18.i.for.body.i267.i_crit_edge:            ; preds = %if.then18.i
  br label %for.body.i267.i

for.body.i267.i:                                  ; preds = %for.inc.i270.i.for.body.i267.i_crit_edge, %if.then18.i.for.body.i267.i_crit_edge
  %i.03.i264.i = phi i32 [ %inc.i268.i, %for.inc.i270.i.for.body.i267.i_crit_edge ], [ 0, %if.then18.i.for.body.i267.i_crit_edge ]
  %arrayidx.i265.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %36, i32 0, i32 1, i32 %i.03.i264.i
  %39 = ptrtoint ptr %arrayidx.i265.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i265.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %18)
  %cmp3.not.i266.i = icmp ult i32 %40, %18
  br i1 %cmp3.not.i266.i, label %for.inc.i270.i, label %for.body.i267.i.iceland_get_dependency_volt_by_clk.exit277.thread.i_crit_edge

for.body.i267.i.iceland_get_dependency_volt_by_clk.exit277.thread.i_crit_edge: ; preds = %for.body.i267.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iceland_get_dependency_volt_by_clk.exit277.thread.i

for.inc.i270.i:                                   ; preds = %for.body.i267.i
  %inc.i268.i = add nuw i32 %i.03.i264.i, 1
  %exitcond.not.i269.i = icmp eq i32 %inc.i268.i, %38
  br i1 %exitcond.not.i269.i, label %for.end.i272.i, label %for.inc.i270.i.for.body.i267.i_crit_edge

for.inc.i270.i.for.body.i267.i_crit_edge:         ; preds = %for.inc.i270.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i267.i

for.end.i272.i:                                   ; preds = %for.inc.i270.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i271.i = add i32 %38, -1
  br label %iceland_get_dependency_volt_by_clk.exit277.thread.i

iceland_get_dependency_volt_by_clk.exit277.thread.i: ; preds = %for.end.i272.i, %for.body.i267.i.iceland_get_dependency_volt_by_clk.exit277.thread.i_crit_edge
  %sub.sink.i273.i = phi i32 [ %sub.i271.i, %for.end.i272.i ], [ %i.03.i264.i, %for.body.i267.i.iceland_get_dependency_volt_by_clk.exit277.thread.i_crit_edge ]
  %v10.i274.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %36, i32 0, i32 1, i32 %sub.sink.i273.i, i32 1
  %41 = ptrtoint ptr %v10.i274.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %v10.i274.i, align 4
  %43 = ptrtoint ptr %MinVddci21.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %MinVddci21.i, align 4
  br label %if.end39.i

if.then25.i:                                      ; preds = %if.then18.i
  %call26.i = call i32 @___ratelimit(ptr noundef nonnull @iceland_populate_single_memory_level._rs.178, ptr noundef nonnull @__func__.iceland_populate_single_memory_level) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.then25.i.cleanup_crit_edge, label %do.end31.i

if.then25.i.cleanup_crit_edge:                    ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end31.i:                                       ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.181) #12
  br label %cleanup

if.end39.i:                                       ; preds = %iceland_get_dependency_volt_by_clk.exit277.thread.i, %if.else.i.if.end39.i_crit_edge, %if.then14.i
  %MinVddcPhases.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %i.088, i32 1
  %44 = ptrtoint ptr %MinVddcPhases.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 1, ptr %MinVddcPhases.i, align 1
  %vddc_phase_shed_control.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %20, i32 0, i32 67
  %45 = ptrtoint ptr %vddc_phase_shed_control.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %vddc_phase_shed_control.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool40.not.i = icmp eq i8 %46, 0
  br i1 %tobool40.not.i, label %if.end39.i.if.end45.i_crit_edge, label %if.then41.i

if.end39.i.if.end45.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i

if.then41.i:                                      ; preds = %if.end39.i
  %47 = ptrtoint ptr %vddc_phase_shed_limits_table.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vddc_phase_shed_limits_table.i, align 4
  %49 = ptrtoint ptr %MinVddcPhases.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %MinVddcPhases.i, align 4
  %50 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp2.not.i.i = icmp eq i32 %51, 0
  br i1 %cmp2.not.i.i, label %if.then41.i.if.end45.i_crit_edge, label %if.then41.i.for.body.i279.i_crit_edge

if.then41.i.for.body.i279.i_crit_edge:            ; preds = %if.then41.i
  br label %for.body.i279.i

if.then41.i.if.end45.i_crit_edge:                 ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i

for.body.i279.i:                                  ; preds = %for.inc.i282.i.for.body.i279.i_crit_edge, %if.then41.i.for.body.i279.i_crit_edge
  %i.03.i278.i = phi i32 [ %inc.i280.i, %for.inc.i282.i.for.body.i279.i_crit_edge ], [ 0, %if.then41.i.for.body.i279.i_crit_edge ]
  %Mclk.i.i = getelementptr %struct.phm_phase_shedding_limits_table, ptr %48, i32 0, i32 1, i32 %i.03.i278.i, i32 2
  %52 = ptrtoint ptr %Mclk.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %Mclk.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %18)
  %cmp1.i.i = icmp ugt i32 %53, %18
  br i1 %cmp1.i.i, label %if.then.i.i, label %for.inc.i282.i

if.then.i.i:                                      ; preds = %for.body.i279.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %MinVddcPhases.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %i.03.i278.i, ptr %MinVddcPhases.i, align 4
  br label %if.end45.i

for.inc.i282.i:                                   ; preds = %for.body.i279.i
  %inc.i280.i = add nuw i32 %i.03.i278.i, 1
  %exitcond.not.i281.i = icmp eq i32 %inc.i280.i, %51
  br i1 %exitcond.not.i281.i, label %for.inc.i282.i.if.end45.i_crit_edge, label %for.inc.i282.i.for.body.i279.i_crit_edge

for.inc.i282.i.for.body.i279.i_crit_edge:         ; preds = %for.inc.i282.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i279.i

for.inc.i282.i.if.end45.i_crit_edge:              ; preds = %for.inc.i282.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i

if.end45.i:                                       ; preds = %for.inc.i282.i.if.end45.i_crit_edge, %if.then.i.i, %if.then41.i.if.end45.i_crit_edge, %if.end39.i.if.end45.i_crit_edge
  %EnabledForThrottle.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %i.088, i32 11
  %55 = ptrtoint ptr %EnabledForThrottle.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %EnabledForThrottle.i, align 1
  %EnabledForActivity.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %i.088, i32 12
  %56 = ptrtoint ptr %EnabledForActivity.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %EnabledForActivity.i, align 1
  %mclk_up_hyst.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %20, i32 0, i32 102, i32 5
  %57 = ptrtoint ptr %mclk_up_hyst.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %mclk_up_hyst.i, align 1
  %UpHyst.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %i.088, i32 13
  %59 = ptrtoint ptr %UpHyst.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %UpHyst.i, align 1
  %mclk_down_hyst.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %20, i32 0, i32 102, i32 6
  %60 = ptrtoint ptr %mclk_down_hyst.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %mclk_down_hyst.i, align 4
  %DownHyst.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %i.088, i32 14
  %62 = ptrtoint ptr %DownHyst.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %DownHyst.i, align 1
  %VoltageDownHyst.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %i.088, i32 15
  %63 = ptrtoint ptr %VoltageDownHyst.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %VoltageDownHyst.i, align 1
  %mclk_activity.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %20, i32 0, i32 102, i32 7
  %64 = ptrtoint ptr %mclk_activity.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %mclk_activity.i, align 2
  %ActivityLevel.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %i.088, i32 17
  %66 = ptrtoint ptr %ActivityLevel.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 2)
  store i16 %65, ptr %ActivityLevel.i, align 1
  %StrobeEnable.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %i.088, i32 9
  %EdcReadEnable.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %i.088, i32 5
  %EdcWriteEnable.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %i.088, i32 6
  %DisplayWatermark.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %i.088, i32 18
  %67 = ptrtoint ptr %DisplayWatermark.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %DisplayWatermark.i, align 1
  %68 = call ptr @memset(ptr %EdcReadEnable.i, i32 0, i32 5)
  %69 = ptrtoint ptr %display_config.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %display_config.i, align 4
  %num_display.i = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %num_display.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_display.i, align 4
  %num_existing_displays.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %20, i32 0, i32 68, i32 1
  %73 = ptrtoint ptr %num_existing_displays.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %num_existing_displays.i, align 4
  %74 = load ptr, ptr %display_config.i, align 4
  %vrefresh.i = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %74, i32 0, i32 12
  %75 = ptrtoint ptr %vrefresh.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %vrefresh.i, align 4
  %vrefresh50.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %20, i32 0, i32 68, i32 2
  %77 = ptrtoint ptr %vrefresh50.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %vrefresh50.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40001, i32 %18)
  %cmp52.i = icmp ult i32 %18, 40001
  %conv.i = zext i1 %cmp52.i to i8
  %78 = ptrtoint ptr %StrobeEnable.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv.i, ptr %StrobeEnable.i, align 1
  %is_memory_gddr5.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %20, i32 0, i32 12
  %79 = ptrtoint ptr %is_memory_gddr5.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %is_memory_gddr5.i, align 4, !range !403
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool54.not.i = icmp eq i8 %80, 0
  br i1 %tobool54.not.i, label %if.else110.i, label %if.then55.i

if.then55.i:                                      ; preds = %if.end45.i
  br i1 %cmp52.i, label %if.then.i285.i, label %if.else6.i.i

if.then.i285.i:                                   ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12500, i32 %18)
  %cmp.i284.i = icmp ult i32 %18, 12500
  %81 = trunc i32 %18 to i16
  %div.lhs.trunc.i.i = add i16 %81, -10000
  %div26.i.i = udiv i16 %div.lhs.trunc.i.i, 2500
  %conv.i.i = trunc i16 %div26.i.i to i8
  %conv.i292.i = zext i16 %div26.i.i to i32
  %conv.i.sink.i = select i1 %cmp.i284.i, i8 0, i8 %conv.i.i
  %mc_para_index.0.i294.i = select i1 %cmp.i284.i, i32 0, i32 %conv.i292.i
  %82 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %i.088, i32 10
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv.i.sink.i, ptr %82, align 1
  %84 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %device.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %call80.i = call i32 %89(ptr noundef %85, i32 noundef 2713) #8
  %shr.i = lshr i32 %call80.i, 16
  %and.i = and i32 %shr.i, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %mc_para_index.0.i294.i)
  %cmp81.not.i = icmp ugt i32 %and.i, %mc_para_index.0.i294.i
  %90 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %device.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  br i1 %cmp81.not.i, label %if.else93.i, label %if.then83.i

if.else6.i.i:                                     ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65000, i32 %18)
  %cmp7.i.i = icmp ult i32 %18, 65000
  br i1 %cmp7.i.i, label %if.else6.i.i.if.else106.i_crit_edge, label %if.else10.i.i

if.else6.i.i.if.else106.i_crit_edge:              ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else106.i

if.else10.i.i:                                    ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 135000, i32 %18)
  %cmp11.i.i = icmp ugt i32 %18, 135000
  br i1 %cmp11.i.i, label %if.else10.i.i.if.else106.i_crit_edge, label %if.else14.i.i

if.else10.i.i.if.else106.i_crit_edge:             ; preds = %if.else10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else106.i

if.else14.i.i:                                    ; preds = %if.else10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub15.i.i = add nsw i32 %18, -60000
  %div16.i.i = udiv i32 %sub15.i.i, 5000
  %conv17.i.i = trunc i32 %div16.i.i to i8
  br label %if.else106.i

if.then83.i:                                      ; preds = %if.then.i285.i
  call void @__sanitizer_cov_trace_pc() #10
  %call88.i = call i32 %95(ptr noundef %91, i32 noundef 2709) #8
  %96 = and i32 %call88.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool91.i = icmp ne i32 %96, 0
  br label %if.end124.i

if.else93.i:                                      ; preds = %if.then.i285.i
  call void @__sanitizer_cov_trace_pc() #10
  %call98.i = call i32 %95(ptr noundef %91, i32 noundef 2710) #8
  %97 = and i32 %call98.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool101.i = icmp ne i32 %97, 0
  br label %if.end124.i

if.else106.i:                                     ; preds = %if.else14.i.i, %if.else10.i.i.if.else106.i_crit_edge, %if.else6.i.i.if.else106.i_crit_edge
  %mc_para_index.0.i.ph.i = phi i8 [ 15, %if.else10.i.i.if.else106.i_crit_edge ], [ 0, %if.else6.i.i.if.else106.i_crit_edge ], [ %conv17.i.i, %if.else14.i.i ]
  %StrobeRatio310.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %i.088, i32 10
  %98 = ptrtoint ptr %StrobeRatio310.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %mc_para_index.0.i.ph.i, ptr %StrobeRatio310.i, align 1
  %99 = ptrtoint ptr %EdcReadEnable.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %EdcReadEnable.i, align 1
  %100 = ptrtoint ptr %EdcWriteEnable.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %EdcWriteEnable.i, align 1
  %dll_default_on.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %20, i32 0, i32 53
  %101 = ptrtoint ptr %dll_default_on.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %dll_default_on.i, align 4, !range !403
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool107.i = icmp ne i8 %102, 0
  br label %if.end124.i

if.else110.i:                                     ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %18)
  %cmp.i296.i = icmp ult i32 %18, 10000
  br i1 %cmp.i296.i, label %if.else110.i.iceland_get_ddr3_mclk_frequency_ratio.exit.i_crit_edge, label %if.else.i298.i

if.else110.i.iceland_get_ddr3_mclk_frequency_ratio.exit.i_crit_edge: ; preds = %if.else110.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iceland_get_ddr3_mclk_frequency_ratio.exit.i

if.else.i298.i:                                   ; preds = %if.else110.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 79999, i32 %18)
  %cmp1.i297.i = icmp ugt i32 %18, 79999
  br i1 %cmp1.i297.i, label %if.else.i298.i.iceland_get_ddr3_mclk_frequency_ratio.exit.i_crit_edge, label %if.else3.i.i

if.else.i298.i.iceland_get_ddr3_mclk_frequency_ratio.exit.i_crit_edge: ; preds = %if.else.i298.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iceland_get_ddr3_mclk_frequency_ratio.exit.i

if.else3.i.i:                                     ; preds = %if.else.i298.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i299.i = add nsw i32 %18, -10000
  %div.i.i = udiv i32 %sub.i299.i, 5000
  %103 = trunc i32 %div.i.i to i8
  %conv.i300.i = add nuw nsw i8 %103, 1
  br label %iceland_get_ddr3_mclk_frequency_ratio.exit.i

iceland_get_ddr3_mclk_frequency_ratio.exit.i:     ; preds = %if.else3.i.i, %if.else.i298.i.iceland_get_ddr3_mclk_frequency_ratio.exit.i_crit_edge, %if.else110.i.iceland_get_ddr3_mclk_frequency_ratio.exit.i_crit_edge
  %mc_para_index.0.i301.i = phi i8 [ %conv.i300.i, %if.else3.i.i ], [ 0, %if.else110.i.iceland_get_ddr3_mclk_frequency_ratio.exit.i_crit_edge ], [ 15, %if.else.i298.i.iceland_get_ddr3_mclk_frequency_ratio.exit.i_crit_edge ]
  %StrobeRatio112.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %i.088, i32 10
  %104 = ptrtoint ptr %StrobeRatio112.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %mc_para_index.0.i301.i, ptr %StrobeRatio112.i, align 1
  %105 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %device.i, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  %call117.i = call i32 %110(ptr noundef %106, i32 noundef 2709) #8
  %111 = and i32 %call117.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %extract.t262.i = icmp ne i32 %111, 0
  br label %if.end124.i

if.end124.i:                                      ; preds = %iceland_get_ddr3_mclk_frequency_ratio.exit.i, %if.else106.i, %if.else93.i, %if.then83.i
  %dll_state_on.0.off0.i = phi i1 [ %tobool91.i, %if.then83.i ], [ %tobool101.i, %if.else93.i ], [ %tobool107.i, %if.else106.i ], [ %extract.t262.i, %iceland_get_ddr3_mclk_frequency_ratio.exit.i ]
  %112 = ptrtoint ptr %StrobeEnable.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %StrobeEnable.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool126.i = icmp ne i8 %113, 0
  %114 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %backend, align 4
  %vDLL_CNTL.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %115, i32 0, i32 11, i32 6
  %116 = ptrtoint ptr %vDLL_CNTL.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %vDLL_CNTL.i.i, align 4
  %vMCLK_PWRMGT_CNTL.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %115, i32 0, i32 11, i32 7
  %118 = ptrtoint ptr %vMCLK_PWRMGT_CNTL.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %vMCLK_PWRMGT_CNTL.i.i, align 4
  %vMPLL_AD_FUNC_CNTL.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %115, i32 0, i32 11, i32 8
  %120 = ptrtoint ptr %vMPLL_AD_FUNC_CNTL.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %vMPLL_AD_FUNC_CNTL.i.i, align 4
  %vMPLL_DQ_FUNC_CNTL.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %115, i32 0, i32 11, i32 9
  %122 = ptrtoint ptr %vMPLL_DQ_FUNC_CNTL.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %vMPLL_DQ_FUNC_CNTL.i.i, align 4
  %vMPLL_FUNC_CNTL.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %115, i32 0, i32 11, i32 10
  %124 = ptrtoint ptr %vMPLL_FUNC_CNTL.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %vMPLL_FUNC_CNTL.i.i, align 4
  %vMPLL_FUNC_CNTL_1.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %115, i32 0, i32 11, i32 11
  %126 = ptrtoint ptr %vMPLL_FUNC_CNTL_1.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %vMPLL_FUNC_CNTL_1.i.i, align 4
  %vMPLL_FUNC_CNTL_2.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %115, i32 0, i32 11, i32 12
  %128 = ptrtoint ptr %vMPLL_FUNC_CNTL_2.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %vMPLL_FUNC_CNTL_2.i.i, align 4
  %vMPLL_SS1.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %115, i32 0, i32 11, i32 13
  %130 = ptrtoint ptr %vMPLL_SS1.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %vMPLL_SS1.i.i, align 4
  %vMPLL_SS2.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %115, i32 0, i32 11, i32 14
  %132 = ptrtoint ptr %vMPLL_SS2.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %vMPLL_SS2.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mpll_param.i.i) #8
  %134 = call ptr @memset(ptr %mpll_param.i.i, i32 255, i32 32)
  %call.i.i = call i32 @atomctrl_get_memory_pll_dividers_si(ptr noundef %hwmgr, i32 noundef %18, ptr noundef nonnull %mpll_param.i.i, i1 noundef zeroext %tobool126.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i302.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i302.i, label %do.end17.i.i, label %if.then.i303.i

if.then.i303.i:                                   ; preds = %if.end124.i
  %call10.i.i = call i32 @___ratelimit(ptr noundef nonnull @iceland_calculate_mclk_params._rs, ptr noundef nonnull @__func__.iceland_calculate_mclk_params) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.then.i303.i.iceland_calculate_mclk_params.exit.thread.i_crit_edge, label %do.end.i.i

if.then.i303.i.iceland_calculate_mclk_params.exit.thread.i_crit_edge: ; preds = %if.then.i303.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iceland_calculate_mclk_params.exit.thread.i

do.end.i.i:                                       ; preds = %if.then.i303.i
  call void @__sanitizer_cov_trace_pc() #10
  %call14.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.182) #12
  br label %iceland_calculate_mclk_params.exit.thread.i

do.end17.i.i:                                     ; preds = %if.end124.i
  %and.i.i = and i32 %125, -267386881
  %135 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %14, align 4
  %shl.i.i = shl i32 %136, 20
  %and18.i.i = and i32 %shl.i.i, 267386880
  %or.i.i = or i32 %and18.i.i, %and.i.i
  %and19.i.i = and i32 %127, -268435444
  %137 = ptrtoint ptr %mpll_param.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %bf.load.i.i = load i32, ptr %mpll_param.i.i, align 4
  %138 = lshr i32 %bf.load.i.i, 4
  %shl20.i.i = and i32 %138, 268369920
  %or22.i.i = or i32 %shl20.i.i, %and19.i.i
  %shl27.i.i = and i32 %138, 65520
  %or29.i.i = or i32 %or22.i.i, %shl27.i.i
  %139 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %13, align 4
  %and32.i.i = and i32 %140, 3
  %or33.i.i = or i32 %or29.i.i, %and32.i.i
  %and34.i.i = and i32 %121, -8
  %141 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %9, align 4
  %and36.i.i = and i32 %142, 7
  %or37.i.i = or i32 %and36.i.i, %and34.i.i
  %is_memory_gddr5.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %115, i32 0, i32 12
  %143 = ptrtoint ptr %is_memory_gddr5.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %is_memory_gddr5.i.i, align 4, !range !403
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool38.not.i.i = icmp eq i8 %144, 0
  br i1 %tobool38.not.i.i, label %do.end17.i.i.if.end49.i.i_crit_edge, label %if.then39.i.i

do.end17.i.i.if.end49.i.i_crit_edge:              ; preds = %do.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i.i

if.then39.i.i:                                    ; preds = %do.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %and40.i.i = and i32 %123, -24
  %145 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %11, align 4
  %shl41.i.i = shl i32 %146, 4
  %and42.i.i = and i32 %shl41.i.i, 16
  %or43.i.i = or i32 %and36.i.i, %and40.i.i
  %or48.i.i = or i32 %or43.i.i, %and42.i.i
  br label %if.end49.i.i

if.end49.i.i:                                     ; preds = %if.then39.i.i, %do.end17.i.i.if.end49.i.i_crit_edge
  %mpll_dq_func_cntl.0.i.i = phi i32 [ %or48.i.i, %if.then39.i.i ], [ %123, %do.end17.i.i.if.end49.i.i_crit_edge ]
  %147 = ptrtoint ptr %platform_descriptor.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %platform_descriptor.i.i, align 4
  %and1.i.i.i = and i32 %148, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %cmp.i.not.i.i, label %if.end49.i.i.for.inc_crit_edge, label %if.then51.i.i

if.end49.i.i.for.inc_crit_edge:                   ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then51.i.i:                                    ; preds = %if.end49.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ss_info.i.i) #8
  %149 = ptrtoint ptr %ss_info.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 -1, ptr %ss_info.i.i, align 4, !annotation !402
  %150 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 -1, ptr %15, align 4, !annotation !402
  %151 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 -1, ptr %16, align 4, !annotation !402
  %call53.i.i = call i32 @atomctrl_get_mpll_reference_clock(ptr noundef %hwmgr) #8
  %152 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %153)
  %cmp54.i.i = icmp eq i32 %153, 1
  %..i.i = select i1 %cmp54.i.i, i32 2, i32 1
  %mul59.i.i = shl i32 %18, %..i.i
  %154 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %9, align 4
  %mul62.i.i = shl i32 %mul59.i.i, %155
  %call65.i.i = call i32 @atomctrl_get_memory_clock_spread_spectrum(ptr noundef %hwmgr, i32 noundef %mul62.i.i, ptr noundef nonnull %ss_info.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i.i)
  %cmp66.i.i = icmp eq i32 %call65.i.i, 0
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.then51.i.i.if.end84.i.i_crit_edge

if.then51.i.i.if.end84.i.i_crit_edge:             ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84.i.i

if.then67.i.i:                                    ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %div.i304.i = udiv i32 %mul62.i.i, %call53.i.i
  %mul64.i.i = mul i32 %div.i304.i, %div.i304.i
  %mul68.i.i = mul i32 %call53.i.i, 5
  %156 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %15, align 4
  %div69.i.i = udiv i32 %mul68.i.i, %157
  %158 = ptrtoint ptr %ss_info.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %ss_info.i.i, align 4
  %mul70.i.i = mul i32 %157, 131
  %mul72.i.i = mul i32 %mul70.i.i, %159
  %div73.i.i = udiv i32 %mul72.i.i, 100
  %mul74.i.i = mul i32 %mul64.i.i, %div73.i.i
  %div75.i.i = udiv i32 %mul74.i.i, %mul62.i.i
  %and76.i.i = and i32 %131, -67108864
  %and78.i.i = and i32 %div75.i.i, 67108863
  %or79.i.i = or i32 %and78.i.i, %and76.i.i
  %and80.i.i = and i32 %133, -4096
  %and82.i.i = and i32 %div69.i.i, 4095
  %or83.i.i = or i32 %and82.i.i, %and80.i.i
  br label %if.end84.i.i

if.end84.i.i:                                     ; preds = %if.then67.i.i, %if.then51.i.i.if.end84.i.i_crit_edge
  %mpll_ss1.0.i.i = phi i32 [ %or79.i.i, %if.then67.i.i ], [ %131, %if.then51.i.i.if.end84.i.i_crit_edge ]
  %mpll_ss2.0.i.i = phi i32 [ %or83.i.i, %if.then67.i.i ], [ %133, %if.then51.i.i.if.end84.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ss_info.i.i) #8
  br label %for.inc

iceland_calculate_mclk_params.exit.thread.i:      ; preds = %do.end.i.i, %if.then.i303.i.iceland_calculate_mclk_params.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mpll_param.i.i) #8
  br label %cleanup

for.inc:                                          ; preds = %if.end84.i.i, %if.end49.i.i.for.inc_crit_edge
  %mpll_ss1.1.i.i = phi i32 [ %mpll_ss1.0.i.i, %if.end84.i.i ], [ %131, %if.end49.i.i.for.inc_crit_edge ]
  %mpll_ss2.1.i.i = phi i32 [ %mpll_ss2.0.i.i, %if.end84.i.i ], [ %133, %if.end49.i.i.for.inc_crit_edge ]
  %and86.i.i = and i32 %119, -800
  %160 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %10, align 4
  %and88.i.i = and i32 %161, 31
  %or89.i.i = select i1 %dll_state_on.0.off0.i, i32 768, i32 0
  %or94.i.i = or i32 %and86.i.i, %or89.i.i
  %or100.i.i = or i32 %or94.i.i, %and88.i.i
  %MclkFrequency.i.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %i.088, i32 4
  %162 = ptrtoint ptr %MclkFrequency.i.i to i32
  call void @__asan_storeN_noabort(i32 %162, i32 4)
  store i32 %18, ptr %MclkFrequency.i.i, align 1
  %MpllFuncCntl.i.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %i.088, i32 20
  %163 = ptrtoint ptr %MpllFuncCntl.i.i to i32
  call void @__asan_storeN_noabort(i32 %163, i32 4)
  store i32 %or.i.i, ptr %MpllFuncCntl.i.i, align 1
  %MpllFuncCntl_1.i.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %i.088, i32 21
  %164 = ptrtoint ptr %MpllFuncCntl_1.i.i to i32
  call void @__asan_storeN_noabort(i32 %164, i32 4)
  store i32 %or33.i.i, ptr %MpllFuncCntl_1.i.i, align 1
  %MpllFuncCntl_2.i.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %i.088, i32 22
  %165 = ptrtoint ptr %MpllFuncCntl_2.i.i to i32
  call void @__asan_storeN_noabort(i32 %165, i32 4)
  store i32 %129, ptr %MpllFuncCntl_2.i.i, align 1
  %MpllAdFuncCntl.i.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %i.088, i32 23
  %166 = ptrtoint ptr %MpllAdFuncCntl.i.i to i32
  call void @__asan_storeN_noabort(i32 %166, i32 4)
  store i32 %or37.i.i, ptr %MpllAdFuncCntl.i.i, align 1
  %MpllDqFuncCntl.i.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %i.088, i32 24
  %167 = ptrtoint ptr %MpllDqFuncCntl.i.i to i32
  call void @__asan_storeN_noabort(i32 %167, i32 4)
  store i32 %mpll_dq_func_cntl.0.i.i, ptr %MpllDqFuncCntl.i.i, align 1
  %MclkPwrmgtCntl.i.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %i.088, i32 25
  %168 = ptrtoint ptr %MclkPwrmgtCntl.i.i to i32
  call void @__asan_storeN_noabort(i32 %168, i32 4)
  store i32 %or100.i.i, ptr %MclkPwrmgtCntl.i.i, align 1
  %DllCntl.i.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %i.088, i32 26
  %169 = ptrtoint ptr %DllCntl.i.i to i32
  call void @__asan_storeN_noabort(i32 %169, i32 4)
  store i32 %117, ptr %DllCntl.i.i, align 1
  %MpllSs1.i.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %i.088, i32 27
  %170 = ptrtoint ptr %MpllSs1.i.i to i32
  call void @__asan_storeN_noabort(i32 %170, i32 4)
  store i32 %mpll_ss1.1.i.i, ptr %MpllSs1.i.i, align 1
  %MpllSs2.i.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %i.088, i32 28
  %171 = ptrtoint ptr %MpllSs2.i.i to i32
  call void @__asan_storeN_noabort(i32 %171, i32 4)
  store i32 %mpll_ss2.1.i.i, ptr %MpllSs2.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mpll_param.i.i) #8
  %172 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_loadN_noabort(i32 %172, i32 4)
  %173 = load i32, ptr %arrayidx16, align 1
  %mul.i = shl i32 %173, 2
  store i32 %mul.i, ptr %arrayidx16, align 1
  %MinVddci136.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %i.088, i32 2
  %174 = ptrtoint ptr %MinVddci136.i to i32
  call void @__asan_loadN_noabort(i32 %174, i32 4)
  %175 = load i32, ptr %MinVddci136.i, align 1
  %mul137.i = shl i32 %175, 2
  store i32 %mul137.i, ptr %MinVddci136.i, align 1
  %MinMvdd.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %i.088, i32 3
  %176 = ptrtoint ptr %MinMvdd.i to i32
  call void @__asan_loadN_noabort(i32 %176, i32 4)
  %177 = load i32, ptr %MinMvdd.i, align 1
  %mul139.i = shl i32 %177, 2
  store i32 %mul139.i, ptr %MinMvdd.i, align 1
  %inc = add nuw i32 %i.088, 1
  %178 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %mclk_table, align 4
  %cmp = icmp ult i32 %inc, %179
  br i1 %cmp, label %for.inc.do.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %EnabledForActivity = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 0, i32 12
  %180 = ptrtoint ptr %EnabledForActivity to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 1, ptr %EnabledForActivity, align 1
  %ActivityLevel = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 0, i32 17
  %181 = ptrtoint ptr %ActivityLevel to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 31, ptr %ActivityLevel, align 4
  %182 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %mclk_table, align 4
  %conv = trunc i32 %183 to i8
  %MemoryDpmLevelCount = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 15
  %184 = ptrtoint ptr %MemoryDpmLevelCount to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %conv, ptr %MemoryDpmLevelCount, align 1
  %call39 = call i32 @phm_get_dpm_level_enable_mask_value(ptr noundef %mclk_table) #8
  %mclk_dpm_enable_mask = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 70, i32 5
  %185 = ptrtoint ptr %mclk_dpm_enable_mask to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %call39, ptr %mclk_dpm_enable_mask, align 4
  %186 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %mclk_table, align 4
  %sub = add i32 %187, -1
  %DisplayWatermark = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 21, i32 %sub, i32 18
  %188 = ptrtoint ptr %DisplayWatermark to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 1, ptr %DisplayWatermark, align 2
  %call45 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add, ptr noundef %MemoryLevel, i32 noundef 288, i32 noundef 262144) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %iceland_calculate_mclk_params.exit.thread.i, %do.end31.i, %if.then25.i.cleanup_crit_edge, %do.end.i, %if.then4.i.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call45, %for.end ], [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ %call.i.i, %iceland_calculate_mclk_params.exit.thread.i ], [ -22, %if.then25.i.cleanup_crit_edge ], [ -22, %do.end31.i ], [ -22, %if.then4.i.cleanup_crit_edge ], [ -22, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iceland_initialize_mc_reg_table(ptr noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %mc_reg_table = getelementptr inbounds %struct.iceland_smumgr, ptr %1, i32 0, i32 6
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
  %call.i = tail call i32 %7(ptr noundef %3, i32 noundef 1485) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 2772) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %call6 = tail call i32 %16(ptr noundef %10, i32 noundef 2600) #8
  tail call void %14(ptr noundef %10, i32 noundef 2715, i32 noundef %call6) #8
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
  %call15 = tail call i32 %24(ptr noundef %18, i32 noundef 2601) #8
  tail call void %22(ptr noundef %18, i32 noundef 2716, i32 noundef %call15) #8
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
  %call24 = tail call i32 %32(ptr noundef %26, i32 noundef 3470) #8
  tail call void %30(ptr noundef %26, i32 noundef 3471, i32 noundef %call24) #8
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
  %call33 = tail call i32 %40(ptr noundef %34, i32 noundef 3459) #8
  tail call void %38(ptr noundef %34, i32 noundef 3460, i32 noundef %call33) #8
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
  %call42 = tail call i32 %48(ptr noundef %42, i32 noundef 3461) #8
  tail call void %46(ptr noundef %42, i32 noundef 3462, i32 noundef %call42) #8
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
  %call51 = tail call i32 %56(ptr noundef %50, i32 noundef 3457) #8
  tail call void %54(ptr noundef %50, i32 noundef 3458, i32 noundef %call51) #8
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
  %call60 = tail call i32 %64(ptr noundef %58, i32 noundef 3468) #8
  tail call void %62(ptr noundef %58, i32 noundef 3469, i32 noundef %call60) #8
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
  %call69 = tail call i32 %72(ptr noundef %66, i32 noundef 3466) #8
  tail call void %70(ptr noundef %66, i32 noundef 3467, i32 noundef %call69) #8
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
  %call78 = tail call i32 %80(ptr noundef %74, i32 noundef 2602) #8
  tail call void %78(ptr noundef %74, i32 noundef 2717, i32 noundef %call78) #8
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
  %call87 = tail call i32 %88(ptr noundef %82, i32 noundef 2603) #8
  tail call void %86(ptr noundef %82, i32 noundef 2718, i32 noundef %call87) #8
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
  %call96 = tail call i32 %96(ptr noundef %90, i32 noundef 2691) #8
  tail call void %94(ptr noundef %90, i32 noundef 2721, i32 noundef %call96) #8
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
  %call105 = tail call i32 %104(ptr noundef %98, i32 noundef 2731) #8
  tail call void %102(ptr noundef %98, i32 noundef 2722, i32 noundef %call105) #8
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
  %call114 = tail call i32 %112(ptr noundef %106, i32 noundef 2769) #8
  tail call void %110(ptr noundef %106, i32 noundef 2770, i32 noundef %call114) #8
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
  %call123 = tail call i32 %120(ptr noundef %114, i32 noundef 2607) #8
  tail call void %118(ptr noundef %114, i32 noundef 2719, i32 noundef %call123) #8
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
  %call132 = tail call i32 %128(ptr noundef %122, i32 noundef 2608) #8
  tail call void %126(ptr noundef %122, i32 noundef 2720, i32 noundef %call132) #8
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
  %call141 = tail call i32 %136(ptr noundef %130, i32 noundef 2605) #8
  tail call void %134(ptr noundef %130, i32 noundef 2759, i32 noundef %call141) #8
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
  %call150 = tail call i32 %144(ptr noundef %138, i32 noundef 2606) #8
  tail call void %142(ptr noundef %138, i32 noundef 2760, i32 noundef %call150) #8
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
  %call159 = tail call i32 %152(ptr noundef %146, i32 noundef 2604) #8
  tail call void %150(ptr noundef %146, i32 noundef 2771, i32 noundef %call159) #8
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
  %call168 = tail call i32 %160(ptr noundef %154, i32 noundef 2775) #8
  tail call void %158(ptr noundef %154, i32 noundef 2776, i32 noundef %call168) #8
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
  %call177 = tail call i32 %168(ptr noundef %162, i32 noundef 2773) #8
  tail call void %166(ptr noundef %162, i32 noundef 2774, i32 noundef %call177) #8
  %call178 = tail call i32 @atomctrl_initialize_mc_reg_table(ptr noundef %hwmgr, i8 noundef zeroext %conv.i, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %cmp179 = icmp eq i32 %call178, 0
  br i1 %cmp179, label %if.then180, label %if.end.if.end191_crit_edge

if.end.if.end191_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

if.then180:                                       ; preds = %if.end
  %169 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %170)
  %cmp.i = icmp ult i8 %170, 17
  br i1 %cmp.i, label %do.body8.i, label %if.then.i

if.then.i:                                        ; preds = %if.then180
  %call.i288 = tail call i32 @___ratelimit(ptr noundef nonnull @iceland_copy_vbios_smc_reg_table._rs, ptr noundef nonnull @__func__.iceland_copy_vbios_smc_reg_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i288)
  %tobool.not.i = icmp eq i32 %call.i288, 0
  br i1 %tobool.not.i, label %if.then.i.if.end191_crit_edge, label %do.end.i

if.then.i.if.end191_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.183) #12
  br label %if.end191

do.body8.i:                                       ; preds = %if.then180
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.then12.i:                                      ; preds = %do.body8.i
  %call13.i = tail call i32 @___ratelimit(ptr noundef nonnull @iceland_copy_vbios_smc_reg_table._rs.184, ptr noundef nonnull @__func__.iceland_copy_vbios_smc_reg_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.then12.i.if.end191_crit_edge, label %do.end18.i

if.then12.i.if.end191_crit_edge:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

do.end18.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.183) #12
  br label %if.end191

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pp_atomctrl_mc_reg_table, ptr %call7.i.i, i32 0, i32 3, i32 %indvars.iv.i
  %173 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %arrayidx.i, align 4
  %s133.i = getelementptr %struct.iceland_smumgr, ptr %1, i32 0, i32 6, i32 4, i32 %indvars.iv.i, i32 1
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %cmp40106.not.i, label %for.end.i.if.then184_crit_edge, label %for.end.i.for.body42.i_crit_edge

for.end.i.for.body42.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body42.i

for.end.i.if.then184_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then184

for.body42.i:                                     ; preds = %for.inc70.i.for.body42.i_crit_edge, %for.end.i.for.body42.i_crit_edge
  %indvars.iv113.i = phi i32 [ %indvars.iv.next114.i, %for.inc70.i.for.body42.i_crit_edge ], [ 0, %for.end.i.for.body42.i_crit_edge ]
  %arrayidx44.i = getelementptr %struct.pp_atomctrl_mc_reg_table, ptr %call7.i.i, i32 0, i32 2, i32 %indvars.iv113.i
  %182 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx44.i, align 4
  %arrayidx47.i = getelementptr %struct.iceland_smumgr, ptr %1, i32 0, i32 6, i32 3, i32 %indvars.iv113.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc70.i

for.body55.i:                                     ; preds = %for.body55.i.for.body55.i_crit_edge, %for.body42.i.for.body55.i_crit_edge
  %indvars.iv111.i = phi i32 [ %indvars.iv.next112.i, %for.body55.i.for.body55.i_crit_edge ], [ 0, %for.body42.i.for.body55.i_crit_edge ]
  %arrayidx60.i = getelementptr %struct.pp_atomctrl_mc_reg_table, ptr %call7.i.i, i32 0, i32 2, i32 %indvars.iv113.i, i32 1, i32 %indvars.iv111.i
  %187 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx60.i, align 4
  %arrayidx66.i = getelementptr %struct.iceland_smumgr, ptr %1, i32 0, i32 6, i32 3, i32 %indvars.iv113.i, i32 1, i32 %indvars.iv111.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc70.i

for.body55.i.for.body55.i_crit_edge:              ; preds = %for.body55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body55.i

for.inc70.i:                                      ; preds = %for.body55.i.for.inc70.i_crit_edge, %for.body42.i.for.inc70.i_crit_edge
  %indvars.iv.next114.i = add nuw nsw i32 %indvars.iv113.i, 1
  %193 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %num_entries.i, align 1
  %195 = zext i8 %194 to i32
  %cmp40.i = icmp ult i32 %indvars.iv.next114.i, %195
  br i1 %cmp40.i, label %for.inc70.i.for.body42.i_crit_edge, label %if.then184thread-pre-split

for.inc70.i.for.body42.i_crit_edge:               ; preds = %for.inc70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body42.i

if.then184thread-pre-split:                       ; preds = %for.inc70.i
  call void @__sanitizer_cov_trace_pc() #10
  %196 = ptrtoint ptr %mc_reg_table to i32
  call void @__asan_load1_noabort(i32 %196)
  %.pr = load i8, ptr %mc_reg_table, align 4
  br label %if.then184

if.then184:                                       ; preds = %if.then184thread-pre-split, %for.end.i.if.then184_crit_edge
  %197 = phi i8 [ %.pr, %if.then184thread-pre-split ], [ %.lcssa101.i, %for.end.i.if.then184_crit_edge ]
  %.lcssa.i = phi i8 [ %194, %if.then184thread-pre-split ], [ 0, %for.end.i.if.then184_crit_edge ]
  %num_entries74.i = getelementptr inbounds %struct.iceland_smumgr, ptr %1, i32 0, i32 6, i32 1
  %198 = ptrtoint ptr %num_entries74.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %.lcssa.i, ptr %num_entries74.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %cmp4.not.i = icmp eq i8 %197, 0
  br i1 %cmp4.not.i, label %iceland_set_s0_mc_reg_index.exitthread-pre-split, label %if.then184.for.body.i290_crit_edge

if.then184.for.body.i290_crit_edge:               ; preds = %if.then184
  br label %for.body.i290

for.body.i290:                                    ; preds = %iceland_check_s0_mc_reg_index.exit.i.for.body.i290_crit_edge, %if.then184.for.body.i290_crit_edge
  %i.05.i = phi i32 [ %inc.i, %iceland_check_s0_mc_reg_index.exit.i.for.body.i290_crit_edge ], [ 0, %if.then184.for.body.i290_crit_edge ]
  %arrayidx.i289 = getelementptr %struct.iceland_smumgr, ptr %1, i32 0, i32 6, i32 4, i32 %i.05.i
  %s1.i = getelementptr %struct.iceland_smumgr, ptr %1, i32 0, i32 6, i32 4, i32 %i.05.i, i32 1
  %199 = ptrtoint ptr %s1.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %s1.i, align 2
  %201 = zext i16 %200 to i64
  call void @__sanitizer_cov_trace_switch(i64 %201, ptr @__sancov_gen_cov_switch_values.198)
  switch i16 %200, label %for.body.i290.iceland_check_s0_mc_reg_index.exit.i_crit_edge [
    i16 2600, label %for.body.i290._crit_edge
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

for.body.i290._crit_edge:                         ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

for.body.i290.iceland_check_s0_mc_reg_index.exit.i_crit_edge: ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %iceland_check_s0_mc_reg_index.exit.i

sw.bb1.i.i:                                       ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb2.i.i:                                       ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb3.i.i:                                       ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb4.i.i:                                       ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb5.i.i:                                       ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb6.i.i:                                       ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb7.i.i:                                       ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb8.i.i:                                       ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb9.i.i:                                       ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb10.i.i:                                      ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb11.i.i:                                      ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb12.i.i:                                      ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb13.i.i:                                      ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb14.i.i:                                      ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb15.i.i:                                      ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb16.i.i:                                      ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb17.i.i:                                      ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb18.i.i:                                      ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb19.i.i:                                      ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

202:                                              ; preds = %sw.bb19.i.i, %sw.bb18.i.i, %sw.bb17.i.i, %sw.bb16.i.i, %sw.bb15.i.i, %sw.bb14.i.i, %sw.bb13.i.i, %sw.bb12.i.i, %sw.bb11.i.i, %sw.bb10.i.i, %sw.bb9.i.i, %sw.bb8.i.i, %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %for.body.i290._crit_edge
  %.sink.i.i = phi i16 [ 2774, %sw.bb19.i.i ], [ 2776, %sw.bb18.i.i ], [ 2771, %sw.bb17.i.i ], [ 2770, %sw.bb16.i.i ], [ 2722, %sw.bb15.i.i ], [ 2721, %sw.bb14.i.i ], [ 2720, %sw.bb13.i.i ], [ 2719, %sw.bb12.i.i ], [ 2760, %sw.bb11.i.i ], [ 2759, %sw.bb10.i.i ], [ 3467, %sw.bb9.i.i ], [ 3469, %sw.bb8.i.i ], [ 2718, %sw.bb7.i.i ], [ 2717, %sw.bb6.i.i ], [ 2716, %sw.bb5.i.i ], [ 3458, %sw.bb4.i.i ], [ 3462, %sw.bb3.i.i ], [ 3460, %sw.bb2.i.i ], [ 3471, %sw.bb1.i.i ], [ 2715, %for.body.i290._crit_edge ]
  br label %iceland_check_s0_mc_reg_index.exit.i

iceland_check_s0_mc_reg_index.exit.i:             ; preds = %202, %for.body.i290.iceland_check_s0_mc_reg_index.exit.i_crit_edge
  %.sroa.speculated.i = phi i16 [ %.sink.i.i, %202 ], [ %200, %for.body.i290.iceland_check_s0_mc_reg_index.exit.i_crit_edge ]
  %203 = ptrtoint ptr %arrayidx.i289 to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %.sroa.speculated.i, ptr %arrayidx.i289, align 4
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %204 = ptrtoint ptr %mc_reg_table to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %mc_reg_table, align 4
  %conv.i291 = zext i8 %205 to i32
  %cmp.i292 = icmp ult i32 %inc.i, %conv.i291
  br i1 %cmp.i292, label %iceland_check_s0_mc_reg_index.exit.i.for.body.i290_crit_edge, label %iceland_check_s0_mc_reg_index.exit.i.iceland_set_s0_mc_reg_index.exit_crit_edge

iceland_check_s0_mc_reg_index.exit.i.iceland_set_s0_mc_reg_index.exit_crit_edge: ; preds = %iceland_check_s0_mc_reg_index.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iceland_set_s0_mc_reg_index.exit

iceland_check_s0_mc_reg_index.exit.i.for.body.i290_crit_edge: ; preds = %iceland_check_s0_mc_reg_index.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i290

iceland_set_s0_mc_reg_index.exitthread-pre-split: ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #10
  %206 = ptrtoint ptr %mc_reg_table to i32
  call void @__asan_load1_noabort(i32 %206)
  %.pr314 = load i8, ptr %mc_reg_table, align 4
  br label %iceland_set_s0_mc_reg_index.exit

iceland_set_s0_mc_reg_index.exit:                 ; preds = %iceland_set_s0_mc_reg_index.exitthread-pre-split, %iceland_check_s0_mc_reg_index.exit.i.iceland_set_s0_mc_reg_index.exit_crit_edge
  %207 = phi i8 [ %.pr314, %iceland_set_s0_mc_reg_index.exitthread-pre-split ], [ %205, %iceland_check_s0_mc_reg_index.exit.i.iceland_set_s0_mc_reg_index.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %cmp295.not.i = icmp eq i8 %207, 0
  br i1 %cmp295.not.i, label %if.then189.thread, label %do.body.lr.ph.i

if.then189.thread:                                ; preds = %iceland_set_s0_mc_reg_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  %208 = ptrtoint ptr %mc_reg_table to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 0, ptr %mc_reg_table, align 4
  br label %if.end191

do.body.lr.ph.i:                                  ; preds = %iceland_set_s0_mc_reg_index.exit
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
  br i1 %cmp5.i, label %do.end12.i, label %if.then.i296

if.then.i296:                                     ; preds = %do.body.i
  %call.i294 = tail call i32 @___ratelimit(ptr noundef nonnull @iceland_set_mc_special_registers._rs, ptr noundef nonnull @__func__.iceland_set_mc_special_registers) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i294)
  %tobool.not.i295 = icmp eq i32 %call.i294, 0
  br i1 %tobool.not.i295, label %if.then.i296.if.end191_crit_edge, label %do.end.i297

if.then.i296.if.end191_crit_edge:                 ; preds = %if.then.i296
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

do.end.i297:                                      ; preds = %if.then.i296
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.183) #12
  br label %if.end191

do.end12.i:                                       ; preds = %do.body.i
  %s1.i298 = getelementptr %struct.iceland_smumgr, ptr %1, i32 0, i32 6, i32 4, i32 %indvars.iv313.i, i32 1
  %211 = ptrtoint ptr %s1.i298 to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %s1.i298, align 2
  %213 = zext i16 %212 to i64
  call void @__sanitizer_cov_trace_switch(i64 %213, ptr @__sancov_gen_cov_switch_values.199)
  switch i16 %212, label %do.end12.i.for.inc201.i_crit_edge [
    i16 2689, label %sw.bb.i
    i16 2690, label %sw.bb161.i
  ]

do.end12.i.for.inc201.i_crit_edge:                ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #10
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
  %call15.i = tail call i32 %219(ptr noundef %215, i32 noundef 2691) #8
  %arrayidx18.i = getelementptr %struct.iceland_smumgr, ptr %1, i32 0, i32 6, i32 4, i32 %conv4.i
  %s119.i = getelementptr %struct.iceland_smumgr, ptr %1, i32 0, i32 6, i32 4, i32 %conv4.i, i32 1
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
  br i1 %cmp26289.not.i, label %sw.bb.i.for.end.i300_crit_edge, label %for.body28.lr.ph.i

sw.bb.i.for.end.i300_crit_edge:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i300

for.body28.lr.ph.i:                               ; preds = %sw.bb.i
  %and.i = and i32 %call15.i, -65536
  %wide.trip.count303.i = zext i8 %223 to i32
  br label %for.body28.i

for.body28.i:                                     ; preds = %for.body28.i.for.body28.i_crit_edge, %for.body28.lr.ph.i
  %indvars.iv301.i = phi i32 [ 0, %for.body28.lr.ph.i ], [ %indvars.iv.next302.i, %for.body28.i.for.body28.i_crit_edge ]
  %arrayidx32.i = getelementptr %struct.iceland_smumgr, ptr %1, i32 0, i32 6, i32 3, i32 %indvars.iv301.i, i32 1, i32 %indvars.iv313.i
  %224 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx32.i, align 4
  %shr.i299 = lshr i32 %225, 16
  %or.i = or i32 %shr.i299, %and.i
  %arrayidx39.i = getelementptr %struct.iceland_smumgr, ptr %1, i32 0, i32 6, i32 3, i32 %indvars.iv301.i, i32 1, i32 %conv4.i
  %226 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %or.i, ptr %arrayidx39.i, align 4
  %indvars.iv.next302.i = add nuw nsw i32 %indvars.iv301.i, 1
  %exitcond304.not.i = icmp eq i32 %indvars.iv.next302.i, %wide.trip.count303.i
  br i1 %exitcond304.not.i, label %for.body28.i.for.end.i300_crit_edge, label %for.body28.i.for.body28.i_crit_edge

for.body28.i.for.body28.i_crit_edge:              ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body28.i

for.body28.i.for.end.i300_crit_edge:              ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i300

for.end.i300:                                     ; preds = %for.body28.i.for.end.i300_crit_edge, %sw.bb.i.for.end.i300_crit_edge
  %inc40.i = add i8 %j.0296.i, 1
  %conv42.i = zext i8 %inc40.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %inc40.i)
  %cmp43.i = icmp ult i8 %inc40.i, 16
  br i1 %cmp43.i, label %do.end57.i, label %if.then45.i

if.then45.i:                                      ; preds = %for.end.i300
  %call46.i = tail call i32 @___ratelimit(ptr noundef nonnull @iceland_set_mc_special_registers._rs.187, ptr noundef nonnull @__func__.iceland_set_mc_special_registers) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.then45.i.if.end191_crit_edge, label %do.end51.i

if.then45.i.if.end191_crit_edge:                  ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

do.end51.i:                                       ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #10
  %call53.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.183) #12
  br label %if.end191

do.end57.i:                                       ; preds = %for.end.i300
  %227 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %device.i, align 4
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %228, align 4
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %230, align 4
  %call62.i = tail call i32 %232(ptr noundef %228, i32 noundef 2731) #8
  %arrayidx65.i = getelementptr %struct.iceland_smumgr, ptr %1, i32 0, i32 6, i32 4, i32 %conv42.i
  %s166.i = getelementptr %struct.iceland_smumgr, ptr %1, i32 0, i32 6, i32 4, i32 %conv42.i, i32 1
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end105.i

for.body77.lr.ph.i:                               ; preds = %do.end57.i
  %and78.i = and i32 %call62.i, -65536
  %wide.trip.count307.i = zext i8 %236 to i32
  br label %for.body77.i

for.body77.i:                                     ; preds = %for.inc103.i.for.body77.i_crit_edge, %for.body77.lr.ph.i
  %indvars.iv305.i = phi i32 [ 0, %for.body77.lr.ph.i ], [ %indvars.iv.next306.i, %for.inc103.i.for.body77.i_crit_edge ]
  %arrayidx84.i = getelementptr %struct.iceland_smumgr, ptr %1, i32 0, i32 6, i32 3, i32 %indvars.iv305.i, i32 1, i32 %indvars.iv313.i
  %237 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %arrayidx84.i, align 4
  %and85.i = and i32 %238, 65535
  %or86.i = or i32 %and85.i, %and78.i
  %arrayidx92.i = getelementptr %struct.iceland_smumgr, ptr %1, i32 0, i32 6, i32 3, i32 %indvars.iv305.i, i32 1, i32 %conv42.i
  %239 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %or86.i, ptr %arrayidx92.i, align 4
  %240 = ptrtoint ptr %is_memory_gddr5.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %is_memory_gddr5.i, align 4, !range !403
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %241)
  %tobool93.not.i = icmp eq i8 %241, 0
  br i1 %tobool93.not.i, label %if.then94.i, label %for.body77.i.for.inc103.i_crit_edge

for.body77.i.for.inc103.i_crit_edge:              ; preds = %for.body77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc103.i

if.then94.i:                                      ; preds = %for.body77.i
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body77.i

for.inc103.i.for.end105.i_crit_edge:              ; preds = %for.inc103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end105.i

for.end105.i:                                     ; preds = %for.inc103.i.for.end105.i_crit_edge, %do.end57.i.for.end105.i_crit_edge
  %inc106.i = add i8 %j.0296.i, 2
  %243 = ptrtoint ptr %is_memory_gddr5.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %is_memory_gddr5.i, align 4, !range !403
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %244)
  %tobool108.not.i = icmp eq i8 %244, 0
  br i1 %tobool108.not.i, label %do.body110.i, label %for.end105.i.for.inc201.i_crit_edge

for.end105.i.for.inc201.i_crit_edge:              ; preds = %for.end105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc201.i

do.body110.i:                                     ; preds = %for.end105.i
  %conv111.i = zext i8 %inc106.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %inc106.i)
  %cmp112.i = icmp ult i8 %inc106.i, 16
  br i1 %cmp112.i, label %do.end126.i, label %if.then114.i

if.then114.i:                                     ; preds = %do.body110.i
  %call115.i = tail call i32 @___ratelimit(ptr noundef nonnull @iceland_set_mc_special_registers._rs.190, ptr noundef nonnull @__func__.iceland_set_mc_special_registers) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.i)
  %tobool116.not.i = icmp eq i32 %call115.i, 0
  br i1 %tobool116.not.i, label %if.then114.i.if.end191_crit_edge, label %do.end120.i

if.then114.i.if.end191_crit_edge:                 ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

do.end120.i:                                      ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #10
  %call122.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.183) #12
  br label %if.end191

do.end126.i:                                      ; preds = %do.body110.i
  %arrayidx129.i = getelementptr %struct.iceland_smumgr, ptr %1, i32 0, i32 6, i32 4, i32 %conv111.i
  %s1130.i = getelementptr %struct.iceland_smumgr, ptr %1, i32 0, i32 6, i32 4, i32 %conv111.i, i32 1
  %245 = ptrtoint ptr %s1130.i to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 2612, ptr %s1130.i, align 2
  %246 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 2612, ptr %arrayidx129.i, align 4
  br i1 %cmp75291.not.i, label %do.end126.i.for.end158.i_crit_edge, label %for.body141.preheader.i

do.end126.i.for.end158.i_crit_edge:               ; preds = %do.end126.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end158.i

for.body141.preheader.i:                          ; preds = %do.end126.i
  %wide.trip.count311.i = zext i8 %236 to i32
  br label %for.body141.i

for.body141.i:                                    ; preds = %for.body141.i.for.body141.i_crit_edge, %for.body141.preheader.i
  %indvars.iv309.i = phi i32 [ 0, %for.body141.preheader.i ], [ %indvars.iv.next310.i, %for.body141.i.for.body141.i_crit_edge ]
  %arrayidx147.i = getelementptr %struct.iceland_smumgr, ptr %1, i32 0, i32 6, i32 3, i32 %indvars.iv309.i, i32 1, i32 %indvars.iv313.i
  %247 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %arrayidx147.i, align 4
  %shr149.i = lshr i32 %248, 16
  %arrayidx155.i = getelementptr %struct.iceland_smumgr, ptr %1, i32 0, i32 6, i32 3, i32 %indvars.iv309.i, i32 1, i32 %conv111.i
  %249 = ptrtoint ptr %arrayidx155.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %shr149.i, ptr %arrayidx155.i, align 4
  %indvars.iv.next310.i = add nuw nsw i32 %indvars.iv309.i, 1
  %exitcond312.not.i = icmp eq i32 %indvars.iv.next310.i, %wide.trip.count311.i
  br i1 %exitcond312.not.i, label %for.body141.i.for.end158.i_crit_edge, label %for.body141.i.for.body141.i_crit_edge

for.body141.i.for.body141.i_crit_edge:            ; preds = %for.body141.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body141.i

for.body141.i.for.end158.i_crit_edge:             ; preds = %for.body141.i
  call void @__sanitizer_cov_trace_pc() #10
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
  %call166.i = tail call i32 %255(ptr noundef %251, i32 noundef 2769) #8
  %arrayidx169.i = getelementptr %struct.iceland_smumgr, ptr %1, i32 0, i32 6, i32 4, i32 %conv4.i
  %s1170.i = getelementptr %struct.iceland_smumgr, ptr %1, i32 0, i32 6, i32 4, i32 %conv4.i, i32 1
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end199.i

for.body181.lr.ph.i:                              ; preds = %sw.bb161.i
  %and182.i = and i32 %call166.i, -65536
  %wide.trip.count.i = zext i8 %259 to i32
  br label %for.body181.i

for.body181.i:                                    ; preds = %for.body181.i.for.body181.i_crit_edge, %for.body181.lr.ph.i
  %indvars.iv.i302 = phi i32 [ 0, %for.body181.lr.ph.i ], [ %indvars.iv.next.i303, %for.body181.i.for.body181.i_crit_edge ]
  %arrayidx188.i = getelementptr %struct.iceland_smumgr, ptr %1, i32 0, i32 6, i32 3, i32 %indvars.iv.i302, i32 1, i32 %indvars.iv313.i
  %260 = ptrtoint ptr %arrayidx188.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx188.i, align 4
  %and189.i = and i32 %261, 65535
  %or190.i = or i32 %and189.i, %and182.i
  %arrayidx196.i = getelementptr %struct.iceland_smumgr, ptr %1, i32 0, i32 6, i32 3, i32 %indvars.iv.i302, i32 1, i32 %conv4.i
  %262 = ptrtoint ptr %arrayidx196.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %or190.i, ptr %arrayidx196.i, align 4
  %indvars.iv.next.i303 = add nuw nsw i32 %indvars.iv.i302, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i303, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body181.i.for.end199.i_crit_edge, label %for.body181.i.for.body181.i_crit_edge

for.body181.i.for.body181.i_crit_edge:            ; preds = %for.body181.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body181.i

for.body181.i.for.end199.i_crit_edge:             ; preds = %for.body181.i
  call void @__sanitizer_cov_trace_pc() #10
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
  %cmp.i304 = icmp ult i32 %indvars.iv.next314.i, %265
  br i1 %cmp.i304, label %for.inc201.i.do.body.i_crit_edge, label %if.then189

for.inc201.i.do.body.i_crit_edge:                 ; preds = %for.inc201.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.then189:                                       ; preds = %for.inc201.i
  %266 = ptrtoint ptr %mc_reg_table to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 %j.1.i, ptr %mc_reg_table, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %j.1.i)
  %cmp3.not.i = icmp eq i8 %j.1.i, 0
  br i1 %cmp3.not.i, label %if.then189.if.end191_crit_edge, label %for.cond3.preheader.lr.ph.i

if.then189.if.end191_crit_edge:                   ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

for.cond3.preheader.lr.ph.i:                      ; preds = %if.then189
  %267 = ptrtoint ptr %num_entries74.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %num_entries74.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %268)
  %cmp61.i = icmp ugt i8 %268, 1
  %validflag.i = getelementptr inbounds %struct.iceland_smumgr, ptr %1, i32 0, i32 6, i32 2
  %wide.trip.count8.i = zext i8 %j.1.i to i32
  %wide.trip.count.i307 = zext i8 %268 to i32
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %for.inc22.i.for.cond3.preheader.i_crit_edge, %for.cond3.preheader.lr.ph.i
  %indvars.iv6.i = phi i32 [ 0, %for.cond3.preheader.lr.ph.i ], [ %indvars.iv.next7.i, %for.inc22.i.for.cond3.preheader.i_crit_edge ]
  br i1 %cmp61.i, label %for.cond3.preheader.i.for.body8.i_crit_edge, label %for.cond3.preheader.i.for.inc22.i_crit_edge

for.cond3.preheader.i.for.inc22.i_crit_edge:      ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc22.i

for.cond3.preheader.i.for.body8.i_crit_edge:      ; preds = %for.cond3.preheader.i
  br label %for.body8.i

for.cond3.i:                                      ; preds = %for.body8.i
  %indvars.iv.next.i308 = add nuw nsw i32 %indvars.iv.i310, 1
  %exitcond.not.i309 = icmp eq i32 %indvars.iv.next.i308, %wide.trip.count.i307
  br i1 %exitcond.not.i309, label %for.cond3.i.for.inc22.i_crit_edge, label %for.cond3.i.for.body8.i_crit_edge

for.cond3.i.for.body8.i_crit_edge:                ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body8.i

for.cond3.i.for.inc22.i_crit_edge:                ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc22.i

for.body8.i:                                      ; preds = %for.cond3.i.for.body8.i_crit_edge, %for.cond3.preheader.i.for.body8.i_crit_edge
  %indvars.iv.i310 = phi i32 [ %indvars.iv.next.i308, %for.cond3.i.for.body8.i_crit_edge ], [ 1, %for.cond3.preheader.i.for.body8.i_crit_edge ]
  %sub.i = add nsw i32 %indvars.iv.i310, -1
  %arrayidx10.i = getelementptr %struct.iceland_smumgr, ptr %1, i32 0, i32 6, i32 3, i32 %sub.i, i32 1, i32 %indvars.iv6.i
  %269 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %arrayidx10.i, align 4
  %arrayidx16.i = getelementptr %struct.iceland_smumgr, ptr %1, i32 0, i32 6, i32 3, i32 %indvars.iv.i310, i32 1, i32 %indvars.iv6.i
  %271 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %arrayidx16.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %270, i32 %272)
  %cmp17.not.i = icmp eq i32 %270, %272
  br i1 %cmp17.not.i, label %for.cond3.i, label %if.then.i311

if.then.i311:                                     ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i = shl nuw i32 1, %indvars.iv6.i
  %273 = ptrtoint ptr %validflag.i to i32
  call void @__asan_load2_noabort(i32 %273)
  %274 = load i16, ptr %validflag.i, align 2
  %275 = trunc i32 %shl.i to i16
  %conv21.i = or i16 %274, %275
  store i16 %conv21.i, ptr %validflag.i, align 2
  br label %for.inc22.i

for.inc22.i:                                      ; preds = %if.then.i311, %for.cond3.i.for.inc22.i_crit_edge, %for.cond3.preheader.i.for.inc22.i_crit_edge
  %indvars.iv.next7.i = add nuw nsw i32 %indvars.iv6.i, 1
  %exitcond9.not.i = icmp eq i32 %indvars.iv.next7.i, %wide.trip.count8.i
  br i1 %exitcond9.not.i, label %for.inc22.i.if.end191_crit_edge, label %for.inc22.i.for.cond3.preheader.i_crit_edge

for.inc22.i.for.cond3.preheader.i_crit_edge:      ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond3.preheader.i

for.inc22.i.if.end191_crit_edge:                  ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

if.end191:                                        ; preds = %for.inc22.i.if.end191_crit_edge, %if.then189.if.end191_crit_edge, %do.end120.i, %if.then114.i.if.end191_crit_edge, %do.end51.i, %if.then45.i.if.end191_crit_edge, %do.end.i297, %if.then.i296.if.end191_crit_edge, %if.then189.thread, %do.end18.i, %if.then12.i.if.end191_crit_edge, %do.end.i, %if.then.i.if.end191_crit_edge, %if.end.if.end191_crit_edge
  %result.1317 = phi i32 [ 0, %if.then189.thread ], [ 0, %if.then189.if.end191_crit_edge ], [ -22, %if.then114.i.if.end191_crit_edge ], [ -22, %do.end120.i ], [ -22, %if.then45.i.if.end191_crit_edge ], [ -22, %do.end51.i ], [ -22, %if.then.i296.if.end191_crit_edge ], [ -22, %do.end.i297 ], [ -22, %if.then12.i.if.end191_crit_edge ], [ -22, %do.end18.i ], [ -22, %if.then.i.if.end191_crit_edge ], [ -22, %do.end.i ], [ %call178, %if.end.if.end191_crit_edge ], [ 0, %for.inc22.i.if.end191_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end191, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.1317, %if.end191 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iceland_get_offsetof(i32 noundef %type, i32 noundef %member) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %type, label %entry.do.end_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %member)
  %1 = icmp ult i32 %member, 15
  br i1 %1, label %switch.hole_check, label %sw.bb.do.end_crit_edge

sw.bb.do.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %member)
  %cond = icmp eq i32 %member, 9
  br i1 %cond, label %sw.bb13.return_crit_edge, label %sw.bb13.do.end_crit_edge

sw.bb13.do.end_crit_edge:                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.bb13.return_crit_edge:                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %sw.bb13.do.end_crit_edge, %sw.bb.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, i32 noundef %type, i32 noundef %member) #12
  br label %return

switch.hole_check:                                ; preds = %sw.bb
  %switch.maskindex = trunc i32 %member to i16
  %switch.shifted = lshr i16 31871, %switch.maskindex
  %2 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %switch.lobit.not = icmp eq i16 %2, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [15 x i32], ptr @switch.table.iceland_get_offsetof, i32 0, i32 %member
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %do.end, %sw.bb13.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 1464, %sw.bb13.return_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iceland_get_mac_definition(i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %value)
  %0 = icmp ult i32 %value, 8
  br i1 %0, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195, i32 noundef %value) #12
  br label %return

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %value to i8
  %switch.shifted = lshr i8 -33, %switch.maskindex
  %1 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.lobit.not = icmp eq i8 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.iceland_get_mac_definition, i32 0, i32 %value
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @iceland_is_dpm_running(ptr nocapture noundef readonly %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %call = tail call i32 %5(ptr noundef %1, i32 noundef 1, i32 noundef 208912) #8
  %6 = and i32 %call, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp ne i32 %6, 0
  ret i1 %cmp
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @smu7_is_smc_ram_running(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_read_smc_sram_dword(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_convert_fw_type_to_cgs(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_wait_for_indirect_register_unequal(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_program_jump_on_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_wait_on_indirect_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_copy_bytes_to_smc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iceland_program_memory_timing_parameters(ptr noundef %hwmgr) unnamed_addr #0 align 64 {
entry:
  %arb_regs = alloca %struct.SMU71_Discrete_MCArbDramTimingTable, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %arb_regs) #8
  %4 = call ptr @memset(ptr %arb_regs, i32 0, i32 384)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp40.not = icmp eq i32 %6, 0
  br i1 %cmp40.not, label %entry.if.then20_crit_edge, label %for.cond1.preheader.lr.ph

entry.if.then20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %mclk_table = getelementptr inbounds %struct.smu7_dpm_table, ptr %1, i32 0, i32 1
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc16.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %i.042 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc17, %for.inc16.for.cond1.preheader_crit_edge ]
  %result.041 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %result.2, %for.inc16.for.cond1.preheader_crit_edge ]
  %7 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mclk_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp438.not = icmp eq i32 %8, 0
  br i1 %cmp438.not, label %for.cond1.preheader.for.inc16_crit_edge, label %for.body5.lr.ph

for.cond1.preheader.for.inc16_crit_edge:          ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc16

for.body5.lr.ph:                                  ; preds = %for.cond1.preheader
  %value = getelementptr %struct.smu7_single_dpm_table, ptr %1, i32 0, i32 1, i32 %i.042, i32 1
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
  %call.i = tail call i32 @atomctrl_set_engine_dram_timings_rv770(ptr noundef %hwmgr, i32 noundef %10, i32 noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %for.inc, label %if.then.i

if.then.i:                                        ; preds = %for.body5
  %call1.i = tail call i32 @___ratelimit(ptr noundef nonnull @iceland_populate_memory_timing_parameters._rs, ptr noundef nonnull @__func__.iceland_populate_memory_timing_parameters) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i.for.inc16_crit_edge, label %do.end.i

if.then.i.for.inc16_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc16

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.19) #12
  br label %for.inc16

for.inc:                                          ; preds = %for.body5
  %arrayidx14 = getelementptr [8 x [4 x %struct.SMU71_Discrete_MCArbDramTimingTableEntry]], ptr %arb_regs, i32 0, i32 %i.042, i32 %j.039
  %13 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call9.i = tail call i32 %18(ptr noundef %14, i32 noundef 2525) #8
  %19 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call14.i = tail call i32 %24(ptr noundef %20, i32 noundef 2526) #8
  %25 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call19.i = tail call i32 %30(ptr noundef %26, i32 noundef 2562) #8
  %31 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %call9.i, ptr %arrayidx14, align 1
  %McArbDramTiming2.i = getelementptr [8 x [4 x %struct.SMU71_Discrete_MCArbDramTimingTableEntry]], ptr %arb_regs, i32 0, i32 %i.042, i32 %j.039, i32 1
  %32 = ptrtoint ptr %McArbDramTiming2.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %call14.i, ptr %McArbDramTiming2.i, align 1
  %33 = trunc i32 %call19.i to i8
  %conv.i = and i8 %33, 31
  %McArbBurstTime.i = getelementptr [8 x [4 x %struct.SMU71_Discrete_MCArbDramTimingTableEntry]], ptr %arb_regs, i32 0, i32 %i.042, i32 %j.039, i32 2
  %34 = ptrtoint ptr %McArbBurstTime.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv.i, ptr %McArbBurstTime.i, align 1
  %inc = add nuw i32 %j.039, 1
  %35 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mclk_table, align 4
  %cmp4 = icmp ult i32 %inc, %36
  br i1 %cmp4, label %for.inc.for.body5_crit_edge, label %for.inc.for.inc16_crit_edge

for.inc.for.inc16_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc16

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body5

for.inc16:                                        ; preds = %for.inc.for.inc16_crit_edge, %do.end.i, %if.then.i.for.inc16_crit_edge, %for.cond1.preheader.for.inc16_crit_edge
  %result.2 = phi i32 [ %call.i, %if.then.i.for.inc16_crit_edge ], [ %call.i, %do.end.i ], [ %result.041, %for.cond1.preheader.for.inc16_crit_edge ], [ 0, %for.inc.for.inc16_crit_edge ]
  %inc17 = add nuw i32 %i.042, 1
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %1, align 4
  %cmp = icmp ult i32 %inc17, %38
  br i1 %cmp, label %for.inc16.for.cond1.preheader_crit_edge, label %for.end18

for.inc16.for.cond1.preheader_crit_edge:          ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader

for.end18:                                        ; preds = %for.inc16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.2)
  %cmp19 = icmp eq i32 %result.2, 0
  br i1 %cmp19, label %for.end18.if.then20_crit_edge, label %for.end18.if.end22_crit_edge

for.end18.if.end22_crit_edge:                     ; preds = %for.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

for.end18.if.then20_crit_edge:                    ; preds = %for.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.then20:                                        ; preds = %for.end18.if.then20_crit_edge, %entry.if.then20_crit_edge
  %arb_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %3, i32 0, i32 7
  %39 = ptrtoint ptr %arb_table_start to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arb_table_start, align 4
  %call21 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %40, ptr noundef nonnull %arb_regs, i32 noundef 384, i32 noundef 262144) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %for.end18.if.end22_crit_edge
  %result.3 = phi i32 [ %call21, %if.then20 ], [ %result.2, %for.end18.if.end22_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %arb_regs) #8
  ret i32 %result.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_set_engine_dram_timings_rv770(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iceland_populate_smc_boot_level(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef writeonly %table) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  %GraphicsBootLevel = getelementptr inbounds %struct.SMU71_Discrete_DpmTable, ptr %table, i32 0, i32 26
  %4 = ptrtoint ptr %GraphicsBootLevel to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %GraphicsBootLevel, align 1
  %MemoryBootLevel = getelementptr inbounds %struct.SMU71_Discrete_DpmTable, ptr %table, i32 0, i32 34
  %5 = ptrtoint ptr %MemoryBootLevel to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %MemoryBootLevel, align 1
  %sclk_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 4
  %6 = ptrtoint ptr %sclk_bootup_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sclk_bootup_value, align 4
  %GraphicsBootLevel1 = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 26
  %call = tail call i32 @phm_find_boot_level(ptr noundef %1, i32 noundef %7, ptr noundef %GraphicsBootLevel1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %GraphicsBootLevel1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %GraphicsBootLevel1, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mclk_table = getelementptr inbounds %struct.smu7_dpm_table, ptr %1, i32 0, i32 1
  %mclk_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 5
  %9 = ptrtoint ptr %mclk_bootup_value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mclk_bootup_value, align 4
  %MemoryBootLevel8 = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 34
  %call9 = tail call i32 @phm_find_boot_level(ptr noundef %mclk_table, i32 noundef %10, ptr noundef %MemoryBootLevel8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %if.end.if.end19_crit_edge, label %if.then11

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %MemoryBootLevel8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %MemoryBootLevel8, align 2
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then11, %if.end.if.end19_crit_edge
  %vddc_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 1
  %12 = ptrtoint ptr %vddc_bootup_value to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vddc_bootup_value, align 2
  %BootVddc = getelementptr inbounds %struct.SMU71_Discrete_DpmTable, ptr %table, i32 0, i32 61
  %14 = ptrtoint ptr %BootVddc to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %13, ptr %BootVddc, align 1
  %vddci_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 40
  %15 = ptrtoint ptr %vddci_control to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vddci_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp21 = icmp eq i32 %16, 0
  br i1 %cmp21, label %if.end19.if.end26_crit_edge, label %if.else

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %vddci_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 2
  %17 = ptrtoint ptr %vddci_bootup_value to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vddci_bootup_value, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end19.if.end26_crit_edge
  %.sink = phi i16 [ %18, %if.else ], [ %13, %if.end19.if.end26_crit_edge ]
  %19 = getelementptr inbounds %struct.SMU71_Discrete_DpmTable, ptr %table, i32 0, i32 62
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %.sink, ptr %19, align 1
  %vbios_boot_state = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31
  %21 = ptrtoint ptr %vbios_boot_state to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vbios_boot_state, align 4
  %BootMVdd = getelementptr inbounds %struct.SMU71_Discrete_DpmTable, ptr %table, i32 0, i32 63
  %23 = ptrtoint ptr %BootMVdd to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %22, ptr %BootMVdd, align 1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iceland_populate_smc_initial_state(ptr nocapture noundef readonly %hwmgr) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  %dyn_state = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29
  %4 = ptrtoint ptr %dyn_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dyn_state, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %conv3 = and i32 %7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3)
  %cmp3.not = icmp eq i32 %conv3, 0
  br i1 %cmp3.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sclk_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 4
  %8 = ptrtoint ptr %sclk_bootup_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sclk_bootup_value, align 4
  %10 = trunc i32 %7 to i8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv25 = phi i32 [ 0, %for.body.lr.ph ], [ %conv2, %for.inc.for.body_crit_edge ]
  %level.04 = phi i8 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %5, i32 0, i32 1, i32 %conv25
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %9)
  %cmp7.not = icmp ult i32 %12, %9
  br i1 %cmp7.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %GraphicsBootLevel = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 26
  %13 = ptrtoint ptr %GraphicsBootLevel to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %level.04, ptr %GraphicsBootLevel, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i8 %level.04, 1
  %conv2 = zext i8 %inc to i32
  %cmp = icmp ult i8 %inc, %10
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then, %entry.for.end_crit_edge
  %vddc_dependency_on_mclk = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 2
  %14 = ptrtoint ptr %vddc_dependency_on_mclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vddc_dependency_on_mclk, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %conv14 = and i32 %17, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv14)
  %cmp156.not = icmp eq i32 %conv14, 0
  br i1 %cmp156.not, label %for.end.for.end32_crit_edge, label %for.body17.lr.ph

for.end.for.end32_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end32

for.body17.lr.ph:                                 ; preds = %for.end
  %mclk_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 5
  %18 = ptrtoint ptr %mclk_bootup_value to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mclk_bootup_value, align 4
  %20 = trunc i32 %17 to i8
  br label %for.body17

for.body17:                                       ; preds = %for.inc30.for.body17_crit_edge, %for.body17.lr.ph
  %conv138 = phi i32 [ 0, %for.body17.lr.ph ], [ %conv13, %for.inc30.for.body17_crit_edge ]
  %level.17 = phi i8 [ 0, %for.body17.lr.ph ], [ %inc31, %for.inc30.for.body17_crit_edge ]
  %arrayidx22 = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %15, i32 0, i32 1, i32 %conv138
  %21 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %19)
  %cmp25.not = icmp ult i32 %22, %19
  br i1 %cmp25.not, label %for.inc30, label %if.then27

if.then27:                                        ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #10
  %MemoryBootLevel = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 34
  %23 = ptrtoint ptr %MemoryBootLevel to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %level.17, ptr %MemoryBootLevel, align 2
  br label %for.end32

for.inc30:                                        ; preds = %for.body17
  %inc31 = add nuw i8 %level.17, 1
  %conv13 = zext i8 %inc31 to i32
  %cmp15 = icmp ult i8 %inc31, %20
  br i1 %cmp15, label %for.inc30.for.body17_crit_edge, label %for.inc30.for.end32_crit_edge

for.inc30.for.end32_crit_edge:                    ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end32

for.inc30.for.body17_crit_edge:                   ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body17

for.end32:                                        ; preds = %for.inc30.for.end32_crit_edge, %if.then27, %for.end.for.end32_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iceland_populate_bapm_parameters_in_dpm_table(ptr nocapture noundef readonly %hwmgr) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  %power_tune_defaults = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %power_tune_defaults to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %power_tune_defaults, align 4
  %cac_dtp_table1 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 20
  %6 = ptrtoint ptr %cac_dtp_table1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cac_dtp_table1, align 4
  %ppm_parameter_table = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 19
  %8 = ptrtoint ptr %ppm_parameter_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ppm_parameter_table, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %7, align 4
  %mul = shl i16 %11, 8
  %DefaultTdp = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 70
  %12 = ptrtoint ptr %DefaultTdp to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %mul, ptr %DefaultTdp, align 1
  %usConfigurableTDP = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %usConfigurableTDP to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %usConfigurableTDP, align 2
  %mul5 = shl i16 %14, 8
  %TargetTdp = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 71
  %15 = ptrtoint ptr %TargetTdp to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %mul5, ptr %TargetTdp, align 1
  %DTETjOffset = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 58
  %16 = ptrtoint ptr %DTETjOffset to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %DTETjOffset, align 1
  %temperature_high = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 69, i32 1
  %17 = ptrtoint ptr %temperature_high to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %temperature_high, align 4
  %div = sdiv i32 %18, 1000
  %conv7 = trunc i32 %div to i8
  %GpuTjMax = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 59
  %19 = ptrtoint ptr %GpuTjMax to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv7, ptr %GpuTjMax, align 1
  %GpuTjHyst = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 60
  %20 = ptrtoint ptr %GpuTjHyst to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 8, ptr %GpuTjHyst, align 1
  %dte_ambient_temp_base = getelementptr inbounds %struct.iceland_pt_defaults, ptr %5, i32 0, i32 5
  %21 = ptrtoint ptr %dte_ambient_temp_base to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dte_ambient_temp_base, align 1
  %DTEAmbientTempBase = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 57
  %23 = ptrtoint ptr %DTEAmbientTempBase to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %DTEAmbientTempBase, align 1
  %cmp.not = icmp eq ptr %9, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dgpu_tdp = getelementptr inbounds %struct.phm_ppm_table, ptr %9, i32 0, i32 7
  %24 = ptrtoint ptr %dgpu_tdp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dgpu_tdp, align 4
  %conv10 = shl i32 %25, 8
  %mul11 = and i32 %conv10, 16776960
  %div12 = udiv i32 %mul11, 1000
  %conv13 = trunc i32 %div12 to i16
  %PPM_PkgPwrLimit = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 68
  %26 = ptrtoint ptr %PPM_PkgPwrLimit to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %conv13, ptr %PPM_PkgPwrLimit, align 1
  %tj_max = getelementptr inbounds %struct.phm_ppm_table, ptr %9, i32 0, i32 9
  %27 = ptrtoint ptr %tj_max to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tj_max, align 4
  %.tr = trunc i32 %28 to i16
  %conv17 = shl i16 %.tr, 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %PPM_PkgPwrLimit18 = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 68
  %29 = ptrtoint ptr %PPM_PkgPwrLimit18 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 0, ptr %PPM_PkgPwrLimit18, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv17.sink = phi i16 [ 0, %if.else ], [ %conv17, %if.then ]
  %30 = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 69
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %conv17.sink, ptr %30, align 1
  %bapm_temp_gradient = getelementptr inbounds %struct.iceland_pt_defaults, ptr %5, i32 0, i32 7
  %32 = ptrtoint ptr %bapm_temp_gradient to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bapm_temp_gradient, align 4
  %BAPM_TEMP_GRADIENT = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 65
  %34 = ptrtoint ptr %BAPM_TEMP_GRADIENT to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %BAPM_TEMP_GRADIENT, align 1
  %bapmti_r = getelementptr inbounds %struct.iceland_pt_defaults, ptr %5, i32 0, i32 8
  %bapmti_rc = getelementptr inbounds %struct.iceland_pt_defaults, ptr %5, i32 0, i32 9
  %arrayidx35 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 55, i32 0, i32 0
  %arrayidx38 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 56, i32 0, i32 0
  %35 = ptrtoint ptr %bapmti_r to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %bapmti_r, align 2
  %37 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %36, ptr %arrayidx35, align 1
  %38 = ptrtoint ptr %bapmti_rc to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %bapmti_rc, align 2
  %40 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %39, ptr %arrayidx38, align 1
  %incdec.ptr = getelementptr %struct.iceland_pt_defaults, ptr %5, i32 0, i32 8, i32 1
  %incdec.ptr40 = getelementptr %struct.iceland_pt_defaults, ptr %5, i32 0, i32 9, i32 1
  %arrayidx35.1 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 55, i32 0, i32 1
  %arrayidx38.1 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 56, i32 0, i32 1
  %41 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %incdec.ptr, align 2
  %43 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 %42, ptr %arrayidx35.1, align 1
  %44 = ptrtoint ptr %incdec.ptr40 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %incdec.ptr40, align 2
  %46 = ptrtoint ptr %arrayidx38.1 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 %45, ptr %arrayidx38.1, align 1
  %incdec.ptr.1 = getelementptr %struct.iceland_pt_defaults, ptr %5, i32 0, i32 8, i32 2
  %incdec.ptr40.1 = getelementptr %struct.iceland_pt_defaults, ptr %5, i32 0, i32 9, i32 2
  %arrayidx35.2 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 55, i32 0, i32 2
  %arrayidx38.2 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 56, i32 0, i32 2
  %47 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %incdec.ptr.1, align 2
  %49 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 %48, ptr %arrayidx35.2, align 1
  %50 = ptrtoint ptr %incdec.ptr40.1 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %incdec.ptr40.1, align 2
  %52 = ptrtoint ptr %arrayidx38.2 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 %51, ptr %arrayidx38.2, align 1
  %incdec.ptr.2 = getelementptr %struct.iceland_pt_defaults, ptr %5, i32 0, i32 8, i32 3
  %incdec.ptr40.2 = getelementptr %struct.iceland_pt_defaults, ptr %5, i32 0, i32 9, i32 3
  %arrayidx35.19 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 55, i32 1, i32 0
  %arrayidx38.110 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 56, i32 1, i32 0
  %53 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %incdec.ptr.2, align 2
  %55 = ptrtoint ptr %arrayidx35.19 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %54, ptr %arrayidx35.19, align 1
  %56 = ptrtoint ptr %incdec.ptr40.2 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %incdec.ptr40.2, align 2
  %58 = ptrtoint ptr %arrayidx38.110 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 2)
  store i16 %57, ptr %arrayidx38.110, align 1
  %incdec.ptr.111 = getelementptr %struct.iceland_pt_defaults, ptr %5, i32 0, i32 8, i32 4
  %incdec.ptr40.112 = getelementptr %struct.iceland_pt_defaults, ptr %5, i32 0, i32 9, i32 4
  %arrayidx35.1.1 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 55, i32 1, i32 1
  %arrayidx38.1.1 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 56, i32 1, i32 1
  %59 = ptrtoint ptr %incdec.ptr.111 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %incdec.ptr.111, align 2
  %61 = ptrtoint ptr %arrayidx35.1.1 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 %60, ptr %arrayidx35.1.1, align 1
  %62 = ptrtoint ptr %incdec.ptr40.112 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %incdec.ptr40.112, align 2
  %64 = ptrtoint ptr %arrayidx38.1.1 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 2)
  store i16 %63, ptr %arrayidx38.1.1, align 1
  %incdec.ptr.1.1 = getelementptr %struct.iceland_pt_defaults, ptr %5, i32 0, i32 8, i32 5
  %incdec.ptr40.1.1 = getelementptr %struct.iceland_pt_defaults, ptr %5, i32 0, i32 9, i32 5
  %arrayidx35.2.1 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 55, i32 1, i32 2
  %arrayidx38.2.1 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 56, i32 1, i32 2
  %65 = ptrtoint ptr %incdec.ptr.1.1 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %incdec.ptr.1.1, align 2
  %67 = ptrtoint ptr %arrayidx35.2.1 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 %66, ptr %arrayidx35.2.1, align 1
  %68 = ptrtoint ptr %incdec.ptr40.1.1 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %incdec.ptr40.1.1, align 2
  %70 = ptrtoint ptr %arrayidx38.2.1 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %69, ptr %arrayidx38.2.1, align 1
  %incdec.ptr.2.1 = getelementptr %struct.iceland_pt_defaults, ptr %5, i32 0, i32 8, i32 6
  %incdec.ptr40.2.1 = getelementptr %struct.iceland_pt_defaults, ptr %5, i32 0, i32 9, i32 6
  %arrayidx35.213 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 55, i32 2, i32 0
  %arrayidx38.214 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 56, i32 2, i32 0
  %71 = ptrtoint ptr %incdec.ptr.2.1 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %incdec.ptr.2.1, align 2
  %73 = ptrtoint ptr %arrayidx35.213 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 %72, ptr %arrayidx35.213, align 1
  %74 = ptrtoint ptr %incdec.ptr40.2.1 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %incdec.ptr40.2.1, align 2
  %76 = ptrtoint ptr %arrayidx38.214 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 2)
  store i16 %75, ptr %arrayidx38.214, align 1
  %incdec.ptr.215 = getelementptr %struct.iceland_pt_defaults, ptr %5, i32 0, i32 8, i32 7
  %incdec.ptr40.216 = getelementptr %struct.iceland_pt_defaults, ptr %5, i32 0, i32 9, i32 7
  %arrayidx35.1.2 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 55, i32 2, i32 1
  %arrayidx38.1.2 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 56, i32 2, i32 1
  %77 = ptrtoint ptr %incdec.ptr.215 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %incdec.ptr.215, align 2
  %79 = ptrtoint ptr %arrayidx35.1.2 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 2)
  store i16 %78, ptr %arrayidx35.1.2, align 1
  %80 = ptrtoint ptr %incdec.ptr40.216 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %incdec.ptr40.216, align 2
  %82 = ptrtoint ptr %arrayidx38.1.2 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 %81, ptr %arrayidx38.1.2, align 1
  %incdec.ptr.1.2 = getelementptr %struct.iceland_pt_defaults, ptr %5, i32 0, i32 8, i32 8
  %incdec.ptr40.1.2 = getelementptr %struct.iceland_pt_defaults, ptr %5, i32 0, i32 9, i32 8
  %arrayidx35.2.2 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 55, i32 2, i32 2
  %arrayidx38.2.2 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 56, i32 2, i32 2
  %83 = ptrtoint ptr %incdec.ptr.1.2 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %incdec.ptr.1.2, align 2
  %85 = ptrtoint ptr %arrayidx35.2.2 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 2)
  store i16 %84, ptr %arrayidx35.2.2, align 1
  %86 = ptrtoint ptr %incdec.ptr40.1.2 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %incdec.ptr40.1.2, align 2
  %88 = ptrtoint ptr %arrayidx38.2.2 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 2)
  store i16 %87, ptr %arrayidx38.2.2, align 1
  %incdec.ptr.2.2 = getelementptr %struct.iceland_pt_defaults, ptr %5, i32 0, i32 8, i32 9
  %incdec.ptr40.2.2 = getelementptr %struct.iceland_pt_defaults, ptr %5, i32 0, i32 9, i32 9
  %arrayidx35.3 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 55, i32 3, i32 0
  %arrayidx38.3 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 56, i32 3, i32 0
  %89 = ptrtoint ptr %incdec.ptr.2.2 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %incdec.ptr.2.2, align 2
  %91 = ptrtoint ptr %arrayidx35.3 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 2)
  store i16 %90, ptr %arrayidx35.3, align 1
  %92 = ptrtoint ptr %incdec.ptr40.2.2 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %incdec.ptr40.2.2, align 2
  %94 = ptrtoint ptr %arrayidx38.3 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 2)
  store i16 %93, ptr %arrayidx38.3, align 1
  %incdec.ptr.3 = getelementptr %struct.iceland_pt_defaults, ptr %5, i32 0, i32 8, i32 10
  %incdec.ptr40.3 = getelementptr %struct.iceland_pt_defaults, ptr %5, i32 0, i32 9, i32 10
  %arrayidx35.1.3 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 55, i32 3, i32 1
  %arrayidx38.1.3 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 56, i32 3, i32 1
  %95 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %incdec.ptr.3, align 2
  %97 = ptrtoint ptr %arrayidx35.1.3 to i32
  call void @__asan_storeN_noabort(i32 %97, i32 2)
  store i16 %96, ptr %arrayidx35.1.3, align 1
  %98 = ptrtoint ptr %incdec.ptr40.3 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %incdec.ptr40.3, align 2
  %100 = ptrtoint ptr %arrayidx38.1.3 to i32
  call void @__asan_storeN_noabort(i32 %100, i32 2)
  store i16 %99, ptr %arrayidx38.1.3, align 1
  %incdec.ptr.1.3 = getelementptr %struct.iceland_pt_defaults, ptr %5, i32 0, i32 8, i32 11
  %incdec.ptr40.1.3 = getelementptr %struct.iceland_pt_defaults, ptr %5, i32 0, i32 9, i32 11
  %arrayidx35.2.3 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 55, i32 3, i32 2
  %arrayidx38.2.3 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 56, i32 3, i32 2
  %101 = ptrtoint ptr %incdec.ptr.1.3 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %incdec.ptr.1.3, align 2
  %103 = ptrtoint ptr %arrayidx35.2.3 to i32
  call void @__asan_storeN_noabort(i32 %103, i32 2)
  store i16 %102, ptr %arrayidx35.2.3, align 1
  %104 = ptrtoint ptr %incdec.ptr40.1.3 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %incdec.ptr40.1.3, align 2
  %106 = ptrtoint ptr %arrayidx38.2.3 to i32
  call void @__asan_storeN_noabort(i32 %106, i32 2)
  store i16 %105, ptr %arrayidx38.2.3, align 1
  %incdec.ptr.2.3 = getelementptr %struct.iceland_pt_defaults, ptr %5, i32 0, i32 8, i32 12
  %incdec.ptr40.2.3 = getelementptr %struct.iceland_pt_defaults, ptr %5, i32 0, i32 9, i32 12
  %arrayidx35.4 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 55, i32 4, i32 0
  %arrayidx38.4 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 56, i32 4, i32 0
  %107 = ptrtoint ptr %incdec.ptr.2.3 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %incdec.ptr.2.3, align 2
  %109 = ptrtoint ptr %arrayidx35.4 to i32
  call void @__asan_storeN_noabort(i32 %109, i32 2)
  store i16 %108, ptr %arrayidx35.4, align 1
  %110 = ptrtoint ptr %incdec.ptr40.2.3 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %incdec.ptr40.2.3, align 2
  %112 = ptrtoint ptr %arrayidx38.4 to i32
  call void @__asan_storeN_noabort(i32 %112, i32 2)
  store i16 %111, ptr %arrayidx38.4, align 1
  %incdec.ptr.4 = getelementptr %struct.iceland_pt_defaults, ptr %5, i32 0, i32 8, i32 13
  %incdec.ptr40.4 = getelementptr %struct.iceland_pt_defaults, ptr %5, i32 0, i32 9, i32 13
  %arrayidx35.1.4 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 55, i32 4, i32 1
  %arrayidx38.1.4 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 56, i32 4, i32 1
  %113 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %incdec.ptr.4, align 2
  %115 = ptrtoint ptr %arrayidx35.1.4 to i32
  call void @__asan_storeN_noabort(i32 %115, i32 2)
  store i16 %114, ptr %arrayidx35.1.4, align 1
  %116 = ptrtoint ptr %incdec.ptr40.4 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %incdec.ptr40.4, align 2
  %118 = ptrtoint ptr %arrayidx38.1.4 to i32
  call void @__asan_storeN_noabort(i32 %118, i32 2)
  store i16 %117, ptr %arrayidx38.1.4, align 1
  %incdec.ptr.1.4 = getelementptr %struct.iceland_pt_defaults, ptr %5, i32 0, i32 8, i32 14
  %incdec.ptr40.1.4 = getelementptr %struct.iceland_pt_defaults, ptr %5, i32 0, i32 9, i32 14
  %arrayidx35.2.4 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 55, i32 4, i32 2
  %arrayidx38.2.4 = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 1, i32 56, i32 4, i32 2
  %119 = ptrtoint ptr %incdec.ptr.1.4 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %incdec.ptr.1.4, align 2
  %121 = ptrtoint ptr %arrayidx35.2.4 to i32
  call void @__asan_storeN_noabort(i32 %121, i32 2)
  store i16 %120, ptr %arrayidx35.2.4, align 1
  %122 = ptrtoint ptr %incdec.ptr40.1.4 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %incdec.ptr40.1.4, align 2
  %124 = ptrtoint ptr %arrayidx38.2.4 to i32
  call void @__asan_storeN_noabort(i32 %124, i32 2)
  store i16 %123, ptr %arrayidx38.2.4, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iceland_populate_smc_svi2_config(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef %tab) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %voltage_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %voltage_control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %voltage_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %SVI2Enable = getelementptr inbounds %struct.SMU71_Discrete_DpmTable, ptr %tab, i32 0, i32 46
  %4 = ptrtoint ptr %SVI2Enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %SVI2Enable, align 1
  %6 = or i8 %5, 1
  store i8 %6, ptr %SVI2Enable, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vddci_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 40
  %7 = ptrtoint ptr %vddci_control to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vddci_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp2 = icmp eq i32 %8, 2
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %SVI2Enable5 = getelementptr inbounds %struct.SMU71_Discrete_DpmTable, ptr %tab, i32 0, i32 46
  %9 = ptrtoint ptr %SVI2Enable5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %SVI2Enable5, align 1
  %11 = or i8 %10, 2
  store i8 %11, ptr %SVI2Enable5, align 1
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %MergedVddci = getelementptr inbounds %struct.SMU71_Discrete_DpmTable, ptr %tab, i32 0, i32 38
  %12 = ptrtoint ptr %MergedVddci to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %MergedVddci, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  %mvdd_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 23
  %13 = ptrtoint ptr %mvdd_control to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mvdd_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp10 = icmp eq i32 %14, 2
  br i1 %cmp10, label %if.then12, label %if.end9.do.body_crit_edge

if.end9.do.body_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %SVI2Enable13 = getelementptr inbounds %struct.SMU71_Discrete_DpmTable, ptr %tab, i32 0, i32 46
  %15 = ptrtoint ptr %SVI2Enable13 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %SVI2Enable13, align 1
  %17 = or i8 %16, 4
  store i8 %17, ptr %SVI2Enable13, align 1
  br label %do.body

do.body:                                          ; preds = %if.then12, %if.end9.do.body_crit_edge
  %SVI2Enable18 = getelementptr inbounds %struct.SMU71_Discrete_DpmTable, ptr %tab, i32 0, i32 46
  %18 = ptrtoint ptr %SVI2Enable18 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %SVI2Enable18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %19)
  %cmp20.not = icmp eq i8 %19, 7
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  %or.cond = or i1 %cmp20.not, %tobool.not
  br i1 %or.cond, label %if.then24, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then24:                                        ; preds = %do.body
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @iceland_populate_smc_svi2_config._rs, ptr noundef nonnull @__func__.iceland_populate_smc_svi2_config) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool25.not = icmp eq i32 %call, 0
  br i1 %tobool25.not, label %if.then24.cleanup_crit_edge, label %do.end

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.116) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then24.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then24.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iceland_populate_initial_mc_reg_table(ptr noundef %hwmgr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %mc_regs = getelementptr inbounds %struct.iceland_smumgr, ptr %1, i32 0, i32 5
  %2 = call ptr @memset(ptr %mc_regs, i32 0, i32 324)
  %3 = load ptr, ptr %smu_backend, align 4
  %mc_reg_table1.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %mc_reg_table1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mc_reg_table1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp45.not.i = icmp eq i8 %5, 0
  br i1 %cmp45.not.i, label %entry.do.end8_crit_edge, label %for.body.lr.ph.i

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

for.body.lr.ph.i:                                 ; preds = %entry
  %validflag.i = getelementptr inbounds %struct.iceland_smumgr, ptr %3, i32 0, i32 6, i32 2
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

do.body.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.046.i)
  %cmp5.i = icmp ult i32 %i.046.i, 16
  br i1 %cmp5.i, label %do.end14.i, label %if.then7.i

if.then7.i:                                       ; preds = %do.body.i
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @iceland_populate_mc_reg_address._rs, ptr noundef nonnull @__func__.iceland_populate_mc_reg_address) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %if.then7.i.if.then_crit_edge, label %do.end.i

if.then7.i.if.then_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

do.end.i:                                         ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.122) #12
  br label %if.then

do.end14.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 6, i32 4, i32 %j.047.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i, align 4
  %arrayidx16.i = getelementptr %struct.iceland_smumgr, ptr %1, i32 0, i32 5, i32 2, i32 %i.046.i
  %10 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %arrayidx16.i, align 1
  %s1.i = getelementptr %struct.iceland_smumgr, ptr %3, i32 0, i32 6, i32 4, i32 %j.047.i, i32 1
  %11 = ptrtoint ptr %s1.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %s1.i, align 2
  %s123.i = getelementptr %struct.iceland_smumgr, ptr %1, i32 0, i32 5, i32 2, i32 %i.046.i, i32 1
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
  %15 = load i8, ptr %mc_reg_table1.i, align 4
  %conv.i = zext i8 %15 to i32
  %cmp.i = icmp ult i32 %inc25.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.end8_crit_edge

for.inc.i.do.end8_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.then:                                          ; preds = %do.end.i, %if.then7.i.if.then_crit_edge
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @iceland_populate_initial_mc_reg_table._rs, ptr noundef nonnull @__func__.iceland_populate_initial_mc_reg_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.117) #12
  br label %cleanup

do.end8:                                          ; preds = %for.inc.i.do.end8_crit_edge, %entry.do.end8_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %entry.do.end8_crit_edge ], [ %i.1.i, %for.inc.i.do.end8_crit_edge ]
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
  br i1 %cmp1.not.i, label %do.end8.iceland_convert_mc_reg_table_to_smc.exit_crit_edge, label %do.end8.for.body.i40_crit_edge

do.end8.for.body.i40_crit_edge:                   ; preds = %do.end8
  br label %for.body.i40

do.end8.iceland_convert_mc_reg_table_to_smc.exit_crit_edge: ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %iceland_convert_mc_reg_table_to_smc.exit

for.body.i40:                                     ; preds = %iceland_convert_mc_reg_table_entry_to_smc.exit.i.for.body.i40_crit_edge, %do.end8.for.body.i40_crit_edge
  %i.02.i = phi i32 [ %inc.i41, %iceland_convert_mc_reg_table_entry_to_smc.exit.i.for.body.i40_crit_edge ], [ 0, %do.end8.for.body.i40_crit_edge ]
  %value.i = getelementptr %struct.smu7_dpm_table, ptr %18, i32 0, i32 1, i32 1, i32 %i.02.i, i32 1
  %21 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %value.i, align 4
  %arrayidx4.i = getelementptr %struct.iceland_smumgr, ptr %1, i32 0, i32 5, i32 3, i32 %i.02.i
  %23 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %smu_backend, align 4
  %num_entries.i.i = getelementptr inbounds %struct.iceland_smumgr, ptr %24, i32 0, i32 6, i32 1
  %25 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %num_entries.i.i, align 1
  %conv.i.i = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp1.not.i.i = icmp eq i8 %26, 0
  br i1 %cmp1.not.i.i, label %for.body.i40.for.end.thread.i.i_crit_edge, label %for.body.i40.for.body.i.i_crit_edge

for.body.i40.for.body.i.i_crit_edge:              ; preds = %for.body.i40
  br label %for.body.i.i

for.body.i40.for.end.thread.i.i_crit_edge:        ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i40.for.body.i.i_crit_edge
  %i.02.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i40.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.iceland_smumgr, ptr %24, i32 0, i32 6, i32 3, i32 %i.02.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %22)
  %cmp3.not.i.i = icmp ult i32 %28, %22
  br i1 %cmp3.not.i.i, label %for.inc.i.i, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %29

for.end.i.i.for.end.thread.i.i_crit_edge:         ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i.i

for.end.thread.i.i:                               ; preds = %for.end.i.i.for.end.thread.i.i_crit_edge, %for.body.i40.for.end.thread.i.i_crit_edge
  %cmp813.i.i = phi i1 [ %cmp8.i.i, %for.end.i.i.for.end.thread.i.i_crit_edge ], [ true, %for.body.i40.for.end.thread.i.i_crit_edge ]
  br label %29

29:                                               ; preds = %for.end.thread.i.i, %for.end.i.i._crit_edge
  %cmp812.i.i = phi i1 [ %cmp813.i.i, %for.end.thread.i.i ], [ %cmp8.i.i, %for.end.i.i._crit_edge ]
  %i.0.lcssa10.i.i = phi i32 [ 0, %for.end.thread.i.i ], [ %i.0.lcssa.i.i, %for.end.i.i._crit_edge ]
  %30 = phi i32 [ 0, %for.end.thread.i.i ], [ %dec.i.i, %for.end.i.i._crit_edge ]
  %i.1.i.i = select i1 %cmp812.i.i, i32 %30, i32 %i.0.lcssa10.i.i
  %mc_reg_table.i.i = getelementptr inbounds %struct.iceland_smumgr, ptr %24, i32 0, i32 6
  %31 = ptrtoint ptr %mc_reg_table.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mc_reg_table.i.i, align 4
  %conv18.i.i = zext i8 %32 to i32
  %validflag.i.i = getelementptr inbounds %struct.iceland_smumgr, ptr %24, i32 0, i32 6, i32 2
  %33 = ptrtoint ptr %validflag.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %validflag.i.i, align 2
  %conv20.i.i = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp8.not.i.i.i = icmp eq i8 %32, 0
  br i1 %cmp8.not.i.i.i, label %.iceland_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge, label %.for.body.i.i.i_crit_edge

.for.body.i.i.i_crit_edge:                        ; preds = %29
  br label %for.body.i.i.i

.iceland_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge: ; preds = %29
  call void @__sanitizer_cov_trace_pc() #10
  br label %iceland_convert_mc_reg_table_entry_to_smc.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %.for.body.i.i.i_crit_edge
  %j.010.i.i.i = phi i32 [ %inc3.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %.for.body.i.i.i_crit_edge ]
  %i.09.i.i.i = phi i32 [ %i.1.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %.for.body.i.i.i_crit_edge ]
  %shl.i.i.i = shl nuw i32 1, %j.010.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, %conv20.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i.i = getelementptr %struct.iceland_smumgr, ptr %24, i32 0, i32 6, i32 3, i32 %i.1.i.i, i32 1, i32 %j.010.i.i.i
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
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.iceland_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.inc.i.i.i.iceland_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iceland_convert_mc_reg_table_entry_to_smc.exit.i

iceland_convert_mc_reg_table_entry_to_smc.exit.i: ; preds = %for.inc.i.i.i.iceland_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge, %.iceland_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge
  %inc.i41 = add nuw i32 %i.02.i, 1
  %38 = ptrtoint ptr %mclk_table.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mclk_table.i, align 4
  %cmp.i42 = icmp ult i32 %inc.i41, %39
  br i1 %cmp.i42, label %iceland_convert_mc_reg_table_entry_to_smc.exit.i.for.body.i40_crit_edge, label %iceland_convert_mc_reg_table_entry_to_smc.exit.i.iceland_convert_mc_reg_table_to_smc.exit_crit_edge

iceland_convert_mc_reg_table_entry_to_smc.exit.i.iceland_convert_mc_reg_table_to_smc.exit_crit_edge: ; preds = %iceland_convert_mc_reg_table_entry_to_smc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iceland_convert_mc_reg_table_to_smc.exit

iceland_convert_mc_reg_table_entry_to_smc.exit.i.for.body.i40_crit_edge: ; preds = %iceland_convert_mc_reg_table_entry_to_smc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i40

iceland_convert_mc_reg_table_to_smc.exit:         ; preds = %iceland_convert_mc_reg_table_entry_to_smc.exit.i.iceland_convert_mc_reg_table_to_smc.exit_crit_edge, %do.end8.iceland_convert_mc_reg_table_to_smc.exit_crit_edge
  %mc_reg_table_start = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %mc_reg_table_start to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mc_reg_table_start, align 4
  %call27 = tail call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %41, ptr noundef %mc_regs, i32 noundef 324, i32 noundef 262144) #8
  br label %cleanup

cleanup:                                          ; preds = %iceland_convert_mc_reg_table_to_smc.exit, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %iceland_convert_mc_reg_table_to_smc.exit ], [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iceland_populate_pm_fuses(ptr noundef %hwmgr) unnamed_addr #0 align 64 {
entry:
  %temp.i = alloca i32, align 4
  %pm_fuse_table_offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pm_fuse_table_offset) #8
  %2 = ptrtoint ptr %pm_fuse_table_offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pm_fuse_table_offset, align 4, !annotation !402
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %call1 = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef 131148, ptr noundef nonnull %pm_fuse_table_offset, i32 noundef 262144) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end10, label %do.body

do.body:                                          ; preds = %if.then
  %call3 = call i32 @___ratelimit(ptr noundef nonnull @iceland_populate_pm_fuses._rs, ptr noundef nonnull @__func__.iceland_populate_pm_fuses) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.then
  %5 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smu_backend, align 4
  %power_tune_table.i = getelementptr inbounds %struct.iceland_smumgr, ptr %6, i32 0, i32 2
  %BapmVddCVidLoSidd.i = getelementptr inbounds %struct.iceland_smumgr, ptr %6, i32 0, i32 2, i32 1
  %dyn_state.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29
  %cac_leakage_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 13
  %7 = ptrtoint ptr %cac_leakage_table.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cac_leakage_table.i, align 4
  %cmp.not.i = icmp eq ptr %8, null
  br i1 %cmp.not.i, label %if.then.i, label %do.body9.i

if.then.i:                                        ; preds = %if.end10
  %call.i = call i32 @___ratelimit(ptr noundef nonnull @iceland_populate_bapm_vddc_vid_sidd._rs, ptr noundef nonnull @__func__.iceland_populate_bapm_vddc_vid_sidd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body14_crit_edge, label %if.then.i.cleanup.sink.split.i_crit_edge

if.then.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.then.i.do.body14_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

do.body9.i:                                       ; preds = %if.end10
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %10)
  %cmp12.i = icmp ult i32 %10, 9
  br i1 %cmp12.i, label %do.body26.i, label %if.then13.i

if.then13.i:                                      ; preds = %do.body9.i
  %call14.i = call i32 @___ratelimit(ptr noundef nonnull @iceland_populate_bapm_vddc_vid_sidd._rs.161, ptr noundef nonnull @__func__.iceland_populate_bapm_vddc_vid_sidd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.then13.i.do.body14_crit_edge, label %if.then13.i.cleanup.sink.split.i_crit_edge

if.then13.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.then13.i.do.body14_crit_edge:                  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

do.body26.i:                                      ; preds = %do.body9.i
  %11 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dyn_state.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %14)
  %cmp32.i = icmp eq i32 %10, %14
  br i1 %cmp32.i, label %do.end45.i, label %if.then33.i

if.then33.i:                                      ; preds = %do.body26.i
  %call34.i = call i32 @___ratelimit(ptr noundef nonnull @iceland_populate_bapm_vddc_vid_sidd._rs.165, ptr noundef nonnull @__func__.iceland_populate_bapm_vddc_vid_sidd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.then33.i.do.body14_crit_edge, label %if.then33.i.cleanup.sink.split.i_crit_edge

if.then33.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.then33.i.do.body14_crit_edge:                  ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

do.end45.i:                                       ; preds = %do.body26.i
  %arrayidx.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 4
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  %and1.i.i = and i32 %16, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.i.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %cmp.i.not.i, label %do.body63.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %do.end45.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp5294.not.i = icmp eq i32 %10, 0
  br i1 %cmp5294.not.i, label %for.cond.preheader.i.if.end26_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end26_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %17 = phi ptr [ %27, %for.body.i.for.body.i_crit_edge ], [ %8, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.095.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i167 = getelementptr %struct.phm_cac_leakage_table, ptr %17, i32 0, i32 1, i32 %i.095.i
  %18 = ptrtoint ptr %arrayidx.i167 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i167, align 4
  %call55.i = call zeroext i8 @convert_to_vid(i16 noundef zeroext %19) #8
  %arrayidx56.i = getelementptr i8, ptr %BapmVddCVidLoSidd.i, i32 %i.095.i
  %20 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %call55.i, ptr %arrayidx56.i, align 1
  %21 = ptrtoint ptr %cac_leakage_table.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cac_leakage_table.i, align 4
  %arrayidx60.i = getelementptr %struct.phm_cac_leakage_table, ptr %22, i32 0, i32 1, i32 %i.095.i
  %Vddc2.i = getelementptr inbounds %struct.anon.1, ptr %arrayidx60.i, i32 0, i32 1
  %23 = ptrtoint ptr %Vddc2.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %Vddc2.i, align 2
  %call61.i = call zeroext i8 @convert_to_vid(i16 noundef zeroext %24) #8
  %arrayidx62.i = getelementptr i8, ptr %power_tune_table.i, i32 %i.095.i
  %25 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %call61.i, ptr %arrayidx62.i, align 1
  %inc.i = add nuw i32 %i.095.i, 1
  %26 = ptrtoint ptr %cac_leakage_table.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cac_leakage_table.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %cmp52.i = icmp ult i32 %inc.i, %29
  br i1 %cmp52.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end26_crit_edge

for.body.i.if.end26_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.body63.i:                                      ; preds = %do.end45.i
  %call64.i = call i32 @___ratelimit(ptr noundef nonnull @iceland_populate_bapm_vddc_vid_sidd._rs.169, ptr noundef nonnull @__func__.iceland_populate_bapm_vddc_vid_sidd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %tobool65.not.i = icmp eq i32 %call64.i, 0
  br i1 %tobool65.not.i, label %do.body63.i.do.body14_crit_edge, label %do.body63.i.cleanup.sink.split.i_crit_edge

do.body63.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

do.body63.i.do.body14_crit_edge:                  ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

cleanup.sink.split.i:                             ; preds = %do.body63.i.cleanup.sink.split.i_crit_edge, %if.then33.i.cleanup.sink.split.i_crit_edge, %if.then13.i.cleanup.sink.split.i_crit_edge, %if.then.i.cleanup.sink.split.i_crit_edge
  %.str.172.sink.i = phi ptr [ @.str.160, %if.then.i.cleanup.sink.split.i_crit_edge ], [ @.str.164, %if.then13.i.cleanup.sink.split.i_crit_edge ], [ @.str.168, %if.then33.i.cleanup.sink.split.i_crit_edge ], [ @.str.172, %do.body63.i.cleanup.sink.split.i_crit_edge ]
  %call71.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %.str.172.sink.i) #12
  br label %do.body14

do.body14:                                        ; preds = %cleanup.sink.split.i, %do.body63.i.do.body14_crit_edge, %if.then33.i.do.body14_crit_edge, %if.then13.i.do.body14_crit_edge, %if.then.i.do.body14_crit_edge
  %call15 = call i32 @___ratelimit(ptr noundef nonnull @iceland_populate_pm_fuses._rs.124, ptr noundef nonnull @__func__.iceland_populate_pm_fuses) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.body14.cleanup_crit_edge, label %do.body14.cleanup.sink.split_crit_edge

do.body14.cleanup.sink.split_crit_edge:           ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %for.body.i.if.end26_crit_edge, %for.cond.preheader.i.if.end26_crit_edge
  %30 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %smu_backend, align 4
  %VddCVid.i = getelementptr inbounds %struct.iceland_smumgr, ptr %31, i32 0, i32 2, i32 2
  %backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %32 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %backend.i, align 4
  %vddc_voltage_table.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %33, i32 0, i32 41
  %34 = ptrtoint ptr %vddc_voltage_table.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vddc_voltage_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %35)
  %cmp.i169 = icmp ult i32 %35, 9
  br i1 %cmp.i169, label %for.cond.preheader.i170, label %if.then.i173

for.cond.preheader.i170:                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp922.i.not = icmp eq i32 %35, 0
  br i1 %cmp922.i.not, label %for.cond.preheader.i170.if.end42_crit_edge, label %for.cond.preheader.i170.for.body.i176_crit_edge

for.cond.preheader.i170.for.body.i176_crit_edge:  ; preds = %for.cond.preheader.i170
  br label %for.body.i176

for.cond.preheader.i170.if.end42_crit_edge:       ; preds = %for.cond.preheader.i170
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then.i173:                                     ; preds = %if.end26
  %call.i171 = call i32 @___ratelimit(ptr noundef nonnull @iceland_populate_vddc_vid._rs, ptr noundef nonnull @__func__.iceland_populate_vddc_vid) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171)
  %tobool.not.i172 = icmp eq i32 %call.i171, 0
  br i1 %tobool.not.i172, label %if.then.i173.do.body30_crit_edge, label %do.end.i

if.then.i173.do.body30_crit_edge:                 ; preds = %if.then.i173
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body30

do.end.i:                                         ; preds = %if.then.i173
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.173) #12
  br label %do.body30

for.body.i176:                                    ; preds = %for.body.i176.for.body.i176_crit_edge, %for.cond.preheader.i170.for.body.i176_crit_edge
  %i.023.i = phi i32 [ %inc.i175, %for.body.i176.for.body.i176_crit_edge ], [ 0, %for.cond.preheader.i170.for.body.i176_crit_edge ]
  %arrayidx.i174 = getelementptr %struct.smu7_hwmgr, ptr %33, i32 0, i32 41, i32 3, i32 %i.023.i
  %36 = ptrtoint ptr %arrayidx.i174 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.i174, align 4
  %call11.i = call zeroext i8 @convert_to_vid(i16 noundef zeroext %37) #8
  %arrayidx12.i = getelementptr i8, ptr %VddCVid.i, i32 %i.023.i
  %38 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %call11.i, ptr %arrayidx12.i, align 1
  %inc.i175 = add nuw nsw i32 %i.023.i, 1
  %39 = ptrtoint ptr %vddc_voltage_table.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vddc_voltage_table.i, align 4
  %cmp9.i = icmp slt i32 %inc.i175, %40
  br i1 %cmp9.i, label %for.body.i176.for.body.i176_crit_edge, label %for.body.i176.if.end42_crit_edge

for.body.i176.if.end42_crit_edge:                 ; preds = %for.body.i176
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

for.body.i176.for.body.i176_crit_edge:            ; preds = %for.body.i176
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i176

do.body30:                                        ; preds = %do.end.i, %if.then.i173.do.body30_crit_edge
  %call31 = call i32 @___ratelimit(ptr noundef nonnull @iceland_populate_pm_fuses._rs.128, ptr noundef nonnull @__func__.iceland_populate_pm_fuses) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.body30.cleanup_crit_edge, label %do.body30.cleanup.sink.split_crit_edge

do.body30.cleanup.sink.split_crit_edge:           ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.body30.cleanup_crit_edge:                      ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end42:                                         ; preds = %for.body.i176.if.end42_crit_edge, %for.cond.preheader.i170.if.end42_crit_edge
  %41 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %smu_backend, align 4
  %power_tune_defaults.i = getelementptr inbounds %struct.iceland_smumgr, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %power_tune_defaults.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %power_tune_defaults.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 4
  %SviLoadLineEn.i = getelementptr inbounds %struct.iceland_smumgr, ptr %42, i32 0, i32 2, i32 3
  %47 = ptrtoint ptr %SviLoadLineEn.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %SviLoadLineEn.i, align 8
  %svi_load_line_vddc.i = getelementptr inbounds %struct.iceland_pt_defaults, ptr %44, i32 0, i32 1
  %48 = ptrtoint ptr %svi_load_line_vddc.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %svi_load_line_vddc.i, align 1
  %SviLoadLineVddC.i = getelementptr inbounds %struct.iceland_smumgr, ptr %42, i32 0, i32 2, i32 4
  %50 = ptrtoint ptr %SviLoadLineVddC.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %SviLoadLineVddC.i, align 1
  %SviLoadLineTrimVddC.i = getelementptr inbounds %struct.iceland_smumgr, ptr %42, i32 0, i32 2, i32 5
  %51 = ptrtoint ptr %SviLoadLineTrimVddC.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 3, ptr %SviLoadLineTrimVddC.i, align 2
  %SviLoadLineOffsetVddC.i = getelementptr inbounds %struct.iceland_smumgr, ptr %42, i32 0, i32 2, i32 6
  %52 = ptrtoint ptr %SviLoadLineOffsetVddC.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %SviLoadLineOffsetVddC.i, align 1
  %53 = load ptr, ptr %smu_backend, align 4
  %power_tune_defaults.i180 = getelementptr inbounds %struct.iceland_smumgr, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %power_tune_defaults.i180 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %power_tune_defaults.i180, align 4
  %cac_dtp_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 20
  %56 = ptrtoint ptr %cac_dtp_table.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cac_dtp_table.i, align 4
  %usTDC.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %usTDC.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %usTDC.i, align 4
  %mul.i = shl i16 %59, 8
  %TDC_VDDC_PkgLimit.i = getelementptr inbounds %struct.iceland_smumgr, ptr %53, i32 0, i32 2, i32 7
  %60 = ptrtoint ptr %TDC_VDDC_PkgLimit.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %mul.i, ptr %TDC_VDDC_PkgLimit.i, align 4
  %tdc_vddc_throttle_release_limit_perc.i = getelementptr inbounds %struct.iceland_pt_defaults, ptr %55, i32 0, i32 2
  %61 = ptrtoint ptr %tdc_vddc_throttle_release_limit_perc.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %tdc_vddc_throttle_release_limit_perc.i, align 2
  %TDC_VDDC_ThrottleReleaseLimitPerc.i = getelementptr inbounds %struct.iceland_smumgr, ptr %53, i32 0, i32 2, i32 8
  %63 = ptrtoint ptr %TDC_VDDC_ThrottleReleaseLimitPerc.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %TDC_VDDC_ThrottleReleaseLimitPerc.i, align 2
  %tdc_mawt.i = getelementptr inbounds %struct.iceland_pt_defaults, ptr %55, i32 0, i32 3
  %64 = ptrtoint ptr %tdc_mawt.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %tdc_mawt.i, align 1
  %TDC_MAWt.i = getelementptr inbounds %struct.iceland_smumgr, ptr %53, i32 0, i32 2, i32 9
  %66 = ptrtoint ptr %TDC_MAWt.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %TDC_MAWt.i, align 1
  %67 = ptrtoint ptr %pm_fuse_table_offset to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pm_fuse_table_offset, align 4
  %69 = load ptr, ptr %smu_backend, align 4
  %power_tune_defaults.i182 = getelementptr inbounds %struct.iceland_smumgr, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %power_tune_defaults.i182 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %power_tune_defaults.i182, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #8
  %72 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %temp.i, align 4, !annotation !402
  %add.i = add i32 %68, 32
  %call.i183 = call i32 @smu7_read_smc_sram_dword(ptr noundef %hwmgr, i32 noundef %add.i, ptr noundef nonnull %temp.i, i32 noundef 262144) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183)
  %tobool.not.i184 = icmp eq i32 %call.i183, 0
  br i1 %tobool.not.i184, label %if.end90, label %do.body.i

do.body.i:                                        ; preds = %if.end42
  %call1.i = call i32 @___ratelimit(ptr noundef nonnull @iceland_populate_dw8._rs, ptr noundef nonnull @__func__.iceland_populate_dw8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body.i.do.body78_crit_edge, label %do.end.i185

do.body.i.do.body78_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body78

do.end.i185:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.174) #12
  br label %do.body78

do.body78:                                        ; preds = %do.end.i185, %do.body.i.do.body78_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #8
  %call79 = call i32 @___ratelimit(ptr noundef nonnull @iceland_populate_pm_fuses._rs.140, ptr noundef nonnull @__func__.iceland_populate_pm_fuses) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %do.body78.cleanup_crit_edge, label %do.body78.cleanup.sink.split_crit_edge

do.body78.cleanup.sink.split_crit_edge:           ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.body78.cleanup_crit_edge:                      ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end90:                                         ; preds = %if.end42
  %tdc_waterfall_ctl.i = getelementptr inbounds %struct.iceland_pt_defaults, ptr %71, i32 0, i32 4
  %73 = ptrtoint ptr %tdc_waterfall_ctl.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %tdc_waterfall_ctl.i, align 4
  %TdcWaterfallCtl.i = getelementptr inbounds %struct.iceland_smumgr, ptr %69, i32 0, i32 2, i32 10
  %75 = ptrtoint ptr %TdcWaterfallCtl.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %TdcWaterfallCtl.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #8
  %76 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %smu_backend, align 4
  %uglygep.i = getelementptr i8, ptr %77, i32 1628
  %78 = ptrtoint ptr %uglygep.i to i32
  call void @__asan_storeN_noabort(i32 %78, i32 8)
  store i64 0, ptr %uglygep.i, align 1
  %79 = load ptr, ptr %smu_backend, align 4
  %BapmVddCBaseLeakageHiSidd.i = getelementptr inbounds %struct.iceland_smumgr, ptr %79, i32 0, i32 2, i32 23
  %BapmVddCBaseLeakageLoSidd.i = getelementptr inbounds %struct.iceland_smumgr, ptr %79, i32 0, i32 2, i32 24
  %80 = ptrtoint ptr %cac_dtp_table.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cac_dtp_table.i, align 4
  %usHighCACLeakage.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %usHighCACLeakage.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %usHighCACLeakage.i, align 4
  %84 = udiv i16 %83, 100
  %mul.i190 = shl i16 %84, 8
  %usLowCACLeakage.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %81, i32 0, i32 5
  %85 = ptrtoint ptr %usLowCACLeakage.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %usLowCACLeakage.i, align 2
  %87 = udiv i16 %86, 100
  %mul5.i = shl i16 %87, 8
  %88 = ptrtoint ptr %BapmVddCBaseLeakageHiSidd.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %mul.i190, ptr %BapmVddCBaseLeakageHiSidd.i, align 8
  %89 = ptrtoint ptr %BapmVddCBaseLeakageLoSidd.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %mul5.i, ptr %BapmVddCBaseLeakageLoSidd.i, align 2
  %90 = ptrtoint ptr %pm_fuse_table_offset to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pm_fuse_table_offset, align 4
  %power_tune_table = getelementptr inbounds %struct.iceland_smumgr, ptr %1, i32 0, i32 2
  %call138 = call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %91, ptr noundef %power_tune_table, i32 noundef 84, i32 noundef 262144) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.end90.cleanup_crit_edge, label %do.body141

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body141:                                       ; preds = %if.end90
  %call142 = call i32 @___ratelimit(ptr noundef nonnull @iceland_populate_pm_fuses._rs.156, ptr noundef nonnull @__func__.iceland_populate_pm_fuses) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %do.body141.cleanup_crit_edge, label %do.body141.cleanup.sink.split_crit_edge

do.body141.cleanup.sink.split_crit_edge:          ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.body141.cleanup_crit_edge:                     ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body141.cleanup.sink.split_crit_edge, %do.body78.cleanup.sink.split_crit_edge, %do.body30.cleanup.sink.split_crit_edge, %do.body14.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %.str.159.sink = phi ptr [ @.str.123, %do.body.cleanup.sink.split_crit_edge ], [ @.str.127, %do.body14.cleanup.sink.split_crit_edge ], [ @.str.131, %do.body30.cleanup.sink.split_crit_edge ], [ @.str.143, %do.body78.cleanup.sink.split_crit_edge ], [ @.str.159, %do.body141.cleanup.sink.split_crit_edge ]
  %call149 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %.str.159.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body141.cleanup_crit_edge, %if.end90.cleanup_crit_edge, %do.body78.cleanup_crit_edge, %do.body30.cleanup_crit_edge, %do.body14.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.body14.cleanup_crit_edge ], [ -22, %do.body30.cleanup_crit_edge ], [ -22, %do.body78.cleanup_crit_edge ], [ -22, %do.body141.cleanup_crit_edge ], [ 0, %if.end90.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pm_fuse_table_offset) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iceland_populate_smc_voltage_table(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef readonly %tab, ptr nocapture noundef writeonly %smc_voltage_tab) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %StdVoltageHiSidd = getelementptr inbounds %struct.SMU71_Discrete_VoltageLevel, ptr %smc_voltage_tab, i32 0, i32 1
  %StdVoltageLoSidd = getelementptr inbounds %struct.SMU71_Discrete_VoltageLevel, ptr %smc_voltage_tab, i32 0, i32 2
  %0 = ptrtoint ptr %tab to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tab, align 4
  %mul.i = shl i16 %1, 2
  %2 = ptrtoint ptr %StdVoltageHiSidd to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %mul.i, ptr %StdVoltageHiSidd, align 2
  %3 = load i16, ptr %tab, align 4
  %mul4.i = shl i16 %3, 2
  %4 = ptrtoint ptr %StdVoltageLoSidd to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %mul4.i, ptr %StdVoltageLoSidd, align 2
  %dyn_state.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29
  %5 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dyn_state.i, align 4
  %cmp.not.i = icmp eq ptr %6, null
  br i1 %cmp.not.i, label %if.then.i, label %do.end12.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @iceland_get_std_voltage_value_sidd._rs, ptr noundef nonnull @__func__.iceland_get_std_voltage_value_sidd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.then_crit_edge, label %do.end.i

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.93) #12
  br label %if.then

do.end12.i:                                       ; preds = %entry
  %cac_leakage_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 13
  %7 = ptrtoint ptr %cac_leakage_table.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cac_leakage_table.i, align 4
  %cmp14.i = icmp eq ptr %8, null
  br i1 %cmp14.i, label %do.end19.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %do.end12.i
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp26229.not.i = icmp eq i32 %10, 0
  br i1 %cmp26229.not.i, label %for.cond.preheader.i.do.end171.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.do.end171.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end171.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %11 = ptrtoint ptr %tab to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %tab, align 4
  %conv29.i = zext i16 %12 to i32
  br label %for.body.i

do.end19.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #12
  br label %if.end

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add i16 %v_index.0230.i, 1
  %conv23.i = zext i16 %inc.i to i32
  %cmp26.i = icmp ugt i32 %10, %conv23.i
  br i1 %cmp26.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.for.body95.i_crit_edge

for.cond.i.for.body95.i_crit_edge:                ; preds = %for.cond.i
  br label %for.body95.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %conv23231.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %conv23.i, %for.cond.i.for.body.i_crit_edge ]
  %v_index.0230.i = phi i16 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %v.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %6, i32 0, i32 1, i32 %conv23231.i, i32 1
  %13 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %v.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv29.i)
  %cmp32.i = icmp eq i32 %14, %conv29.i
  br i1 %cmp32.i, label %if.then34.i, label %for.cond.i

if.then34.i:                                      ; preds = %for.body.i
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv23231.i)
  %cmp39.i = icmp ugt i32 %16, %conv23231.i
  br i1 %cmp39.i, label %if.then41.i, label %do.end59.i

if.then41.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx46.i = getelementptr %struct.phm_cac_leakage_table, ptr %8, i32 0, i32 1, i32 %conv23231.i
  %17 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx46.i, align 4
  %mul48.i = shl i16 %18, 2
  %19 = ptrtoint ptr %StdVoltageLoSidd to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %mul48.i, ptr %StdVoltageLoSidd, align 2
  %20 = ptrtoint ptr %cac_leakage_table.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cac_leakage_table.i, align 4
  %Leakage.i = getelementptr %struct.phm_cac_leakage_table, ptr %21, i32 0, i32 1, i32 %conv23231.i, i32 0, i32 1
  %22 = ptrtoint ptr %Leakage.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %Leakage.i, align 4
  %.tr221.i = trunc i32 %23 to i16
  %conv56.i = shl i16 %.tr221.i, 2
  %24 = ptrtoint ptr %StdVoltageHiSidd to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv56.i, ptr %StdVoltageHiSidd, align 2
  br label %if.end

do.end59.i:                                       ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #10
  %call61.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #12
  %25 = ptrtoint ptr %cac_leakage_table.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cac_leakage_table.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %sub.i = add i32 %28, -1
  %arrayidx68.i = getelementptr %struct.phm_cac_leakage_table, ptr %26, i32 0, i32 1, i32 %sub.i
  %29 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx68.i, align 4
  %mul71.i = shl i16 %30, 2
  %31 = ptrtoint ptr %StdVoltageLoSidd to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %mul71.i, ptr %StdVoltageLoSidd, align 2
  %32 = load ptr, ptr %cac_leakage_table.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %sub79.i = add i32 %34, -1
  %Leakage81.i = getelementptr %struct.phm_cac_leakage_table, ptr %32, i32 0, i32 1, i32 %sub79.i, i32 0, i32 1
  %35 = ptrtoint ptr %Leakage81.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %Leakage81.i, align 4
  %.tr220.i = trunc i32 %36 to i16
  %conv83.i = shl i16 %.tr220.i, 2
  %37 = ptrtoint ptr %StdVoltageHiSidd to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv83.i, ptr %StdVoltageHiSidd, align 2
  br label %if.end

for.cond88.i:                                     ; preds = %for.body95.i
  %inc165.i = add i16 %v_index.1234.i, 1
  %conv89.i = zext i16 %inc165.i to i32
  %cmp93.i = icmp ugt i32 %10, %conv89.i
  br i1 %cmp93.i, label %for.cond88.i.for.body95.i_crit_edge, label %for.cond88.i.do.end171.i_crit_edge

for.cond88.i.do.end171.i_crit_edge:               ; preds = %for.cond88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end171.i

for.cond88.i.for.body95.i_crit_edge:              ; preds = %for.cond88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body95.i

for.body95.i:                                     ; preds = %for.cond88.i.for.body95.i_crit_edge, %for.cond.i.for.body95.i_crit_edge
  %conv89235.i = phi i32 [ %conv89.i, %for.cond88.i.for.body95.i_crit_edge ], [ 0, %for.cond.i.for.body95.i_crit_edge ]
  %v_index.1234.i = phi i16 [ %inc165.i, %for.cond88.i.for.body95.i_crit_edge ], [ 0, %for.cond.i.for.body95.i_crit_edge ]
  %v103.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %6, i32 0, i32 1, i32 %conv89235.i, i32 1
  %38 = ptrtoint ptr %v103.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %v103.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv29.i)
  %cmp104.not.i = icmp ult i32 %39, %conv29.i
  br i1 %cmp104.not.i, label %for.cond88.i, label %if.then106.i

if.then106.i:                                     ; preds = %for.body95.i
  %40 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %conv89235.i)
  %cmp111.i = icmp ugt i32 %41, %conv89235.i
  br i1 %cmp111.i, label %if.then113.i, label %do.end136.i

if.then113.i:                                     ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx118.i = getelementptr %struct.phm_cac_leakage_table, ptr %8, i32 0, i32 1, i32 %conv89235.i
  %42 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx118.i, align 4
  %mul121.i = shl i16 %43, 2
  %44 = ptrtoint ptr %StdVoltageLoSidd to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %mul121.i, ptr %StdVoltageLoSidd, align 2
  %45 = ptrtoint ptr %cac_leakage_table.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cac_leakage_table.i, align 4
  %Leakage128.i = getelementptr %struct.phm_cac_leakage_table, ptr %46, i32 0, i32 1, i32 %conv89235.i, i32 0, i32 1
  %47 = ptrtoint ptr %Leakage128.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %Leakage128.i, align 4
  %.tr219.i = trunc i32 %48 to i16
  %conv132.i = shl i16 %.tr219.i, 2
  %49 = ptrtoint ptr %StdVoltageHiSidd to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv132.i, ptr %StdVoltageHiSidd, align 2
  br label %if.end

do.end136.i:                                      ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #10
  %call138.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101) #12
  %50 = ptrtoint ptr %cac_leakage_table.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cac_leakage_table.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %sub145.i = add i32 %53, -1
  %arrayidx146.i = getelementptr %struct.phm_cac_leakage_table, ptr %51, i32 0, i32 1, i32 %sub145.i
  %54 = ptrtoint ptr %arrayidx146.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx146.i, align 4
  %mul149.i = shl i16 %55, 2
  %56 = ptrtoint ptr %StdVoltageLoSidd to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %mul149.i, ptr %StdVoltageLoSidd, align 2
  %57 = load ptr, ptr %cac_leakage_table.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %sub157.i = add i32 %59, -1
  %Leakage159.i = getelementptr %struct.phm_cac_leakage_table, ptr %57, i32 0, i32 1, i32 %sub157.i, i32 0, i32 1
  %60 = ptrtoint ptr %Leakage159.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %Leakage159.i, align 4
  %.tr.i = trunc i32 %61 to i16
  %conv161.i = shl i16 %.tr.i, 2
  %62 = ptrtoint ptr %StdVoltageHiSidd to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv161.i, ptr %StdVoltageHiSidd, align 2
  br label %if.end

do.end171.i:                                      ; preds = %for.cond88.i.do.end171.i_crit_edge, %for.cond.preheader.i.do.end171.i_crit_edge
  %call173.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104) #12
  br label %if.end

if.then:                                          ; preds = %do.end.i, %if.then.i.if.then_crit_edge
  %63 = ptrtoint ptr %tab to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %tab, align 4
  %mul = shl i16 %64, 2
  %65 = ptrtoint ptr %StdVoltageHiSidd to i32
  call void @__asan_storeN_noabort(i32 %65, i32 2)
  store i16 %mul, ptr %StdVoltageHiSidd, align 1
  %66 = load i16, ptr %tab, align 4
  %mul5 = shl i16 %66, 2
  %67 = ptrtoint ptr %StdVoltageLoSidd to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 %mul5, ptr %StdVoltageLoSidd, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end171.i, %do.end136.i, %if.then113.i, %do.end59.i, %if.then41.i, %do.end19.i
  %68 = ptrtoint ptr %tab to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %tab, align 4
  %mul10 = shl i16 %69, 2
  %70 = ptrtoint ptr %smc_voltage_tab to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %mul10, ptr %smc_voltage_tab, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pp_tables_get_response_times(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @encode_pcie_lane_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_get_dpm_level_enable_mask_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_reference_clock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_engine_pll_dividers_vi(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_find_boot_level(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @convert_to_vid(i16 noundef zeroext) local_unnamed_addr #1

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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 180)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 180)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !44, !46, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !130, !132, !134, !136, !138, !139, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !157, !158, !160, !161, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !185, !186, !188, !189, !190, !191, !192, !194, !195, !196, !197, !198, !200, !201, !202, !203, !204, !206, !207, !208, !209, !210, !212, !213, !214, !215, !217, !218, !219, !221, !222, !223, !224, !225, !227, !228, !229, !230, !231, !233, !234, !235, !236, !238, !239, !240, !241, !242, !244, !245, !246, !247, !248, !250, !251, !252, !253, !255, !256, !257, !258, !260, !261, !262, !263, !265, !266, !267, !268, !270, !271, !272, !273, !275, !276, !277, !278, !280, !281, !282, !283, !285, !286, !287, !288, !290, !291, !292, !293, !295, !296, !297, !298, !299, !301, !302, !303, !304, !306, !307, !308, !309, !311, !312, !313, !314, !316, !317, !318, !319, !320, !322, !323, !324, !325, !326, !328, !329, !330, !331, !332, !334, !335, !336, !337, !339, !340, !341, !342, !343, !345, !346, !347, !348, !349, !351, !352, !353, !354, !356, !357, !358, !359, !360, !362, !363, !364, !365, !366, !368, !369, !370, !372, !373, !374, !375, !377, !378, !379, !381, !382, !383, !385, !386, !387, !388, !390, !391, !392}
!llvm.module.flags = !{!393, !394, !395, !396, !397, !398, !399, !400}
!llvm.ident = !{!401}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 2663, i32 10}
!2 = !{ptr @iceland_smu_funcs, !3, !"iceland_smu_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 2662, i32 29}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 197, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @iceland_smu_upload_firmware_image._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @iceland_smu_upload_firmware_image._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 202, i32 3}
!12 = !{ptr @iceland_smu_upload_firmware_image._entry.4, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @iceland_smu_upload_firmware_image._entry_ptr.6, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 164, i32 2}
!16 = !{ptr @iceland_upload_smc_firmware_data._rs, !15, !"_rs", i1 false, i1 false}
!17 = !{ptr @__func__.iceland_upload_smc_firmware_data, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @iceland_upload_smc_firmware_data._entry, !15, !"_entry", i1 false, i1 false}
!20 = !{ptr @iceland_upload_smc_firmware_data._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @iceland_upload_smc_firmware_data._rs.10, !23, !"_rs", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 178, i32 2}
!24 = !{ptr @iceland_upload_smc_firmware_data._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @iceland_upload_smc_firmware_data._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @iceland_update_sclk_threshold._rs, !28, !"_rs", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 2202, i32 2}
!29 = !{ptr @__func__.iceland_update_sclk_threshold, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @iceland_update_sclk_threshold._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @iceland_update_sclk_threshold._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @iceland_update_sclk_threshold._rs.15, !34, !"_rs", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 2205, i32 2}
!35 = !{ptr @iceland_update_sclk_threshold._entry.16, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @iceland_update_sclk_threshold._entry_ptr.17, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @iceland_populate_memory_timing_parameters._rs, !39, !"_rs", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 1597, i32 2}
!40 = !{ptr @__func__.iceland_populate_memory_timing_parameters, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @iceland_populate_memory_timing_parameters._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @iceland_populate_memory_timing_parameters._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @iceland_init_smc_table._rs, !45, !"_rs", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 1959, i32 3}
!46 = !{ptr @__func__.iceland_init_smc_table, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @iceland_init_smc_table._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @iceland_init_smc_table._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"_rs", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 1967, i32 2}
!52 = !{ptr @iceland_init_smc_table._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @iceland_init_smc_table._entry_ptr.23, !51, !"_entry_ptr", i1 false, i1 false}
!54 = distinct !{null, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @iceland_init_smc_table._rs.25, !56, !"_rs", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 1971, i32 2}
!57 = !{ptr @iceland_init_smc_table._entry.26, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @iceland_init_smc_table._entry_ptr.27, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @iceland_init_smc_table._rs.29, !61, !"_rs", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 1975, i32 2}
!62 = !{ptr @iceland_init_smc_table._entry.30, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @iceland_init_smc_table._entry_ptr.31, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @iceland_init_smc_table._rs.33, !66, !"_rs", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 1979, i32 2}
!67 = !{ptr @iceland_init_smc_table._entry.34, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @iceland_init_smc_table._entry_ptr.35, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!70 = distinct !{null, !71, !"_rs", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 1983, i32 2}
!72 = !{ptr @iceland_init_smc_table._entry.38, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @iceland_init_smc_table._entry_ptr.39, !71, !"_entry_ptr", i1 false, i1 false}
!74 = distinct !{null, !71, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"_rs", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 1987, i32 2}
!77 = !{ptr @iceland_init_smc_table._entry.42, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @iceland_init_smc_table._entry_ptr.43, !76, !"_entry_ptr", i1 false, i1 false}
!79 = distinct !{null, !76, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @iceland_init_smc_table._rs.45, !81, !"_rs", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 1993, i32 2}
!82 = !{ptr @iceland_init_smc_table._entry.46, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @iceland_init_smc_table._entry_ptr.47, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.48, !81, !"<string literal>", i1 false, i1 false}
!85 = distinct !{null, !86, !"_rs", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 1997, i32 2}
!87 = !{ptr @iceland_init_smc_table._entry.50, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @iceland_init_smc_table._entry_ptr.51, !86, !"_entry_ptr", i1 false, i1 false}
!89 = distinct !{null, !86, !"<string literal>", i1 false, i1 false}
!90 = distinct !{null, !91, !"_rs", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 2004, i32 2}
!92 = !{ptr @iceland_init_smc_table._entry.54, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @iceland_init_smc_table._entry_ptr.55, !91, !"_entry_ptr", i1 false, i1 false}
!94 = distinct !{null, !91, !"<string literal>", i1 false, i1 false}
!95 = distinct !{null, !96, !"_rs", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 2008, i32 2}
!97 = !{ptr @iceland_init_smc_table._entry.58, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @iceland_init_smc_table._entry_ptr.59, !96, !"_entry_ptr", i1 false, i1 false}
!99 = distinct !{null, !96, !"<string literal>", i1 false, i1 false}
!100 = distinct !{null, !101, !"_rs", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 2011, i32 2}
!102 = !{ptr @iceland_init_smc_table._entry.62, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @iceland_init_smc_table._entry_ptr.63, !101, !"_entry_ptr", i1 false, i1 false}
!104 = distinct !{null, !101, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @iceland_init_smc_table._rs.65, !106, !"_rs", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 2035, i32 2}
!107 = !{ptr @iceland_init_smc_table._entry.66, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @iceland_init_smc_table._entry_ptr.67, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.68, !106, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @iceland_init_smc_table._rs.69, !111, !"_rs", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 2063, i32 2}
!112 = !{ptr @iceland_init_smc_table._entry.70, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @iceland_init_smc_table._entry_ptr.71, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.72, !111, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @iceland_init_smc_table._rs.73, !116, !"_rs", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 2075, i32 2}
!117 = !{ptr @iceland_init_smc_table._entry.74, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @iceland_init_smc_table._entry_ptr.75, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.76, !116, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @iceland_init_smc_table._rs.77, !121, !"_rs", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 2079, i32 2}
!122 = !{ptr @iceland_init_smc_table._entry.78, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @iceland_init_smc_table._entry_ptr.79, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.80, !121, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.81, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 300, i32 3}
!127 = !{ptr @.str.82, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @iceland_initialize_power_tune_defaults._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @iceland_initialize_power_tune_defaults._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @defaults_icelandxt, !131, !"defaults_icelandxt", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 84, i32 41}
!132 = !{ptr @defaults_icelandpro, !133, !"defaults_icelandpro", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 97, i32 41}
!134 = !{ptr @defaults_iceland, !135, !"defaults_iceland", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 73, i32 41}
!136 = distinct !{null, !137, !"_rs", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 700, i32 2}
!138 = !{ptr @__func__.iceland_populate_smc_voltage_tables, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @iceland_populate_smc_voltage_tables._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @iceland_populate_smc_voltage_tables._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = distinct !{null, !137, !"<string literal>", i1 false, i1 false}
!142 = distinct !{null, !143, !"_rs", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 704, i32 2}
!144 = !{ptr @iceland_populate_smc_voltage_tables._entry.85, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @iceland_populate_smc_voltage_tables._entry_ptr.86, !143, !"_entry_ptr", i1 false, i1 false}
!146 = distinct !{null, !143, !"<string literal>", i1 false, i1 false}
!147 = distinct !{null, !148, !"_rs", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 708, i32 2}
!149 = !{ptr @iceland_populate_smc_voltage_tables._entry.89, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @iceland_populate_smc_voltage_tables._entry_ptr.90, !148, !"_entry_ptr", i1 false, i1 false}
!151 = distinct !{null, !148, !"<string literal>", i1 false, i1 false}
!152 = distinct !{null, !153, !"_rs", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 629, i32 3}
!154 = !{ptr @__func__.iceland_populate_smc_vddc_table, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @iceland_populate_smc_vddc_table._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @iceland_populate_smc_vddc_table._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = distinct !{null, !153, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @iceland_get_std_voltage_value_sidd._rs, !159, !"_rs", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 540, i32 2}
!160 = !{ptr @__func__.iceland_get_std_voltage_value_sidd, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @iceland_get_std_voltage_value_sidd._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @iceland_get_std_voltage_value_sidd._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.93, !159, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.95, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 545, i32 3}
!166 = !{ptr @iceland_get_std_voltage_value_sidd._entry.94, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @iceland_get_std_voltage_value_sidd._entry_ptr.96, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.98, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 561, i32 5}
!170 = !{ptr @iceland_get_std_voltage_value_sidd._entry.97, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @iceland_get_std_voltage_value_sidd._entry_ptr.99, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.101, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 581, i32 6}
!174 = !{ptr @iceland_get_std_voltage_value_sidd._entry.100, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @iceland_get_std_voltage_value_sidd._entry_ptr.102, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.104, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 590, i32 4}
!178 = !{ptr @iceland_get_std_voltage_value_sidd._entry.103, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @iceland_get_std_voltage_value_sidd._entry_ptr.105, !177, !"_entry_ptr", i1 false, i1 false}
!180 = distinct !{null, !181, !"_rs", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 656, i32 3}
!182 = !{ptr @__func__.iceland_populate_smc_vdd_ci_table, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @iceland_populate_smc_vdd_ci_table._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @iceland_populate_smc_vdd_ci_table._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = distinct !{null, !181, !"<string literal>", i1 false, i1 false}
!186 = distinct !{null, !187, !"_rs", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 681, i32 3}
!188 = !{ptr @__func__.iceland_populate_smc_mvdd_table, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @iceland_populate_smc_mvdd_table._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @iceland_populate_smc_mvdd_table._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = distinct !{null, !187, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @iceland_populate_ulv_level._rs, !193, !"_rs", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 725, i32 2}
!194 = !{ptr @__func__.iceland_populate_ulv_level, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @iceland_populate_ulv_level._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @iceland_populate_ulv_level._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.108, !193, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @iceland_populate_smc_acpi_level._rs, !199, !"_rs", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 1453, i32 2}
!200 = !{ptr @__func__.iceland_populate_smc_acpi_level, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @iceland_populate_smc_acpi_level._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @iceland_populate_smc_acpi_level._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.109, !199, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @iceland_populate_mvdd_value._rs, !205, !"_rs", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 1412, i32 3}
!206 = !{ptr @__func__.iceland_populate_mvdd_value, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @iceland_populate_mvdd_value._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @iceland_populate_mvdd_value._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.110, !205, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.111, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 1663, i32 3}
!212 = !{ptr @.str.112, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @iceland_populate_smc_boot_level._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @iceland_populate_smc_boot_level._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.114, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 1673, i32 3}
!217 = !{ptr @iceland_populate_smc_boot_level._entry.113, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @iceland_populate_smc_boot_level._entry_ptr.115, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @iceland_populate_smc_svi2_config._rs, !220, !"_rs", i1 false, i1 false}
!220 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 1923, i32 2}
!221 = !{ptr @__func__.iceland_populate_smc_svi2_config, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @iceland_populate_smc_svi2_config._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @iceland_populate_smc_svi2_config._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.116, !220, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @iceland_populate_initial_mc_reg_table._rs, !226, !"_rs", i1 false, i1 false}
!226 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 1809, i32 2}
!227 = !{ptr @__func__.iceland_populate_initial_mc_reg_table, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @iceland_populate_initial_mc_reg_table._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @iceland_populate_initial_mc_reg_table._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.117, !226, !"<string literal>", i1 false, i1 false}
!231 = distinct !{null, !232, !"_rs", i1 false, i1 false}
!232 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 1813, i32 2}
!233 = !{ptr @iceland_populate_initial_mc_reg_table._entry.119, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @iceland_populate_initial_mc_reg_table._entry_ptr.120, !232, !"_entry_ptr", i1 false, i1 false}
!235 = distinct !{null, !232, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @iceland_populate_mc_reg_address._rs, !237, !"_rs", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 1697, i32 4}
!238 = !{ptr @__func__.iceland_populate_mc_reg_address, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @iceland_populate_mc_reg_address._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @iceland_populate_mc_reg_address._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.122, !237, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @iceland_populate_pm_fuses._rs, !243, !"_rs", i1 false, i1 false}
!243 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 446, i32 4}
!244 = !{ptr @__func__.iceland_populate_pm_fuses, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @iceland_populate_pm_fuses._entry, !243, !"_entry", i1 false, i1 false}
!246 = !{ptr @iceland_populate_pm_fuses._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.123, !243, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @iceland_populate_pm_fuses._rs.124, !249, !"_rs", i1 false, i1 false}
!249 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 452, i32 4}
!250 = !{ptr @iceland_populate_pm_fuses._entry.125, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @iceland_populate_pm_fuses._entry_ptr.126, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.127, !249, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @iceland_populate_pm_fuses._rs.128, !254, !"_rs", i1 false, i1 false}
!254 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 458, i32 4}
!255 = !{ptr @iceland_populate_pm_fuses._entry.129, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @iceland_populate_pm_fuses._entry_ptr.130, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.131, !254, !"<string literal>", i1 false, i1 false}
!258 = distinct !{null, !259, !"_rs", i1 false, i1 false}
!259 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 464, i32 4}
!260 = !{ptr @iceland_populate_pm_fuses._entry.133, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @iceland_populate_pm_fuses._entry_ptr.134, !259, !"_entry_ptr", i1 false, i1 false}
!262 = distinct !{null, !259, !"<string literal>", i1 false, i1 false}
!263 = distinct !{null, !264, !"_rs", i1 false, i1 false}
!264 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 469, i32 4}
!265 = !{ptr @iceland_populate_pm_fuses._entry.137, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @iceland_populate_pm_fuses._entry_ptr.138, !264, !"_entry_ptr", i1 false, i1 false}
!267 = distinct !{null, !264, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @iceland_populate_pm_fuses._rs.140, !269, !"_rs", i1 false, i1 false}
!269 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 473, i32 4}
!270 = !{ptr @iceland_populate_pm_fuses._entry.141, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @iceland_populate_pm_fuses._entry_ptr.142, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.143, !269, !"<string literal>", i1 false, i1 false}
!273 = distinct !{null, !274, !"_rs", i1 false, i1 false}
!274 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 480, i32 4}
!275 = !{ptr @iceland_populate_pm_fuses._entry.145, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @iceland_populate_pm_fuses._entry_ptr.146, !274, !"_entry_ptr", i1 false, i1 false}
!277 = distinct !{null, !274, !"<string literal>", i1 false, i1 false}
!278 = distinct !{null, !279, !"_rs", i1 false, i1 false}
!279 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 486, i32 4}
!280 = !{ptr @iceland_populate_pm_fuses._entry.149, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @iceland_populate_pm_fuses._entry_ptr.150, !279, !"_entry_ptr", i1 false, i1 false}
!282 = distinct !{null, !279, !"<string literal>", i1 false, i1 false}
!283 = distinct !{null, !284, !"_rs", i1 false, i1 false}
!284 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 492, i32 4}
!285 = !{ptr @iceland_populate_pm_fuses._entry.153, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @iceland_populate_pm_fuses._entry_ptr.154, !284, !"_entry_ptr", i1 false, i1 false}
!287 = distinct !{null, !284, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @iceland_populate_pm_fuses._rs.156, !289, !"_rs", i1 false, i1 false}
!289 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 499, i32 4}
!290 = !{ptr @iceland_populate_pm_fuses._entry.157, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @iceland_populate_pm_fuses._entry_ptr.158, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.159, !289, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @iceland_populate_bapm_vddc_vid_sidd._rs, !294, !"_rs", i1 false, i1 false}
!294 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 396, i32 2}
!295 = !{ptr @__func__.iceland_populate_bapm_vddc_vid_sidd, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @iceland_populate_bapm_vddc_vid_sidd._entry, !294, !"_entry", i1 false, i1 false}
!297 = !{ptr @iceland_populate_bapm_vddc_vid_sidd._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.160, !294, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @iceland_populate_bapm_vddc_vid_sidd._rs.161, !300, !"_rs", i1 false, i1 false}
!300 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 398, i32 2}
!301 = !{ptr @iceland_populate_bapm_vddc_vid_sidd._entry.162, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @iceland_populate_bapm_vddc_vid_sidd._entry_ptr.163, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.164, !300, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @iceland_populate_bapm_vddc_vid_sidd._rs.165, !305, !"_rs", i1 false, i1 false}
!305 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 400, i32 2}
!306 = !{ptr @iceland_populate_bapm_vddc_vid_sidd._entry.166, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @iceland_populate_bapm_vddc_vid_sidd._entry_ptr.167, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.168, !305, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @iceland_populate_bapm_vddc_vid_sidd._rs.169, !310, !"_rs", i1 false, i1 false}
!310 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 409, i32 3}
!311 = !{ptr @iceland_populate_bapm_vddc_vid_sidd._entry.170, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @iceland_populate_bapm_vddc_vid_sidd._entry_ptr.171, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.172, !310, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @iceland_populate_vddc_vid._rs, !315, !"_rs", i1 false, i1 false}
!315 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 422, i32 2}
!316 = !{ptr @__func__.iceland_populate_vddc_vid, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @iceland_populate_vddc_vid._entry, !315, !"_entry", i1 false, i1 false}
!318 = !{ptr @iceland_populate_vddc_vid._entry_ptr, !315, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.173, !315, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @iceland_populate_dw8._rs, !321, !"_rs", i1 false, i1 false}
!321 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 345, i32 3}
!322 = !{ptr @__func__.iceland_populate_dw8, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @iceland_populate_dw8._entry, !321, !"_entry", i1 false, i1 false}
!324 = !{ptr @iceland_populate_dw8._entry_ptr, !321, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.174, !321, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @iceland_populate_single_graphic_level._rs, !327, !"_rs", i1 false, i1 false}
!327 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 904, i32 2}
!328 = !{ptr @__func__.iceland_populate_single_graphic_level, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @iceland_populate_single_graphic_level._entry, !327, !"_entry", i1 false, i1 false}
!330 = !{ptr @iceland_populate_single_graphic_level._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.175, !327, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @iceland_calculate_sclk_params._rs, !333, !"_rs", i1 false, i1 false}
!333 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 813, i32 2}
!334 = !{ptr @__func__.iceland_calculate_sclk_params, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @iceland_calculate_sclk_params._entry, !333, !"_entry", i1 false, i1 false}
!336 = !{ptr @iceland_calculate_sclk_params._entry_ptr, !333, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @iceland_populate_all_memory_levels._rs, !338, !"_rs", i1 false, i1 false}
!338 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 1362, i32 3}
!339 = !{ptr @__func__.iceland_populate_all_memory_levels, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @iceland_populate_all_memory_levels._entry, !338, !"_entry", i1 false, i1 false}
!341 = !{ptr @iceland_populate_all_memory_levels._entry_ptr, !338, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.176, !338, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @iceland_populate_single_memory_level._rs, !344, !"_rs", i1 false, i1 false}
!344 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 1243, i32 3}
!345 = !{ptr @__func__.iceland_populate_single_memory_level, !344, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @iceland_populate_single_memory_level._entry, !344, !"_entry", i1 false, i1 false}
!347 = !{ptr @iceland_populate_single_memory_level._entry_ptr, !344, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.177, !344, !"<string literal>", i1 false, i1 false}
!349 = !{ptr @iceland_populate_single_memory_level._rs.178, !350, !"_rs", i1 false, i1 false}
!350 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 1254, i32 3}
!351 = !{ptr @iceland_populate_single_memory_level._entry.179, !350, !"_entry", i1 false, i1 false}
!352 = !{ptr @iceland_populate_single_memory_level._entry_ptr.180, !350, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.181, !350, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @iceland_calculate_mclk_params._rs, !355, !"_rs", i1 false, i1 false}
!355 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 1069, i32 2}
!356 = !{ptr @__func__.iceland_calculate_mclk_params, !355, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @iceland_calculate_mclk_params._entry, !355, !"_entry", i1 false, i1 false}
!358 = !{ptr @iceland_calculate_mclk_params._entry_ptr, !355, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.182, !355, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @iceland_copy_vbios_smc_reg_table._rs, !361, !"_rs", i1 false, i1 false}
!361 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 2485, i32 2}
!362 = !{ptr @__func__.iceland_copy_vbios_smc_reg_table, !361, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @iceland_copy_vbios_smc_reg_table._entry, !361, !"_entry", i1 false, i1 false}
!364 = !{ptr @iceland_copy_vbios_smc_reg_table._entry_ptr, !361, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.183, !361, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @iceland_copy_vbios_smc_reg_table._rs.184, !367, !"_rs", i1 false, i1 false}
!367 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 2487, i32 2}
!368 = !{ptr @iceland_copy_vbios_smc_reg_table._entry.185, !367, !"_entry", i1 false, i1 false}
!369 = !{ptr @iceland_copy_vbios_smc_reg_table._entry_ptr.186, !367, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @iceland_set_mc_special_registers._rs, !371, !"_rs", i1 false, i1 false}
!371 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 2517, i32 3}
!372 = !{ptr @__func__.iceland_set_mc_special_registers, !371, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @iceland_set_mc_special_registers._entry, !371, !"_entry", i1 false, i1 false}
!374 = !{ptr @iceland_set_mc_special_registers._entry_ptr, !371, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @iceland_set_mc_special_registers._rs.187, !376, !"_rs", i1 false, i1 false}
!376 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 2533, i32 4}
!377 = !{ptr @iceland_set_mc_special_registers._entry.188, !376, !"_entry", i1 false, i1 false}
!378 = !{ptr @iceland_set_mc_special_registers._entry_ptr.189, !376, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @iceland_set_mc_special_registers._rs.190, !380, !"_rs", i1 false, i1 false}
!380 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 2550, i32 5}
!381 = !{ptr @iceland_set_mc_special_registers._entry.191, !380, !"_entry", i1 false, i1 false}
!382 = !{ptr @iceland_set_mc_special_registers._entry_ptr.192, !380, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @.str.193, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 2250, i32 2}
!385 = !{ptr @.str.194, !384, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @iceland_get_offsetof._entry, !384, !"_entry", i1 false, i1 false}
!387 = !{ptr @iceland_get_offsetof._entry_ptr, !384, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.195, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/iceland_smumgr.c", i32 2273, i32 2}
!390 = !{ptr @.str.196, !389, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @iceland_get_mac_definition._entry, !389, !"_entry", i1 false, i1 false}
!392 = !{ptr @iceland_get_mac_definition._entry_ptr, !389, !"_entry_ptr", i1 false, i1 false}
!393 = !{i32 1, !"wchar_size", i32 2}
!394 = !{i32 1, !"min_enum_size", i32 4}
!395 = !{i32 8, !"branch-target-enforcement", i32 0}
!396 = !{i32 8, !"sign-return-address", i32 0}
!397 = !{i32 8, !"sign-return-address-all", i32 0}
!398 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!399 = !{i32 7, !"uwtable", i32 1}
!400 = !{i32 7, !"frame-pointer", i32 2}
!401 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!402 = !{!"auto-init"}
!403 = !{i8 0, i8 2}
!404 = !{i64 1204764, i64 1204791}
!405 = !{i64 1205274, i64 1205301, i64 1205335, i64 1205356}
