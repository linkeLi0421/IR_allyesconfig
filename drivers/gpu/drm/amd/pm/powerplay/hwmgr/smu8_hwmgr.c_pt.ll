; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu8_hwmgr.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pp_hwmgr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pp_table_func = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.PP_TemperatureRange = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.smu8_hwmgr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.smu8_sys_info, %struct.smu8_power_level, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.smu8_display_phy_info, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, %struct.cc6_settings, i32, i8, i8, i32, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.smu8_dpm_entry, %struct.smu8_dpm_entry, %struct.smu8_dpm_entry, %struct.smu8_dpm_entry, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, i32 }
%struct.smu8_sys_info = type { i32, i32, i32, i32, [2 x i32], [4 x i32], [4 x i16], [8 x i32], i16, i8, i8, i32, i32 }
%struct.smu8_power_level = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.smu8_display_phy_info = type { i8, [10 x %struct.smu8_display_phy_info_entry] }
%struct.smu8_display_phy_info_entry = type { i8, i8, i8, i8 }
%struct.cc6_settings = type { i8, i8, i8, i8, i32 }
%struct.smu8_dpm_entry = type { i32, i32, i32, i32 }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.101, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.83, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.93, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.83 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.93 = type { i32, ptr }
%struct.amdgpu_acp = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_mmio_remap = type { i32, i32 }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.amdgpu_doorbell = type { i32, i32, ptr, i32 }
%struct.amdgpu_clock = type { [3 x %struct.amdgpu_pll], %struct.amdgpu_pll, %struct.amdgpu_pll, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_pll = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_gmc = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, ptr, i32, %struct.amdgpu_irq_src, i32, i8, i32, i8, i32, i64, i64, i64, i64, %struct.spinlock, i8, ptr, %struct.atomic_t, [256 x %struct.amdgpu_gmc_fault], [256 x %struct.anon.100], i8, i8, ptr, %struct.amdgpu_xgmi, %struct.amdgpu_irq_src, i32, i32, i32, ptr, ptr }
%struct.amdgpu_gmc_fault = type { i56, %struct.atomic64_t }
%struct.anon.100 = type { i8, [7 x i8] }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.97] }
%struct.anon.97 = type { [12 x %struct.ttm_pool_type] }
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
%struct.anon.101 = type { %struct.spinlock, i64, i64, i64, i32 }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.112, i32, i32, i32, i32 }
%union.anon.112 = type { %struct.anon.114 }
%struct.anon.114 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9 = type { %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, [4 x %struct._ATOM_CLK_VOLT_CAPABILITY], i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i32, i16, i16, i16, i8, i8, [40 x i8], %union._ATOM_TDP_CONFIG, i8, i8, [9 x %struct._ATOM_I2C_REG_INFO], [2 x i32], [8 x %struct._ATOM_CLK_VOLT_CAPABILITY_V2], [5 x %struct._ATOM_AVAILABLE_SCLK_LIST], i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, [3 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i32], i32, [4 x i32], [4 x i16], i16, i8, i8, %struct._ATOM_EXTERNAL_DISPLAY_CONNECTION_INFO }
%struct._ATOM_COMMON_TABLE_HEADER = type { i16, i8, i8 }
%struct._ATOM_CLK_VOLT_CAPABILITY = type { i32, i32 }
%union._ATOM_TDP_CONFIG = type { %struct._ATOM_TDP_CONFIG_BITS }
%struct._ATOM_TDP_CONFIG_BITS = type { i32 }
%struct._ATOM_I2C_REG_INFO = type { i8, i8 }
%struct._ATOM_CLK_VOLT_CAPABILITY_V2 = type <{ i16, i32 }>
%struct._ATOM_AVAILABLE_SCLK_LIST = type { i32, i16, i16 }
%struct._ATOM_EXTERNAL_DISPLAY_CONNECTION_INFO = type { %struct._ATOM_COMMON_TABLE_HEADER, [16 x i8], [7 x %struct._EXT_DISPLAY_PATH], i8, i8, i8, i8, i8, [3 x i8] }
%struct._EXT_DISPLAY_PATH = type { i16, i16, i16, i8, i8, i16, %union.anon.117, i8, i16, i16 }
%union.anon.117 = type { i8 }
%struct.phm_clock_voltage_dependency_table = type { i32, [0 x %struct.phm_clock_voltage_dependency_record] }
%struct.phm_clock_voltage_dependency_record = type { i32, i32 }
%struct.pp_atomctrl_clock_dividers_kong = type { i32, i32 }
%struct.SMU8_Fusion_ClkTable = type { %struct.SMU8_Fusion_SclkBreakdownTable, %struct.SMU8_Fusion_LclkBreakdownTable, %struct.SMU8_Fusion_EclkBreakdownTable, %struct.SMU8_Fusion_VclkBreakdownTable, %struct.SMU8_Fusion_DclkBreakdownTable, %struct.SMU8_Fusion_AclkBreakdownTable }
%struct.SMU8_Fusion_SclkBreakdownTable = type { [8 x %struct.SMU8_Fusion_ClkLevel], %struct.SMU8_Fusion_ClkLevel, i32, i32 }
%struct.SMU8_Fusion_ClkLevel = type { i8, i8, i8, i8, i32, i32 }
%struct.SMU8_Fusion_LclkBreakdownTable = type { [8 x %struct.SMU8_Fusion_ClkLevel], %struct.SMU8_Fusion_ClkLevel, i32, i32 }
%struct.SMU8_Fusion_EclkBreakdownTable = type { [8 x %struct.SMU8_Fusion_ClkLevel], %struct.SMU8_Fusion_ClkLevel, %struct.SMU8_Fusion_ClkLevel, i32, i32 }
%struct.SMU8_Fusion_VclkBreakdownTable = type { [8 x %struct.SMU8_Fusion_ClkLevel], %struct.SMU8_Fusion_ClkLevel, %struct.SMU8_Fusion_ClkLevel, i32, i32 }
%struct.SMU8_Fusion_DclkBreakdownTable = type { [8 x %struct.SMU8_Fusion_ClkLevel], %struct.SMU8_Fusion_ClkLevel, %struct.SMU8_Fusion_ClkLevel, i32, i32 }
%struct.SMU8_Fusion_AclkBreakdownTable = type { [8 x %struct.SMU8_Fusion_ClkLevel], %struct.SMU8_Fusion_ClkLevel, %struct.SMU8_Fusion_ClkLevel, i32, i32 }
%struct.phm_acp_clock_voltage_dependency_table = type { i32, [0 x %struct.phm_acp_clock_voltage_dependency_record] }
%struct.phm_acp_clock_voltage_dependency_record = type { i32, i32 }
%struct.phm_uvd_clock_voltage_dependency_table = type { i8, [0 x %struct.phm_uvd_clock_voltage_dependency_record] }
%struct.phm_uvd_clock_voltage_dependency_record = type { i32, i32, i32 }
%struct.phm_vce_clock_voltage_dependency_table = type { i8, [0 x %struct.phm_vce_clock_voltage_dependency_record] }
%struct.phm_vce_clock_voltage_dependency_record = type { i32, i32, i32 }
%struct.pp_power_state = type { i32, %struct.PP_StateLinkedList, %struct.PP_StateLinkedList, %struct.PP_StateClassificationBlock, %struct.PP_StateValidationBlock, %struct.PP_StatePcieBlock, %struct.PP_StateDisplayBlock, %struct.PP_StateMemroyBlock, %struct.PP_TemperatureRange, %struct.PP_StateSoftwareAlgorithmBlock, %struct.PP_UVD_CLOCKS, %struct.pp_hw_power_state }
%struct.PP_StateLinkedList = type { ptr, ptr }
%struct.PP_StateClassificationBlock = type { i32, i32, i32, i8, i8 }
%struct.PP_StateValidationBlock = type { i8, i8, i8 }
%struct.PP_StatePcieBlock = type { i32 }
%struct.PP_StateDisplayBlock = type { i8, i8, i32, i32, i32, i8 }
%struct.PP_StateMemroyBlock = type { i8, i8, [3 x i8] }
%struct.PP_StateSoftwareAlgorithmBlock = type { i8, i8 }
%struct.PP_UVD_CLOCKS = type { i32, i32 }
%struct.pp_hw_power_state = type { i32 }
%struct.smu8_power_state = type { i32, i32, %struct.smu8_uvd_clocks, i32, i32, i32, i32, i8, i32, i32, i8, i8, i8, i8, i32, [8 x %struct.smu8_power_level], %struct.pp_disable_nb_ps_flags }
%struct.smu8_uvd_clocks = type { i32, i32, i32, i32, i32, i32 }
%struct.pp_disable_nb_ps_flags = type { %union.anon.2 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { i32 }
%struct.cgs_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.amd_pp_simple_clock_info = type { i32, i32, i32 }
%struct.PHM_PerformanceLevel = type { i32, i32, i32, i32, i32, i32 }
%struct.pp_clock_info = type { i32, i32, i32, i32, i32, i32 }
%struct.amd_pp_clocks = type { i32, [16 x i32], [16 x i32] }
%struct.phm_set_power_state_input = type { ptr, ptr }

@smu8_hwmgr_funcs = internal constant { %struct.pp_hwmgr_func, [76 x i8] } { %struct.pp_hwmgr_func { ptr @smu8_hwmgr_backend_init, ptr @smu8_hwmgr_backend_fini, ptr @smu8_setup_asic_task, ptr @smu8_get_power_state_size, ptr @smu8_apply_state_adjust_rules, ptr null, ptr @smu8_dpm_force_dpm_level, ptr @smu8_enable_dpm_tasks, ptr @smu8_disable_dpm_tasks, ptr @smu8_dpm_patch_boot_state, ptr @smu8_dpm_get_pp_table_entry, ptr @smu8_dpm_get_num_of_pp_table_entries, ptr @smu8_dpm_powerdown_uvd, ptr @smu8_dpm_powergate_vce, ptr @smu8_dpm_powergate_uvd, ptr @smu8_dpm_powergate_acp, ptr @smu8_dpm_get_mclk, ptr @smu8_dpm_get_sclk, ptr @smu8_set_power_state_tasks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smu8_set_cpu_power_state, ptr @smu8_store_cc6_data, ptr @smu8_get_dal_power_level, ptr @smu8_get_performance_level, ptr @smu8_get_current_shallow_sleep_clocks, ptr @smu8_get_clock_by_type, ptr null, ptr null, ptr null, ptr null, ptr @smu8_get_max_high_clocks, ptr @smu8_power_off_asic, ptr @smu8_force_clock_level, ptr @smu8_print_clock_levels, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smu8_read_sensor, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smu8_notify_cac_buffer_info, ptr @smu8_nbdpm_pstate_enable_disable, ptr @smu8_get_thermal_temperature_range, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [76 x i8] zeroinitializer }, align 32
@pptable_funcs = external dso_local constant %struct.pp_table_func, align 4
@smu8_hwmgr_backend_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013amdgpu: smu8_initialize_dpm_defaults failed\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"smu8_hwmgr_backend_init\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c\00", [34 x i8] zeroinitializer }, align 32
@smu8_hwmgr_backend_init._entry_ptr = internal global ptr @smu8_hwmgr_backend_init._entry, section ".printk_index", align 4
@smu8_hwmgr_backend_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013amdgpu: smu8_get_system_info_data failed\0A\00", [52 x i8] zeroinitializer }, align 32
@smu8_hwmgr_backend_init._entry_ptr.5 = internal global ptr @smu8_hwmgr_backend_init._entry.3, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@smu8_get_system_info_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013amdgpu: Could not retrieve the Integrated System Info Table!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"smu8_get_system_info_data\00", [38 x i8] zeroinitializer }, align 32
@smu8_get_system_info_data._entry_ptr = internal global ptr @smu8_get_system_info_data._entry, section ".printk_index", align 4
@smu8_get_system_info_data._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013amdgpu: Unsupported IGP table: %d %d\0A\00", [56 x i8] zeroinitializer }, align 32
@smu8_get_system_info_data._entry_ptr.10 = internal global ptr @smu8_get_system_info_data._entry.8, section ".printk_index", align 4
@smu8_get_system_info_data._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013amdgpu: The htcTmpLmt should be larger than htcHystLmt.\0A\00", [37 x i8] zeroinitializer }, align 32
@smu8_get_system_info_data._entry_ptr.13 = internal global ptr @smu8_get_system_info_data._entry.11, section ".printk_index", align 4
@smu8_init_dynamic_state_adjustment_rule_settings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013amdgpu: Can not allocate memory!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"smu8_init_dynamic_state_adjustment_rule_settings\00", [47 x i8] zeroinitializer }, align 32
@smu8_init_dynamic_state_adjustment_rule_settings._entry_ptr = internal global ptr @smu8_init_dynamic_state_adjustment_rule_settings._entry, section ".printk_index", align 4
@smu8_upload_pptable_to_smu._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.smu8_upload_pptable_to_smu = private unnamed_addr constant [27 x i8] c"smu8_upload_pptable_to_smu\00", align 1
@smu8_upload_pptable_to_smu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.smu8_upload_pptable_to_smu, ptr @.str.2, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\014amdgpu: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@smu8_upload_pptable_to_smu._entry_ptr = internal global ptr @smu8_upload_pptable_to_smu._entry, section ".printk_index", align 4
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Fail to get clock table from SMU!\00", [62 x i8] zeroinitializer }, align 32
@smu8_upload_pptable_to_smu._rs.19 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smu8_upload_pptable_to_smu._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.smu8_upload_pptable_to_smu, ptr @.str.2, i32 466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu8_upload_pptable_to_smu._entry_ptr.21 = internal global ptr @smu8_upload_pptable_to_smu._entry.20, section ".printk_index", align 4
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Dependency table entry exceeds max limit!\00", [54 x i8] zeroinitializer }, align 32
@smu8_upload_pptable_to_smu._rs.23 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smu8_upload_pptable_to_smu._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.smu8_upload_pptable_to_smu, ptr @.str.2, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu8_upload_pptable_to_smu._entry_ptr.25 = internal global ptr @smu8_upload_pptable_to_smu._entry.24, section ".printk_index", align 4
@smu8_upload_pptable_to_smu._rs.26 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smu8_upload_pptable_to_smu._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.smu8_upload_pptable_to_smu, ptr @.str.2, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu8_upload_pptable_to_smu._entry_ptr.28 = internal global ptr @smu8_upload_pptable_to_smu._entry.27, section ".printk_index", align 4
@smu8_upload_pptable_to_smu._rs.29 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smu8_upload_pptable_to_smu._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.smu8_upload_pptable_to_smu, ptr @.str.2, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu8_upload_pptable_to_smu._entry_ptr.31 = internal global ptr @smu8_upload_pptable_to_smu._entry.30, section ".printk_index", align 4
@smu8_upload_pptable_to_smu._rs.32 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smu8_upload_pptable_to_smu._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.smu8_upload_pptable_to_smu, ptr @.str.2, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu8_upload_pptable_to_smu._entry_ptr.34 = internal global ptr @smu8_upload_pptable_to_smu._entry.33, section ".printk_index", align 4
@smu8_update_sclk_limit.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 -80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"smu8_update_sclk_limit\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"min_core_set_clock not set\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: min_core_set_clock not set\0A\00", [60 x i8] zeroinitializer }, align 32
@smu8_set_deep_sleep_sclk_threshold.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 -65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"smu8_set_deep_sleep_sclk_threshold\00", [61 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Setting Deep Sleep Clock: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: Setting Deep Sleep Clock: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@smu8_enable_nb_dpm.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 -46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"smu8_enable_nb_dpm\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"enabling ALL SMU features.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: enabling ALL SMU features.\0A\00", [60 x i8] zeroinitializer }, align 32
@smu8_set_cpu_power_state.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 1, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"smu8_set_cpu_power_state\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"SetDisplaySizePowerParams data: 0x%X\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"amdgpu: SetDisplaySizePowerParams data: 0x%X\0A\00", [50 x i8] zeroinitializer }, align 32
@smu8_hw_print_display_cfg.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 1, i8 101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"smu8_hw_print_display_cfg\00", [38 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"New Display Configuration:\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: New Display Configuration:\0A\00", [60 x i8] zeroinitializer }, align 32
@smu8_hw_print_display_cfg.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.48, ptr @.str.2, ptr @.str.51, i8 1, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"   cpu_cc6_disable: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu:    cpu_cc6_disable: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@smu8_hw_print_display_cfg.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.48, ptr @.str.2, ptr @.str.53, i8 1, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"   cpu_pstate_disable: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu:    cpu_pstate_disable: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@smu8_hw_print_display_cfg.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.48, ptr @.str.2, ptr @.str.55, i8 1, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"   nb_pstate_switch_disable: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"amdgpu:    nb_pstate_switch_disable: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@smu8_hw_print_display_cfg.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.48, ptr @.str.2, ptr @.str.57, i8 1, i8 103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"   cpu_pstate_separation_time: %d\0A\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"amdgpu:    cpu_pstate_separation_time: %d\0A\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%d: %uMhz %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@smu8_nbdpm_pstate_enable_disable.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.62, ptr @.str.2, ptr @.str.63, i8 0, i8 -58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"smu8_nbdpm_pstate_enable_disable\00", [63 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"enable Low Memory PState.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: enable Low Memory PState.\0A\00", [61 x i8] zeroinitializer }, align 32
@smu8_nbdpm_pstate_enable_disable.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.62, ptr @.str.2, ptr @.str.65, i8 0, i8 -56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"disable Low Memory PState.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: disable Low Memory PState.\0A\00", [60 x i8] zeroinitializer }, align 32
@SMU7ThermalPolicy = internal constant { [2 x %struct.PP_TemperatureRange], [56 x i8] } { [2 x %struct.PP_TemperatureRange] [%struct.PP_TemperatureRange { i32 -273150, i32 99000, i32 99000, i32 -273150, i32 99000, i32 99000, i32 -273150, i32 99000, i32 99000 }, %struct.PP_TemperatureRange { i32 120000, i32 120000, i32 120000, i32 120000, i32 120000, i32 120000, i32 120000, i32 120000, i32 120000 }], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 128]
@__sancov_gen_cov_switch_values.67 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 4, i64 8, i64 16, i64 32, i64 128]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.70 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 10, i64 13, i64 14]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"smu8_hwmgr_funcs\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 2009, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1108, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1114, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 323, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 328, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 355, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 283, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 459, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 465, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 467, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 469, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 471, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 473, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 704, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 764, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 843, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1462, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1429, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1431, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1433, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1435, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1437, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1562, i32 32 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1564, i32 19 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1564, i32 25 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 794, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.265 = private constant [65 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 801, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant [18 x i8] c"SMU7ThermalPolicy\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [53 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/inc/pp_thermal.h\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 34, i32 56 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @smu8_get_system_info_data._entry, ptr @smu8_get_system_info_data._entry.11, ptr @smu8_get_system_info_data._entry.8, ptr @smu8_get_system_info_data._entry_ptr, ptr @smu8_get_system_info_data._entry_ptr.10, ptr @smu8_get_system_info_data._entry_ptr.13, ptr @smu8_hwmgr_backend_init._entry, ptr @smu8_hwmgr_backend_init._entry.3, ptr @smu8_hwmgr_backend_init._entry_ptr, ptr @smu8_hwmgr_backend_init._entry_ptr.5, ptr @smu8_init_dynamic_state_adjustment_rule_settings._entry, ptr @smu8_init_dynamic_state_adjustment_rule_settings._entry_ptr, ptr @smu8_upload_pptable_to_smu._entry, ptr @smu8_upload_pptable_to_smu._entry.20, ptr @smu8_upload_pptable_to_smu._entry.24, ptr @smu8_upload_pptable_to_smu._entry.27, ptr @smu8_upload_pptable_to_smu._entry.30, ptr @smu8_upload_pptable_to_smu._entry.33, ptr @smu8_upload_pptable_to_smu._entry_ptr, ptr @smu8_upload_pptable_to_smu._entry_ptr.21, ptr @smu8_upload_pptable_to_smu._entry_ptr.25, ptr @smu8_upload_pptable_to_smu._entry_ptr.28, ptr @smu8_upload_pptable_to_smu._entry_ptr.31, ptr @smu8_upload_pptable_to_smu._entry_ptr.34, ptr @smu8_hwmgr_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @smu8_upload_pptable_to_smu._rs, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @smu8_upload_pptable_to_smu._rs.19, ptr @.str.22, ptr @smu8_upload_pptable_to_smu._rs.23, ptr @smu8_upload_pptable_to_smu._rs.26, ptr @smu8_upload_pptable_to_smu._rs.29, ptr @smu8_upload_pptable_to_smu._rs.32, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @SMU7ThermalPolicy], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_hwmgr_funcs to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_hwmgr_backend_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_hwmgr_backend_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_get_system_info_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_get_system_info_data._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_get_system_info_data._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_init_dynamic_state_adjustment_rule_settings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_upload_pptable_to_smu._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_upload_pptable_to_smu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_upload_pptable_to_smu._rs.19 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_upload_pptable_to_smu._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_upload_pptable_to_smu._rs.23 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_upload_pptable_to_smu._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_upload_pptable_to_smu._rs.26 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_upload_pptable_to_smu._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_upload_pptable_to_smu._rs.29 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_upload_pptable_to_smu._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_upload_pptable_to_smu._rs.32 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_upload_pptable_to_smu._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SMU7ThermalPolicy to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @smu8_init_function_pointers(ptr nocapture noundef writeonly %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @smu8_hwmgr_funcs, ptr %hwmgr_func, align 4
  %pptable_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 31
  %1 = ptrtoint ptr %pptable_func to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @pptable_funcs, ptr %pptable_func, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_hwmgr_backend_init(ptr nocapture noundef %hwmgr) #1 align 64 {
entry:
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  %size.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 484) #16
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %1 = ptrtoint ptr %backend to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %backend, align 4
  %2 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr, align 4
  %gfx_ramp_step.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 8
  %4 = ptrtoint ptr %gfx_ramp_step.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 64, ptr %gfx_ramp_step.i, align 8
  %gfx_ramp_delay.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 9
  %5 = ptrtoint ptr %gfx_ramp_delay.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %gfx_ramp_delay.i, align 4
  %mgcg_cgtt_local0.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 15
  %6 = ptrtoint ptr %mgcg_cgtt_local0.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %mgcg_cgtt_local0.i, align 8
  %mgcg_cgtt_local1.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 16
  %7 = ptrtoint ptr %mgcg_cgtt_local1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %mgcg_cgtt_local1.i, align 4
  %clock_slow_down_freq.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 29
  %8 = ptrtoint ptr %clock_slow_down_freq.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 25000, ptr %clock_slow_down_freq.i, align 4
  %skip_clock_slow_down.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 30
  %9 = ptrtoint ptr %skip_clock_slow_down.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %skip_clock_slow_down.i, align 8
  %enable_nb_ps_policy.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 31
  %10 = ptrtoint ptr %enable_nb_ps_policy.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %enable_nb_ps_policy.i, align 4
  %voltage_drop_in_dce_power_gating.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 32
  %11 = ptrtoint ptr %voltage_drop_in_dce_power_gating.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %voltage_drop_in_dce_power_gating.i, align 8
  %voting_rights_clients.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %voting_rights_clients.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 12582963, ptr %voting_rights_clients.i, align 8
  %static_screen_threshold.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %static_screen_threshold.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %static_screen_threshold.i, align 8
  %ddi_power_gating_disabled.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 18
  %14 = ptrtoint ptr %ddi_power_gating_disabled.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %ddi_power_gating_disabled.i, align 4
  %bapm_enabled.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 28
  %15 = ptrtoint ptr %bapm_enabled.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %bapm_enabled.i, align 8
  %voltage_drop_threshold.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %voltage_drop_threshold.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %voltage_drop_threshold.i, align 4
  %gfx_power_gating_threshold.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %gfx_power_gating_threshold.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 500, ptr %gfx_power_gating_threshold.i, align 4
  %vce_slow_sclk_threshold.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 23
  %18 = ptrtoint ptr %vce_slow_sclk_threshold.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 20000, ptr %vce_slow_sclk_threshold.i, align 8
  %dce_slow_sclk_threshold.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 24
  %19 = ptrtoint ptr %dce_slow_sclk_threshold.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 30000, ptr %dce_slow_sclk_threshold.i, align 4
  %disable_driver_thermal_policy.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %disable_driver_thermal_policy.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %disable_driver_thermal_policy.i, align 4
  %disable_nb_ps3_in_battery.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 20
  %21 = ptrtoint ptr %disable_nb_ps3_in_battery.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %disable_nb_ps3_in_battery.i, align 4
  %arrayidx.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i, align 4
  %and1.i.i = and i32 %23, -131073
  store i32 %and1.i.i, ptr %arrayidx.i.i, align 4
  %arrayidx.i1.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx.i1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i1.i, align 4
  %override_dynamic_mgpg.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 34
  %26 = ptrtoint ptr %override_dynamic_mgpg.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %override_dynamic_mgpg.i, align 8
  %thermal_auto_throttling_treshold.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 10
  %27 = ptrtoint ptr %thermal_auto_throttling_treshold.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %thermal_auto_throttling_treshold.i, align 8
  %tdr_clock.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 17
  %28 = ptrtoint ptr %tdr_clock.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %tdr_clock.i, align 8
  %disable_gfx_power_gating_in_uvd.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 19
  %29 = ptrtoint ptr %disable_gfx_power_gating_in_uvd.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %disable_gfx_power_gating_in_uvd.i, align 8
  %arrayidx.i6.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 3
  %30 = ptrtoint ptr %arrayidx.i6.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i6.i, align 4
  %or.i11.i = or i32 %31, 35
  store i32 %or.i11.i, ptr %arrayidx.i6.i, align 4
  %nb_pstate_switch_disable.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 43, i32 1
  %arrayidx.i12.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 4
  %32 = call ptr @memset(ptr %nb_pstate_switch_disable.i, i32 0, i32 7)
  %33 = ptrtoint ptr %arrayidx.i12.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i12.i, align 4
  %or.i13.i = or i32 %34, 16777216
  store i32 %or.i13.i, ptr %arrayidx.i12.i, align 4
  %or.i5.i = and i32 %25, -1350566049
  %and1.i17.i = or i32 %or.i5.i, 8388736
  store i32 %and1.i17.i, ptr %arrayidx.i1.i, align 4
  %pg_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 100
  %35 = ptrtoint ptr %pg_flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pg_flags.i, align 4
  %and.i = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %or.i19.i = or i32 %or.i5.i, 276824192
  %37 = ptrtoint ptr %arrayidx.i1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or.i19.i, ptr %arrayidx.i1.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %38 = ptrtoint ptr %pg_flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pg_flags.i, align 4
  %and36.i = and i32 %39, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.end.i.smu8_initialize_dpm_defaults.exit_crit_edge, label %if.then38.i

if.end.i.smu8_initialize_dpm_defaults.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_initialize_dpm_defaults.exit

if.then38.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %arrayidx.i1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i1.i, align 4
  %or.i21.i = or i32 %41, 1073741824
  store i32 %or.i21.i, ptr %arrayidx.i1.i, align 4
  br label %smu8_initialize_dpm_defaults.exit

smu8_initialize_dpm_defaults.exit:                ; preds = %if.then38.i, %if.end.i.smu8_initialize_dpm_defaults.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #13
  %42 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %frev.i, align 1, !annotation !127
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #13
  %43 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -1, ptr %crev.i, align 1, !annotation !127
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i) #13
  %44 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 -1, ptr %size.i, align 2, !annotation !127
  %call.i = call ptr @smu_atom_get_data_table(ptr noundef %3, i32 noundef 30, ptr noundef nonnull %size.i, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #13
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %do.end.i, label %if.end.i27

do.end.i:                                         ; preds = %smu8_initialize_dpm_defaults.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #17
  br label %do.end11

if.end.i27:                                       ; preds = %smu8_initialize_dpm_defaults.exit
  %45 = ptrtoint ptr %crev.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %crev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %46)
  %cmp2.not.i = icmp eq i8 %46, 9
  br i1 %cmp2.not.i, label %if.end12.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i = zext i8 %46 to i32
  %47 = ptrtoint ptr %frev.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %frev.i, align 1
  %conv9.i = zext i8 %48 to i32
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv9.i, i32 noundef %conv.i) #17
  br label %do.end11

if.end12.i:                                       ; preds = %if.end.i27
  %ulBootUpUMAClock.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i, i32 0, i32 3
  %49 = ptrtoint ptr %ulBootUpUMAClock.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %ulBootUpUMAClock.i, align 1
  %51 = call i32 @llvm.bswap.i32(i32 %50) #13
  %sys_info.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 11
  %52 = ptrtoint ptr %sys_info.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %sys_info.i, align 4
  %ulBootUpEngineClock.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i, i32 0, i32 1
  %53 = ptrtoint ptr %ulBootUpEngineClock.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %ulBootUpEngineClock.i, align 1
  %55 = call i32 @llvm.bswap.i32(i32 %54) #13
  %bootup_engine_clock.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 11, i32 1
  %56 = ptrtoint ptr %bootup_engine_clock.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %bootup_engine_clock.i, align 8
  %ulDentistVCOFreq.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i, i32 0, i32 2
  %57 = ptrtoint ptr %ulDentistVCOFreq.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %ulDentistVCOFreq.i, align 1
  %59 = call i32 @llvm.bswap.i32(i32 %58) #13
  %dentist_vco_freq.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 11, i32 2
  %60 = ptrtoint ptr %dentist_vco_freq.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %dentist_vco_freq.i, align 4
  %ulSystemConfig.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i, i32 0, i32 13
  %61 = ptrtoint ptr %ulSystemConfig.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %ulSystemConfig.i, align 1
  %63 = call i32 @llvm.bswap.i32(i32 %62) #13
  %system_config.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 11, i32 11
  %64 = ptrtoint ptr %system_config.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %system_config.i, align 8
  %usBootUpNBVoltage.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i, i32 0, i32 61
  %65 = ptrtoint ptr %usBootUpNBVoltage.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %usBootUpNBVoltage.i, align 1
  %67 = call i16 @llvm.bswap.i16(i16 %66) #13
  %bootup_nb_voltage_index.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 11, i32 8
  %68 = ptrtoint ptr %bootup_nb_voltage_index.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %bootup_nb_voltage_index.i, align 4
  %ucHtcHystLmt.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i, i32 0, i32 11
  %69 = ptrtoint ptr %ucHtcHystLmt.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %ucHtcHystLmt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp18.i = icmp eq i8 %70, 0
  %spec.select.i = select i1 %cmp18.i, i8 5, i8 %70
  %htc_hyst_lmt.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 11, i32 10
  %71 = ptrtoint ptr %htc_hyst_lmt.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %spec.select.i, ptr %htc_hyst_lmt.i, align 1
  %ucHtcTmpLmt.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i, i32 0, i32 10
  %72 = ptrtoint ptr %ucHtcTmpLmt.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %ucHtcTmpLmt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp25.i = icmp eq i8 %73, 0
  %cond32.i = select i1 %cmp25.i, i8 -53, i8 %73
  %htc_tmp_lmt.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 11, i32 9
  %74 = ptrtoint ptr %htc_tmp_lmt.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %cond32.i, ptr %htc_tmp_lmt.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %cond32.i, i8 %spec.select.i)
  %cmp41.not.i = icmp ugt i8 %cond32.i, %spec.select.i
  br i1 %cmp41.not.i, label %if.end49.i, label %do.end46.i

do.end46.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  %call48.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #17
  br label %do.end11

if.end49.i:                                       ; preds = %if.end12.i
  %75 = ptrtoint ptr %enable_nb_ps_policy.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %enable_nb_ps_policy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i29 = icmp eq i32 %76, 0
  br i1 %tobool.not.i29, label %if.end49.i.if.end60.3.i_crit_edge, label %land.rhs.i

if.end49.i.if.end60.3.i_crit_edge:                ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60.3.i

land.rhs.i:                                       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  %77 = ptrtoint ptr %ulSystemConfig.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %ulSystemConfig.i, align 1
  %79 = lshr i32 %78, 27
  %and.i30 = and i32 %79, 1
  br label %if.end60.3.i

if.end60.3.i:                                     ; preds = %land.rhs.i, %if.end49.i.if.end60.3.i_crit_edge
  %80 = phi i32 [ 0, %if.end49.i.if.end60.3.i_crit_edge ], [ %and.i30, %land.rhs.i ]
  %nb_dpm_enable.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 11, i32 3
  %81 = ptrtoint ptr %nb_dpm_enable.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %nb_dpm_enable.i, align 8
  %arrayidx.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i, i32 0, i32 57, i32 0
  %82 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %arrayidx.i, align 1
  %84 = call i32 @llvm.bswap.i32(i32 %83) #13
  %arrayidx59.i = getelementptr %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 11, i32 4, i32 0
  %85 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %arrayidx59.i, align 4
  %arrayidx61.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i, i32 0, i32 59, i32 0
  %86 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %arrayidx61.i, align 1
  %88 = call i32 @llvm.bswap.i32(i32 %87) #13
  %arrayidx63.i = getelementptr %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 11, i32 5, i32 0
  %89 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %arrayidx63.i, align 4
  %arrayidx.1.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i, i32 0, i32 57, i32 1
  %90 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %arrayidx.1.i, align 1
  %92 = call i32 @llvm.bswap.i32(i32 %91) #13
  %arrayidx59.1.i = getelementptr %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 11, i32 4, i32 1
  %93 = ptrtoint ptr %arrayidx59.1.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %arrayidx59.1.i, align 8
  %arrayidx61.1.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i, i32 0, i32 59, i32 1
  %94 = ptrtoint ptr %arrayidx61.1.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %arrayidx61.1.i, align 1
  %96 = call i32 @llvm.bswap.i32(i32 %95) #13
  %arrayidx63.1.i = getelementptr %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 11, i32 5, i32 1
  %97 = ptrtoint ptr %arrayidx63.1.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %arrayidx63.1.i, align 8
  %arrayidx61.2.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i, i32 0, i32 59, i32 2
  %98 = ptrtoint ptr %arrayidx61.2.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %arrayidx61.2.i, align 1
  %100 = call i32 @llvm.bswap.i32(i32 %99) #13
  %arrayidx63.2.i = getelementptr %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 11, i32 5, i32 2
  %101 = ptrtoint ptr %arrayidx63.2.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %arrayidx63.2.i, align 4
  %arrayidx61.3.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i, i32 0, i32 59, i32 3
  %102 = ptrtoint ptr %arrayidx61.3.i to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %arrayidx61.3.i, align 1
  %104 = call i32 @llvm.bswap.i32(i32 %103) #13
  %arrayidx63.3.i = getelementptr %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 11, i32 5, i32 3
  %105 = ptrtoint ptr %arrayidx63.3.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %arrayidx63.3.i, align 8
  %ulMaximumSupportedCLK.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i, i32 0, i32 27, i32 0, i32 1
  %106 = ptrtoint ptr %ulMaximumSupportedCLK.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %ulMaximumSupportedCLK.i, align 1
  %108 = call i32 @llvm.bswap.i32(i32 %107) #13
  %arrayidx70.i = getelementptr %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 11, i32 7, i32 0
  %109 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %arrayidx70.i, align 4
  %ulMaximumSupportedCLK.1.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i, i32 0, i32 27, i32 1, i32 1
  %110 = ptrtoint ptr %ulMaximumSupportedCLK.1.i to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %ulMaximumSupportedCLK.1.i, align 1
  %112 = call i32 @llvm.bswap.i32(i32 %111) #13
  %arrayidx70.1.i = getelementptr %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 11, i32 7, i32 1
  %113 = ptrtoint ptr %arrayidx70.1.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %arrayidx70.1.i, align 8
  %ulMaximumSupportedCLK.2.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i, i32 0, i32 27, i32 2, i32 1
  %114 = ptrtoint ptr %ulMaximumSupportedCLK.2.i to i32
  call void @__asan_loadN_noabort(i32 %114, i32 4)
  %115 = load i32, ptr %ulMaximumSupportedCLK.2.i, align 1
  %116 = call i32 @llvm.bswap.i32(i32 %115) #13
  %arrayidx70.2.i = getelementptr %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 11, i32 7, i32 2
  %117 = ptrtoint ptr %arrayidx70.2.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %arrayidx70.2.i, align 4
  %ulMaximumSupportedCLK.3.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i, i32 0, i32 27, i32 3, i32 1
  %118 = ptrtoint ptr %ulMaximumSupportedCLK.3.i to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %ulMaximumSupportedCLK.3.i, align 1
  %120 = call i32 @llvm.bswap.i32(i32 %119) #13
  %arrayidx70.3.i = getelementptr %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 11, i32 7, i32 3
  %121 = ptrtoint ptr %arrayidx70.3.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %arrayidx70.3.i, align 8
  %ulMaximumSupportedCLK.4.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i, i32 0, i32 27, i32 4, i32 1
  %122 = ptrtoint ptr %ulMaximumSupportedCLK.4.i to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %ulMaximumSupportedCLK.4.i, align 1
  %124 = call i32 @llvm.bswap.i32(i32 %123) #13
  %arrayidx70.4.i = getelementptr %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 11, i32 7, i32 4
  %125 = ptrtoint ptr %arrayidx70.4.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %arrayidx70.4.i, align 4
  %ulMaximumSupportedCLK.5.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i, i32 0, i32 27, i32 5, i32 1
  %126 = ptrtoint ptr %ulMaximumSupportedCLK.5.i to i32
  call void @__asan_loadN_noabort(i32 %126, i32 4)
  %127 = load i32, ptr %ulMaximumSupportedCLK.5.i, align 1
  %128 = call i32 @llvm.bswap.i32(i32 %127) #13
  %arrayidx70.5.i = getelementptr %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 11, i32 7, i32 5
  %129 = ptrtoint ptr %arrayidx70.5.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %arrayidx70.5.i, align 8
  %ulMaximumSupportedCLK.6.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i, i32 0, i32 27, i32 6, i32 1
  %130 = ptrtoint ptr %ulMaximumSupportedCLK.6.i to i32
  call void @__asan_loadN_noabort(i32 %130, i32 4)
  %131 = load i32, ptr %ulMaximumSupportedCLK.6.i, align 1
  %132 = call i32 @llvm.bswap.i32(i32 %131) #13
  %arrayidx70.6.i = getelementptr %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 11, i32 7, i32 6
  %133 = ptrtoint ptr %arrayidx70.6.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %arrayidx70.6.i, align 4
  %ulMaximumSupportedCLK.7.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i, i32 0, i32 27, i32 7, i32 1
  %134 = ptrtoint ptr %ulMaximumSupportedCLK.7.i to i32
  call void @__asan_loadN_noabort(i32 %134, i32 4)
  %135 = load i32, ptr %ulMaximumSupportedCLK.7.i, align 1
  %136 = call i32 @llvm.bswap.i32(i32 %135) #13
  %arrayidx70.7.i = getelementptr %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 11, i32 7, i32 7
  %137 = ptrtoint ptr %arrayidx70.7.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %arrayidx70.7.i, align 8
  %arrayidx78.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i, i32 0, i32 60, i32 0
  %138 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 2)
  %139 = load i16, ptr %arrayidx78.i, align 1
  %140 = call i16 @llvm.bswap.i16(i16 %139) #13
  %arrayidx80.i = getelementptr %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 11, i32 6, i32 0
  %141 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %140, ptr %arrayidx80.i, align 4
  %arrayidx78.1.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i, i32 0, i32 60, i32 1
  %142 = ptrtoint ptr %arrayidx78.1.i to i32
  call void @__asan_loadN_noabort(i32 %142, i32 2)
  %143 = load i16, ptr %arrayidx78.1.i, align 1
  %144 = call i16 @llvm.bswap.i16(i16 %143) #13
  %arrayidx80.1.i = getelementptr %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 11, i32 6, i32 1
  %145 = ptrtoint ptr %arrayidx80.1.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %arrayidx80.1.i, align 2
  %arrayidx78.2.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i, i32 0, i32 60, i32 2
  %146 = ptrtoint ptr %arrayidx78.2.i to i32
  call void @__asan_loadN_noabort(i32 %146, i32 2)
  %147 = load i16, ptr %arrayidx78.2.i, align 1
  %148 = call i16 @llvm.bswap.i16(i16 %147) #13
  %arrayidx80.2.i = getelementptr %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 11, i32 6, i32 2
  %149 = ptrtoint ptr %arrayidx80.2.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %148, ptr %arrayidx80.2.i, align 8
  %arrayidx78.3.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i, i32 0, i32 60, i32 3
  %150 = ptrtoint ptr %arrayidx78.3.i to i32
  call void @__asan_loadN_noabort(i32 %150, i32 2)
  %151 = load i16, ptr %arrayidx78.3.i, align 1
  %152 = call i16 @llvm.bswap.i16(i16 %151) #13
  %arrayidx80.3.i = getelementptr %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 11, i32 6, i32 3
  %153 = ptrtoint ptr %arrayidx80.3.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %152, ptr %arrayidx80.3.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool86.not.i = icmp eq i32 %80, 0
  br i1 %tobool86.not.i, label %if.end101.2.i, label %if.end60.3.i.if.end117.i_crit_edge

if.end60.3.i.if.end117.i_crit_edge:               ; preds = %if.end60.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end117.i

if.end101.2.i:                                    ; preds = %if.end60.3.i
  call void @__sanitizer_cov_trace_pc() #15
  %154 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx59.i, align 4
  %156 = ptrtoint ptr %arrayidx59.1.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %arrayidx59.1.i, align 8
  %157 = ptrtoint ptr %arrayidx63.1.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %88, ptr %arrayidx63.1.i, align 8
  %158 = ptrtoint ptr %arrayidx80.1.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %140, ptr %arrayidx80.1.i, align 2
  %159 = ptrtoint ptr %arrayidx63.2.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %88, ptr %arrayidx63.2.i, align 4
  %160 = ptrtoint ptr %arrayidx80.2.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %140, ptr %arrayidx80.2.i, align 8
  %161 = ptrtoint ptr %arrayidx63.3.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %88, ptr %arrayidx63.3.i, align 8
  %162 = ptrtoint ptr %arrayidx80.3.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %140, ptr %arrayidx80.3.i, align 2
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.end101.2.i, %if.end60.3.i.if.end117.i_crit_edge
  %ulGPUCapInfo.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i, i32 0, i32 7
  %163 = ptrtoint ptr %ulGPUCapInfo.i to i32
  call void @__asan_loadN_noabort(i32 %163, i32 4)
  %164 = load i32, ptr %ulGPUCapInfo.i, align 1
  %165 = and i32 %164, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool119.not.i = icmp eq i32 %165, 0
  br i1 %tobool119.not.i, label %if.end117.i.if.end121.i_crit_edge, label %if.then120.i

if.end117.i.if.end121.i_crit_edge:                ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end121.i

if.then120.i:                                     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #15
  %166 = ptrtoint ptr %arrayidx.i6.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx.i6.i, align 4
  %or.i.i32 = or i32 %167, 536870912
  store i32 %or.i.i32, ptr %arrayidx.i6.i, align 4
  br label %if.end121.i

if.end121.i:                                      ; preds = %if.then120.i, %if.end117.i.if.end121.i_crit_edge
  %ucUMAChannelNumber.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i, i32 0, i32 20
  %168 = ptrtoint ptr %ucUMAChannelNumber.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %ucUMAChannelNumber.i, align 1
  %conv122.i = zext i8 %169 to i32
  %uma_channel_number.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %call7.i.i, i32 0, i32 11, i32 12
  %170 = ptrtoint ptr %uma_channel_number.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %conv122.i, ptr %uma_channel_number.i, align 4
  %171 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %backend, align 4
  %dyn_state.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29
  %173 = ptrtoint ptr %dyn_state.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dyn_state.i.i, align 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %174, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %cmp.not.i.i = icmp eq i32 %176, 0
  br i1 %cmp.not.i.i, label %if.end121.i.smu8_construct_max_power_limits_table.exit.i_crit_edge, label %if.then.i.i

if.end121.i.smu8_construct_max_power_limits_table.exit.i_crit_edge: ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_construct_max_power_limits_table.exit.i

if.then.i.i:                                      ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #15
  %max_clock_voltage_on_ac.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 8
  %sub.i.i = add i32 %176, -1
  %arrayidx.i197.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %174, i32 0, i32 1, i32 %sub.i.i
  %177 = ptrtoint ptr %arrayidx.i197.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx.i197.i, align 4
  %179 = ptrtoint ptr %max_clock_voltage_on_ac.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %max_clock_voltage_on_ac.i, align 4
  %180 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %174, align 4
  %sub5.i.i = add i32 %181, -1
  %v.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %174, i32 0, i32 1, i32 %sub5.i.i, i32 1
  %182 = ptrtoint ptr %v.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %v.i.i, align 4
  %184 = trunc i32 %183 to i16
  %185 = mul i16 %184, -25
  %conv7.i.i = add i16 %185, 6200
  %vddc.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 8, i32 3
  %186 = ptrtoint ptr %vddc.i.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %conv7.i.i, ptr %vddc.i.i, align 4
  br label %smu8_construct_max_power_limits_table.exit.i

smu8_construct_max_power_limits_table.exit.i:     ; preds = %if.then.i.i, %if.end121.i.smu8_construct_max_power_limits_table.exit.i_crit_edge
  %nbp_memory_clock.i.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %172, i32 0, i32 11, i32 4
  %187 = ptrtoint ptr %nbp_memory_clock.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %nbp_memory_clock.i.i, align 4
  %mclk.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 8, i32 1
  %189 = ptrtoint ptr %mclk.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %mclk.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %190 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %190, i32 noundef 3520, i32 noundef 68) #16
  %cmp.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %smu8_construct_max_power_limits_table.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #17
  br label %if.end14

if.end.i.i:                                       ; preds = %smu8_construct_max_power_limits_table.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %191 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 8, ptr %call7.i.i.i.i, align 8
  %entries.i.i = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i, i32 0, i32 1
  %192 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 1, ptr %entries.i.i, align 4
  %v.i198.i = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i, i32 2
  %193 = ptrtoint ptr %v.i198.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 0, ptr %v.i198.i, align 8
  %arrayidx6.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i, i32 3
  %194 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 2, ptr %arrayidx6.i.i, align 4
  %v10.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i, i32 4
  %195 = ptrtoint ptr %v10.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 1, ptr %v10.i.i, align 8
  %arrayidx12.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i, i32 5
  %196 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 3, ptr %arrayidx12.i.i, align 4
  %v16.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i, i32 6
  %197 = ptrtoint ptr %v16.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 2, ptr %v16.i.i, align 8
  %arrayidx18.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i, i32 7
  %198 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 4, ptr %arrayidx18.i.i, align 4
  %v22.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i, i32 8
  %199 = ptrtoint ptr %v22.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 3, ptr %v22.i.i, align 8
  %arrayidx24.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i, i32 9
  %200 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 5, ptr %arrayidx24.i.i, align 4
  %v28.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i, i32 10
  %201 = ptrtoint ptr %v28.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 4, ptr %v28.i.i, align 8
  %arrayidx30.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i, i32 11
  %202 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 6, ptr %arrayidx30.i.i, align 4
  %v34.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i, i32 12
  %203 = ptrtoint ptr %v34.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 5, ptr %v34.i.i, align 8
  %arrayidx36.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i, i32 13
  %204 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 7, ptr %arrayidx36.i.i, align 4
  %v40.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i, i32 14
  %205 = ptrtoint ptr %v40.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 6, ptr %v40.i.i, align 8
  %arrayidx42.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i, i32 15
  %206 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 8, ptr %arrayidx42.i.i, align 4
  %v46.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i, i32 16
  %207 = ptrtoint ptr %v46.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 7, ptr %v46.i.i, align 8
  %vddc_dep_on_dal_pwrl.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 4
  %208 = ptrtoint ptr %vddc_dep_on_dal_pwrl.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %call7.i.i.i.i, ptr %vddc_dep_on_dal_pwrl.i.i, align 4
  br label %if.end14

do.end11:                                         ; preds = %do.end46.i, %do.end7.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #13
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #17
  br label %cleanup

if.end14:                                         ; preds = %if.end.i.i, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #13
  %209 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %backend, align 4
  %bootup_engine_clock.i34 = getelementptr inbounds %struct.smu8_hwmgr, ptr %210, i32 0, i32 11, i32 1
  %211 = ptrtoint ptr %bootup_engine_clock.i34 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %bootup_engine_clock.i34, align 4
  %boot_power_level.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %210, i32 0, i32 12
  %213 = ptrtoint ptr %boot_power_level.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %212, ptr %boot_power_level.i, align 4
  %bootup_nb_voltage_index.i35 = getelementptr inbounds %struct.smu8_hwmgr, ptr %210, i32 0, i32 11, i32 8
  %214 = ptrtoint ptr %bootup_nb_voltage_index.i35 to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %bootup_nb_voltage_index.i35, align 4
  %conv.i36 = trunc i16 %215 to i8
  %vddcIndex.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %210, i32 0, i32 12, i32 1
  %216 = ptrtoint ptr %vddcIndex.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %conv.i36, ptr %vddcIndex.i, align 4
  %dsDividerIndex.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %210, i32 0, i32 12, i32 2
  %217 = ptrtoint ptr %dsDividerIndex.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 0, ptr %dsDividerIndex.i, align 1
  %ssDividerIndex.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %210, i32 0, i32 12, i32 3
  %218 = ptrtoint ptr %ssDividerIndex.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 0, ptr %ssDividerIndex.i, align 2
  %allowGnbSlow.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %210, i32 0, i32 12, i32 4
  %219 = ptrtoint ptr %allowGnbSlow.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 1, ptr %allowGnbSlow.i, align 1
  %forceNBPstate.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %210, i32 0, i32 12, i32 5
  %220 = call ptr @memset(ptr %forceNBPstate.i, i32 0, i32 5)
  %hardwareActivityPerformanceLevels = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 4
  %221 = ptrtoint ptr %hardwareActivityPerformanceLevels to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 8, ptr %hardwareActivityPerformanceLevels, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end11 ], [ 0, %if.end14 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_hwmgr_backend_fini(ptr noundef %hwmgr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %hwmgr, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %vddc_dep_on_dal_pwrl = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 4
  %0 = ptrtoint ptr %vddc_dep_on_dal_pwrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vddc_dep_on_dal_pwrl, align 4
  tail call void @kfree(ptr noundef %1) #13
  %2 = ptrtoint ptr %vddc_dep_on_dal_pwrl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %vddc_dep_on_dal_pwrl, align 4
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %3 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %backend, align 4
  tail call void @kfree(ptr noundef %4) #13
  %5 = ptrtoint ptr %backend to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %backend, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_setup_asic_task(ptr noundef %hwmgr) #1 align 64 {
entry:
  %level.i68 = alloca i32, align 4
  %level.i50 = alloca i32, align 4
  %level.i = alloca i32, align 4
  %table.i = alloca ptr, align 4
  %dividers.i = alloca %struct.pp_atomctrl_clock_dividers_kong, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %table.i) #13
  %0 = ptrtoint ptr %table.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %table.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dividers.i) #13
  %1 = ptrtoint ptr %dividers.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %dividers.i, align 4, !annotation !127
  %2 = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_kong, ptr %dividers.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !127
  %dyn_state.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29
  %4 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dyn_state.i, align 4
  %vdd_gfx_dependency_on_sclk.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 21
  %6 = ptrtoint ptr %vdd_gfx_dependency_on_sclk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdd_gfx_dependency_on_sclk.i, align 4
  %acp_clock_voltage_dependency_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 17
  %8 = ptrtoint ptr %acp_clock_voltage_dependency_table.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %acp_clock_voltage_dependency_table.i, align 4
  %uvd_clock_voltage_dependency_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 16
  %10 = ptrtoint ptr %uvd_clock_voltage_dependency_table.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %uvd_clock_voltage_dependency_table.i, align 4
  %vce_clock_voltage_dependency_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 15
  %12 = ptrtoint ptr %vce_clock_voltage_dependency_table.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vce_clock_voltage_dependency_table.i, align 4
  %need_pp_table_upload.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 15
  %14 = ptrtoint ptr %need_pp_table_upload.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %need_pp_table_upload.i, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %smu8_upload_pptable_to_smu.exit.thread88, label %if.end.i

smu8_upload_pptable_to_smu.exit.thread88:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dividers.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %table.i) #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call.i = call i32 @smum_download_powerplay_table(ptr noundef %hwmgr, ptr noundef nonnull %table.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.then6.i_crit_edge

if.end.i.if.then6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %16 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %table.i, align 4
  %cmp5.not.i = icmp eq ptr %17, null
  br i1 %cmp5.not.i, label %land.lhs.true.i.if.then6.i_crit_edge, label %do.end15.i

land.lhs.true.i.if.then6.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6.i

if.then6.i:                                       ; preds = %land.lhs.true.i.if.then6.i_crit_edge, %if.end.i.if.then6.i_crit_edge
  %call7.i = call i32 @___ratelimit(ptr noundef nonnull @smu8_upload_pptable_to_smu._rs, ptr noundef nonnull @__func__.smu8_upload_pptable_to_smu) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then6.i.smu8_upload_pptable_to_smu.exit.thread_crit_edge, label %if.then6.i.smu8_upload_pptable_to_smu.exit.thread.sink.split_crit_edge

if.then6.i.smu8_upload_pptable_to_smu.exit.thread.sink.split_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_upload_pptable_to_smu.exit.thread.sink.split

if.then6.i.smu8_upload_pptable_to_smu.exit.thread_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_upload_pptable_to_smu.exit.thread

do.end15.i:                                       ; preds = %land.lhs.true.i
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %19)
  %cmp17.i = icmp ult i32 %19, 9
  br i1 %cmp17.i, label %do.body31.i, label %if.then18.i

if.then18.i:                                      ; preds = %do.end15.i
  %call19.i = call i32 @___ratelimit(ptr noundef nonnull @smu8_upload_pptable_to_smu._rs.19, ptr noundef nonnull @__func__.smu8_upload_pptable_to_smu) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.then18.i.smu8_upload_pptable_to_smu.exit.thread_crit_edge, label %if.then18.i.smu8_upload_pptable_to_smu.exit.thread.sink.split_crit_edge

if.then18.i.smu8_upload_pptable_to_smu.exit.thread.sink.split_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_upload_pptable_to_smu.exit.thread.sink.split

if.then18.i.smu8_upload_pptable_to_smu.exit.thread_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_upload_pptable_to_smu.exit.thread

do.body31.i:                                      ; preds = %do.end15.i
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %21)
  %cmp33.i = icmp ult i32 %21, 9
  br i1 %cmp33.i, label %do.body47.i, label %if.then34.i

if.then34.i:                                      ; preds = %do.body31.i
  %call35.i = call i32 @___ratelimit(ptr noundef nonnull @smu8_upload_pptable_to_smu._rs.23, ptr noundef nonnull @__func__.smu8_upload_pptable_to_smu) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.then34.i.smu8_upload_pptable_to_smu.exit.thread_crit_edge, label %if.then34.i.smu8_upload_pptable_to_smu.exit.thread.sink.split_crit_edge

if.then34.i.smu8_upload_pptable_to_smu.exit.thread.sink.split_crit_edge: ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_upload_pptable_to_smu.exit.thread.sink.split

if.then34.i.smu8_upload_pptable_to_smu.exit.thread_crit_edge: ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_upload_pptable_to_smu.exit.thread

do.body47.i:                                      ; preds = %do.body31.i
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %23)
  %cmp49.i = icmp ult i32 %23, 9
  br i1 %cmp49.i, label %do.body63.i, label %if.then50.i

if.then50.i:                                      ; preds = %do.body47.i
  %call51.i = call i32 @___ratelimit(ptr noundef nonnull @smu8_upload_pptable_to_smu._rs.26, ptr noundef nonnull @__func__.smu8_upload_pptable_to_smu) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %if.then50.i.smu8_upload_pptable_to_smu.exit.thread_crit_edge, label %if.then50.i.smu8_upload_pptable_to_smu.exit.thread.sink.split_crit_edge

if.then50.i.smu8_upload_pptable_to_smu.exit.thread.sink.split_crit_edge: ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_upload_pptable_to_smu.exit.thread.sink.split

if.then50.i.smu8_upload_pptable_to_smu.exit.thread_crit_edge: ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_upload_pptable_to_smu.exit.thread

do.body63.i:                                      ; preds = %do.body47.i
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %25)
  %cmp65.i = icmp ult i8 %25, 9
  br i1 %cmp65.i, label %do.body80.i, label %if.then67.i

if.then67.i:                                      ; preds = %do.body63.i
  %call68.i = call i32 @___ratelimit(ptr noundef nonnull @smu8_upload_pptable_to_smu._rs.29, ptr noundef nonnull @__func__.smu8_upload_pptable_to_smu) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %tobool69.not.i = icmp eq i32 %call68.i, 0
  br i1 %tobool69.not.i, label %if.then67.i.smu8_upload_pptable_to_smu.exit.thread_crit_edge, label %if.then67.i.smu8_upload_pptable_to_smu.exit.thread.sink.split_crit_edge

if.then67.i.smu8_upload_pptable_to_smu.exit.thread.sink.split_crit_edge: ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_upload_pptable_to_smu.exit.thread.sink.split

if.then67.i.smu8_upload_pptable_to_smu.exit.thread_crit_edge: ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_upload_pptable_to_smu.exit.thread

do.body80.i:                                      ; preds = %do.body63.i
  %26 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %27)
  %cmp83.i = icmp ult i8 %27, 9
  br i1 %cmp83.i, label %for.cond.preheader.i, label %if.then85.i

for.cond.preheader.i:                             ; preds = %do.body80.i
  %AclkBreakdownTable.i = getelementptr inbounds %struct.SMU8_Fusion_ClkTable, ptr %17, i32 0, i32 5
  %VclkBreakdownTable.i = getelementptr inbounds %struct.SMU8_Fusion_ClkTable, ptr %17, i32 0, i32 3
  %DclkBreakdownTable.i = getelementptr inbounds %struct.SMU8_Fusion_ClkTable, ptr %17, i32 0, i32 4
  %EclkBreakdownTable.i = getelementptr inbounds %struct.SMU8_Fusion_ClkTable, ptr %17, i32 0, i32 2
  br label %for.body.i

if.then85.i:                                      ; preds = %do.body80.i
  %call86.i = call i32 @___ratelimit(ptr noundef nonnull @smu8_upload_pptable_to_smu._rs.32, ptr noundef nonnull @__func__.smu8_upload_pptable_to_smu) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i)
  %tobool87.not.i = icmp eq i32 %call86.i, 0
  br i1 %tobool87.not.i, label %if.then85.i.smu8_upload_pptable_to_smu.exit.thread_crit_edge, label %if.then85.i.smu8_upload_pptable_to_smu.exit.thread.sink.split_crit_edge

if.then85.i.smu8_upload_pptable_to_smu.exit.thread.sink.split_crit_edge: ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_upload_pptable_to_smu.exit.thread.sink.split

if.then85.i.smu8_upload_pptable_to_smu.exit.thread_crit_edge: ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_upload_pptable_to_smu.exit.thread

for.body.i:                                       ; preds = %cond.end293.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.0419.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %cond.end293.i.for.body.i_crit_edge ]
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0419.i, i32 %29)
  %cmp101.i = icmp ult i32 %i.0419.i, %29
  br i1 %cmp101.i, label %cond.true.i, label %for.body.i.cond.end.i_crit_edge

for.body.i.cond.end.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.true.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %v.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %5, i32 0, i32 1, i32 %i.0419.i, i32 1
  %30 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %v.i, align 4
  %conv103.i = trunc i32 %31 to i8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %for.body.i.cond.end.i_crit_edge
  %cond.i = phi i8 [ %conv103.i, %cond.true.i ], [ 0, %for.body.i.cond.end.i_crit_edge ]
  %arrayidx106.i = getelementptr [8 x %struct.SMU8_Fusion_ClkLevel], ptr %17, i32 0, i32 %i.0419.i
  %32 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %cond.i, ptr %arrayidx106.i, align 1
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0419.i, i32 %34)
  %cmp108.i = icmp ult i32 %i.0419.i, %34
  br i1 %cmp108.i, label %cond.true110.i, label %cond.end.i.cond.end114.i_crit_edge

cond.end.i.cond.end114.i_crit_edge:               ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end114.i

cond.true110.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx112.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %5, i32 0, i32 1, i32 %i.0419.i
  %35 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx112.i, align 4
  br label %cond.end114.i

cond.end114.i:                                    ; preds = %cond.true110.i, %cond.end.i.cond.end114.i_crit_edge
  %cond115.i = phi i32 [ %36, %cond.true110.i ], [ 0, %cond.end.i.cond.end114.i_crit_edge ]
  %Frequency.i = getelementptr [8 x %struct.SMU8_Fusion_ClkLevel], ptr %17, i32 0, i32 %i.0419.i, i32 5
  %37 = ptrtoint ptr %Frequency.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %cond115.i, ptr %Frequency.i, align 1
  %call123.i = call i32 @atomctrl_get_engine_pll_dividers_kong(ptr noundef %hwmgr, i32 noundef %cond115.i, ptr noundef nonnull %dividers.i) #13
  %38 = ptrtoint ptr %dividers.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dividers.i, align 4
  %conv124.i = trunc i32 %39 to i8
  %DfsDid.i = getelementptr [8 x %struct.SMU8_Fusion_ClkLevel], ptr %17, i32 0, i32 %i.0419.i, i32 2
  %40 = ptrtoint ptr %DfsDid.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv124.i, ptr %DfsDid.i, align 1
  %41 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0419.i, i32 %42)
  %cmp129.i = icmp ult i32 %i.0419.i, %42
  br i1 %cmp129.i, label %cond.true131.i, label %cond.end114.i.cond.end138.i_crit_edge

cond.end114.i.cond.end138.i_crit_edge:            ; preds = %cond.end114.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end138.i

cond.true131.i:                                   ; preds = %cond.end114.i
  call void @__sanitizer_cov_trace_pc() #15
  %v134.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %7, i32 0, i32 1, i32 %i.0419.i, i32 1
  %43 = ptrtoint ptr %v134.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %v134.i, align 4
  %conv135.i = trunc i32 %44 to i8
  br label %cond.end138.i

cond.end138.i:                                    ; preds = %cond.true131.i, %cond.end114.i.cond.end138.i_crit_edge
  %cond139.i = phi i8 [ %conv135.i, %cond.true131.i ], [ 0, %cond.end114.i.cond.end138.i_crit_edge ]
  %GfxVid.i = getelementptr [8 x %struct.SMU8_Fusion_ClkLevel], ptr %17, i32 0, i32 %i.0419.i, i32 1
  %45 = ptrtoint ptr %GfxVid.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %cond139.i, ptr %GfxVid.i, align 1
  %46 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0419.i, i32 %47)
  %cmp145.i = icmp ult i32 %i.0419.i, %47
  br i1 %cmp145.i, label %cond.true147.i, label %cond.end138.i.cond.end154.i_crit_edge

cond.end138.i.cond.end154.i_crit_edge:            ; preds = %cond.end138.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end154.i

cond.true147.i:                                   ; preds = %cond.end138.i
  call void @__sanitizer_cov_trace_pc() #15
  %v150.i = getelementptr %struct.phm_acp_clock_voltage_dependency_table, ptr %9, i32 0, i32 1, i32 %i.0419.i, i32 1
  %48 = ptrtoint ptr %v150.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %v150.i, align 4
  %conv151.i = trunc i32 %49 to i8
  br label %cond.end154.i

cond.end154.i:                                    ; preds = %cond.true147.i, %cond.end138.i.cond.end154.i_crit_edge
  %cond155.i = phi i8 [ %conv151.i, %cond.true147.i ], [ 0, %cond.end138.i.cond.end154.i_crit_edge ]
  %GfxVid159.i = getelementptr [8 x %struct.SMU8_Fusion_ClkLevel], ptr %AclkBreakdownTable.i, i32 0, i32 %i.0419.i, i32 1
  %50 = ptrtoint ptr %GfxVid159.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %cond155.i, ptr %GfxVid159.i, align 1
  %51 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0419.i, i32 %52)
  %cmp161.i = icmp ult i32 %i.0419.i, %52
  br i1 %cmp161.i, label %cond.true163.i, label %cond.end154.i.cond.end167.i_crit_edge

cond.end154.i.cond.end167.i_crit_edge:            ; preds = %cond.end154.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end167.i

cond.true163.i:                                   ; preds = %cond.end154.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx165.i = getelementptr %struct.phm_acp_clock_voltage_dependency_table, ptr %9, i32 0, i32 1, i32 %i.0419.i
  %53 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx165.i, align 4
  br label %cond.end167.i

cond.end167.i:                                    ; preds = %cond.true163.i, %cond.end154.i.cond.end167.i_crit_edge
  %cond168.i = phi i32 [ %54, %cond.true163.i ], [ 0, %cond.end154.i.cond.end167.i_crit_edge ]
  %Frequency172.i = getelementptr [8 x %struct.SMU8_Fusion_ClkLevel], ptr %AclkBreakdownTable.i, i32 0, i32 %i.0419.i, i32 5
  %55 = ptrtoint ptr %Frequency172.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %cond168.i, ptr %Frequency172.i, align 1
  %call177.i = call i32 @atomctrl_get_engine_pll_dividers_kong(ptr noundef %hwmgr, i32 noundef %cond168.i, ptr noundef nonnull %dividers.i) #13
  %56 = ptrtoint ptr %dividers.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dividers.i, align 4
  %conv179.i = trunc i32 %57 to i8
  %DfsDid183.i = getelementptr [8 x %struct.SMU8_Fusion_ClkLevel], ptr %AclkBreakdownTable.i, i32 0, i32 %i.0419.i, i32 2
  %58 = ptrtoint ptr %DfsDid183.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv179.i, ptr %DfsDid183.i, align 1
  %59 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %11, align 4
  %conv185.i = zext i8 %60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0419.i, i32 %conv185.i)
  %cmp186.i = icmp ult i32 %i.0419.i, %conv185.i
  br i1 %cmp186.i, label %cond.true188.i, label %cond.end167.i.cond.end195.i_crit_edge

cond.end167.i.cond.end195.i_crit_edge:            ; preds = %cond.end167.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end195.i

cond.true188.i:                                   ; preds = %cond.end167.i
  call void @__sanitizer_cov_trace_pc() #15
  %v191.i = getelementptr %struct.phm_uvd_clock_voltage_dependency_table, ptr %11, i32 0, i32 1, i32 %i.0419.i, i32 2
  %61 = ptrtoint ptr %v191.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %v191.i, align 4
  %conv192.i = trunc i32 %62 to i8
  br label %cond.end195.i

cond.end195.i:                                    ; preds = %cond.true188.i, %cond.end167.i.cond.end195.i_crit_edge
  %cond196.i = phi i8 [ %conv192.i, %cond.true188.i ], [ 0, %cond.end167.i.cond.end195.i_crit_edge ]
  %GfxVid200.i = getelementptr [8 x %struct.SMU8_Fusion_ClkLevel], ptr %VclkBreakdownTable.i, i32 0, i32 %i.0419.i, i32 1
  %63 = ptrtoint ptr %GfxVid200.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %cond196.i, ptr %GfxVid200.i, align 1
  %64 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %11, align 4
  %conv202.i = zext i8 %65 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0419.i, i32 %conv202.i)
  %cmp203.i = icmp ult i32 %i.0419.i, %conv202.i
  br i1 %cmp203.i, label %cond.true205.i, label %cond.end195.i.cond.end209.i_crit_edge

cond.end195.i.cond.end209.i_crit_edge:            ; preds = %cond.end195.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end209.i

cond.true205.i:                                   ; preds = %cond.end195.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx207.i = getelementptr %struct.phm_uvd_clock_voltage_dependency_table, ptr %11, i32 0, i32 1, i32 %i.0419.i
  %66 = ptrtoint ptr %arrayidx207.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx207.i, align 4
  br label %cond.end209.i

cond.end209.i:                                    ; preds = %cond.true205.i, %cond.end195.i.cond.end209.i_crit_edge
  %cond210.i = phi i32 [ %67, %cond.true205.i ], [ 0, %cond.end195.i.cond.end209.i_crit_edge ]
  %Frequency214.i = getelementptr [8 x %struct.SMU8_Fusion_ClkLevel], ptr %VclkBreakdownTable.i, i32 0, i32 %i.0419.i, i32 5
  %68 = ptrtoint ptr %Frequency214.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %cond210.i, ptr %Frequency214.i, align 1
  %call219.i = call i32 @atomctrl_get_engine_pll_dividers_kong(ptr noundef %hwmgr, i32 noundef %cond210.i, ptr noundef nonnull %dividers.i) #13
  %69 = ptrtoint ptr %dividers.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dividers.i, align 4
  %conv221.i = trunc i32 %70 to i8
  %DfsDid225.i = getelementptr [8 x %struct.SMU8_Fusion_ClkLevel], ptr %VclkBreakdownTable.i, i32 0, i32 %i.0419.i, i32 2
  %71 = ptrtoint ptr %DfsDid225.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv221.i, ptr %DfsDid225.i, align 1
  %72 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %11, align 4
  %conv227.i = zext i8 %73 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0419.i, i32 %conv227.i)
  %cmp228.i = icmp ult i32 %i.0419.i, %conv227.i
  br i1 %cmp228.i, label %cond.true230.i, label %cond.end209.i.cond.end237.i_crit_edge

cond.end209.i.cond.end237.i_crit_edge:            ; preds = %cond.end209.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end237.i

cond.true230.i:                                   ; preds = %cond.end209.i
  call void @__sanitizer_cov_trace_pc() #15
  %v233.i = getelementptr %struct.phm_uvd_clock_voltage_dependency_table, ptr %11, i32 0, i32 1, i32 %i.0419.i, i32 2
  %74 = ptrtoint ptr %v233.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %v233.i, align 4
  %conv234.i = trunc i32 %75 to i8
  br label %cond.end237.i

cond.end237.i:                                    ; preds = %cond.true230.i, %cond.end209.i.cond.end237.i_crit_edge
  %cond238.i = phi i8 [ %conv234.i, %cond.true230.i ], [ 0, %cond.end209.i.cond.end237.i_crit_edge ]
  %GfxVid242.i = getelementptr [8 x %struct.SMU8_Fusion_ClkLevel], ptr %DclkBreakdownTable.i, i32 0, i32 %i.0419.i, i32 1
  %76 = ptrtoint ptr %GfxVid242.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %cond238.i, ptr %GfxVid242.i, align 1
  %77 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %11, align 4
  %conv244.i = zext i8 %78 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0419.i, i32 %conv244.i)
  %cmp245.i = icmp ult i32 %i.0419.i, %conv244.i
  br i1 %cmp245.i, label %cond.true247.i, label %cond.end237.i.cond.end251.i_crit_edge

cond.end237.i.cond.end251.i_crit_edge:            ; preds = %cond.end237.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end251.i

cond.true247.i:                                   ; preds = %cond.end237.i
  call void @__sanitizer_cov_trace_pc() #15
  %dclk.i = getelementptr %struct.phm_uvd_clock_voltage_dependency_table, ptr %11, i32 0, i32 1, i32 %i.0419.i, i32 1
  %79 = ptrtoint ptr %dclk.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dclk.i, align 4
  br label %cond.end251.i

cond.end251.i:                                    ; preds = %cond.true247.i, %cond.end237.i.cond.end251.i_crit_edge
  %cond252.i = phi i32 [ %80, %cond.true247.i ], [ 0, %cond.end237.i.cond.end251.i_crit_edge ]
  %Frequency256.i = getelementptr [8 x %struct.SMU8_Fusion_ClkLevel], ptr %DclkBreakdownTable.i, i32 0, i32 %i.0419.i, i32 5
  %81 = ptrtoint ptr %Frequency256.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %cond252.i, ptr %Frequency256.i, align 1
  %call261.i = call i32 @atomctrl_get_engine_pll_dividers_kong(ptr noundef %hwmgr, i32 noundef %cond252.i, ptr noundef nonnull %dividers.i) #13
  %82 = ptrtoint ptr %dividers.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dividers.i, align 4
  %conv263.i = trunc i32 %83 to i8
  %DfsDid267.i = getelementptr [8 x %struct.SMU8_Fusion_ClkLevel], ptr %DclkBreakdownTable.i, i32 0, i32 %i.0419.i, i32 2
  %84 = ptrtoint ptr %DfsDid267.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv263.i, ptr %DfsDid267.i, align 1
  %85 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %13, align 4
  %conv269.i = zext i8 %86 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0419.i, i32 %conv269.i)
  %cmp270.i = icmp ult i32 %i.0419.i, %conv269.i
  br i1 %cmp270.i, label %cond.true272.i, label %cond.end251.i.cond.end279.i_crit_edge

cond.end251.i.cond.end279.i_crit_edge:            ; preds = %cond.end251.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end279.i

cond.true272.i:                                   ; preds = %cond.end251.i
  call void @__sanitizer_cov_trace_pc() #15
  %v275.i = getelementptr %struct.phm_vce_clock_voltage_dependency_table, ptr %13, i32 0, i32 1, i32 %i.0419.i, i32 2
  %87 = ptrtoint ptr %v275.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %v275.i, align 4
  %conv276.i = trunc i32 %88 to i8
  br label %cond.end279.i

cond.end279.i:                                    ; preds = %cond.true272.i, %cond.end251.i.cond.end279.i_crit_edge
  %cond280.i = phi i8 [ %conv276.i, %cond.true272.i ], [ 0, %cond.end251.i.cond.end279.i_crit_edge ]
  %GfxVid284.i = getelementptr [8 x %struct.SMU8_Fusion_ClkLevel], ptr %EclkBreakdownTable.i, i32 0, i32 %i.0419.i, i32 1
  %89 = ptrtoint ptr %GfxVid284.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %cond280.i, ptr %GfxVid284.i, align 1
  %90 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %13, align 4
  %conv286.i = zext i8 %91 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0419.i, i32 %conv286.i)
  %cmp287.i = icmp ult i32 %i.0419.i, %conv286.i
  br i1 %cmp287.i, label %cond.true289.i, label %cond.end279.i.cond.end293.i_crit_edge

cond.end279.i.cond.end293.i_crit_edge:            ; preds = %cond.end279.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end293.i

cond.true289.i:                                   ; preds = %cond.end279.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx291.i = getelementptr %struct.phm_vce_clock_voltage_dependency_table, ptr %13, i32 0, i32 1, i32 %i.0419.i
  %92 = ptrtoint ptr %arrayidx291.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx291.i, align 4
  br label %cond.end293.i

cond.end293.i:                                    ; preds = %cond.true289.i, %cond.end279.i.cond.end293.i_crit_edge
  %cond294.i = phi i32 [ %93, %cond.true289.i ], [ 0, %cond.end279.i.cond.end293.i_crit_edge ]
  %Frequency298.i = getelementptr [8 x %struct.SMU8_Fusion_ClkLevel], ptr %EclkBreakdownTable.i, i32 0, i32 %i.0419.i, i32 5
  %94 = ptrtoint ptr %Frequency298.i to i32
  call void @__asan_storeN_noabort(i32 %94, i32 4)
  store i32 %cond294.i, ptr %Frequency298.i, align 1
  %call303.i = call i32 @atomctrl_get_engine_pll_dividers_kong(ptr noundef %hwmgr, i32 noundef %cond294.i, ptr noundef nonnull %dividers.i) #13
  %95 = ptrtoint ptr %dividers.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dividers.i, align 4
  %conv305.i = trunc i32 %96 to i8
  %DfsDid309.i = getelementptr [8 x %struct.SMU8_Fusion_ClkLevel], ptr %EclkBreakdownTable.i, i32 0, i32 %i.0419.i, i32 2
  %97 = ptrtoint ptr %DfsDid309.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv305.i, ptr %DfsDid309.i, align 1
  %inc.i = add nuw nsw i32 %i.0419.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %smu8_upload_pptable_to_smu.exit, label %cond.end293.i.for.body.i_crit_edge

cond.end293.i.for.body.i_crit_edge:               ; preds = %cond.end293.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

smu8_upload_pptable_to_smu.exit.thread.sink.split: ; preds = %if.then85.i.smu8_upload_pptable_to_smu.exit.thread.sink.split_crit_edge, %if.then67.i.smu8_upload_pptable_to_smu.exit.thread.sink.split_crit_edge, %if.then50.i.smu8_upload_pptable_to_smu.exit.thread.sink.split_crit_edge, %if.then34.i.smu8_upload_pptable_to_smu.exit.thread.sink.split_crit_edge, %if.then18.i.smu8_upload_pptable_to_smu.exit.thread.sink.split_crit_edge, %if.then6.i.smu8_upload_pptable_to_smu.exit.thread.sink.split_crit_edge
  %.str.18.sink = phi ptr [ @.str.18, %if.then6.i.smu8_upload_pptable_to_smu.exit.thread.sink.split_crit_edge ], [ @.str.22, %if.then18.i.smu8_upload_pptable_to_smu.exit.thread.sink.split_crit_edge ], [ @.str.22, %if.then34.i.smu8_upload_pptable_to_smu.exit.thread.sink.split_crit_edge ], [ @.str.22, %if.then50.i.smu8_upload_pptable_to_smu.exit.thread.sink.split_crit_edge ], [ @.str.22, %if.then67.i.smu8_upload_pptable_to_smu.exit.thread.sink.split_crit_edge ], [ @.str.22, %if.then85.i.smu8_upload_pptable_to_smu.exit.thread.sink.split_crit_edge ]
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull %.str.18.sink) #17
  br label %smu8_upload_pptable_to_smu.exit.thread

smu8_upload_pptable_to_smu.exit.thread:           ; preds = %smu8_upload_pptable_to_smu.exit.thread.sink.split, %if.then85.i.smu8_upload_pptable_to_smu.exit.thread_crit_edge, %if.then67.i.smu8_upload_pptable_to_smu.exit.thread_crit_edge, %if.then50.i.smu8_upload_pptable_to_smu.exit.thread_crit_edge, %if.then34.i.smu8_upload_pptable_to_smu.exit.thread_crit_edge, %if.then18.i.smu8_upload_pptable_to_smu.exit.thread_crit_edge, %if.then6.i.smu8_upload_pptable_to_smu.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dividers.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %table.i) #13
  br label %cleanup

smu8_upload_pptable_to_smu.exit:                  ; preds = %cond.end293.i
  %call310.i = call i32 @smum_upload_powerplay_table(ptr noundef %hwmgr) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dividers.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %table.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call310.i)
  %tobool.not = icmp eq i32 %call310.i, 0
  br i1 %tobool.not, label %smu8_upload_pptable_to_smu.exit.if.end_crit_edge, label %smu8_upload_pptable_to_smu.exit.cleanup_crit_edge

smu8_upload_pptable_to_smu.exit.cleanup_crit_edge: ; preds = %smu8_upload_pptable_to_smu.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

smu8_upload_pptable_to_smu.exit.if.end_crit_edge: ; preds = %smu8_upload_pptable_to_smu.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %smu8_upload_pptable_to_smu.exit.if.end_crit_edge, %smu8_upload_pptable_to_smu.exit.thread88
  %backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %98 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %backend.i, align 4
  %100 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dyn_state.i, align 4
  %cmp.i33 = icmp eq ptr %101, null
  br i1 %cmp.i33, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp1.i = icmp eq i32 %103, 0
  br i1 %cmp1.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i34

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i34:                                       ; preds = %lor.lhs.false.i
  %entries.i = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, ptr %101, i32 0, i32 1
  %104 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %entries.i, align 4
  %sclk_dpm.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %99, i32 0, i32 62
  %106 = ptrtoint ptr %sclk_dpm.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %sclk_dpm.i, align 4
  %107 = load i32, ptr %entries.i, align 4
  %hard_min_clk.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %99, i32 0, i32 62, i32 1
  %108 = ptrtoint ptr %hard_min_clk.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %hard_min_clk.i, align 4
  %109 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %backend.i, align 4
  %max_sclk_level.i.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %110, i32 0, i32 92
  %111 = ptrtoint ptr %max_sclk_level.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %max_sclk_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp.i.i = icmp eq i32 %112, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i34.if.end4_crit_edge

if.end.i34.if.end4_crit_edge:                     ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then.i.i:                                      ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 59, ptr noundef %max_sclk_level.i.i) #13
  %113 = ptrtoint ptr %max_sclk_level.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %max_sclk_level.i.i, align 4
  %add.i.i = add i32 %114, 1
  store i32 %add.i.i, ptr %max_sclk_level.i.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then.i.i, %if.end.i34.if.end4_crit_edge
  %115 = ptrtoint ptr %max_sclk_level.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %max_sclk_level.i.i, align 4
  %sub.i = add i32 %116, -1
  %117 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %101, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %118)
  %cmp7.i = icmp ult i32 %sub.i, %118
  %sub14.i = add i32 %118, -1
  %sub.pn.i = select i1 %cmp7.i, i32 %sub.i, i32 %sub14.i
  %clock.0.in.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %101, i32 0, i32 1, i32 %sub.pn.i
  %119 = ptrtoint ptr %clock.0.in.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %clock.0.i = load i32, ptr %clock.0.in.i, align 4
  %soft_max_clk.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %99, i32 0, i32 62, i32 2
  %120 = ptrtoint ptr %soft_max_clk.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %clock.0.i, ptr %soft_max_clk.i, align 4
  %hard_max_clk.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %99, i32 0, i32 62, i32 3
  %121 = ptrtoint ptr %hard_max_clk.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %clock.0.i, ptr %hard_max_clk.i, align 4
  %122 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %backend.i, align 4
  %124 = ptrtoint ptr %uvd_clock_voltage_dependency_table.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %uvd_clock_voltage_dependency_table.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %level.i) #13
  %126 = ptrtoint ptr %level.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 -1, ptr %level.i, align 4, !annotation !127
  %cmp.i38 = icmp eq ptr %125, null
  br i1 %cmp.i38, label %if.end4.smu8_init_uvd_limit.exit.thread_crit_edge, label %lor.lhs.false.i40

if.end4.smu8_init_uvd_limit.exit.thread_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_init_uvd_limit.exit.thread

lor.lhs.false.i40:                                ; preds = %if.end4
  %127 = ptrtoint ptr %125 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %125, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %cmp1.i39 = icmp eq i8 %128, 0
  br i1 %cmp1.i39, label %lor.lhs.false.i40.smu8_init_uvd_limit.exit.thread_crit_edge, label %if.end8

lor.lhs.false.i40.smu8_init_uvd_limit.exit.thread_crit_edge: ; preds = %lor.lhs.false.i40
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_init_uvd_limit.exit.thread

smu8_init_uvd_limit.exit.thread:                  ; preds = %lor.lhs.false.i40.smu8_init_uvd_limit.exit.thread_crit_edge, %if.end4.smu8_init_uvd_limit.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level.i) #13
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false.i40
  %uvd_dpm.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %123, i32 0, i32 63
  %129 = ptrtoint ptr %uvd_dpm.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %uvd_dpm.i, align 4
  %hard_min_clk.i41 = getelementptr inbounds %struct.smu8_hwmgr, ptr %123, i32 0, i32 63, i32 1
  %130 = ptrtoint ptr %hard_min_clk.i41 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %hard_min_clk.i41, align 4
  %call.i42 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 61, ptr noundef nonnull %level.i) #13
  %131 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %level.i, align 4
  %133 = ptrtoint ptr %125 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %125, align 4
  %conv5.i = zext i8 %134 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %conv5.i)
  %cmp6.i = icmp ult i32 %132, %conv5.i
  %sub.i43 = add nsw i32 %conv5.i, -1
  %.pn.i = select i1 %cmp6.i, i32 %132, i32 %sub.i43
  %clock.0.in.i44 = getelementptr %struct.phm_uvd_clock_voltage_dependency_table, ptr %125, i32 0, i32 1, i32 %.pn.i
  %135 = ptrtoint ptr %clock.0.in.i44 to i32
  call void @__asan_load4_noabort(i32 %135)
  %clock.0.i45 = load i32, ptr %clock.0.in.i44, align 4
  %soft_max_clk.i46 = getelementptr inbounds %struct.smu8_hwmgr, ptr %123, i32 0, i32 63, i32 2
  %136 = ptrtoint ptr %soft_max_clk.i46 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %clock.0.i45, ptr %soft_max_clk.i46, align 4
  %hard_max_clk.i47 = getelementptr inbounds %struct.smu8_hwmgr, ptr %123, i32 0, i32 63, i32 3
  %137 = ptrtoint ptr %hard_max_clk.i47 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %clock.0.i45, ptr %hard_max_clk.i47, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level.i) #13
  %138 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %backend.i, align 4
  %140 = ptrtoint ptr %vce_clock_voltage_dependency_table.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %vce_clock_voltage_dependency_table.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %level.i50) #13
  %142 = ptrtoint ptr %level.i50 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 -1, ptr %level.i50, align 4, !annotation !127
  %cmp.i53 = icmp eq ptr %141, null
  br i1 %cmp.i53, label %if.end8.smu8_init_vce_limit.exit.thread_crit_edge, label %lor.lhs.false.i55

if.end8.smu8_init_vce_limit.exit.thread_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_init_vce_limit.exit.thread

lor.lhs.false.i55:                                ; preds = %if.end8
  %143 = ptrtoint ptr %141 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %141, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %cmp1.i54 = icmp eq i8 %144, 0
  br i1 %cmp1.i54, label %lor.lhs.false.i55.smu8_init_vce_limit.exit.thread_crit_edge, label %if.end12

lor.lhs.false.i55.smu8_init_vce_limit.exit.thread_crit_edge: ; preds = %lor.lhs.false.i55
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_init_vce_limit.exit.thread

smu8_init_vce_limit.exit.thread:                  ; preds = %lor.lhs.false.i55.smu8_init_vce_limit.exit.thread_crit_edge, %if.end8.smu8_init_vce_limit.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level.i50) #13
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false.i55
  %vce_dpm.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %139, i32 0, i32 64
  %145 = ptrtoint ptr %vce_dpm.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %vce_dpm.i, align 4
  %hard_min_clk.i56 = getelementptr inbounds %struct.smu8_hwmgr, ptr %139, i32 0, i32 64, i32 1
  %146 = ptrtoint ptr %hard_min_clk.i56 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %hard_min_clk.i56, align 4
  %call.i57 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 62, ptr noundef nonnull %level.i50) #13
  %147 = ptrtoint ptr %level.i50 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %level.i50, align 4
  %149 = ptrtoint ptr %141 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %141, align 4
  %conv5.i58 = zext i8 %150 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %148, i32 %conv5.i58)
  %cmp6.i59 = icmp ult i32 %148, %conv5.i58
  %sub.i60 = add nsw i32 %conv5.i58, -1
  %.pn.i61 = select i1 %cmp6.i59, i32 %148, i32 %sub.i60
  %clock.0.in.i62 = getelementptr %struct.phm_vce_clock_voltage_dependency_table, ptr %141, i32 0, i32 1, i32 %.pn.i61
  %151 = ptrtoint ptr %clock.0.in.i62 to i32
  call void @__asan_load4_noabort(i32 %151)
  %clock.0.i63 = load i32, ptr %clock.0.in.i62, align 4
  %soft_max_clk.i64 = getelementptr inbounds %struct.smu8_hwmgr, ptr %139, i32 0, i32 64, i32 2
  %152 = ptrtoint ptr %soft_max_clk.i64 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %clock.0.i63, ptr %soft_max_clk.i64, align 4
  %hard_max_clk.i65 = getelementptr inbounds %struct.smu8_hwmgr, ptr %139, i32 0, i32 64, i32 3
  %153 = ptrtoint ptr %hard_max_clk.i65 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %clock.0.i63, ptr %hard_max_clk.i65, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level.i50) #13
  %154 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %backend.i, align 4
  %156 = ptrtoint ptr %acp_clock_voltage_dependency_table.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %acp_clock_voltage_dependency_table.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %level.i68) #13
  %158 = ptrtoint ptr %level.i68 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 -1, ptr %level.i68, align 4, !annotation !127
  %cmp.i71 = icmp eq ptr %157, null
  br i1 %cmp.i71, label %if.end12.smu8_init_acp_limit.exit.thread_crit_edge, label %lor.lhs.false.i73

if.end12.smu8_init_acp_limit.exit.thread_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_init_acp_limit.exit.thread

lor.lhs.false.i73:                                ; preds = %if.end12
  %159 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp1.i72 = icmp eq i32 %160, 0
  br i1 %cmp1.i72, label %lor.lhs.false.i73.smu8_init_acp_limit.exit.thread_crit_edge, label %if.end16

lor.lhs.false.i73.smu8_init_acp_limit.exit.thread_crit_edge: ; preds = %lor.lhs.false.i73
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_init_acp_limit.exit.thread

smu8_init_acp_limit.exit.thread:                  ; preds = %lor.lhs.false.i73.smu8_init_acp_limit.exit.thread_crit_edge, %if.end12.smu8_init_acp_limit.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level.i68) #13
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false.i73
  call void @__sanitizer_cov_trace_pc() #15
  %acp_dpm.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %155, i32 0, i32 65
  %161 = ptrtoint ptr %acp_dpm.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %acp_dpm.i, align 4
  %hard_min_clk.i74 = getelementptr inbounds %struct.smu8_hwmgr, ptr %155, i32 0, i32 65, i32 1
  %162 = ptrtoint ptr %hard_min_clk.i74 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 0, ptr %hard_min_clk.i74, align 4
  %call.i75 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 63, ptr noundef nonnull %level.i68) #13
  %163 = ptrtoint ptr %level.i68 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %level.i68, align 4
  %165 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %157, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %164, i32 %166)
  %cmp4.i = icmp ult i32 %164, %166
  %sub.i76 = add i32 %166, -1
  %.pn.i77 = select i1 %cmp4.i, i32 %164, i32 %sub.i76
  %clock.0.in.i78 = getelementptr %struct.phm_acp_clock_voltage_dependency_table, ptr %157, i32 0, i32 1, i32 %.pn.i77
  %167 = ptrtoint ptr %clock.0.in.i78 to i32
  call void @__asan_load4_noabort(i32 %167)
  %clock.0.i79 = load i32, ptr %clock.0.in.i78, align 4
  %soft_max_clk.i80 = getelementptr inbounds %struct.smu8_hwmgr, ptr %155, i32 0, i32 65, i32 2
  %168 = ptrtoint ptr %soft_max_clk.i80 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %clock.0.i79, ptr %soft_max_clk.i80, align 4
  %hard_max_clk.i81 = getelementptr inbounds %struct.smu8_hwmgr, ptr %155, i32 0, i32 65, i32 3
  %169 = ptrtoint ptr %hard_max_clk.i81 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %clock.0.i79, ptr %hard_max_clk.i81, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level.i68) #13
  %170 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %backend.i, align 4
  %uvd_power_gated.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %171, i32 0, i32 86
  %172 = ptrtoint ptr %uvd_power_gated.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 0, ptr %uvd_power_gated.i, align 4
  %173 = load ptr, ptr %backend.i, align 4
  %low_sclk_interrupt_threshold.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %173, i32 0, i32 80
  %174 = ptrtoint ptr %low_sclk_interrupt_threshold.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 0, ptr %low_sclk_interrupt_threshold.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %smu8_init_acp_limit.exit.thread, %smu8_init_vce_limit.exit.thread, %smu8_init_uvd_limit.exit.thread, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %smu8_upload_pptable_to_smu.exit.cleanup_crit_edge, %smu8_upload_pptable_to_smu.exit.thread
  %retval.0 = phi i32 [ 0, %if.end16 ], [ %call310.i, %smu8_upload_pptable_to_smu.exit.cleanup_crit_edge ], [ -22, %smu8_upload_pptable_to_smu.exit.thread ], [ -22, %smu8_init_uvd_limit.exit.thread ], [ -22, %smu8_init_vce_limit.exit.thread ], [ -22, %smu8_init_acp_limit.exit.thread ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smu8_get_power_state_size(ptr nocapture noundef readnone %hwmgr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 200
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_apply_state_adjust_rules(ptr noundef %hwmgr, ptr nocapture noundef %prequest_ps, ptr nocapture noundef readonly %pcurrent_ps) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hardware = getelementptr inbounds %struct.pp_power_state, ptr %prequest_ps, i32 0, i32 11
  %0 = ptrtoint ptr %hardware to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hardware, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1742518821, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 1742518821
  %hw_ps..i = select i1 %cmp.not.i, ptr %hardware, ptr null
  %hardware1 = getelementptr inbounds %struct.pp_power_state, ptr %pcurrent_ps, i32 0, i32 11
  %2 = ptrtoint ptr %hardware1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hardware1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1742518821, i32 %3)
  %cmp.not.i62 = icmp eq i32 %3, 1742518821
  %hw_ps..i63 = select i1 %cmp.not.i62, ptr %hardware1, ptr null
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %4 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %backend, align 4
  %need_dfs_bypass = getelementptr inbounds %struct.smu8_power_state, ptr %hw_ps..i, i32 0, i32 7
  %6 = ptrtoint ptr %need_dfs_bypass to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %need_dfs_bypass, align 4
  %classification = getelementptr inbounds %struct.pp_power_state, ptr %prequest_ps, i32 0, i32 3
  %7 = ptrtoint ptr %classification to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %classification, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  %battery_state = getelementptr inbounds %struct.smu8_hwmgr, ptr %5, i32 0, i32 38
  %frombool = zext i1 %cmp to i8
  %9 = ptrtoint ptr %battery_state to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %battery_state, align 1
  %display_config = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 45
  %10 = ptrtoint ptr %display_config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %display_config, align 4
  %min_mem_set_clock = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %min_mem_set_clock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %min_mem_set_clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp3.not = icmp eq i32 %13, 0
  br i1 %cmp3.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.smu8_hwmgr, ptr %5, i32 0, i32 11, i32 4, i32 1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %15, %cond.false ], [ %13, %entry.cond.end_crit_edge ]
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 4
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %17, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %mclk = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 8, i32 1
  %18 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mclk, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %clocks.sroa.3.0 = phi i32 [ %19, %if.then ], [ %cond, %cond.end.if.end_crit_edge ]
  %arrayidx11 = getelementptr %struct.smu8_hwmgr, ptr %5, i32 0, i32 11, i32 4, i32 1
  %20 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %clocks.sroa.3.0, i32 %21)
  %cmp12 = icmp ugt i32 %clocks.sroa.3.0, %21
  br i1 %cmp12, label %if.end.lor.end_crit_edge, label %lor.rhs

if.end.lor.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

lor.rhs:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %num_display = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %11, i32 0, i32 4
  %22 = ptrtoint ptr %num_display to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_display, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp14 = icmp ult i32 %23, 3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.lor.end_crit_edge
  %24 = phi i1 [ false, %if.end.lor.end_crit_edge ], [ %cmp14, %lor.rhs ]
  %action = getelementptr inbounds %struct.smu8_power_state, ptr %hw_ps..i63, i32 0, i32 14
  %25 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %action, align 4
  %action16 = getelementptr inbounds %struct.smu8_power_state, ptr %hw_ps..i, i32 0, i32 14
  %27 = ptrtoint ptr %action16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %action16, align 4
  %request_dpm_level = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 20
  %28 = ptrtoint ptr %request_dpm_level to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %request_dpm_level, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %29, label %if.else24 [
    i32 128, label %if.then18
    i32 16, label %if.then22
  ]

if.then18:                                        ; preds = %lor.end
  %31 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %backend, align 4
  %is_nb_dpm_enabled.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %32, i32 0, i32 42
  %33 = ptrtoint ptr %is_nb_dpm_enabled.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %is_nb_dpm_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %if.then18.if.end41_crit_edge, label %if.then.i

if.then18.if.end41_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then.i:                                        ; preds = %if.then18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smu8_nbdpm_pstate_enable_disable.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smu8_apply_state_adjust_rules, %if.then27.i)) #13
          to label %cleanup.sink.split.i [label %if.then27.i], !srcloc !129

if.then27.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smu8_nbdpm_pstate_enable_disable.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.66) #13
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then27.i, %if.then.i
  %call35.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 46, i32 noundef 0, ptr noundef null) #13
  br label %if.end41

if.then22:                                        ; preds = %lor.end
  %35 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %backend, align 4
  %is_nb_dpm_enabled.i65 = getelementptr inbounds %struct.smu8_hwmgr, ptr %36, i32 0, i32 42
  %37 = ptrtoint ptr %is_nb_dpm_enabled.i65 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %is_nb_dpm_enabled.i65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i66 = icmp eq i32 %38, 0
  br i1 %tobool.not.i66, label %if.then22.if.end41_crit_edge, label %if.then.i67

if.then22.if.end41_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then.i67:                                      ; preds = %if.then22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smu8_nbdpm_pstate_enable_disable.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smu8_apply_state_adjust_rules, %if.then27.i68)) #13
          to label %cleanup.sink.split.i70 [label %if.then27.i68], !srcloc !129

if.then27.i68:                                    ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smu8_nbdpm_pstate_enable_disable.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.66) #13
  br label %cleanup.sink.split.i70

cleanup.sink.split.i70:                           ; preds = %if.then27.i68, %if.then.i67
  %call35.i69 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 46, i32 noundef 1, ptr noundef null) #13
  br label %if.end41

if.else24:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp26 = icmp eq i32 %26, 2
  %or.cond = select i1 %24, i1 %cmp26, i1 false
  br i1 %or.cond, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %action16 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3, ptr %action16, align 4
  br label %if.end41

if.else29:                                        ; preds = %if.else24
  %brmerge = select i1 %24, i1 true, i1 %cmp26
  br i1 %brmerge, label %if.else36, label %if.then34

if.then34:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %action16 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %action16, align 4
  br label %if.end41

if.else36:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %action16 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %action16, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.else36, %if.then34, %if.then27, %cleanup.sink.split.i70, %if.then22.if.end41_crit_edge, %cleanup.sink.split.i, %if.then18.if.end41_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_dpm_force_dpm_level(ptr noundef %hwmgr, i32 noundef %level) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 8, label %entry.sw.bb_crit_edge
    i32 128, label %entry.sw.bb_crit_edge52
    i32 4, label %entry.sw.bb1_crit_edge
    i32 32, label %entry.sw.bb1_crit_edge53
    i32 16, label %entry.sw.bb1_crit_edge54
    i32 1, label %sw.bb3
  ]

entry.sw.bb1_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1

entry.sw.bb1_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1

entry.sw.bb_crit_edge52:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge52
  %backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %1 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %backend.i, align 4
  %soft_max_clk.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %2, i32 0, i32 62, i32 2
  %3 = ptrtoint ptr %soft_max_clk.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %soft_max_clk.i, align 4
  %dyn_state.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29
  %5 = ptrtoint ptr %dyn_state.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dyn_state.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp26.i.i = icmp sgt i32 %8, 0
  br i1 %cmp26.i.i, label %sw.bb.for.body.i.i_crit_edge, label %sw.bb.smu8_get_sclk_level.exit.i_crit_edge

sw.bb.smu8_get_sclk_level.exit.i_crit_edge:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_sclk_level.exit.i

sw.bb.for.body.i.i_crit_edge:                     ; preds = %sw.bb
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %sw.bb.for.body.i.i_crit_edge
  %i.027.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %sw.bb.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %6, i32 0, i32 1, i32 %i.027.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %4)
  %cmp1.not.i.i = icmp ult i32 %10, %4
  br i1 %cmp1.not.i.i, label %for.inc.i.i, label %for.body.i.i.smu8_get_sclk_level.exit.i_crit_edge

for.body.i.i.smu8_get_sclk_level.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_sclk_level.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.027.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %8
  br i1 %exitcond.not.i.i, label %for.inc.i.i.smu8_get_sclk_level.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.smu8_get_sclk_level.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_sclk_level.exit.i

smu8_get_sclk_level.exit.i:                       ; preds = %for.inc.i.i.smu8_get_sclk_level.exit.i_crit_edge, %for.body.i.i.smu8_get_sclk_level.exit.i_crit_edge, %sw.bb.smu8_get_sclk_level.exit.i_crit_edge
  %i.2.i.i = phi i32 [ 0, %sw.bb.smu8_get_sclk_level.exit.i_crit_edge ], [ %i.027.i.i, %for.body.i.i.smu8_get_sclk_level.exit.i_crit_edge ], [ %8, %for.inc.i.i.smu8_get_sclk_level.exit.i_crit_edge ]
  %call1.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 18, i32 noundef %i.2.i.i, ptr noundef null) #13
  %11 = ptrtoint ptr %soft_max_clk.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %soft_max_clk.i, align 4
  %13 = ptrtoint ptr %dyn_state.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dyn_state.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %17 = add i32 %16, -1
  %smin.i.i = tail call i32 @llvm.smin.i32(i32 %17, i32 -1) #13
  br label %for.cond4.i.i

for.cond4.i.i:                                    ; preds = %for.body6.i.i.for.cond4.i.i_crit_edge, %smu8_get_sclk_level.exit.i
  %i.1.in.i.i = phi i32 [ %16, %smu8_get_sclk_level.exit.i ], [ %i.1.i.i, %for.body6.i.i.for.cond4.i.i_crit_edge ]
  %i.1.i.i = add i32 %i.1.in.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1.i.i)
  %cmp5.i.i = icmp sgt i32 %i.1.i.i, -1
  br i1 %cmp5.i.i, label %for.body6.i.i, label %for.cond4.i.i.smu8_phm_force_dpm_highest.exit_crit_edge

for.cond4.i.i.smu8_phm_force_dpm_highest.exit_crit_edge: ; preds = %for.cond4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_phm_force_dpm_highest.exit

for.body6.i.i:                                    ; preds = %for.cond4.i.i
  %arrayidx8.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %14, i32 0, i32 1, i32 %i.1.i.i
  %18 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx8.i.i, align 4
  %cmp10.not.i.i = icmp ugt i32 %19, %12
  br i1 %cmp10.not.i.i, label %for.body6.i.i.for.cond4.i.i_crit_edge, label %for.body6.i.i.smu8_phm_force_dpm_highest.exit_crit_edge

for.body6.i.i.smu8_phm_force_dpm_highest.exit_crit_edge: ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_phm_force_dpm_highest.exit

for.body6.i.i.for.cond4.i.i_crit_edge:            ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond4.i.i

smu8_phm_force_dpm_highest.exit:                  ; preds = %for.body6.i.i.smu8_phm_force_dpm_highest.exit_crit_edge, %for.cond4.i.i.smu8_phm_force_dpm_highest.exit_crit_edge
  %i.2.i2.i = phi i32 [ %smin.i.i, %for.cond4.i.i.smu8_phm_force_dpm_highest.exit_crit_edge ], [ %i.1.i.i, %for.body6.i.i.smu8_phm_force_dpm_highest.exit_crit_edge ]
  %call5.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 19, i32 noundef %i.2.i2.i, ptr noundef null) #13
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge53, %entry.sw.bb1_crit_edge54
  %backend.i8 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %20 = ptrtoint ptr %backend.i8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %backend.i8, align 4
  %sclk_dpm.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %21, i32 0, i32 62
  %22 = ptrtoint ptr %sclk_dpm.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sclk_dpm.i, align 4
  %dyn_state.i.i9 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29
  %24 = ptrtoint ptr %dyn_state.i.i9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dyn_state.i.i9, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %28 = add i32 %27, -1
  %smin.i.i10 = tail call i32 @llvm.smin.i32(i32 %28, i32 -1) #13
  br label %for.cond4.i.i14

for.cond4.i.i14:                                  ; preds = %for.body6.i.i17.for.cond4.i.i14_crit_edge, %sw.bb1
  %i.1.in.i.i11 = phi i32 [ %27, %sw.bb1 ], [ %i.1.i.i12, %for.body6.i.i17.for.cond4.i.i14_crit_edge ]
  %i.1.i.i12 = add i32 %i.1.in.i.i11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1.i.i12)
  %cmp5.i.i13 = icmp sgt i32 %i.1.i.i12, -1
  br i1 %cmp5.i.i13, label %for.body6.i.i17, label %for.cond4.i.i14.smu8_get_sclk_level.exit.i21_crit_edge

for.cond4.i.i14.smu8_get_sclk_level.exit.i21_crit_edge: ; preds = %for.cond4.i.i14
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_sclk_level.exit.i21

for.body6.i.i17:                                  ; preds = %for.cond4.i.i14
  %arrayidx8.i.i15 = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %25, i32 0, i32 1, i32 %i.1.i.i12
  %29 = ptrtoint ptr %arrayidx8.i.i15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx8.i.i15, align 4
  %cmp10.not.i.i16 = icmp ugt i32 %30, %23
  br i1 %cmp10.not.i.i16, label %for.body6.i.i17.for.cond4.i.i14_crit_edge, label %for.body6.i.i17.smu8_get_sclk_level.exit.i21_crit_edge

for.body6.i.i17.smu8_get_sclk_level.exit.i21_crit_edge: ; preds = %for.body6.i.i17
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_sclk_level.exit.i21

for.body6.i.i17.for.cond4.i.i14_crit_edge:        ; preds = %for.body6.i.i17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond4.i.i14

smu8_get_sclk_level.exit.i21:                     ; preds = %for.body6.i.i17.smu8_get_sclk_level.exit.i21_crit_edge, %for.cond4.i.i14.smu8_get_sclk_level.exit.i21_crit_edge
  %i.2.i.i18 = phi i32 [ %smin.i.i10, %for.cond4.i.i14.smu8_get_sclk_level.exit.i21_crit_edge ], [ %i.1.i.i12, %for.body6.i.i17.smu8_get_sclk_level.exit.i21_crit_edge ]
  %call1.i19 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 19, i32 noundef %i.2.i.i18, ptr noundef null) #13
  %31 = ptrtoint ptr %sclk_dpm.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sclk_dpm.i, align 4
  %33 = ptrtoint ptr %dyn_state.i.i9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dyn_state.i.i9, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp26.i.i20 = icmp sgt i32 %36, 0
  br i1 %cmp26.i.i20, label %smu8_get_sclk_level.exit.i21.for.body.i.i25_crit_edge, label %smu8_get_sclk_level.exit.i21.smu8_phm_force_dpm_lowest.exit_crit_edge

smu8_get_sclk_level.exit.i21.smu8_phm_force_dpm_lowest.exit_crit_edge: ; preds = %smu8_get_sclk_level.exit.i21
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_phm_force_dpm_lowest.exit

smu8_get_sclk_level.exit.i21.for.body.i.i25_crit_edge: ; preds = %smu8_get_sclk_level.exit.i21
  br label %for.body.i.i25

for.body.i.i25:                                   ; preds = %for.inc.i.i28.for.body.i.i25_crit_edge, %smu8_get_sclk_level.exit.i21.for.body.i.i25_crit_edge
  %i.027.i.i22 = phi i32 [ %inc.i.i26, %for.inc.i.i28.for.body.i.i25_crit_edge ], [ 0, %smu8_get_sclk_level.exit.i21.for.body.i.i25_crit_edge ]
  %arrayidx.i.i23 = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %34, i32 0, i32 1, i32 %i.027.i.i22
  %37 = ptrtoint ptr %arrayidx.i.i23 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %32)
  %cmp1.not.i.i24 = icmp ult i32 %38, %32
  br i1 %cmp1.not.i.i24, label %for.inc.i.i28, label %for.body.i.i25.smu8_phm_force_dpm_lowest.exit_crit_edge

for.body.i.i25.smu8_phm_force_dpm_lowest.exit_crit_edge: ; preds = %for.body.i.i25
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_phm_force_dpm_lowest.exit

for.inc.i.i28:                                    ; preds = %for.body.i.i25
  %inc.i.i26 = add nuw nsw i32 %i.027.i.i22, 1
  %exitcond.not.i.i27 = icmp eq i32 %inc.i.i26, %36
  br i1 %exitcond.not.i.i27, label %for.inc.i.i28.smu8_phm_force_dpm_lowest.exit_crit_edge, label %for.inc.i.i28.for.body.i.i25_crit_edge

for.inc.i.i28.for.body.i.i25_crit_edge:           ; preds = %for.inc.i.i28
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i25

for.inc.i.i28.smu8_phm_force_dpm_lowest.exit_crit_edge: ; preds = %for.inc.i.i28
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_phm_force_dpm_lowest.exit

smu8_phm_force_dpm_lowest.exit:                   ; preds = %for.inc.i.i28.smu8_phm_force_dpm_lowest.exit_crit_edge, %for.body.i.i25.smu8_phm_force_dpm_lowest.exit_crit_edge, %smu8_get_sclk_level.exit.i21.smu8_phm_force_dpm_lowest.exit_crit_edge
  %i.2.i2.i29 = phi i32 [ 0, %smu8_get_sclk_level.exit.i21.smu8_phm_force_dpm_lowest.exit_crit_edge ], [ %i.027.i.i22, %for.body.i.i25.smu8_phm_force_dpm_lowest.exit_crit_edge ], [ %36, %for.inc.i.i28.smu8_phm_force_dpm_lowest.exit_crit_edge ]
  %call5.i30 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 18, i32 noundef %i.2.i2.i29, ptr noundef null) #13
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %backend.i31 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %39 = ptrtoint ptr %backend.i31 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %backend.i31, align 4
  %dyn_state.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29
  %41 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dyn_state.i, align 4
  %cmp.i = icmp eq ptr %42, null
  br i1 %cmp.i, label %sw.bb3.sw.epilog_crit_edge, label %lor.lhs.false.i

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

lor.lhs.false.i:                                  ; preds = %sw.bb3
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp1.i = icmp eq i32 %44, 0
  br i1 %cmp1.i, label %lor.lhs.false.i.sw.epilog_crit_edge, label %if.end.i

lor.lhs.false.i.sw.epilog_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.i:                                         ; preds = %lor.lhs.false.i
  %entries.i = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, ptr %42, i32 0, i32 1
  %45 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %entries.i, align 4
  %sclk_dpm.i32 = getelementptr inbounds %struct.smu8_hwmgr, ptr %40, i32 0, i32 62
  %47 = ptrtoint ptr %sclk_dpm.i32 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %sclk_dpm.i32, align 4
  %48 = load i32, ptr %entries.i, align 4
  %hard_min_clk.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %40, i32 0, i32 62, i32 1
  %49 = ptrtoint ptr %hard_min_clk.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %hard_min_clk.i, align 4
  %50 = load i32, ptr %entries.i, align 4
  %pstate_sclk.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 51
  %51 = ptrtoint ptr %pstate_sclk.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %pstate_sclk.i, align 4
  %pstate_mclk.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 52
  %52 = ptrtoint ptr %pstate_mclk.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %pstate_mclk.i, align 4
  %53 = ptrtoint ptr %backend.i31 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %backend.i31, align 4
  %max_sclk_level.i.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %54, i32 0, i32 92
  %55 = ptrtoint ptr %max_sclk_level.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_sclk_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i.i = icmp eq i32 %56, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.smu8_get_max_sclk_level.exit.i_crit_edge

if.end.i.smu8_get_max_sclk_level.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_max_sclk_level.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 59, ptr noundef %max_sclk_level.i.i) #13
  %57 = ptrtoint ptr %max_sclk_level.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_sclk_level.i.i, align 4
  %add.i.i = add i32 %58, 1
  store i32 %add.i.i, ptr %max_sclk_level.i.i, align 4
  br label %smu8_get_max_sclk_level.exit.i

smu8_get_max_sclk_level.exit.i:                   ; preds = %if.then.i.i, %if.end.i.smu8_get_max_sclk_level.exit.i_crit_edge
  %59 = ptrtoint ptr %max_sclk_level.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max_sclk_level.i.i, align 4
  %sub.i = add i32 %60, -1
  %61 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %62)
  %cmp10.i = icmp ult i32 %sub.i, %62
  %sub17.i = add i32 %62, -1
  %sub.pn.i = select i1 %cmp10.i, i32 %sub.i, i32 %sub17.i
  %clock.0.in.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %42, i32 0, i32 1, i32 %sub.pn.i
  %63 = ptrtoint ptr %clock.0.in.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %clock.0.i = load i32, ptr %clock.0.in.i, align 4
  %soft_max_clk.i33 = getelementptr inbounds %struct.smu8_hwmgr, ptr %40, i32 0, i32 62, i32 2
  %64 = ptrtoint ptr %soft_max_clk.i33 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %clock.0.i, ptr %soft_max_clk.i33, align 4
  %hard_max_clk.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %40, i32 0, i32 62, i32 3
  %65 = ptrtoint ptr %hard_max_clk.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %clock.0.i, ptr %hard_max_clk.i, align 4
  %66 = ptrtoint ptr %sclk_dpm.i32 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sclk_dpm.i32, align 4
  %68 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dyn_state.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp26.i.i34 = icmp sgt i32 %71, 0
  br i1 %cmp26.i.i34, label %smu8_get_max_sclk_level.exit.i.for.body.i.i38_crit_edge, label %smu8_get_max_sclk_level.exit.i.smu8_get_sclk_level.exit.i44_crit_edge

smu8_get_max_sclk_level.exit.i.smu8_get_sclk_level.exit.i44_crit_edge: ; preds = %smu8_get_max_sclk_level.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_sclk_level.exit.i44

smu8_get_max_sclk_level.exit.i.for.body.i.i38_crit_edge: ; preds = %smu8_get_max_sclk_level.exit.i
  br label %for.body.i.i38

for.body.i.i38:                                   ; preds = %for.inc.i.i41.for.body.i.i38_crit_edge, %smu8_get_max_sclk_level.exit.i.for.body.i.i38_crit_edge
  %i.027.i.i35 = phi i32 [ %inc.i.i39, %for.inc.i.i41.for.body.i.i38_crit_edge ], [ 0, %smu8_get_max_sclk_level.exit.i.for.body.i.i38_crit_edge ]
  %arrayidx.i.i36 = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %69, i32 0, i32 1, i32 %i.027.i.i35
  %72 = ptrtoint ptr %arrayidx.i.i36 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i.i36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %67)
  %cmp1.not.i.i37 = icmp ult i32 %73, %67
  br i1 %cmp1.not.i.i37, label %for.inc.i.i41, label %for.body.i.i38.smu8_get_sclk_level.exit.i44_crit_edge

for.body.i.i38.smu8_get_sclk_level.exit.i44_crit_edge: ; preds = %for.body.i.i38
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_sclk_level.exit.i44

for.inc.i.i41:                                    ; preds = %for.body.i.i38
  %inc.i.i39 = add nuw nsw i32 %i.027.i.i35, 1
  %exitcond.not.i.i40 = icmp eq i32 %inc.i.i39, %71
  br i1 %exitcond.not.i.i40, label %for.inc.i.i41.smu8_get_sclk_level.exit.i44_crit_edge, label %for.inc.i.i41.for.body.i.i38_crit_edge

for.inc.i.i41.for.body.i.i38_crit_edge:           ; preds = %for.inc.i.i41
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i38

for.inc.i.i41.smu8_get_sclk_level.exit.i44_crit_edge: ; preds = %for.inc.i.i41
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_sclk_level.exit.i44

smu8_get_sclk_level.exit.i44:                     ; preds = %for.inc.i.i41.smu8_get_sclk_level.exit.i44_crit_edge, %for.body.i.i38.smu8_get_sclk_level.exit.i44_crit_edge, %smu8_get_max_sclk_level.exit.i.smu8_get_sclk_level.exit.i44_crit_edge
  %i.2.i.i42 = phi i32 [ 0, %smu8_get_max_sclk_level.exit.i.smu8_get_sclk_level.exit.i44_crit_edge ], [ %i.027.i.i35, %for.body.i.i38.smu8_get_sclk_level.exit.i44_crit_edge ], [ %71, %for.inc.i.i41.smu8_get_sclk_level.exit.i44_crit_edge ]
  %call26.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 18, i32 noundef %i.2.i.i42, ptr noundef null) #13
  %74 = ptrtoint ptr %soft_max_clk.i33 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %soft_max_clk.i33, align 4
  %76 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dyn_state.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  %80 = add i32 %79, -1
  %smin.i.i43 = tail call i32 @llvm.smin.i32(i32 %80, i32 -1) #13
  br label %for.cond4.i.i48

for.cond4.i.i48:                                  ; preds = %for.body6.i.i51.for.cond4.i.i48_crit_edge, %smu8_get_sclk_level.exit.i44
  %i.1.in.i.i45 = phi i32 [ %79, %smu8_get_sclk_level.exit.i44 ], [ %i.1.i.i46, %for.body6.i.i51.for.cond4.i.i48_crit_edge ]
  %i.1.i.i46 = add i32 %i.1.in.i.i45, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1.i.i46)
  %cmp5.i.i47 = icmp sgt i32 %i.1.i.i46, -1
  br i1 %cmp5.i.i47, label %for.body6.i.i51, label %for.cond4.i.i48.smu8_get_sclk_level.exit60.i_crit_edge

for.cond4.i.i48.smu8_get_sclk_level.exit60.i_crit_edge: ; preds = %for.cond4.i.i48
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_sclk_level.exit60.i

for.body6.i.i51:                                  ; preds = %for.cond4.i.i48
  %arrayidx8.i.i49 = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %77, i32 0, i32 1, i32 %i.1.i.i46
  %81 = ptrtoint ptr %arrayidx8.i.i49 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx8.i.i49, align 4
  %cmp10.not.i.i50 = icmp ugt i32 %82, %75
  br i1 %cmp10.not.i.i50, label %for.body6.i.i51.for.cond4.i.i48_crit_edge, label %for.body6.i.i51.smu8_get_sclk_level.exit60.i_crit_edge

for.body6.i.i51.smu8_get_sclk_level.exit60.i_crit_edge: ; preds = %for.body6.i.i51
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_sclk_level.exit60.i

for.body6.i.i51.for.cond4.i.i48_crit_edge:        ; preds = %for.body6.i.i51
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond4.i.i48

smu8_get_sclk_level.exit60.i:                     ; preds = %for.body6.i.i51.smu8_get_sclk_level.exit60.i_crit_edge, %for.cond4.i.i48.smu8_get_sclk_level.exit60.i_crit_edge
  %i.2.i59.i = phi i32 [ %smin.i.i43, %for.cond4.i.i48.smu8_get_sclk_level.exit60.i_crit_edge ], [ %i.1.i.i46, %for.body6.i.i51.smu8_get_sclk_level.exit60.i_crit_edge ]
  %call30.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 19, i32 noundef %i.2.i59.i, ptr noundef null) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %smu8_get_sclk_level.exit60.i, %lor.lhs.false.i.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge, %smu8_phm_force_dpm_lowest.exit, %smu8_phm_force_dpm_highest.exit, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %smu8_phm_force_dpm_lowest.exit ], [ 0, %smu8_phm_force_dpm_highest.exit ], [ 0, %smu8_get_sclk_level.exit60.i ], [ -22, %lor.lhs.false.i.sw.epilog_crit_edge ], [ -22, %sw.bb3.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_enable_dpm_tasks(ptr noundef %hwmgr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %0 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write_ind_register.i = getelementptr inbounds %struct.cgs_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %write_ind_register.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_ind_register.i, align 4
  tail call void %5(ptr noundef %1, i32 noundef 1, i32 noundef -803208792, i32 noundef 1073725698) #13
  %backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %6 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %backend.i, align 4
  %dpm_flags.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %7, i32 0, i32 61
  %8 = ptrtoint ptr %dpm_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dpm_flags.i, align 4
  %or.i = or i32 %9, 1
  store i32 %or.i, ptr %dpm_flags.i, align 4
  %call.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 3, i32 noundef 524288, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %backend.i, align 4
  %bootup_engine_clock.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %11, i32 0, i32 11, i32 1
  %12 = ptrtoint ptr %bootup_engine_clock.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bootup_engine_clock.i, align 4
  %sclk_dpm.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %11, i32 0, i32 62
  %14 = ptrtoint ptr %sclk_dpm.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %sclk_dpm.i, align 4
  %soft_max_clk.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %11, i32 0, i32 62, i32 2
  %15 = ptrtoint ptr %soft_max_clk.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %soft_max_clk.i, align 4
  %dyn_state.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29
  %16 = ptrtoint ptr %dyn_state.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dyn_state.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp26.i.i = icmp sgt i32 %19, 0
  br i1 %cmp26.i.i, label %if.end.for.body.i.i_crit_edge, label %if.end.smu8_get_sclk_level.exit.i_crit_edge

if.end.smu8_get_sclk_level.exit.i_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_sclk_level.exit.i

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %i.027.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %17, i32 0, i32 1, i32 %i.027.i.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %13)
  %cmp1.not.i.i = icmp ult i32 %21, %13
  br i1 %cmp1.not.i.i, label %for.inc.i.i, label %for.body.i.i.smu8_get_sclk_level.exit.i_crit_edge

for.body.i.i.smu8_get_sclk_level.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_sclk_level.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.027.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %19
  br i1 %exitcond.not.i.i, label %for.inc.i.i.smu8_get_sclk_level.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.smu8_get_sclk_level.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_sclk_level.exit.i

smu8_get_sclk_level.exit.i:                       ; preds = %for.inc.i.i.smu8_get_sclk_level.exit.i_crit_edge, %for.body.i.i.smu8_get_sclk_level.exit.i_crit_edge, %if.end.smu8_get_sclk_level.exit.i_crit_edge
  %i.2.i.i = phi i32 [ 0, %if.end.smu8_get_sclk_level.exit.i_crit_edge ], [ %i.027.i.i, %for.body.i.i.smu8_get_sclk_level.exit.i_crit_edge ], [ %19, %for.inc.i.i.smu8_get_sclk_level.exit.i_crit_edge ]
  %call6.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 18, i32 noundef %i.2.i.i, ptr noundef null) #13
  %22 = ptrtoint ptr %soft_max_clk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %soft_max_clk.i, align 4
  %24 = ptrtoint ptr %dyn_state.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dyn_state.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %28 = add i32 %27, -1
  %smin.i.i = tail call i32 @llvm.smin.i32(i32 %28, i32 -1) #13
  br label %for.cond4.i.i

for.cond4.i.i:                                    ; preds = %for.body6.i.i.for.cond4.i.i_crit_edge, %smu8_get_sclk_level.exit.i
  %i.1.in.i.i = phi i32 [ %27, %smu8_get_sclk_level.exit.i ], [ %i.1.i.i, %for.body6.i.i.for.cond4.i.i_crit_edge ]
  %i.1.i.i = add i32 %i.1.in.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1.i.i)
  %cmp5.i.i = icmp sgt i32 %i.1.i.i, -1
  br i1 %cmp5.i.i, label %for.body6.i.i, label %for.cond4.i.i.smu8_program_bootup_state.exit_crit_edge

for.cond4.i.i.smu8_program_bootup_state.exit_crit_edge: ; preds = %for.cond4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_program_bootup_state.exit

for.body6.i.i:                                    ; preds = %for.cond4.i.i
  %arrayidx8.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %25, i32 0, i32 1, i32 %i.1.i.i
  %29 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx8.i.i, align 4
  %cmp10.not.i.i = icmp ugt i32 %30, %23
  br i1 %cmp10.not.i.i, label %for.body6.i.i.for.cond4.i.i_crit_edge, label %for.body6.i.i.smu8_program_bootup_state.exit_crit_edge

for.body6.i.i.smu8_program_bootup_state.exit_crit_edge: ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_program_bootup_state.exit

for.body6.i.i.for.cond4.i.i_crit_edge:            ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond4.i.i

smu8_program_bootup_state.exit:                   ; preds = %for.body6.i.i.smu8_program_bootup_state.exit_crit_edge, %for.cond4.i.i.smu8_program_bootup_state.exit_crit_edge
  %i.2.i2.i = phi i32 [ %smin.i.i, %for.cond4.i.i.smu8_program_bootup_state.exit_crit_edge ], [ %i.1.i.i, %for.body6.i.i.smu8_program_bootup_state.exit_crit_edge ]
  %call10.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 19, i32 noundef %i.2.i2.i, ptr noundef null) #13
  %31 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %backend.i, align 4
  %acp_boot_level.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %32, i32 0, i32 68
  %33 = ptrtoint ptr %acp_boot_level.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %acp_boot_level.i, align 2
  br label %return

return:                                           ; preds = %smu8_program_bootup_state.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %smu8_program_bootup_state.exit ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_disable_dpm_tasks(ptr noundef %hwmgr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend.i, align 4
  %is_nb_dpm_enabled.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %is_nb_dpm_enabled.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %is_nb_dpm_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.smu8_disable_nb_dpm.exit_crit_edge, label %if.then.i.i

entry.smu8_disable_nb_dpm.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_disable_nb_dpm.exit

if.then.i.i:                                      ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smu8_nbdpm_pstate_enable_disable.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smu8_disable_dpm_tasks, %if.then9.i.i)) #13
          to label %smu8_nbdpm_pstate_enable_disable.exit.i [label %if.then9.i.i], !srcloc !129

if.then9.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smu8_nbdpm_pstate_enable_disable.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.64) #13
  br label %smu8_nbdpm_pstate_enable_disable.exit.i

smu8_nbdpm_pstate_enable_disable.exit.i:          ; preds = %if.then9.i.i, %if.then.i.i
  %call35.i.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 47, i32 noundef 1, ptr noundef null) #13
  %call1.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 4, i32 noundef 2048, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %if.then2.i, label %smu8_nbdpm_pstate_enable_disable.exit.i.smu8_disable_nb_dpm.exit_crit_edge

smu8_nbdpm_pstate_enable_disable.exit.i.smu8_disable_nb_dpm.exit_crit_edge: ; preds = %smu8_nbdpm_pstate_enable_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_disable_nb_dpm.exit

if.then2.i:                                       ; preds = %smu8_nbdpm_pstate_enable_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %is_nb_dpm_enabled.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %is_nb_dpm_enabled.i, align 4
  br label %smu8_disable_nb_dpm.exit

smu8_disable_nb_dpm.exit:                         ; preds = %if.then2.i, %smu8_nbdpm_pstate_enable_disable.exit.i.smu8_disable_nb_dpm.exit_crit_edge, %entry.smu8_disable_nb_dpm.exit_crit_edge
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %5 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %write_ind_register.i = getelementptr inbounds %struct.cgs_ops, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %write_ind_register.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_ind_register.i, align 4
  tail call void %10(ptr noundef %6, i32 noundef 1, i32 noundef -803208792, i32 noundef 0) #13
  %11 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %backend.i, align 4
  %dpm_flags.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %12, i32 0, i32 61
  %13 = ptrtoint ptr %dpm_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dpm_flags.i, align 4
  %and.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i5 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i5, label %smu8_disable_nb_dpm.exit.smu8_stop_dpm.exit.thread_crit_edge, label %smu8_stop_dpm.exit

smu8_disable_nb_dpm.exit.smu8_stop_dpm.exit.thread_crit_edge: ; preds = %smu8_disable_nb_dpm.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_stop_dpm.exit.thread

smu8_stop_dpm.exit:                               ; preds = %smu8_disable_nb_dpm.exit
  %and2.i = and i32 %14, -2
  %15 = ptrtoint ptr %dpm_flags.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and2.i, ptr %dpm_flags.i, align 4
  %call.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 4, i32 noundef 524288, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %smu8_stop_dpm.exit.smu8_stop_dpm.exit.thread_crit_edge, label %smu8_stop_dpm.exit._crit_edge

smu8_stop_dpm.exit._crit_edge:                    ; preds = %smu8_stop_dpm.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %16

smu8_stop_dpm.exit.smu8_stop_dpm.exit.thread_crit_edge: ; preds = %smu8_stop_dpm.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_stop_dpm.exit.thread

smu8_stop_dpm.exit.thread:                        ; preds = %smu8_stop_dpm.exit.smu8_stop_dpm.exit.thread_crit_edge, %smu8_disable_nb_dpm.exit.smu8_stop_dpm.exit.thread_crit_edge
  br label %16

16:                                               ; preds = %smu8_stop_dpm.exit.thread, %smu8_stop_dpm.exit._crit_edge
  %17 = phi i32 [ 0, %smu8_stop_dpm.exit.thread ], [ -22, %smu8_stop_dpm.exit._crit_edge ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smu8_dpm_patch_boot_state(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef %hw_ps) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %2 = ptrtoint ptr %hw_ps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_ps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1742518821, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 1742518821
  %hw_ps..i = select i1 %cmp.not.i, ptr %hw_ps, ptr null
  %level = getelementptr inbounds %struct.smu8_power_state, ptr %hw_ps..i, i32 0, i32 1
  %4 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %level, align 4
  %nbps_flags = getelementptr inbounds %struct.smu8_power_state, ptr %hw_ps..i, i32 0, i32 8
  %5 = ptrtoint ptr %nbps_flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %nbps_flags, align 4
  %bapm_flags = getelementptr inbounds %struct.smu8_power_state, ptr %hw_ps..i, i32 0, i32 9
  %6 = ptrtoint ptr %bapm_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %bapm_flags, align 4
  %levels = getelementptr inbounds %struct.smu8_power_state, ptr %hw_ps..i, i32 0, i32 15
  %boot_power_level = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 12
  %7 = call ptr @memcpy(ptr %levels, ptr %boot_power_level, i32 16)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_dpm_get_pp_table_entry(ptr noundef %hwmgr, i32 noundef %entry1, ptr noundef %ps) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hardware = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 11
  %0 = ptrtoint ptr %hardware to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1742518821, ptr %hardware, align 4
  %call3 = tail call i32 @pp_tables_get_entry(ptr noundef %hwmgr, i32 noundef %entry1, ptr noundef %ps, ptr noundef nonnull @smu8_dpm_get_pp_table_entry_callback) #13
  %uvd_clocks = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 10
  %1 = ptrtoint ptr %uvd_clocks to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %uvd_clocks, align 4
  %uvd_clocks4 = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 1, i32 1
  %3 = ptrtoint ptr %uvd_clocks4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %uvd_clocks4, align 4
  %DCLK = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %DCLK to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %DCLK, align 4
  %dclk = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 1, i32 1, i32 1
  %6 = ptrtoint ptr %dclk to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %dclk, align 4
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_dpm_get_num_of_pp_table_entries(ptr noundef %hwmgr) #1 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #13
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ret, align 4
  %call = call i32 @pp_tables_get_num_of_entries(ptr noundef %hwmgr, ptr noundef nonnull %ret) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ret, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %2, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #13
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_dpm_powerdown_uvd(ptr noundef %hwmgr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 7, ptr noundef null) #13
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smu8_dpm_powergate_vce(ptr noundef %hwmgr, i1 noundef zeroext %bgate) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  br i1 %bgate, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr, align 4
  %call = tail call i32 @amdgpu_device_ip_set_powergating_state(ptr noundef %3, i32 noundef 9, i32 noundef 0) #13
  %4 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwmgr, align 4
  %call2 = tail call i32 @amdgpu_device_ip_set_clockgating_state(ptr noundef %5, i32 noundef 9, i32 noundef 0) #13
  %6 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %backend, align 4
  %dpm_flags4.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %7, i32 0, i32 61
  %8 = ptrtoint ptr %dpm_flags4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dpm_flags4.i, align 4
  %and.i = and i32 %9, -5
  store i32 %and.i, ptr %dpm_flags4.i, align 4
  %call5.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 4, i32 noundef 4194304, ptr noundef null) #13
  %arrayidx.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %and1.i.i = and i32 %11, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.i.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %cmp.i.not.i, label %if.then.smu8_dpm_powerdown_vce.exit_crit_edge, label %if.then.i

if.then.smu8_dpm_powerdown_vce.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_dpm_powerdown_vce.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 9, ptr noundef null) #13
  br label %smu8_dpm_powerdown_vce.exit

smu8_dpm_powerdown_vce.exit:                      ; preds = %if.then.i, %if.then.smu8_dpm_powerdown_vce.exit_crit_edge
  %vce_power_gated = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 87
  %12 = ptrtoint ptr %vce_power_gated to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %vce_power_gated, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %arrayidx.i.i23 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx.i.i23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i23, align 4
  %and1.i.i24 = and i32 %14, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i24)
  %cmp.i.not.i25 = icmp eq i32 %and1.i.i24, 0
  br i1 %cmp.i.not.i25, label %if.else.smu8_dpm_powerup_vce.exit_crit_edge, label %if.then.i27

if.else.smu8_dpm_powerup_vce.exit_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_dpm_powerup_vce.exit

if.then.i27:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i26 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 10, ptr noundef null) #13
  br label %smu8_dpm_powerup_vce.exit

smu8_dpm_powerup_vce.exit:                        ; preds = %if.then.i27, %if.else.smu8_dpm_powerup_vce.exit_crit_edge
  %vce_power_gated6 = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 87
  %15 = ptrtoint ptr %vce_power_gated6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %vce_power_gated6, align 1
  %16 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hwmgr, align 4
  %call8 = tail call i32 @amdgpu_device_ip_set_clockgating_state(ptr noundef %17, i32 noundef 9, i32 noundef 1) #13
  %18 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hwmgr, align 4
  %call10 = tail call i32 @amdgpu_device_ip_set_powergating_state(ptr noundef %19, i32 noundef 9, i32 noundef 1) #13
  %20 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %backend, align 4
  %vce_clock_voltage_dependency_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 15
  %22 = ptrtoint ptr %vce_clock_voltage_dependency_table.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vce_clock_voltage_dependency_table.i, align 4
  %arrayidx.i.i29 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 4
  %24 = ptrtoint ptr %arrayidx.i.i29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i29, align 4
  %and1.i.i30 = and i32 %25, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i30)
  %cmp.i.not.i31 = icmp eq i32 %and1.i.i30, 0
  br i1 %cmp.i.not.i31, label %lor.lhs.false.i, label %smu8_dpm_powerup_vce.exit.if.then.i32_crit_edge

smu8_dpm_powerup_vce.exit.if.then.i32_crit_edge:  ; preds = %smu8_dpm_powerup_vce.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i32

lor.lhs.false.i:                                  ; preds = %smu8_dpm_powerup_vce.exit
  %en_umd_pstate.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 48
  %26 = ptrtoint ptr %en_umd_pstate.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %en_umd_pstate.i, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i32_crit_edge

lor.lhs.false.i.if.then.i32_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i32

if.then.i32:                                      ; preds = %lor.lhs.false.i.if.then.i32_crit_edge, %smu8_dpm_powerup_vce.exit.if.then.i32_crit_edge
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %23, align 4
  %conv.i = zext i8 %29 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx.i = getelementptr %struct.phm_vce_clock_voltage_dependency_table, ptr %23, i32 0, i32 1, i32 %sub.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  %hard_min_clk.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %21, i32 0, i32 64, i32 1
  %32 = ptrtoint ptr %hard_min_clk.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %hard_min_clk.i, align 4
  %33 = ptrtoint ptr %vce_clock_voltage_dependency_table.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vce_clock_voltage_dependency_table.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 4
  %conv.i.i = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp1.not.i.i = icmp eq i8 %36, 0
  br i1 %cmp1.not.i.i, label %if.then.i32.smu8_get_eclk_level.exit.i_crit_edge, label %if.then.i32.for.body.i.i_crit_edge

if.then.i32.for.body.i.i_crit_edge:               ; preds = %if.then.i32
  br label %for.body.i.i

if.then.i32.smu8_get_eclk_level.exit.i_crit_edge: ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_eclk_level.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i32.for.body.i.i_crit_edge
  %i.02.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i32.for.body.i.i_crit_edge ]
  %arrayidx.i1.i = getelementptr %struct.phm_vce_clock_voltage_dependency_table, ptr %34, i32 0, i32 1, i32 %i.02.i.i
  %37 = ptrtoint ptr %arrayidx.i1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %31)
  %cmp2.not.i.i = icmp ult i32 %38, %31
  br i1 %cmp2.not.i.i, label %for.inc.i.i, label %for.body.i.i.smu8_get_eclk_level.exit.i_crit_edge

for.body.i.i.smu8_get_eclk_level.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_eclk_level.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.smu8_get_eclk_level.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.smu8_get_eclk_level.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_eclk_level.exit.i

smu8_get_eclk_level.exit.i:                       ; preds = %for.inc.i.i.smu8_get_eclk_level.exit.i_crit_edge, %for.body.i.i.smu8_get_eclk_level.exit.i_crit_edge, %if.then.i32.smu8_get_eclk_level.exit.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %if.then.i32.smu8_get_eclk_level.exit.i_crit_edge ], [ %conv.i.i, %for.inc.i.i.smu8_get_eclk_level.exit.i_crit_edge ], [ %i.02.i.i, %for.body.i.i.smu8_get_eclk_level.exit.i_crit_edge ]
  %call4.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 32, i32 noundef %i.0.lcssa.i.i, ptr noundef null) #13
  br label %smu8_dpm_update_vce_dpm.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  %call5.i33 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 32, i32 noundef 0, ptr noundef null) #13
  %call6.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 30, i32 noundef 1, ptr noundef null) #13
  br label %smu8_dpm_update_vce_dpm.exit

smu8_dpm_update_vce_dpm.exit:                     ; preds = %if.else.i, %smu8_get_eclk_level.exit.i
  %39 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %backend, align 4
  %arrayidx.i.i35 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 3
  %41 = ptrtoint ptr %arrayidx.i.i35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i35, align 4
  %and1.i.i36 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i36)
  %cmp.i.not.i37 = icmp eq i32 %and1.i.i36, 0
  %dpm_flags4.i39 = getelementptr inbounds %struct.smu8_hwmgr, ptr %40, i32 0, i32 61
  %43 = ptrtoint ptr %dpm_flags4.i39 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dpm_flags4.i39, align 4
  %and.i40 = and i32 %44, -5
  %45 = shl nuw nsw i32 %and1.i.i36, 1
  %or.i.sink = or i32 %and.i40, %45
  %.sink.i = select i1 %cmp.i.not.i37, i16 4, i16 3
  store i32 %or.i.sink, ptr %dpm_flags4.i39, align 4
  %call5.i42 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext %.sink.i, i32 noundef 4194304, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %smu8_dpm_update_vce_dpm.exit, %smu8_dpm_powerdown_vce.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smu8_dpm_powergate_uvd(ptr noundef %hwmgr, i1 noundef zeroext %bgate) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %bgate to i8
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %uvd_power_gated = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %uvd_power_gated to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %uvd_power_gated, align 4
  br i1 %bgate, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hwmgr, align 4
  %call = tail call i32 @amdgpu_device_ip_set_powergating_state(ptr noundef %4, i32 noundef 8, i32 noundef 0) #13
  %5 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hwmgr, align 4
  %call4 = tail call i32 @amdgpu_device_ip_set_clockgating_state(ptr noundef %6, i32 noundef 8, i32 noundef 0) #13
  %7 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %backend, align 4
  %dpm_flags4.i16.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %8, i32 0, i32 61
  %9 = ptrtoint ptr %dpm_flags4.i16.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dpm_flags4.i16.i, align 4
  %and.i17.i = and i32 %10, -3
  store i32 %and.i17.i, ptr %dpm_flags4.i16.i, align 4
  %call5.i.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 4, i32 noundef 65536, ptr noundef null) #13
  %arrayidx.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %and1.i.i = and i32 %12, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.i.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %cmp.i.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 7, ptr noundef null) #13
  br label %if.end

if.else:                                          ; preds = %entry
  %arrayidx.i.i22 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx.i.i22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i22, align 4
  %and1.i.i23 = and i32 %14, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i23)
  %cmp.i.not.i24 = icmp eq i32 %and1.i.i23, 0
  br i1 %cmp.i.not.i24, label %if.else.smu8_dpm_powerup_uvd.exit_crit_edge, label %if.then.i25

if.else.smu8_dpm_powerup_uvd.exit_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_dpm_powerup_uvd.exit

if.then.i25:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %and1.i2.i = lshr i32 %14, 29
  %and1.i2.lobit.i = and i32 %and1.i2.i, 1
  %call5.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 8, i32 noundef %and1.i2.lobit.i, ptr noundef null) #13
  br label %smu8_dpm_powerup_uvd.exit

smu8_dpm_powerup_uvd.exit:                        ; preds = %if.then.i25, %if.else.smu8_dpm_powerup_uvd.exit_crit_edge
  %15 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hwmgr, align 4
  %call9 = tail call i32 @amdgpu_device_ip_set_clockgating_state(ptr noundef %16, i32 noundef 8, i32 noundef 1) #13
  %17 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hwmgr, align 4
  %call11 = tail call i32 @amdgpu_device_ip_set_powergating_state(ptr noundef %18, i32 noundef 8, i32 noundef 1) #13
  %19 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %backend, align 4
  %uvd_clock_voltage_dependency_table.i27 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 16
  %21 = ptrtoint ptr %uvd_clock_voltage_dependency_table.i27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %uvd_clock_voltage_dependency_table.i27, align 4
  %arrayidx.i.i28 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 4
  %23 = ptrtoint ptr %arrayidx.i.i28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i28, align 4
  %and1.i.i29 = and i32 %24, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i29)
  %cmp.i.not.i30 = icmp eq i32 %and1.i.i29, 0
  br i1 %cmp.i.not.i30, label %lor.lhs.false.i, label %smu8_dpm_powerup_uvd.exit.if.then2.i_crit_edge

smu8_dpm_powerup_uvd.exit.if.then2.i_crit_edge:   ; preds = %smu8_dpm_powerup_uvd.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then2.i

lor.lhs.false.i:                                  ; preds = %smu8_dpm_powerup_uvd.exit
  %en_umd_pstate.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 48
  %25 = ptrtoint ptr %en_umd_pstate.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %en_umd_pstate.i, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool1.not.i = icmp eq i8 %26, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.smu8_dpm_update_uvd_dpm.exit_crit_edge, label %lor.lhs.false.i.if.then2.i_crit_edge

lor.lhs.false.i.if.then2.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then2.i

lor.lhs.false.i.smu8_dpm_update_uvd_dpm.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_dpm_update_uvd_dpm.exit

if.then2.i:                                       ; preds = %lor.lhs.false.i.if.then2.i_crit_edge, %smu8_dpm_powerup_uvd.exit.if.then2.i_crit_edge
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %22, align 4
  %conv.i = zext i8 %28 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx.i = getelementptr %struct.phm_uvd_clock_voltage_dependency_table, ptr %22, i32 0, i32 1, i32 %sub.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %hard_min_clk.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %20, i32 0, i32 63, i32 1
  %31 = ptrtoint ptr %hard_min_clk.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %hard_min_clk.i, align 4
  %32 = ptrtoint ptr %uvd_clock_voltage_dependency_table.i27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %uvd_clock_voltage_dependency_table.i27, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 4
  %conv.i.i = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp1.not.i.i = icmp eq i8 %35, 0
  br i1 %cmp1.not.i.i, label %if.then2.i.smu8_get_uvd_level.exit.i_crit_edge, label %if.then2.i.for.body.i.i_crit_edge

if.then2.i.for.body.i.i_crit_edge:                ; preds = %if.then2.i
  br label %for.body.i.i

if.then2.i.smu8_get_uvd_level.exit.i_crit_edge:   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_uvd_level.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then2.i.for.body.i.i_crit_edge
  %i.02.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then2.i.for.body.i.i_crit_edge ]
  %arrayidx.i1.i = getelementptr %struct.phm_uvd_clock_voltage_dependency_table, ptr %33, i32 0, i32 1, i32 %i.02.i.i
  %36 = ptrtoint ptr %arrayidx.i1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %30)
  %cmp2.not.i.i = icmp ult i32 %37, %30
  br i1 %cmp2.not.i.i, label %for.inc.i.i, label %for.body.i.i.smu8_get_uvd_level.exit.i_crit_edge

for.body.i.i.smu8_get_uvd_level.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_uvd_level.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.smu8_get_uvd_level.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.smu8_get_uvd_level.exit.i_crit_edge:  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_uvd_level.exit.i

smu8_get_uvd_level.exit.i:                        ; preds = %for.inc.i.i.smu8_get_uvd_level.exit.i_crit_edge, %for.body.i.i.smu8_get_uvd_level.exit.i_crit_edge, %if.then2.i.smu8_get_uvd_level.exit.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %if.then2.i.smu8_get_uvd_level.exit.i_crit_edge ], [ %conv.i.i, %for.inc.i.i.smu8_get_uvd_level.exit.i_crit_edge ], [ %i.02.i.i, %for.body.i.i.smu8_get_uvd_level.exit.i_crit_edge ]
  %call6.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 28, i32 noundef %i.0.lcssa.i.i, ptr noundef null) #13
  %38 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %backend, align 4
  br label %smu8_dpm_update_uvd_dpm.exit

smu8_dpm_update_uvd_dpm.exit:                     ; preds = %smu8_get_uvd_level.exit.i, %lor.lhs.false.i.smu8_dpm_update_uvd_dpm.exit_crit_edge
  %.sink = phi ptr [ %39, %smu8_get_uvd_level.exit.i ], [ %20, %lor.lhs.false.i.smu8_dpm_update_uvd_dpm.exit_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 3
  %40 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i.i.i, align 4
  %and1.i.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and1.i.i.i, 0
  %dpm_flags4.i.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %.sink, i32 0, i32 61
  %42 = ptrtoint ptr %dpm_flags4.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dpm_flags4.i.i, align 4
  %and.i.i = and i32 %43, -3
  %44 = shl nuw nsw i32 %and1.i.i.i, 1
  %or.i.sink.i = or i32 %and.i.i, %44
  %.sink.i.i = select i1 %cmp.i.not.i.i, i16 4, i16 3
  store i32 %or.i.sink.i, ptr %dpm_flags4.i.i, align 4
  %call5.i.i32 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext %.sink.i.i, i32 noundef 65536, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %smu8_dpm_update_uvd_dpm.exit, %if.then.i, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smu8_dpm_powergate_acp(ptr noundef %hwmgr, i1 noundef zeroext %bgate) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %acp_power_gated = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 89
  %2 = ptrtoint ptr %acp_power_gated to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %acp_power_gated, align 1, !range !128
  %4 = zext i1 %bgate to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %4)
  %cmp = icmp eq i8 %3, %4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %. = select i1 %bgate, i16 11, i16 12
  %call = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext %., ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smu8_dpm_get_mclk(ptr nocapture noundef readonly %hwmgr, i1 noundef zeroext %low) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %sys_info = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %sys_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sys_info, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smu8_dpm_get_sclk(ptr noundef readonly %hwmgr, i1 noundef zeroext %low) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %request_ps = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 42
  %0 = ptrtoint ptr %request_ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_ps, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %hardware = getelementptr inbounds %struct.pp_power_state, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %hardware to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hardware, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1742518821, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 1742518821
  %hw_ps..i = select i1 %cmp.not.i, ptr %hardware, ptr null
  br i1 %low, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %levels = getelementptr inbounds %struct.smu8_power_state, ptr %hw_ps..i, i32 0, i32 15
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %level = getelementptr inbounds %struct.smu8_power_state, ptr %hw_ps..i, i32 0, i32 1
  %4 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %level, align 4
  %sub = add i32 %5, -1
  %arrayidx6 = getelementptr %struct.smu8_power_state, ptr %hw_ps..i, i32 0, i32 15, i32 %sub
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then4
  %arrayidx6.sink = phi ptr [ %arrayidx6, %if.else ], [ %levels, %if.then4 ]
  %6 = ptrtoint ptr %arrayidx6.sink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %7, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_set_power_state_tasks(ptr noundef %hwmgr, ptr nocapture noundef readonly %input) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @smu8_update_sclk_limit(ptr noundef %hwmgr)
  %arrayidx.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  %and1.i.i = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.i.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %cmp.i.not.i, label %entry.smu8_set_deep_sleep_sclk_threshold.exit_crit_edge, label %if.then.i

entry.smu8_set_deep_sleep_sclk_threshold.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_set_deep_sleep_sclk_threshold.exit

if.then.i:                                        ; preds = %entry
  %display_config.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 45
  %2 = ptrtoint ptr %display_config.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %display_config.i, align 4
  %min_core_set_clock_in_sr.i = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %min_core_set_clock_in_sr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %min_core_set_clock_in_sr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  %spec.store.select.i = select i1 %cmp.i, i32 800, i32 %5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smu8_set_deep_sleep_sclk_threshold.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smu8_set_power_state_tasks, %if.then6.i)) #13
          to label %do.end9.i [label %if.then6.i], !srcloc !129

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smu8_set_deep_sleep_sclk_threshold.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.41, i32 noundef %spec.store.select.i) #13
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then6.i, %if.then.i
  %call10.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 17, i32 noundef %spec.store.select.i, ptr noundef null) #13
  br label %smu8_set_deep_sleep_sclk_threshold.exit

smu8_set_deep_sleep_sclk_threshold.exit:          ; preds = %do.end9.i, %entry.smu8_set_deep_sleep_sclk_threshold.exit_crit_edge
  %backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %6 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %backend.i, align 4
  %soft_max_clk.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %7, i32 0, i32 62, i32 2
  %8 = ptrtoint ptr %soft_max_clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %soft_max_clk.i, align 4
  %call.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 622, i32 noundef %9, ptr noundef null) #13
  %10 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %backend.i, align 4
  %is_nb_dpm_enabled.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %11, i32 0, i32 42
  %12 = ptrtoint ptr %is_nb_dpm_enabled.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %is_nb_dpm_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %do.body1.i, label %smu8_set_deep_sleep_sclk_threshold.exit.if.end_crit_edge

smu8_set_deep_sleep_sclk_threshold.exit.if.end_crit_edge: ; preds = %smu8_set_deep_sleep_sclk_threshold.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.body1.i:                                       ; preds = %smu8_set_deep_sleep_sclk_threshold.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smu8_enable_nb_dpm.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smu8_set_power_state_tasks, %if.then5.i)) #13
          to label %do.end7.i [label %if.then5.i], !srcloc !129

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smu8_enable_nb_dpm.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.44) #13
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then5.i, %do.body1.i
  %call8.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 3, i32 noundef 2048, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i11 = icmp eq i32 %call8.i, 0
  br i1 %cmp.i11, label %if.then9.i, label %do.end7.i.cleanup_crit_edge

do.end7.i.cleanup_crit_edge:                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then9.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %is_nb_dpm_enabled.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %is_nb_dpm_enabled.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9.i, %smu8_set_deep_sleep_sclk_threshold.exit.if.end_crit_edge
  tail call fastcc void @smu8_update_low_mem_pstate(ptr noundef %hwmgr, ptr noundef %input)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end7.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call8.i, %do.end7.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_set_cpu_power_state(ptr noundef %hwmgr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %cc6_settings = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %cc6_settings to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cc6_settings, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %if.then

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %cc6_settings to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %cc6_settings, align 4
  tail call fastcc void @smu8_hw_print_display_cfg(ptr noundef %cc6_settings)
  %cpu_pstate_separation_time = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 43, i32 4
  %5 = ptrtoint ptr %cpu_pstate_separation_time to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu_pstate_separation_time, align 4
  %and = and i32 %6, 65535
  %cpu_cc6_disable = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 43, i32 2
  %7 = ptrtoint ptr %cpu_cc6_disable to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cpu_cc6_disable, align 2, !range !128
  %9 = zext i8 %8 to i32
  %shl7 = shl nuw nsw i32 %9, 16
  %or8 = or i32 %shl7, %and
  %cpu_pstate_disable = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 43, i32 3
  %10 = ptrtoint ptr %cpu_pstate_disable to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cpu_pstate_disable, align 1, !range !128
  %12 = zext i8 %11 to i32
  %shl12 = shl nuw nsw i32 %12, 24
  %or13 = or i32 %or8, %shl12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smu8_set_cpu_power_state.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smu8_set_cpu_power_state, %if.then18)) #13
          to label %do.end20 [label %if.then18], !srcloc !129

if.then18:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smu8_set_cpu_power_state.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.47, i32 noundef %or13) #13
  br label %do.end20

do.end20:                                         ; preds = %if.then18, %if.then
  %call21 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 623, i32 noundef %or13, ptr noundef null) #13
  br label %if.end22

if.end22:                                         ; preds = %do.end20, %entry.if.end22_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smu8_store_cc6_data(ptr nocapture noundef readonly %hwmgr, i32 noundef %separation_time, i1 noundef zeroext %cc6_disable, i1 noundef zeroext %pstate_disable, i1 noundef zeroext %pstate_switch_disable) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %cc6_disable to i8
  %frombool1 = zext i1 %pstate_disable to i8
  %frombool2 = zext i1 %pstate_switch_disable to i8
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %cc6_settings = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 43
  %cpu_pstate_separation_time = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 43, i32 4
  %2 = ptrtoint ptr %cpu_pstate_separation_time to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu_pstate_separation_time, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %separation_time)
  %cmp.not = icmp eq i32 %3, %separation_time
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %cpu_cc6_disable = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 43, i32 2
  %4 = ptrtoint ptr %cpu_cc6_disable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cpu_cc6_disable, align 2, !range !128
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %frombool)
  %cmp6.not = icmp eq i8 %5, %frombool
  br i1 %cmp6.not, label %lor.lhs.false8, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %cpu_pstate_disable = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 43, i32 3
  %6 = ptrtoint ptr %cpu_pstate_disable to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cpu_pstate_disable, align 1, !range !128
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %frombool1)
  %cmp14.not = icmp eq i8 %7, %frombool1
  br i1 %cmp14.not, label %lor.lhs.false16, label %lor.lhs.false8.if.then_crit_edge

lor.lhs.false8.if.then_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false16:                                  ; preds = %lor.lhs.false8
  %nb_pstate_switch_disable = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 43, i32 1
  %8 = ptrtoint ptr %nb_pstate_switch_disable to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nb_pstate_switch_disable, align 1, !range !128
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %frombool2)
  %cmp22.not = icmp eq i8 %9, %frombool2
  br i1 %cmp22.not, label %lor.lhs.false16.if.end_crit_edge, label %lor.lhs.false16.if.then_crit_edge

lor.lhs.false16.if.then_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false16.if.end_crit_edge:                 ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false16.if.then_crit_edge, %lor.lhs.false8.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %10 = ptrtoint ptr %cc6_settings to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %cc6_settings, align 4
  %11 = ptrtoint ptr %cpu_pstate_separation_time to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %separation_time, ptr %cpu_pstate_separation_time, align 4
  %cpu_cc6_disable29 = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 43, i32 2
  %12 = ptrtoint ptr %cpu_cc6_disable29 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %cpu_cc6_disable29, align 2
  %cpu_pstate_disable33 = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 43, i32 3
  %13 = ptrtoint ptr %cpu_pstate_disable33 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool1, ptr %cpu_pstate_disable33, align 1
  %nb_pstate_switch_disable37 = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 43, i32 1
  %14 = ptrtoint ptr %nb_pstate_switch_disable37 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool2, ptr %nb_pstate_switch_disable37, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false16.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_get_dal_power_level(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef writeonly %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vddc_dep_on_dal_pwrl = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 4
  %0 = ptrtoint ptr %vddc_dep_on_dal_pwrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vddc_dep_on_dal_pwrl, align 4
  %max_clock_voltage_on_ac = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 8
  %2 = ptrtoint ptr %max_clock_voltage_on_ac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_clock_voltage_on_ac, align 4
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %info, align 4
  %mclk = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 8, i32 1
  %5 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mclk, align 4
  %memory_max_clock = getelementptr inbounds %struct.amd_pp_simple_clock_info, ptr %info, i32 0, i32 1
  %7 = ptrtoint ptr %memory_max_clock to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %memory_max_clock, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %vddc = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 8, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %i.0.in = phi i32 [ %9, %entry ], [ %i.0, %for.body.for.cond_crit_edge ]
  %i.0 = add i32 %i.0.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0)
  %cmp.not = icmp eq i32 %i.0, 0
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %10 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vddc, align 4
  %conv = zext i16 %11 to i32
  %v = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %1, i32 0, i32 1, i32 %i.0, i32 1
  %12 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %v, align 4
  %cmp2.not = icmp ugt i32 %13, %conv
  br i1 %cmp2.not, label %for.body.for.cond_crit_edge, label %if.then

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %1, i32 0, i32 1, i32 %i.0
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %level = getelementptr inbounds %struct.amd_pp_simple_clock_info, ptr %info, i32 0, i32 2
  %16 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %level, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_get_performance_level(ptr noundef readonly %hwmgr, ptr noundef readonly %state, i32 noundef %designation, i32 noundef %index, ptr noundef writeonly %level) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %level, null
  %cmp1 = icmp eq ptr %hwmgr, null
  %or.cond = or i1 %cmp1, %cmp
  %cmp3 = icmp eq ptr %state, null
  %or.cond62 = or i1 %cmp3, %or.cond
  br i1 %or.cond62, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1742518821, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 1742518821
  %hw_ps..i = select i1 %cmp.not.i, ptr %state, ptr null
  %level4 = getelementptr inbounds %struct.smu8_power_state, ptr %hw_ps..i, i32 0, i32 1
  %4 = ptrtoint ptr %level4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %level4, align 4
  %sub = add i32 %5, -1
  %6 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %index)
  %arrayidx = getelementptr %struct.smu8_power_state, ptr %hw_ps..i, i32 0, i32 15, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %designation)
  %cmp8 = icmp eq i32 %designation, 1
  br i1 %cmp8, label %for.cond.preheader, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

for.cond.preheader:                               ; preds = %if.end
  %10 = ptrtoint ptr %level4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %level4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp1163 = icmp ugt i32 %11, 1
  br i1 %cmp1163, label %for.body.lr.ph, label %for.cond.preheader.if.end22_crit_edge

for.cond.preheader.if.end22_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dce_slow_sclk_threshold = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 24
  %12 = ptrtoint ptr %dce_slow_sclk_threshold to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dce_slow_sclk_threshold, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, %11
  br i1 %exitcond.not, label %for.cond.if.end22_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.if.end22_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.064 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx13 = getelementptr %struct.smu8_power_state, ptr %hw_ps..i, i32 0, i32 15, i32 %i.064
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp15 = icmp ugt i32 %15, %13
  br i1 %cmp15, label %if.then16, label %for.cond

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %level, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %for.cond.if.end22_crit_edge, %for.cond.preheader.if.end22_crit_edge, %if.end.if.end22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp23 = icmp eq i32 %6, 0
  %arrayidx25 = getelementptr %struct.smu8_hwmgr, ptr %1, i32 0, i32 11, i32 4, i32 1
  %nbp_memory_clock27 = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 11, i32 4
  %.sink.in = select i1 %cmp23, ptr %arrayidx25, ptr %nbp_memory_clock27
  %17 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %.sink = load i32, ptr %.sink.in, align 4
  %18 = getelementptr inbounds %struct.PHM_PerformanceLevel, ptr %level, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %18, align 4
  %vddcIndex = getelementptr %struct.smu8_power_state, ptr %hw_ps..i, i32 0, i32 15, i32 %6, i32 1
  %20 = ptrtoint ptr %vddcIndex to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %vddcIndex, align 4
  %conv.i = zext i8 %21 to i32
  %mul.neg.i = mul nsw i32 %conv.i, -25
  %add = add nsw i32 %mul.neg.i, 6202
  %div61 = lshr i32 %add, 2
  %vddc = getelementptr inbounds %struct.PHM_PerformanceLevel, ptr %level, i32 0, i32 2
  %22 = ptrtoint ptr %vddc to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div61, ptr %vddc, align 4
  %nonLocalMemoryFreq = getelementptr inbounds %struct.PHM_PerformanceLevel, ptr %level, i32 0, i32 4
  %23 = ptrtoint ptr %nonLocalMemoryFreq to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %nonLocalMemoryFreq, align 4
  %nonLocalMemoryWidth = getelementptr inbounds %struct.PHM_PerformanceLevel, ptr %level, i32 0, i32 5
  %24 = ptrtoint ptr %nonLocalMemoryWidth to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %nonLocalMemoryWidth, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smu8_get_current_shallow_sleep_clocks(ptr nocapture noundef readnone %hwmgr, ptr nocapture noundef readonly %state, ptr nocapture noundef writeonly %clock_info) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1742518821, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 1742518821
  %hw_ps..i = select i1 %cmp.not.i, ptr %state, ptr null
  %levels = getelementptr inbounds %struct.smu8_power_state, ptr %hw_ps..i, i32 0, i32 15
  %2 = ptrtoint ptr %levels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %levels, align 4
  %ssDividerIndex = getelementptr inbounds %struct.smu8_power_state, ptr %hw_ps..i, i32 0, i32 15, i32 0, i32 3
  %4 = ptrtoint ptr %ssDividerIndex to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ssDividerIndex, align 2
  %conv = zext i8 %5 to i32
  %div20 = lshr i32 %3, %conv
  %min_eng_clk = getelementptr inbounds %struct.pp_clock_info, ptr %clock_info, i32 0, i32 2
  %6 = ptrtoint ptr %min_eng_clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div20, ptr %min_eng_clk, align 4
  %level = getelementptr inbounds %struct.smu8_power_state, ptr %hw_ps..i, i32 0, i32 1
  %7 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %level, align 4
  %sub = add i32 %8, -1
  %arrayidx4 = getelementptr %struct.smu8_power_state, ptr %hw_ps..i, i32 0, i32 15, i32 %sub
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4, align 4
  %ssDividerIndex10 = getelementptr %struct.smu8_power_state, ptr %hw_ps..i, i32 0, i32 15, i32 %sub, i32 3
  %11 = ptrtoint ptr %ssDividerIndex10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ssDividerIndex10, align 2
  %conv11 = zext i8 %12 to i32
  %div1321 = lshr i32 %10, %conv11
  %max_eng_clk = getelementptr inbounds %struct.pp_clock_info, ptr %clock_info, i32 0, i32 3
  %13 = ptrtoint ptr %max_eng_clk to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div1321, ptr %max_eng_clk, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_get_clock_by_type(ptr noundef %hwmgr, i32 noundef %type, ptr nocapture noundef %clocks) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %max_sclk_level.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 92
  %2 = ptrtoint ptr %max_sclk_level.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_sclk_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.then.i, label %entry.smu8_get_max_sclk_level.exit_crit_edge

entry.smu8_get_max_sclk_level.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_max_sclk_level.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 59, ptr noundef %max_sclk_level.i) #13
  %4 = ptrtoint ptr %max_sclk_level.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_sclk_level.i, align 4
  %add.i = add i32 %5, 1
  store i32 %add.i, ptr %max_sclk_level.i, align 4
  br label %smu8_get_max_sclk_level.exit

smu8_get_max_sclk_level.exit:                     ; preds = %if.then.i, %entry.smu8_get_max_sclk_level.exit_crit_edge
  %6 = ptrtoint ptr %max_sclk_level.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_sclk_level.i, align 4
  %8 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %clocks, align 4
  %9 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %type, label %smu8_get_max_sclk_level.exit.cleanup_crit_edge [
    i32 1, label %for.cond.preheader
    i32 2, label %sw.bb3
    i32 3, label %for.body20.preheader
  ]

smu8_get_max_sclk_level.exit.cleanup_crit_edge:   ; preds = %smu8_get_max_sclk_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %smu8_get_max_sclk_level.exit
  %10 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp61.not = icmp eq i32 %11, 0
  br i1 %cmp61.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.062 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.smu8_hwmgr, ptr %1, i32 0, i32 11, i32 7, i32 %i.062
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %13, 10
  %arrayidx2 = getelementptr %struct.amd_pp_clocks, ptr %clocks, i32 0, i32 1, i32 %i.062
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul, ptr %arrayidx2, align 4
  %inc = add nuw i32 %i.062, 1
  %15 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %clocks, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

sw.bb3:                                           ; preds = %smu8_get_max_sclk_level.exit
  %dyn_state = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29
  %17 = ptrtoint ptr %dyn_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dyn_state, align 4
  %19 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp659.not = icmp eq i32 %20, 0
  br i1 %cmp659.not, label %sw.bb3.cleanup_crit_edge, label %sw.bb3.for.body7_crit_edge

sw.bb3.for.body7_crit_edge:                       ; preds = %sw.bb3
  br label %for.body7

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %sw.bb3.for.body7_crit_edge
  %i.160 = phi i32 [ %inc13, %for.body7.for.body7_crit_edge ], [ 0, %sw.bb3.for.body7_crit_edge ]
  %arrayidx8 = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %18, i32 0, i32 1, i32 %i.160
  %21 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx8, align 4
  %mul9 = mul i32 %22, 10
  %arrayidx11 = getelementptr %struct.amd_pp_clocks, ptr %clocks, i32 0, i32 1, i32 %i.160
  %23 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul9, ptr %arrayidx11, align 4
  %inc13 = add nuw i32 %i.160, 1
  %24 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %clocks, align 4
  %cmp6 = icmp ult i32 %inc13, %25
  br i1 %cmp6, label %for.body7.for.body7_crit_edge, label %for.body7.cleanup_crit_edge

for.body7.cleanup_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body7

for.body20.preheader:                             ; preds = %smu8_get_max_sclk_level.exit
  %26 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %clocks, align 4
  br label %for.body20

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %for.body20.preheader
  %27 = phi i32 [ %33, %for.body20.for.body20_crit_edge ], [ 2, %for.body20.preheader ]
  %i.258 = phi i32 [ %inc29, %for.body20.for.body20_crit_edge ], [ 0, %for.body20.preheader ]
  %28 = xor i32 %i.258, -1
  %sub23 = add i32 %27, %28
  %arrayidx24 = getelementptr %struct.smu8_hwmgr, ptr %1, i32 0, i32 11, i32 4, i32 %sub23
  %29 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx24, align 4
  %mul25 = mul i32 %30, 10
  %arrayidx27 = getelementptr %struct.amd_pp_clocks, ptr %clocks, i32 0, i32 1, i32 %i.258
  %31 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul25, ptr %arrayidx27, align 4
  %inc29 = add nuw i32 %i.258, 1
  %32 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %clocks, align 4
  %cmp19 = icmp ult i32 %inc29, %33
  br i1 %cmp19, label %for.body20.for.body20_crit_edge, label %for.body20.cleanup_crit_edge

for.body20.cleanup_crit_edge:                     ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body20

cleanup:                                          ; preds = %for.body20.cleanup_crit_edge, %for.body7.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %smu8_get_max_sclk_level.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %smu8_get_max_sclk_level.exit.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %sw.bb3.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ], [ 0, %for.body7.cleanup_crit_edge ], [ 0, %for.body20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_get_max_high_clocks(ptr noundef %hwmgr, ptr noundef writeonly %clocks) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dyn_state = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29
  %0 = ptrtoint ptr %dyn_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dyn_state, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  %cmp4 = icmp eq ptr %clocks, null
  %or.cond = or i1 %cmp4, %cmp2
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %4 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %backend.i, align 4
  %max_sclk_level.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %5, i32 0, i32 92
  %6 = ptrtoint ptr %max_sclk_level.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_sclk_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.smu8_get_max_sclk_level.exit_crit_edge

if.end.smu8_get_max_sclk_level.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_max_sclk_level.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 59, ptr noundef %max_sclk_level.i) #13
  %8 = ptrtoint ptr %max_sclk_level.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_sclk_level.i, align 4
  %add.i = add i32 %9, 1
  store i32 %add.i, ptr %max_sclk_level.i, align 4
  br label %smu8_get_max_sclk_level.exit

smu8_get_max_sclk_level.exit:                     ; preds = %if.then.i, %if.end.smu8_get_max_sclk_level.exit_crit_edge
  %10 = ptrtoint ptr %max_sclk_level.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_sclk_level.i, align 4
  %sub = add i32 %11, -1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %13)
  %cmp6 = icmp ult i32 %sub, %13
  %sub10 = add i32 %13, -1
  %sub10.pn = select i1 %cmp6, i32 %sub, i32 %sub10
  %storemerge.in = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %1, i32 0, i32 1, i32 %sub10.pn
  %14 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %storemerge = load i32, ptr %storemerge.in, align 4
  %15 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %storemerge, ptr %clocks, align 4
  %mclk = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 8, i32 1
  %16 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mclk, align 4
  %memory_max_clock = getelementptr inbounds %struct.amd_pp_simple_clock_info, ptr %clocks, i32 0, i32 1
  %18 = ptrtoint ptr %memory_max_clock to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %memory_max_clock, align 4
  br label %cleanup

cleanup:                                          ; preds = %smu8_get_max_sclk_level.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %smu8_get_max_sclk_level.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_power_off_asic(ptr noundef %hwmgr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smu8_disable_dpm_tasks(ptr noundef %hwmgr)
  %backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend.i, align 4
  %disp_clk_bypass_pending.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %disp_clk_bypass_pending.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %disp_clk_bypass_pending.i, align 1
  %disp_clk_bypass.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 26
  %3 = ptrtoint ptr %disp_clk_bypass.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %disp_clk_bypass.i, align 4
  %4 = load ptr, ptr %backend.i, align 4
  %is_nb_dpm_enabled.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %4, i32 0, i32 42
  %5 = ptrtoint ptr %is_nb_dpm_enabled.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %is_nb_dpm_enabled.i, align 4
  %6 = load ptr, ptr %backend.i, align 4
  %cc6_settings.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %6, i32 0, i32 43
  %7 = ptrtoint ptr %cc6_settings.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %cc6_settings.i, align 4
  %cpu_pstate_separation_time.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %6, i32 0, i32 43, i32 4
  %8 = ptrtoint ptr %cpu_pstate_separation_time.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %cpu_pstate_separation_time.i, align 4
  %cpu_cc6_disable.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %6, i32 0, i32 43, i32 2
  %9 = ptrtoint ptr %cpu_cc6_disable.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %cpu_cc6_disable.i, align 2
  %cpu_pstate_disable.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %6, i32 0, i32 43, i32 3
  %10 = ptrtoint ptr %cpu_pstate_disable.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %cpu_pstate_disable.i, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_force_clock_level(ptr noundef %hwmgr, i32 noundef %type, i32 noundef %mask) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cond = icmp eq i32 %type, 0
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 18, i32 noundef %mask, ptr noundef null) #13
  %call1 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 19, i32 noundef %mask, ptr noundef null) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_print_clock_levels(ptr nocapture noundef readonly %hwmgr, i32 noundef %type, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dyn_state = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29
  %0 = ptrtoint ptr %dyn_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dyn_state, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %read_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %read_ind_register to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_ind_register, align 4
  %call = tail call i32 %8(ptr noundef %4, i32 noundef 1, i32 noundef -803209196) #13
  %and = lshr i32 %call, 16
  %shr = and i32 %and, 31
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp50.not = icmp eq i32 %10, 0
  br i1 %cmp50.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.for.body_crit_edge

sw.bb.for.body_crit_edge:                         ; preds = %sw.bb
  br label %for.body

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.bb.for.body_crit_edge
  %size.052 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %sw.bb.for.body_crit_edge ]
  %i.051 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %sw.bb.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %size.052
  %arrayidx = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %1, i32 0, i32 1, i32 %i.051
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %div = udiv i32 %12, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %i.051, i32 %shr)
  %cmp2 = icmp eq i32 %i.051, %shr
  %cond = select i1 %cmp2, ptr @.str.60, ptr @.str.61
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef %i.051, i32 noundef %div, ptr noundef nonnull %cond)
  %add = add i32 %call3, %size.052
  %inc = add nuw i32 %i.051, 1
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %cmp = icmp ult i32 %inc, %14
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.sw.epilog_crit_edge

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %15 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %backend, align 4
  %device5 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %17 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device5, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %read_ind_register7 = getelementptr inbounds %struct.cgs_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %read_ind_register7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_ind_register7, align 4
  %call9 = tail call i32 %22(ptr noundef %18, i32 noundef 1, i32 noundef -803209196) #13
  %and10 = lshr i32 %call9, 8
  %shr11 = and i32 %and10, 15
  %arrayidx17 = getelementptr %struct.smu8_hwmgr, ptr %16, i32 0, i32 11, i32 4, i32 1
  %23 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx17, align 4
  %div18 = udiv i32 %24, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr11)
  %cmp20 = icmp eq i32 %shr11, 0
  %cond21 = select i1 %cmp20, ptr @.str.60, ptr @.str.61
  %call22 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.59, i32 noundef 0, i32 noundef %div18, ptr noundef nonnull %cond21)
  %add.ptr15.1 = getelementptr i8, ptr %buf, i32 %call22
  %arrayidx17.1 = getelementptr %struct.smu8_hwmgr, ptr %16, i32 0, i32 11, i32 4, i32 0
  %25 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx17.1, align 4
  %div18.1 = udiv i32 %26, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr11)
  %cmp20.1 = icmp eq i32 %shr11, 1
  %cond21.1 = select i1 %cmp20.1, ptr @.str.60, ptr @.str.61
  %call22.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr15.1, ptr noundef nonnull @.str.59, i32 noundef 1, i32 noundef %div18.1, ptr noundef nonnull %cond21.1)
  %add23.1 = add i32 %call22.1, %call22
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %for.body.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %size.2 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ %add23.1, %sw.bb4 ], [ %add, %for.body.sw.epilog_crit_edge ]
  ret i32 %size.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_read_sensor(ptr noundef %hwmgr, i32 noundef %idx, ptr nocapture noundef writeonly %value, ptr nocapture noundef %size) #1 align 64 {
entry:
  %activity_percent = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %dyn_state = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29
  %2 = ptrtoint ptr %dyn_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dyn_state, align 4
  %vce_clock_voltage_dependency_table = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 15
  %4 = ptrtoint ptr %vce_clock_voltage_dependency_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vce_clock_voltage_dependency_table, align 4
  %uvd_clock_voltage_dependency_table = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 16
  %6 = ptrtoint ptr %uvd_clock_voltage_dependency_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uvd_clock_voltage_dependency_table, align 4
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %read_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %read_ind_register to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_ind_register, align 4
  %call = tail call i32 %13(ptr noundef %9, i32 noundef 1, i32 noundef -803209196) #13
  %and = lshr i32 %call, 16
  %shr = and i32 %and, 31
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %read_ind_register6 = getelementptr inbounds %struct.cgs_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %read_ind_register6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_ind_register6, align 4
  %call8 = tail call i32 %19(ptr noundef %15, i32 noundef 1, i32 noundef -803208972) #13
  %and9 = and i32 %call8, 15
  %20 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %read_ind_register13 = getelementptr inbounds %struct.cgs_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %read_ind_register13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_ind_register13, align 4
  %call15 = tail call i32 %25(ptr noundef %21, i32 noundef 1, i32 noundef -803208972) #13
  %and16 = lshr i32 %call15, 8
  %shr17 = and i32 %and16, 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %activity_percent) #13
  %26 = ptrtoint ptr %activity_percent to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %activity_percent, align 4, !annotation !127
  %27 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp = icmp slt i32 %28, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %29 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %size, align 4
  %30 = zext i32 %idx to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %idx, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb21
    i32 3, label %sw.bb32
    i32 4, label %sw.bb45
    i32 5, label %sw.bb54
    i32 6, label %sw.bb66
    i32 7, label %sw.bb77
    i32 14, label %sw.bb86
    i32 13, label %sw.bb91
    i32 10, label %sw.bb96
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %shr)
  %cmp18 = icmp ult i32 %shr, 8
  br i1 %cmp18, label %if.then19, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then19:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %3, i32 0, i32 1, i32 %shr
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  br label %cleanup.sink.split

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %read_ind_register24 = getelementptr inbounds %struct.cgs_ops, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %read_ind_register24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_ind_register24, align 4
  %call26 = tail call i32 %38(ptr noundef %34, i32 noundef 1, i32 noundef -668794812) #13
  %shr28 = lshr i32 %call26, 24
  %mul.neg.i = mul nuw nsw i32 %shr28, 262119
  %sub.i = add nuw nsw i32 %mul.neg.i, 6200
  %div155 = lshr i32 %sub.i, 2
  %conv31 = and i32 %div155, 65535
  br label %cleanup.sink.split

sw.bb32:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %read_ind_register35 = getelementptr inbounds %struct.cgs_ops, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %read_ind_register35 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read_ind_register35, align 4
  %call37 = tail call i32 %44(ptr noundef %40, i32 noundef 1, i32 noundef -668794808) #13
  %shr39 = lshr i32 %call37, 24
  %mul.neg.i157 = mul nuw nsw i32 %shr39, 262119
  %sub.i158 = add nuw nsw i32 %mul.neg.i157, 6200
  %div42154 = lshr i32 %sub.i158, 2
  %conv44 = and i32 %div42154, 65535
  br label %cleanup.sink.split

sw.bb45:                                          ; preds = %if.end
  %uvd_power_gated = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 86
  %45 = ptrtoint ptr %uvd_power_gated to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %uvd_power_gated, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not = icmp eq i8 %46, 0
  br i1 %tobool.not, label %if.then46, label %sw.bb45.cleanup.sink.split_crit_edge

sw.bb45.cleanup.sink.split_crit_edge:             ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then46:                                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and9)
  %cmp47 = icmp ugt i32 %and9, 7
  br i1 %cmp47, label %if.then46.cleanup_crit_edge, label %if.else

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx51 = getelementptr %struct.phm_uvd_clock_voltage_dependency_table, ptr %7, i32 0, i32 1, i32 %and9
  %47 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx51, align 4
  br label %cleanup.sink.split

sw.bb54:                                          ; preds = %if.end
  %uvd_power_gated55 = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 86
  %49 = ptrtoint ptr %uvd_power_gated55 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %uvd_power_gated55, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool56.not = icmp eq i8 %50, 0
  br i1 %tobool56.not, label %if.then57, label %sw.bb54.cleanup.sink.split_crit_edge

sw.bb54.cleanup.sink.split_crit_edge:             ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then57:                                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and9)
  %cmp58 = icmp ugt i32 %and9, 7
  br i1 %cmp58, label %if.then57.cleanup_crit_edge, label %if.else61

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else61:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #15
  %dclk64 = getelementptr %struct.phm_uvd_clock_voltage_dependency_table, ptr %7, i32 0, i32 1, i32 %and9, i32 1
  %51 = ptrtoint ptr %dclk64 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dclk64, align 4
  br label %cleanup.sink.split

sw.bb66:                                          ; preds = %if.end
  %vce_power_gated = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 87
  %53 = ptrtoint ptr %vce_power_gated to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %vce_power_gated, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool67.not = icmp eq i8 %54, 0
  br i1 %tobool67.not, label %if.then68, label %sw.bb66.cleanup.sink.split_crit_edge

sw.bb66.cleanup.sink.split_crit_edge:             ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then68:                                        ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr17)
  %cmp69 = icmp ugt i32 %shr17, 7
  br i1 %cmp69, label %if.then68.cleanup_crit_edge, label %if.else72

if.then68.cleanup_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else72:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx74 = getelementptr %struct.phm_vce_clock_voltage_dependency_table, ptr %5, i32 0, i32 1, i32 %shr17
  %55 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx74, align 4
  br label %cleanup.sink.split

sw.bb77:                                          ; preds = %if.end
  %call78 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 617, ptr noundef nonnull %activity_percent) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp eq i32 %call78, 0
  br i1 %cmp79, label %if.then81, label %sw.bb77.cleanup_crit_edge

sw.bb77.cleanup_crit_edge:                        ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then81:                                        ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %activity_percent to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %activity_percent, align 4
  %59 = call i32 @llvm.umin.i32(i32 %58, i32 100)
  %60 = ptrtoint ptr %activity_percent to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %activity_percent, align 4
  br label %cleanup.sink.split

sw.bb86:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %uvd_power_gated87 = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 86
  %61 = ptrtoint ptr %uvd_power_gated87 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %uvd_power_gated87, align 4, !range !128
  %63 = xor i8 %62, 1
  %64 = zext i8 %63 to i32
  br label %cleanup.sink.split

sw.bb91:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %vce_power_gated92 = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 87
  %65 = ptrtoint ptr %vce_power_gated92 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %vce_power_gated92, align 1, !range !128
  %67 = xor i8 %66, 1
  %68 = zext i8 %67 to i32
  br label %cleanup.sink.split

sw.bb96:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %69 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %device, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %read_ind_register.i = getelementptr inbounds %struct.cgs_ops, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %read_ind_register.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %read_ind_register.i, align 4
  %call.i = tail call i32 %74(ptr noundef %70, i32 noundef 1, i32 noundef -668988252) #13
  %75 = and i32 %call.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i = icmp eq i32 %75, 0
  %div10.i = lshr i32 %call.i, 24
  %sub.i159 = add nsw i32 %div10.i, -49
  %actual_temp.0.in.i = select i1 %tobool.not.i, i32 %div10.i, i32 %sub.i159
  %actual_temp.0.i = mul nsw i32 %actual_temp.0.in.i, 1000
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb96, %sw.bb91, %sw.bb86, %if.then81, %if.else72, %sw.bb66.cleanup.sink.split_crit_edge, %if.else61, %sw.bb54.cleanup.sink.split_crit_edge, %if.else, %sw.bb45.cleanup.sink.split_crit_edge, %sw.bb32, %sw.bb21, %if.then19
  %actual_temp.0.i.sink = phi i32 [ %actual_temp.0.i, %sw.bb96 ], [ %68, %sw.bb91 ], [ %64, %sw.bb86 ], [ %59, %if.then81 ], [ %56, %if.else72 ], [ %52, %if.else61 ], [ %48, %if.else ], [ %conv44, %sw.bb32 ], [ %conv31, %sw.bb21 ], [ %32, %if.then19 ], [ 0, %sw.bb45.cleanup.sink.split_crit_edge ], [ 0, %sw.bb54.cleanup.sink.split_crit_edge ], [ 0, %sw.bb66.cleanup.sink.split_crit_edge ]
  %76 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %actual_temp.0.i.sink, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb77.cleanup_crit_edge, %if.then68.cleanup_crit_edge, %if.then57.cleanup_crit_edge, %if.then46.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %if.then46.cleanup_crit_edge ], [ -22, %if.then57.cleanup_crit_edge ], [ -22, %if.then68.cleanup_crit_edge ], [ -5, %sw.bb77.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %activity_percent) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_notify_cac_buffer_info(ptr noundef %hwmgr, i32 noundef %virtual_addr_low, i32 noundef %virtual_addr_hi, i32 noundef %mc_addr_low, i32 noundef %mc_addr_hi, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 66, i32 noundef %mc_addr_hi, ptr noundef null) #13
  %call1 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 67, i32 noundef %mc_addr_low, ptr noundef null) #13
  %call2 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 68, i32 noundef %virtual_addr_hi, ptr noundef null) #13
  %call3 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 69, i32 noundef %virtual_addr_low, ptr noundef null) #13
  %call4 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 70, i32 noundef %size, ptr noundef null) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_nbdpm_pstate_enable_disable(ptr noundef %hwmgr, i1 noundef zeroext %enable, i1 noundef zeroext %lock) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %is_nb_dpm_enabled = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %is_nb_dpm_enabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %is_nb_dpm_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  br i1 %enable, label %do.body4, label %do.body15

do.body4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smu8_nbdpm_pstate_enable_disable.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smu8_nbdpm_pstate_enable_disable, %if.then9)) #13
          to label %cleanup.sink.split [label %if.then9], !srcloc !129

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smu8_nbdpm_pstate_enable_disable.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.64) #13
  br label %cleanup.sink.split

do.body15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smu8_nbdpm_pstate_enable_disable.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smu8_nbdpm_pstate_enable_disable, %if.then27)) #13
          to label %cleanup.sink.split [label %if.then27], !srcloc !129

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smu8_nbdpm_pstate_enable_disable.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.66) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then27, %do.body15, %if.then9, %do.body4
  %.sink = phi i16 [ 47, %do.body4 ], [ 47, %if.then9 ], [ 46, %do.body15 ], [ 46, %if.then27 ]
  %cond34 = zext i1 %lock to i32
  %call35 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext %.sink, i32 noundef %cond34, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call35, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smu8_get_thermal_temperature_range(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef writeonly %thermal_data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %2 = call ptr @memcpy(ptr %thermal_data, ptr @SMU7ThermalPolicy, i32 36)
  %thermal_auto_throttling_treshold = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %thermal_auto_throttling_treshold to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %thermal_auto_throttling_treshold, align 4
  %htc_hyst_lmt = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 11, i32 10
  %5 = ptrtoint ptr %htc_hyst_lmt to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %htc_hyst_lmt, align 1
  %conv = zext i8 %6 to i32
  %add = add i32 %4, %conv
  %mul = mul i32 %add, 1000
  %max = getelementptr inbounds %struct.PP_TemperatureRange, ptr %thermal_data, i32 0, i32 1
  %7 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul, ptr %max, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @smu_atom_get_data_table(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_download_powerplay_table(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_engine_pll_dividers_kong(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_upload_powerplay_table(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc_with_parameter(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pp_tables_get_entry(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smu8_dpm_get_pp_table_entry_callback(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef %hw_ps, i32 noundef %index, ptr nocapture noundef readonly %clock_info) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw_ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_ps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1742518821, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 1742518821
  %hw_ps..i = select i1 %cmp.not.i, ptr %hw_ps, ptr null
  %dyn_state = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29
  %2 = ptrtoint ptr %dyn_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dyn_state, align 4
  %4 = ptrtoint ptr %clock_info to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %clock_info, align 1
  %hardwareActivityPerformanceLevels = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 4
  %6 = ptrtoint ptr %hardwareActivityPerformanceLevels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hardwareActivityPerformanceLevels, align 4
  %8 = trunc i32 %7 to i8
  %conv2 = add i8 %8, -1
  %9 = tail call i8 @llvm.umin.i8(i8 %5, i8 %conv2)
  %idxprom = zext i8 %9 to i32
  %arrayidx = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %3, i32 0, i32 1, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %arrayidx9 = getelementptr %struct.smu8_power_state, ptr %hw_ps..i, i32 0, i32 15, i32 %index
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx9, align 4
  %v = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %3, i32 0, i32 1, i32 %idxprom, i32 1
  %13 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %v, align 4
  %conv13 = trunc i32 %14 to i8
  %vddcIndex = getelementptr %struct.smu8_power_state, ptr %hw_ps..i, i32 0, i32 15, i32 %index, i32 1
  %15 = ptrtoint ptr %vddcIndex to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv13, ptr %vddcIndex, align 4
  %add = add i32 %index, 1
  %level = getelementptr inbounds %struct.smu8_power_state, ptr %hw_ps..i, i32 0, i32 1
  %16 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %level, align 4
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %entry.if.end23_crit_edge, label %if.then18

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dsDividerIndex = getelementptr %struct.smu8_power_state, ptr %hw_ps..i, i32 0, i32 15, i32 %index, i32 2
  %19 = ptrtoint ptr %dsDividerIndex to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 5, ptr %dsDividerIndex, align 1
  %ssDividerIndex = getelementptr %struct.smu8_power_state, ptr %hw_ps..i, i32 0, i32 15, i32 %index, i32 3
  %20 = ptrtoint ptr %ssDividerIndex to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 5, ptr %ssDividerIndex, align 2
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %entry.if.end23_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pp_tables_get_num_of_entries(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_set_powergating_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_set_clockgating_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smu8_update_sclk_limit(ptr noundef %hwmgr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %dyn_state = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29
  %2 = ptrtoint ptr %dyn_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dyn_state, align 4
  %entries = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %entries, align 4
  %sclk_dpm = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 62
  %6 = ptrtoint ptr %sclk_dpm to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %sclk_dpm, align 4
  %7 = load ptr, ptr %backend, align 4
  %max_sclk_level.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %7, i32 0, i32 92
  %8 = ptrtoint ptr %max_sclk_level.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_sclk_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %if.then.i, label %entry.smu8_get_max_sclk_level.exit_crit_edge

entry.smu8_get_max_sclk_level.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_max_sclk_level.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 59, ptr noundef %max_sclk_level.i) #13
  %10 = ptrtoint ptr %max_sclk_level.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_sclk_level.i, align 4
  %add.i = add i32 %11, 1
  store i32 %add.i, ptr %max_sclk_level.i, align 4
  br label %smu8_get_max_sclk_level.exit

smu8_get_max_sclk_level.exit:                     ; preds = %if.then.i, %entry.smu8_get_max_sclk_level.exit_crit_edge
  %12 = ptrtoint ptr %max_sclk_level.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_sclk_level.i, align 4
  %sub = add i32 %13, -1
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %15)
  %cmp = icmp ult i32 %sub, %15
  %sub7 = add i32 %15, -1
  %spec.select = select i1 %cmp, i32 %sub, i32 %sub7
  %.sink.in = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %3, i32 0, i32 1, i32 %spec.select
  %16 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %.sink = load i32, ptr %.sink.in, align 4
  %17 = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 62, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %17, align 4
  %display_config = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 45
  %19 = ptrtoint ptr %display_config to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %display_config, align 4
  %min_core_set_clock = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %min_core_set_clock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %min_core_set_clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp12 = icmp eq i32 %22, 0
  br i1 %cmp12, label %do.body, label %smu8_get_max_sclk_level.exit.if.end19_crit_edge

smu8_get_max_sclk_level.exit.if.end19_crit_edge:  ; preds = %smu8_get_max_sclk_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

do.body:                                          ; preds = %smu8_get_max_sclk_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smu8_update_sclk_limit.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smu8_update_sclk_limit, %if.then17)) #13
          to label %if.end19 [label %if.then17], !srcloc !129

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smu8_update_sclk_limit.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.38) #13
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %do.body, %smu8_get_max_sclk_level.exit.if.end19_crit_edge
  %hard_min_clk = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 62, i32 1
  %23 = ptrtoint ptr %hard_min_clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hard_min_clk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %22)
  %cmp21.not = icmp eq i32 %24, %22
  br i1 %cmp21.not, label %if.end19.if.end29_crit_edge, label %if.then22

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then22:                                        ; preds = %if.end19
  %25 = ptrtoint ptr %hard_min_clk to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %22, ptr %hard_min_clk, align 4
  %26 = ptrtoint ptr %dyn_state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dyn_state, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp26.i = icmp sgt i32 %29, 0
  br i1 %cmp26.i, label %if.then22.for.body.i_crit_edge, label %if.then22.smu8_get_sclk_level.exit_crit_edge

if.then22.smu8_get_sclk_level.exit_crit_edge:     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_sclk_level.exit

if.then22.for.body.i_crit_edge:                   ; preds = %if.then22
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then22.for.body.i_crit_edge
  %i.027.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then22.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %27, i32 0, i32 1, i32 %i.027.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %22)
  %cmp1.not.i = icmp ult i32 %31, %22
  br i1 %cmp1.not.i, label %for.inc.i, label %for.body.i.smu8_get_sclk_level.exit_crit_edge

for.body.i.smu8_get_sclk_level.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_sclk_level.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %29
  br i1 %exitcond.not.i, label %for.inc.i.smu8_get_sclk_level.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.smu8_get_sclk_level.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_sclk_level.exit

smu8_get_sclk_level.exit:                         ; preds = %for.inc.i.smu8_get_sclk_level.exit_crit_edge, %for.body.i.smu8_get_sclk_level.exit_crit_edge, %if.then22.smu8_get_sclk_level.exit_crit_edge
  %i.2.i = phi i32 [ 0, %if.then22.smu8_get_sclk_level.exit_crit_edge ], [ %29, %for.inc.i.smu8_get_sclk_level.exit_crit_edge ], [ %i.027.i, %for.body.i.smu8_get_sclk_level.exit_crit_edge ]
  %call28 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 20, i32 noundef %i.2.i, ptr noundef null) #13
  br label %if.end29

if.end29:                                         ; preds = %smu8_get_sclk_level.exit, %if.end19.if.end29_crit_edge
  %32 = ptrtoint ptr %sclk_dpm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sclk_dpm, align 4
  %arrayidx.i1 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 4
  %34 = ptrtoint ptr %arrayidx.i1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i1, align 4
  %and1.i = and i32 %35, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i2.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i2.not, label %if.end29.if.end49_crit_edge, label %if.end38

if.end29.if.end49_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.end38:                                         ; preds = %if.end29
  %mclk = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 8, i32 1
  %36 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mclk, align 4
  %mul = mul i32 %37, 75
  %div = udiv i32 %mul, 100
  %38 = tail call i32 @llvm.umax.i32(i32 %33, i32 %div)
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %div)
  %cmp41.not.not = icmp ult i32 %33, %div
  br i1 %cmp41.not.not, label %if.then42, label %if.end38.if.end49_crit_edge

if.end38.if.end49_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then42:                                        ; preds = %if.end38
  %39 = ptrtoint ptr %sclk_dpm to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %sclk_dpm, align 4
  %40 = ptrtoint ptr %dyn_state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dyn_state, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp26.i4 = icmp sgt i32 %43, 0
  br i1 %cmp26.i4, label %if.then42.for.body.i8_crit_edge, label %if.then42.smu8_get_sclk_level.exit13_crit_edge

if.then42.smu8_get_sclk_level.exit13_crit_edge:   ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_sclk_level.exit13

if.then42.for.body.i8_crit_edge:                  ; preds = %if.then42
  br label %for.body.i8

for.body.i8:                                      ; preds = %for.inc.i11.for.body.i8_crit_edge, %if.then42.for.body.i8_crit_edge
  %i.027.i5 = phi i32 [ %inc.i9, %for.inc.i11.for.body.i8_crit_edge ], [ 0, %if.then42.for.body.i8_crit_edge ]
  %arrayidx.i6 = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %41, i32 0, i32 1, i32 %i.027.i5
  %44 = ptrtoint ptr %arrayidx.i6 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %38)
  %cmp1.not.i7 = icmp ult i32 %45, %38
  br i1 %cmp1.not.i7, label %for.inc.i11, label %for.body.i8.smu8_get_sclk_level.exit13_crit_edge

for.body.i8.smu8_get_sclk_level.exit13_crit_edge: ; preds = %for.body.i8
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_sclk_level.exit13

for.inc.i11:                                      ; preds = %for.body.i8
  %inc.i9 = add nuw nsw i32 %i.027.i5, 1
  %exitcond.not.i10 = icmp eq i32 %inc.i9, %43
  br i1 %exitcond.not.i10, label %for.inc.i11.smu8_get_sclk_level.exit13_crit_edge, label %for.inc.i11.for.body.i8_crit_edge

for.inc.i11.for.body.i8_crit_edge:                ; preds = %for.inc.i11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i8

for.inc.i11.smu8_get_sclk_level.exit13_crit_edge: ; preds = %for.inc.i11
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_sclk_level.exit13

smu8_get_sclk_level.exit13:                       ; preds = %for.inc.i11.smu8_get_sclk_level.exit13_crit_edge, %for.body.i8.smu8_get_sclk_level.exit13_crit_edge, %if.then42.smu8_get_sclk_level.exit13_crit_edge
  %i.2.i12 = phi i32 [ 0, %if.then42.smu8_get_sclk_level.exit13_crit_edge ], [ %43, %for.inc.i11.smu8_get_sclk_level.exit13_crit_edge ], [ %i.027.i5, %for.body.i8.smu8_get_sclk_level.exit13_crit_edge ]
  %call48 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 18, i32 noundef %i.2.i12, ptr noundef null) #13
  br label %if.end49

if.end49:                                         ; preds = %smu8_get_sclk_level.exit13, %if.end38.if.end49_crit_edge, %if.end29.if.end49_crit_edge
  %clock.023 = phi i32 [ %38, %smu8_get_sclk_level.exit13 ], [ %38, %if.end38.if.end49_crit_edge ], [ %33, %if.end29.if.end49_crit_edge ]
  %46 = ptrtoint ptr %arrayidx.i1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i1, align 4
  %and1.i15 = and i32 %47, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i15)
  %cmp.i16.not = icmp eq i32 %and1.i15, 0
  br i1 %cmp.i16.not, label %if.end49.if.end64_crit_edge, label %land.lhs.true

if.end49.if.end64_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

land.lhs.true:                                    ; preds = %if.end49
  %48 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %clock.023)
  %cmp56.not = icmp eq i32 %49, %clock.023
  br i1 %cmp56.not, label %land.lhs.true.if.end64_crit_edge, label %if.then57

land.lhs.true.if.end64_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

if.then57:                                        ; preds = %land.lhs.true
  %50 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %clock.023, ptr %17, align 4
  %51 = ptrtoint ptr %dyn_state to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dyn_state, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %55 = add i32 %54, -1
  %smin.i = tail call i32 @llvm.smin.i32(i32 %55, i32 -1) #13
  br label %for.cond4.i

for.cond4.i:                                      ; preds = %for.body6.i.for.cond4.i_crit_edge, %if.then57
  %i.1.in.i = phi i32 [ %54, %if.then57 ], [ %i.1.i, %for.body6.i.for.cond4.i_crit_edge ]
  %i.1.i = add i32 %i.1.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1.i)
  %cmp5.i = icmp sgt i32 %i.1.i, -1
  br i1 %cmp5.i, label %for.body6.i, label %for.cond4.i.smu8_get_sclk_level.exit19_crit_edge

for.cond4.i.smu8_get_sclk_level.exit19_crit_edge: ; preds = %for.cond4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_sclk_level.exit19

for.body6.i:                                      ; preds = %for.cond4.i
  %arrayidx8.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %52, i32 0, i32 1, i32 %i.1.i
  %56 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx8.i, align 4
  %cmp10.not.i = icmp ugt i32 %57, %clock.023
  br i1 %cmp10.not.i, label %for.body6.i.for.cond4.i_crit_edge, label %for.body6.i.smu8_get_sclk_level.exit19_crit_edge

for.body6.i.smu8_get_sclk_level.exit19_crit_edge: ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu8_get_sclk_level.exit19

for.body6.i.for.cond4.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond4.i

smu8_get_sclk_level.exit19:                       ; preds = %for.body6.i.smu8_get_sclk_level.exit19_crit_edge, %for.cond4.i.smu8_get_sclk_level.exit19_crit_edge
  %i.2.i18 = phi i32 [ %smin.i, %for.cond4.i.smu8_get_sclk_level.exit19_crit_edge ], [ %i.1.i, %for.body6.i.smu8_get_sclk_level.exit19_crit_edge ]
  %call63 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 19, i32 noundef %i.2.i18, ptr noundef null) #13
  br label %if.end64

if.end64:                                         ; preds = %smu8_get_sclk_level.exit19, %land.lhs.true.if.end64_crit_edge, %if.end49.if.end64_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smu8_update_low_mem_pstate(ptr noundef %hwmgr, ptr nocapture noundef readonly %input) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %nb_dpm_enable = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 11, i32 3
  %2 = ptrtoint ptr %nb_dpm_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nb_dpm_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end23_crit_edge, label %if.then

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then:                                          ; preds = %entry
  %pnew_state1 = getelementptr inbounds %struct.phm_set_power_state_input, ptr %input, i32 0, i32 1
  %4 = ptrtoint ptr %pnew_state1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pnew_state1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1742518821, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 1742518821
  %hw_ps..i = select i1 %cmp.not.i, ptr %5, ptr null
  %nb_pstate_switch_disable = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 43, i32 1
  %8 = ptrtoint ptr %nb_pstate_switch_disable to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nb_pstate_switch_disable, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  %action = getelementptr inbounds %struct.smu8_power_state, ptr %hw_ps..i, i32 0, i32 14
  %10 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %action, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %11, label %if.else18 [
    i32 2, label %if.then10
    i32 3, label %if.then15
  ]

if.then10:                                        ; preds = %if.then
  %is_nb_dpm_enabled.i = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 42
  %13 = ptrtoint ptr %is_nb_dpm_enabled.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %is_nb_dpm_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.then10.if.end23_crit_edge, label %if.then.i

if.then10.if.end23_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smu8_nbdpm_pstate_enable_disable.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smu8_update_low_mem_pstate, %if.then27.i)) #13
          to label %if.end23.sink.split [label %if.then27.i], !srcloc !129

if.then27.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smu8_nbdpm_pstate_enable_disable.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.66) #13
  br label %if.end23.sink.split

if.then15:                                        ; preds = %if.then
  %is_nb_dpm_enabled.i2 = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 42
  %15 = ptrtoint ptr %is_nb_dpm_enabled.i2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %is_nb_dpm_enabled.i2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i3 = icmp eq i32 %16, 0
  br i1 %tobool.not.i3, label %if.then15.if.end23_crit_edge, label %if.then.i4

if.then15.if.end23_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then.i4:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smu8_nbdpm_pstate_enable_disable.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smu8_update_low_mem_pstate, %if.then9.i)) #13
          to label %if.end23.sink.split [label %if.then9.i], !srcloc !129

if.then9.i:                                       ; preds = %if.then.i4
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smu8_nbdpm_pstate_enable_disable.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.64) #13
  br label %if.end23.sink.split

if.else18:                                        ; preds = %if.then
  %is_nb_dpm_enabled.i11 = getelementptr inbounds %struct.smu8_hwmgr, ptr %1, i32 0, i32 42
  %17 = ptrtoint ptr %is_nb_dpm_enabled.i11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %is_nb_dpm_enabled.i11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i12 = icmp eq i32 %18, 0
  br i1 %tobool.not.i12, label %if.else18.if.end23_crit_edge, label %if.then.i13

if.else18.if.end23_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then.i13:                                      ; preds = %if.else18
  br i1 %tobool2.not, label %do.body4.i, label %do.body15.i

do.body4.i:                                       ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smu8_nbdpm_pstate_enable_disable.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smu8_update_low_mem_pstate, %if.then9.i14)) #13
          to label %if.end23.sink.split [label %if.then9.i14], !srcloc !129

if.then9.i14:                                     ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smu8_nbdpm_pstate_enable_disable.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.64) #13
  br label %if.end23.sink.split

do.body15.i:                                      ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smu8_nbdpm_pstate_enable_disable.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smu8_update_low_mem_pstate, %if.then27.i15)) #13
          to label %if.end23.sink.split [label %if.then27.i15], !srcloc !129

if.then27.i15:                                    ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smu8_nbdpm_pstate_enable_disable.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.66) #13
  br label %if.end23.sink.split

if.end23.sink.split:                              ; preds = %if.then27.i15, %do.body15.i, %if.then9.i14, %do.body4.i, %if.then9.i, %if.then.i4, %if.then27.i, %if.then.i
  %.sink.i.sink = phi i16 [ 46, %if.then27.i ], [ 46, %if.then.i ], [ 47, %if.then9.i ], [ 47, %if.then.i4 ], [ 47, %do.body4.i ], [ 47, %if.then9.i14 ], [ 46, %do.body15.i ], [ 46, %if.then27.i15 ]
  %19 = zext i8 %9 to i32
  %call35.i17 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext %.sink.i.sink, i32 noundef %19, ptr noundef null) #13
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %if.else18.if.end23_crit_edge, %if.then15.if.end23_crit_edge, %if.then10.if.end23_crit_edge, %entry.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smu8_hw_print_display_cfg(ptr nocapture noundef readonly %cc6_settings) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smu8_hw_print_display_cfg.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smu8_hw_print_display_cfg, %if.then)) #13
          to label %do.body6 [label %if.then], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smu8_hw_print_display_cfg.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.50) #13
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smu8_hw_print_display_cfg.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smu8_hw_print_display_cfg, %if.then18)) #13
          to label %do.body24 [label %if.then18], !srcloc !129

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #15
  %cpu_cc6_disable = getelementptr inbounds %struct.cc6_settings, ptr %cc6_settings, i32 0, i32 2
  %0 = ptrtoint ptr %cpu_cc6_disable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cpu_cc6_disable, align 2, !range !128
  %2 = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smu8_hw_print_display_cfg.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.52, i32 noundef %2) #13
  br label %do.body24

do.body24:                                        ; preds = %if.then18, %do.body6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smu8_hw_print_display_cfg.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smu8_hw_print_display_cfg, %if.then36)) #13
          to label %do.body43 [label %if.then36], !srcloc !129

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #15
  %cpu_pstate_disable = getelementptr inbounds %struct.cc6_settings, ptr %cc6_settings, i32 0, i32 3
  %3 = ptrtoint ptr %cpu_pstate_disable to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cpu_pstate_disable, align 1, !range !128
  %5 = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smu8_hw_print_display_cfg.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.54, i32 noundef %5) #13
  br label %do.body43

do.body43:                                        ; preds = %if.then36, %do.body24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smu8_hw_print_display_cfg.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smu8_hw_print_display_cfg, %if.then55)) #13
          to label %do.body62 [label %if.then55], !srcloc !129

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #15
  %nb_pstate_switch_disable = getelementptr inbounds %struct.cc6_settings, ptr %cc6_settings, i32 0, i32 1
  %6 = ptrtoint ptr %nb_pstate_switch_disable to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nb_pstate_switch_disable, align 1, !range !128
  %8 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smu8_hw_print_display_cfg.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.56, i32 noundef %8) #13
  br label %do.body62

do.body62:                                        ; preds = %if.then55, %do.body43
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smu8_hw_print_display_cfg.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smu8_hw_print_display_cfg, %if.then74)) #13
          to label %do.end77 [label %if.then74], !srcloc !129

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #15
  %cpu_pstate_separation_time = getelementptr inbounds %struct.cc6_settings, ptr %cc6_settings, i32 0, i32 4
  %9 = ptrtoint ptr %cpu_pstate_separation_time to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu_pstate_separation_time, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smu8_hw_print_display_cfg.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.58, i32 noundef %10) #13
  br label %do.end77

do.end77:                                         ; preds = %if.then74, %do.body62
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !105, !107, !109, !110, !111, !112, !114, !115, !116}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @smu8_hwmgr_funcs, !1, !"smu8_hwmgr_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c", i32 2009, i32 35}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c", i32 1108, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @smu8_hwmgr_backend_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @smu8_hwmgr_backend_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c", i32 1114, i32 3}
!10 = !{ptr @smu8_hwmgr_backend_init._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @smu8_hwmgr_backend_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c", i32 323, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @smu8_get_system_info_data._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @smu8_get_system_info_data._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c", i32 328, i32 3}
!19 = !{ptr @smu8_get_system_info_data._entry.8, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @smu8_get_system_info_data._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c", i32 355, i32 3}
!23 = !{ptr @smu8_get_system_info_data._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @smu8_get_system_info_data._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c", i32 283, i32 3}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @smu8_init_dynamic_state_adjustment_rule_settings._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @smu8_init_dynamic_state_adjustment_rule_settings._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c", i32 459, i32 2}
!32 = !{ptr @smu8_upload_pptable_to_smu._rs, !31, !"_rs", i1 false, i1 false}
!33 = !{ptr @__func__.smu8_upload_pptable_to_smu, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @smu8_upload_pptable_to_smu._entry, !31, !"_entry", i1 false, i1 false}
!36 = !{ptr @smu8_upload_pptable_to_smu._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @smu8_upload_pptable_to_smu._rs.19, !39, !"_rs", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c", i32 465, i32 2}
!40 = !{ptr @smu8_upload_pptable_to_smu._entry.20, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @smu8_upload_pptable_to_smu._entry_ptr.21, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @smu8_upload_pptable_to_smu._rs.23, !44, !"_rs", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c", i32 467, i32 2}
!45 = !{ptr @smu8_upload_pptable_to_smu._entry.24, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @smu8_upload_pptable_to_smu._entry_ptr.25, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @smu8_upload_pptable_to_smu._rs.26, !48, !"_rs", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c", i32 469, i32 2}
!49 = !{ptr @smu8_upload_pptable_to_smu._entry.27, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @smu8_upload_pptable_to_smu._entry_ptr.28, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @smu8_upload_pptable_to_smu._rs.29, !52, !"_rs", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c", i32 471, i32 2}
!53 = !{ptr @smu8_upload_pptable_to_smu._entry.30, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @smu8_upload_pptable_to_smu._entry_ptr.31, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @smu8_upload_pptable_to_smu._rs.32, !56, !"_rs", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c", i32 473, i32 2}
!57 = !{ptr @smu8_upload_pptable_to_smu._entry.33, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @smu8_upload_pptable_to_smu._entry_ptr.34, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c", i32 704, i32 3}
!61 = !{ptr @.str.36, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.37, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @smu8_update_sclk_limit.__UNIQUE_ID_ddebug343, !60, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!64 = !{ptr @.str.38, !60, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.39, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c", i32 764, i32 3}
!67 = !{ptr @.str.40, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @smu8_set_deep_sleep_sclk_threshold.__UNIQUE_ID_ddebug344, !66, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!69 = !{ptr @.str.41, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.42, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c", i32 843, i32 3}
!72 = !{ptr @.str.43, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @smu8_enable_nb_dpm.__UNIQUE_ID_ddebug347, !71, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!74 = !{ptr @.str.44, !71, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.45, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c", i32 1462, i32 3}
!77 = !{ptr @.str.46, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @smu8_set_cpu_power_state.__UNIQUE_ID_ddebug353, !76, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!79 = !{ptr @.str.47, !76, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.48, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c", i32 1429, i32 2}
!82 = !{ptr @.str.49, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @smu8_hw_print_display_cfg.__UNIQUE_ID_ddebug348, !81, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!84 = !{ptr @.str.50, !81, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.51, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c", i32 1431, i32 2}
!87 = !{ptr @smu8_hw_print_display_cfg.__UNIQUE_ID_ddebug349, !86, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!88 = !{ptr @.str.52, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.53, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c", i32 1433, i32 2}
!91 = !{ptr @smu8_hw_print_display_cfg.__UNIQUE_ID_ddebug350, !90, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!92 = !{ptr @.str.54, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.55, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c", i32 1435, i32 2}
!95 = !{ptr @smu8_hw_print_display_cfg.__UNIQUE_ID_ddebug351, !94, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!96 = !{ptr @.str.56, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.57, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c", i32 1437, i32 2}
!99 = !{ptr @smu8_hw_print_display_cfg.__UNIQUE_ID_ddebug352, !98, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!100 = !{ptr @.str.58, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.59, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c", i32 1562, i32 32}
!103 = !{ptr @.str.60, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c", i32 1564, i32 19}
!105 = !{ptr @.str.61, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c", i32 1564, i32 25}
!107 = !{ptr @.str.62, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c", i32 794, i32 4}
!109 = !{ptr @.str.63, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @smu8_nbdpm_pstate_enable_disable.__UNIQUE_ID_ddebug345, !108, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!111 = !{ptr @.str.64, !108, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.65, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c", i32 801, i32 4}
!114 = !{ptr @smu8_nbdpm_pstate_enable_disable.__UNIQUE_ID_ddebug346, !113, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!115 = !{ptr @.str.66, !113, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @SMU7ThermalPolicy, !117, !"SMU7ThermalPolicy", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/inc/pp_thermal.h", i32 34, i32 56}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{!"auto-init"}
!128 = !{i8 0, i8 2}
!129 = !{i64 2148748830, i64 2148748835, i64 2148748848, i64 2148748892, i64 2148748926, i64 2148748947}
