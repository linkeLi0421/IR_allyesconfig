; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/hwmgr/hardwaremanager.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/hardwaremanager.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.pp_hwmgr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phm_set_power_state_input = type { ptr, ptr }
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
%struct.PP_TemperatureRange = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.PHM_PerformanceLevel = type { i32, i32, i32, i32, i32, i32 }
%struct.pp_clock_info = type { i32, i32, i32, i32, i32, i32 }

@phm_enable_dynamic_state_management._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016amdgpu: dpm has been enabled\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"phm_enable_dynamic_state_management\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/hardwaremanager.c\00", [61 x i8] zeroinitializer }, align 32
@phm_enable_dynamic_state_management._entry_ptr = internal global ptr @phm_enable_dynamic_state_management._entry, section ".printk_index", align 4
@phm_disable_dynamic_state_management._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016amdgpu: dpm has been disabled\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"phm_disable_dynamic_state_management\00", [59 x i8] zeroinitializer }, align 32
@phm_disable_dynamic_state_management._entry_ptr = internal global ptr @phm_disable_dynamic_state_management._entry, section ".printk_index", align 4
@phm_get_clock_info._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.phm_get_clock_info = private unnamed_addr constant [19 x i8] c"phm_get_clock_info\00", align 1
@phm_get_clock_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.phm_get_clock_info, ptr @.str.2, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\014amdgpu: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@phm_get_clock_info._entry_ptr = internal global ptr @phm_get_clock_info._entry, section ".printk_index", align 4
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Invalid Input!\00", [17 x i8] zeroinitializer }, align 32
@phm_get_clock_info._rs.8 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@phm_get_clock_info._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.phm_get_clock_info, ptr @.str.2, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@phm_get_clock_info._entry_ptr.10 = internal global ptr @phm_get_clock_info._entry.9, section ".printk_index", align 4
@phm_get_clock_info._rs.11 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@phm_get_clock_info._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.phm_get_clock_info, ptr @.str.2, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@phm_get_clock_info._entry_ptr.13 = internal global ptr @phm_get_clock_info._entry.12, section ".printk_index", align 4
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to retrieve minimum clocks.\00", [61 x i8] zeroinitializer }, align 32
@phm_get_clock_info._rs.15 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@phm_get_clock_info._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.phm_get_clock_info, ptr @.str.2, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@phm_get_clock_info._entry_ptr.17 = internal global ptr @phm_get_clock_info._entry.16, section ".printk_index", align 4
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to retrieve maximum clocks.\00", [61 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 87, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 107, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 391, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 392, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 396, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [70 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/hardwaremanager.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 407, i32 2 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @phm_disable_dynamic_state_management._entry, ptr @phm_disable_dynamic_state_management._entry_ptr, ptr @phm_enable_dynamic_state_management._entry, ptr @phm_enable_dynamic_state_management._entry_ptr, ptr @phm_get_clock_info._entry, ptr @phm_get_clock_info._entry.12, ptr @phm_get_clock_info._entry.16, ptr @phm_get_clock_info._entry.9, ptr @phm_get_clock_info._entry_ptr, ptr @phm_get_clock_info._entry_ptr.10, ptr @phm_get_clock_info._entry_ptr.13, ptr @phm_get_clock_info._entry_ptr.17, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @phm_get_clock_info._rs, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @phm_get_clock_info._rs.8, ptr @phm_get_clock_info._rs.11, ptr @.str.14, ptr @phm_get_clock_info._rs.15, ptr @.str.18], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_enable_dynamic_state_management._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_disable_dynamic_state_management._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_clock_info._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_clock_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_clock_info._rs.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_clock_info._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_clock_info._rs.11 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_clock_info._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_clock_info._rs.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_clock_info._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_setup_asic(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %do.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %lor.lhs.false
  %asic_setup = getelementptr inbounds %struct.pp_hwmgr_func, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %asic_setup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic_setup, align 4
  %cmp3.not = icmp eq ptr %3, null
  br i1 %cmp3.not, label %do.end.return_crit_edge, label %if.then4

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %3(ptr noundef nonnull %hwmgr) #4
  br label %return

return:                                           ; preds = %if.then4, %do.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then4 ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ 0, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_power_down_asic(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %do.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %lor.lhs.false
  %power_off_asic = getelementptr inbounds %struct.pp_hwmgr_func, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %power_off_asic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %power_off_asic, align 4
  %cmp3.not = icmp eq ptr %3, null
  br i1 %cmp3.not, label %do.end.return_crit_edge, label %if.then4

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %3(ptr noundef nonnull %hwmgr) #4
  br label %return

return:                                           ; preds = %if.then4, %do.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then4 ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ 0, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_set_power_state(ptr noundef %hwmgr, ptr noundef %pcurrent_state, ptr noundef %pnew_power_state) local_unnamed_addr #0 align 64 {
entry:
  %states = alloca %struct.phm_set_power_state_input, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %states) #4
  %0 = getelementptr inbounds %struct.phm_set_power_state_input, ptr %states, i32 0, i32 1
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %1 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %do.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  %3 = ptrtoint ptr %states to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pcurrent_state, ptr %states, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pnew_power_state, ptr %0, align 4
  %power_state_set = getelementptr inbounds %struct.pp_hwmgr_func, ptr %2, i32 0, i32 18
  %5 = ptrtoint ptr %power_state_set to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %power_state_set, align 4
  %cmp4.not = icmp eq ptr %6, null
  br i1 %cmp4.not, label %do.end.cleanup_crit_edge, label %if.then5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = call i32 %6(ptr noundef nonnull %hwmgr, ptr noundef nonnull %states) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %do.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then5 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %states) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_enable_dynamic_state_management(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %do.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr, align 4
  %pp_one_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 6
  %4 = ptrtoint ptr %pp_one_vf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pp_one_vf, align 2, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.end.if.end14_crit_edge

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

land.lhs.true:                                    ; preds = %do.end
  %call = tail call zeroext i1 @smum_is_dpm_running(ptr noundef nonnull %hwmgr) #4
  br i1 %call, label %land.lhs.true3, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

land.lhs.true3:                                   ; preds = %land.lhs.true
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 132
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %virt, align 8
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.lhs.true5, label %land.lhs.true3.if.end14_crit_edge

land.lhs.true3.if.end14_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 137
  %8 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %in_suspend, align 1, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %land.lhs.true5.if.end14_crit_edge, label %land.lhs.true7

land.lhs.true5.if.end14_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

land.lhs.true7:                                   ; preds = %land.lhs.true5
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %11)
  %cmp8.not = icmp eq i32 %11, 22
  br i1 %cmp8.not, label %land.lhs.true7.if.end14_crit_edge, label %do.end12

land.lhs.true7.if.end14_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

do.end12:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #6
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %cleanup

if.end14:                                         ; preds = %land.lhs.true7.if.end14_crit_edge, %land.lhs.true5.if.end14_crit_edge, %land.lhs.true3.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %do.end.if.end14_crit_edge
  %12 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hwmgr_func, align 4
  %dynamic_state_management_enable = getelementptr inbounds %struct.pp_hwmgr_func, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %dynamic_state_management_enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dynamic_state_management_enable, align 4
  %cmp16.not = icmp eq ptr %15, null
  br i1 %cmp16.not, label %if.end14.cleanup_crit_edge, label %if.then17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %call20 = tail call i32 %15(ptr noundef nonnull %hwmgr) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end14.cleanup_crit_edge, %do.end12, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end12 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call20, %if.then17 ], [ -22, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @smum_is_dpm_running(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_disable_dynamic_state_management(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %do.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  %not_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %2 = ptrtoint ptr %not_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %not_vf, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end.cleanup_crit_edge, label %if.end3

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %do.end
  %call = tail call zeroext i1 @smum_is_dpm_running(ptr noundef nonnull %hwmgr) #4
  br i1 %call, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %4 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwmgr_func, align 4
  %dynamic_state_management_disable = getelementptr inbounds %struct.pp_hwmgr_func, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %dynamic_state_management_disable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dynamic_state_management_disable, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.then12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %call15 = tail call i32 %7(ptr noundef nonnull %hwmgr) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end9.cleanup_crit_edge, %do.end7, %do.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end7 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ %call15, %if.then12 ], [ -22, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_force_dpm_levels(ptr noundef %hwmgr, i32 noundef %level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %do.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  %force_dpm_level = getelementptr inbounds %struct.pp_hwmgr_func, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %force_dpm_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %force_dpm_level, align 4
  %cmp3.not = icmp eq ptr %3, null
  br i1 %cmp3.not, label %do.end.cleanup_crit_edge, label %if.then4

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %3(ptr noundef nonnull %hwmgr, i32 noundef %level) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %do.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.then4 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_apply_state_adjust_rules(ptr noundef %hwmgr, ptr noundef %adjusted_ps, ptr noundef %current_ps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %do.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %lor.lhs.false
  %apply_state_adjust_rules = getelementptr inbounds %struct.pp_hwmgr_func, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %apply_state_adjust_rules to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %apply_state_adjust_rules, align 4
  %cmp3.not = icmp eq ptr %3, null
  br i1 %cmp3.not, label %do.end.return_crit_edge, label %if.then4

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %3(ptr noundef nonnull %hwmgr, ptr noundef %adjusted_ps, ptr noundef %current_ps) #4
  br label %return

return:                                           ; preds = %if.then4, %do.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then4 ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ 0, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_apply_clock_adjust_rules(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %do.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %lor.lhs.false
  %apply_clocks_adjust_rules = getelementptr inbounds %struct.pp_hwmgr_func, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %apply_clocks_adjust_rules to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %apply_clocks_adjust_rules, align 4
  %cmp3.not = icmp eq ptr %3, null
  br i1 %cmp3.not, label %do.end.return_crit_edge, label %if.then4

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %3(ptr noundef nonnull %hwmgr) #4
  br label %return

return:                                           ; preds = %if.then4, %do.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then4 ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ 0, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_powerdown_uvd(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %do.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %lor.lhs.false
  %powerdown_uvd = getelementptr inbounds %struct.pp_hwmgr_func, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %powerdown_uvd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %powerdown_uvd, align 4
  %cmp3.not = icmp eq ptr %3, null
  br i1 %cmp3.not, label %do.end.return_crit_edge, label %if.then4

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %3(ptr noundef nonnull %hwmgr) #4
  br label %return

return:                                           ; preds = %if.then4, %do.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then4 ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ 0, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_disable_clock_power_gatings(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %do.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %lor.lhs.false
  %disable_clock_power_gating = getelementptr inbounds %struct.pp_hwmgr_func, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %disable_clock_power_gating to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disable_clock_power_gating, align 4
  %cmp3.not = icmp eq ptr %3, null
  br i1 %cmp3.not, label %do.end.return_crit_edge, label %if.then4

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %3(ptr noundef nonnull %hwmgr) #4
  br label %return

return:                                           ; preds = %if.then4, %do.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then4 ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ 0, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_pre_display_configuration_changed(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %do.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %lor.lhs.false
  %pre_display_config_changed = getelementptr inbounds %struct.pp_hwmgr_func, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %pre_display_config_changed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pre_display_config_changed, align 4
  %cmp3.not = icmp eq ptr %3, null
  br i1 %cmp3.not, label %do.end.return_crit_edge, label %if.then4

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %3(ptr noundef nonnull %hwmgr) #4
  br label %return

return:                                           ; preds = %if.then4, %do.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ 0, %if.then4 ], [ 0, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_display_configuration_changed(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %do.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %lor.lhs.false
  %display_config_changed = getelementptr inbounds %struct.pp_hwmgr_func, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %display_config_changed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %display_config_changed, align 4
  %cmp3.not = icmp eq ptr %3, null
  br i1 %cmp3.not, label %do.end.return_crit_edge, label %if.then4

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %3(ptr noundef nonnull %hwmgr) #4
  br label %return

return:                                           ; preds = %if.then4, %do.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ 0, %if.then4 ], [ 0, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_notify_smc_display_config_after_ps_adjustment(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %do.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %lor.lhs.false
  %notify_smc_display_config_after_ps_adjustment = getelementptr inbounds %struct.pp_hwmgr_func, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %notify_smc_display_config_after_ps_adjustment to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %notify_smc_display_config_after_ps_adjustment, align 4
  %cmp3.not = icmp eq ptr %3, null
  br i1 %cmp3.not, label %do.end.return_crit_edge, label %if.then4

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %3(ptr noundef nonnull %hwmgr) #4
  br label %return

return:                                           ; preds = %if.then4, %do.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ 0, %if.then4 ], [ 0, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_stop_thermal_controller(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %do.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %lor.lhs.false
  %not_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %2 = ptrtoint ptr %not_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %not_vf, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end.return_crit_edge, label %if.end3

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end3:                                          ; preds = %do.end
  %stop_thermal_controller = getelementptr inbounds %struct.pp_hwmgr_func, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %stop_thermal_controller to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stop_thermal_controller, align 4
  %cmp5 = icmp eq ptr %5, null
  br i1 %cmp5, label %if.end3.return_crit_edge, label %if.end7

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %5(ptr noundef nonnull %hwmgr) #4
  br label %return

return:                                           ; preds = %if.end7, %if.end3.return_crit_edge, %do.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end7 ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ 0, %do.end.return_crit_edge ], [ -22, %if.end3.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_register_irq_handlers(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %do.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %lor.lhs.false
  %register_irq_handlers = getelementptr inbounds %struct.pp_hwmgr_func, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %register_irq_handlers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %register_irq_handlers, align 4
  %cmp3.not = icmp eq ptr %3, null
  br i1 %cmp3.not, label %do.end.return_crit_edge, label %if.then4

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %3(ptr noundef nonnull %hwmgr) #4
  br label %return

return:                                           ; preds = %if.then4, %do.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then4 ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ 0, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_start_thermal_controller(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  %range = alloca %struct.PP_TemperatureRange, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %range) #4
  %0 = call ptr @memset(ptr %range, i32 0, i32 28)
  %1 = getelementptr inbounds %struct.PP_TemperatureRange, ptr %range, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 80000, ptr %1, align 4
  %3 = getelementptr inbounds %struct.PP_TemperatureRange, ptr %range, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 80000, ptr %3, align 4
  %5 = getelementptr inbounds %struct.PP_TemperatureRange, ptr %range, i32 0, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 80000, ptr %5, align 4
  %7 = getelementptr inbounds %struct.PP_TemperatureRange, ptr %range, i32 0, i32 5
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 80000, ptr %7, align 4
  %9 = getelementptr inbounds %struct.PP_TemperatureRange, ptr %range, i32 0, i32 7
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 80000, ptr %9, align 4
  %11 = getelementptr inbounds %struct.PP_TemperatureRange, ptr %range, i32 0, i32 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 80000, ptr %11, align 4
  %13 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hwmgr, align 4
  %not_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %15 = ptrtoint ptr %not_vf to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %not_vf, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %17 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hwmgr_func, align 4
  %get_thermal_temperature_range = getelementptr inbounds %struct.pp_hwmgr_func, ptr %18, i32 0, i32 66
  %19 = ptrtoint ptr %get_thermal_temperature_range to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_thermal_temperature_range, align 4
  %tobool2.not = icmp eq ptr %20, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = call i32 %20(ptr noundef %hwmgr, ptr noundef nonnull %range) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %platform_descriptor = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23
  %21 = ptrtoint ptr %platform_descriptor to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %platform_descriptor, align 4
  %and1.i = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %if.end6.if.end13_crit_edge, label %land.lhs.true

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end6
  %23 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hwmgr_func, align 4
  %start_thermal_controller = getelementptr inbounds %struct.pp_hwmgr_func, ptr %24, i32 0, i32 63
  %25 = ptrtoint ptr %start_thermal_controller to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %start_thermal_controller, align 4
  %cmp.not = icmp eq ptr %26, null
  br i1 %cmp.not, label %land.lhs.true.if.end13_crit_edge, label %if.then9

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = call i32 %26(ptr noundef %hwmgr, ptr noundef nonnull %range) #4
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %land.lhs.true.if.end13_crit_edge, %if.end6.if.end13_crit_edge
  %ret.0 = phi i32 [ %call12, %if.then9 ], [ 0, %land.lhs.true.if.end13_crit_edge ], [ 0, %if.end6.if.end13_crit_edge ]
  %27 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %range, align 4
  %min_temp = getelementptr inbounds %struct.amdgpu_device, ptr %14, i32 0, i32 98, i32 15, i32 35, i32 1
  %29 = ptrtoint ptr %min_temp to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %min_temp, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 4
  %max_temp = getelementptr inbounds %struct.amdgpu_device, ptr %14, i32 0, i32 98, i32 15, i32 35, i32 2
  %32 = ptrtoint ptr %max_temp to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %max_temp, align 4
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %3, align 4
  %max_edge_emergency_temp = getelementptr inbounds %struct.amdgpu_device, ptr %14, i32 0, i32 98, i32 15, i32 35, i32 3
  %35 = ptrtoint ptr %max_edge_emergency_temp to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %max_edge_emergency_temp, align 4
  %hotspot_min = getelementptr inbounds %struct.PP_TemperatureRange, ptr %range, i32 0, i32 3
  %36 = ptrtoint ptr %hotspot_min to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hotspot_min, align 4
  %min_hotspot_temp = getelementptr inbounds %struct.amdgpu_device, ptr %14, i32 0, i32 98, i32 15, i32 35, i32 4
  %38 = ptrtoint ptr %min_hotspot_temp to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %min_hotspot_temp, align 4
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %5, align 4
  %max_hotspot_crit_temp = getelementptr inbounds %struct.amdgpu_device, ptr %14, i32 0, i32 98, i32 15, i32 35, i32 5
  %41 = ptrtoint ptr %max_hotspot_crit_temp to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %max_hotspot_crit_temp, align 4
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %7, align 4
  %max_hotspot_emergency_temp = getelementptr inbounds %struct.amdgpu_device, ptr %14, i32 0, i32 98, i32 15, i32 35, i32 6
  %44 = ptrtoint ptr %max_hotspot_emergency_temp to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %max_hotspot_emergency_temp, align 4
  %mem_min = getelementptr inbounds %struct.PP_TemperatureRange, ptr %range, i32 0, i32 6
  %45 = ptrtoint ptr %mem_min to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mem_min, align 4
  %min_mem_temp = getelementptr inbounds %struct.amdgpu_device, ptr %14, i32 0, i32 98, i32 15, i32 35, i32 7
  %47 = ptrtoint ptr %min_mem_temp to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %min_mem_temp, align 4
  %48 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %9, align 4
  %max_mem_crit_temp = getelementptr inbounds %struct.amdgpu_device, ptr %14, i32 0, i32 98, i32 15, i32 35, i32 8
  %50 = ptrtoint ptr %max_mem_crit_temp to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %max_mem_crit_temp, align 4
  %51 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %11, align 4
  %max_mem_emergency_temp = getelementptr inbounds %struct.amdgpu_device, ptr %14, i32 0, i32 98, i32 15, i32 35, i32 9
  %53 = ptrtoint ptr %max_mem_emergency_temp to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %max_mem_emergency_temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end13 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %range) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @phm_check_smc_update_required_for_display_configuration(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %pp_one_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 6
  %2 = ptrtoint ptr %pp_one_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pp_one_vf, align 2, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end3:                                          ; preds = %if.end
  %check_smc_update_required_for_display_configuration = getelementptr inbounds %struct.pp_hwmgr_func, ptr %1, i32 0, i32 37
  %4 = ptrtoint ptr %check_smc_update_required_for_display_configuration to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %check_smc_update_required_for_display_configuration, align 4
  %cmp5 = icmp eq ptr %5, null
  br i1 %cmp5, label %if.end3.return_crit_edge, label %if.end7

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call zeroext i1 %5(ptr noundef nonnull %hwmgr) #4
  br label %return

return:                                           ; preds = %if.end7, %if.end3.return_crit_edge, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %call, %if.end7 ], [ false, %lor.lhs.false.return_crit_edge ], [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ false, %if.end3.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_check_states_equal(ptr noundef %hwmgr, ptr noundef %pstate1, ptr noundef %pstate2, ptr noundef %equal) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %do.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %lor.lhs.false
  %check_states_equal = getelementptr inbounds %struct.pp_hwmgr_func, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %check_states_equal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %check_states_equal, align 4
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %do.end.return_crit_edge, label %if.end5

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %3(ptr noundef nonnull %hwmgr, ptr noundef %pstate1, ptr noundef %pstate2, ptr noundef %equal) #4
  br label %return

return:                                           ; preds = %if.end5, %do.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end5 ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ -22, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_store_dal_configuration_data(ptr noundef %hwmgr, ptr noundef readonly %display_config) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %1, null
  %cmp2 = icmp eq ptr %display_config, null
  %or.cond = or i1 %cmp2, %cmp1
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %set_min_deep_sleep_dcefclk = getelementptr inbounds %struct.pp_hwmgr_func, ptr %1, i32 0, i32 62
  %2 = ptrtoint ptr %set_min_deep_sleep_dcefclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_min_deep_sleep_dcefclk, align 4
  %cmp6.not = icmp eq ptr %3, null
  br i1 %cmp6.not, label %if.end4.if.end10_crit_edge, label %if.then7

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %min_dcef_deep_sleep_set_clk = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %display_config, i32 0, i32 21
  %4 = ptrtoint ptr %min_dcef_deep_sleep_set_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %min_dcef_deep_sleep_set_clk, align 4
  %call = tail call i32 %3(ptr noundef nonnull %hwmgr, i32 noundef %5) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end4.if.end10_crit_edge
  %num_path_including_non_display = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %display_config, i32 0, i32 5
  %6 = ptrtoint ptr %num_path_including_non_display to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_path_including_non_display, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1162.not = icmp eq i32 %7, 0
  br i1 %cmp1162.not, label %if.end10.for.end_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end10.for.body_crit_edge
  %number_of_active_display.064 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %index.063 = phi i32 [ %inc15, %for.body.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %controller_id = getelementptr %struct.amd_pp_display_configuration, ptr %display_config, i32 0, i32 11, i32 %index.063, i32 1
  %8 = ptrtoint ptr %controller_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %controller_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp12.not = icmp ne i32 %9, 0
  %inc = zext i1 %cmp12.not to i32
  %spec.select = add i32 %number_of_active_display.064, %inc
  %inc15 = add nuw i32 %index.063, 1
  %exitcond.not = icmp eq i32 %inc15, %7
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end10.for.end_crit_edge
  %number_of_active_display.0.lcssa = phi i32 [ 0, %if.end10.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  %10 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hwmgr_func, align 4
  %set_active_display_count = getelementptr inbounds %struct.pp_hwmgr_func, ptr %11, i32 0, i32 61
  %12 = ptrtoint ptr %set_active_display_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_active_display_count, align 4
  %cmp17.not = icmp eq ptr %13, null
  br i1 %cmp17.not, label %for.end.if.end22_crit_edge, label %if.then18

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %call21 = tail call i32 %13(ptr noundef nonnull %hwmgr, i32 noundef %number_of_active_display.0.lcssa) #4
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %for.end.if.end22_crit_edge
  %14 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hwmgr_func, align 4
  %store_cc6_data = getelementptr inbounds %struct.pp_hwmgr_func, ptr %15, i32 0, i32 40
  %16 = ptrtoint ptr %store_cc6_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %store_cc6_data, align 4
  %cmp24 = icmp eq ptr %17, null
  br i1 %cmp24, label %if.end22.cleanup_crit_edge, label %if.then29

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then29:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %cpu_pstate_separation_time = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %display_config, i32 0, i32 3
  %18 = ptrtoint ptr %cpu_pstate_separation_time to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu_pstate_separation_time, align 4
  %cpu_cc6_disable = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %display_config, i32 0, i32 1
  %20 = ptrtoint ptr %cpu_cc6_disable to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cpu_cc6_disable, align 1, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool32 = icmp ne i8 %21, 0
  %cpu_pstate_disable = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %display_config, i32 0, i32 2
  %22 = ptrtoint ptr %cpu_pstate_disable to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cpu_pstate_disable, align 2, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool33 = icmp ne i8 %23, 0
  %24 = ptrtoint ptr %display_config to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %display_config, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool34 = icmp ne i8 %25, 0
  %call35 = tail call i32 %17(ptr noundef nonnull %hwmgr, i32 noundef %19, i1 noundef zeroext %tobool32, i1 noundef zeroext %tobool33, i1 noundef zeroext %tobool34) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end22.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then29 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_get_dal_power_level(ptr noundef %hwmgr, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %1, null
  %cmp2 = icmp eq ptr %info, null
  %or.cond = or i1 %cmp2, %cmp1
  br i1 %or.cond, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false3

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %get_dal_power_level = getelementptr inbounds %struct.pp_hwmgr_func, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %get_dal_power_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_dal_power_level, align 4
  %cmp5 = icmp eq ptr %3, null
  br i1 %cmp5, label %lor.lhs.false3.return_crit_edge, label %if.end7

lor.lhs.false3.return_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end7:                                          ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %3(ptr noundef nonnull %hwmgr, ptr noundef nonnull %info) #4
  br label %return

return:                                           ; preds = %if.end7, %lor.lhs.false3.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end7 ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ -22, %lor.lhs.false3.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_set_cpu_power_state(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %do.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %lor.lhs.false
  %set_cpu_power_state = getelementptr inbounds %struct.pp_hwmgr_func, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %set_cpu_power_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_cpu_power_state, align 4
  %cmp3.not = icmp eq ptr %3, null
  br i1 %cmp3.not, label %do.end.return_crit_edge, label %if.then4

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %3(ptr noundef nonnull %hwmgr) #4
  br label %return

return:                                           ; preds = %if.then4, %do.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then4 ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ 0, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_get_performance_level(ptr noundef %hwmgr, ptr noundef %state, i32 noundef %designation, i32 noundef %index, ptr noundef %level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %do.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %lor.lhs.false
  %get_performance_level = getelementptr inbounds %struct.pp_hwmgr_func, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %get_performance_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_performance_level, align 4
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %do.end.return_crit_edge, label %if.end5

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %3(ptr noundef nonnull %hwmgr, ptr noundef %state, i32 noundef %designation, i32 noundef %index, ptr noundef %level) #4
  br label %return

return:                                           ; preds = %if.end5, %do.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end5 ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ -22, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_get_clock_info(ptr noundef %hwmgr, ptr noundef %state, ptr noundef writeonly %pclock_info, i32 noundef %designation) local_unnamed_addr #0 align 64 {
entry:
  %performance_level = alloca %struct.PHM_PerformanceLevel, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %performance_level) #4
  %0 = call ptr @memset(ptr %performance_level, i32 0, i32 24)
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %1 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %do.body2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body2:                                         ; preds = %lor.lhs.false
  %cmp3.not = icmp eq ptr %state, null
  br i1 %cmp3.not, label %if.then4, label %do.body14

if.then4:                                         ; preds = %do.body2
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @phm_get_clock_info._rs, ptr noundef nonnull @__func__.phm_get_clock_info) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then4.cleanup_crit_edge, label %do.end8

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end8:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #7
  br label %cleanup

do.body14:                                        ; preds = %do.body2
  %cmp15.not = icmp eq ptr %pclock_info, null
  br i1 %cmp15.not, label %if.then16, label %do.end.i

if.then16:                                        ; preds = %do.body14
  %call17 = tail call i32 @___ratelimit(ptr noundef nonnull @phm_get_clock_info._rs.8, ptr noundef nonnull @__func__.phm_get_clock_info) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then16.cleanup_crit_edge, label %do.end22

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end22:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #7
  br label %cleanup

do.end.i:                                         ; preds = %do.body14
  %get_performance_level.i = getelementptr inbounds %struct.pp_hwmgr_func, ptr %2, i32 0, i32 42
  %3 = ptrtoint ptr %get_performance_level.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_performance_level.i, align 4
  %cmp3.i = icmp eq ptr %4, null
  br i1 %cmp3.i, label %do.end.i.if.then32_crit_edge, label %phm_get_performance_level.exit

do.end.i.if.then32_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

phm_get_performance_level.exit:                   ; preds = %do.end.i
  %call.i = call i32 %4(ptr noundef nonnull %hwmgr, ptr noundef nonnull %state, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %performance_level) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp31 = icmp eq i32 %call.i, 0
  br i1 %cmp31, label %lor.lhs.false.i85, label %phm_get_performance_level.exit.if.then32_crit_edge

phm_get_performance_level.exit.if.then32_crit_edge: ; preds = %phm_get_performance_level.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

if.then32:                                        ; preds = %phm_get_performance_level.exit.if.then32_crit_edge, %do.end.i.if.then32_crit_edge
  %retval.0.i95 = phi i32 [ %call.i, %phm_get_performance_level.exit.if.then32_crit_edge ], [ -22, %do.end.i.if.then32_crit_edge ]
  %call33 = call i32 @___ratelimit(ptr noundef nonnull @phm_get_clock_info._rs.11, ptr noundef nonnull @__func__.phm_get_clock_info) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then32.cleanup_crit_edge, label %do.end38

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end38:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #6
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.14) #7
  br label %cleanup

lor.lhs.false.i85:                                ; preds = %phm_get_performance_level.exit
  %memory_clock = getelementptr inbounds %struct.PHM_PerformanceLevel, ptr %performance_level, i32 0, i32 1
  %5 = ptrtoint ptr %memory_clock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %memory_clock, align 4
  %7 = ptrtoint ptr %pclock_info to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %pclock_info, align 4
  %8 = ptrtoint ptr %performance_level to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %performance_level, align 4
  %min_eng_clk = getelementptr inbounds %struct.pp_clock_info, ptr %pclock_info, i32 0, i32 2
  %10 = ptrtoint ptr %min_eng_clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %min_eng_clk, align 4
  %nonLocalMemoryFreq = getelementptr inbounds %struct.PHM_PerformanceLevel, ptr %performance_level, i32 0, i32 4
  %11 = ptrtoint ptr %nonLocalMemoryFreq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nonLocalMemoryFreq, align 4
  %nonLocalMemoryWidth = getelementptr inbounds %struct.PHM_PerformanceLevel, ptr %performance_level, i32 0, i32 5
  %13 = ptrtoint ptr %nonLocalMemoryWidth to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nonLocalMemoryWidth, align 4
  %mul = mul i32 %14, %12
  %min_bus_bandwidth = getelementptr inbounds %struct.pp_clock_info, ptr %pclock_info, i32 0, i32 4
  %15 = ptrtoint ptr %min_bus_bandwidth to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul, ptr %min_bus_bandwidth, align 4
  %hardwareActivityPerformanceLevels = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 4
  %16 = ptrtoint ptr %hardwareActivityPerformanceLevels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hardwareActivityPerformanceLevels, align 4
  %sub = add i32 %17, -1
  %18 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hwmgr_func, align 4
  %cmp1.i84 = icmp eq ptr %19, null
  br i1 %cmp1.i84, label %lor.lhs.false.i85.if.then48_crit_edge, label %do.end.i88

lor.lhs.false.i85.if.then48_crit_edge:            ; preds = %lor.lhs.false.i85
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then48

do.end.i88:                                       ; preds = %lor.lhs.false.i85
  %get_performance_level.i86 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %19, i32 0, i32 42
  %20 = ptrtoint ptr %get_performance_level.i86 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_performance_level.i86, align 4
  %cmp3.i87 = icmp eq ptr %21, null
  br i1 %cmp3.i87, label %do.end.i88.if.then48_crit_edge, label %phm_get_performance_level.exit92

do.end.i88.if.then48_crit_edge:                   ; preds = %do.end.i88
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then48

phm_get_performance_level.exit92:                 ; preds = %do.end.i88
  %call.i89 = call i32 %21(ptr noundef nonnull %hwmgr, ptr noundef nonnull %state, i32 noundef %designation, i32 noundef %sub, ptr noundef nonnull %performance_level) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %cmp47 = icmp eq i32 %call.i89, 0
  br i1 %cmp47, label %do.end60, label %phm_get_performance_level.exit92.if.then48_crit_edge

phm_get_performance_level.exit92.if.then48_crit_edge: ; preds = %phm_get_performance_level.exit92
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then48

if.then48:                                        ; preds = %phm_get_performance_level.exit92.if.then48_crit_edge, %do.end.i88.if.then48_crit_edge, %lor.lhs.false.i85.if.then48_crit_edge
  %retval.0.i9198 = phi i32 [ %call.i89, %phm_get_performance_level.exit92.if.then48_crit_edge ], [ -22, %lor.lhs.false.i85.if.then48_crit_edge ], [ -22, %do.end.i88.if.then48_crit_edge ]
  %call49 = call i32 @___ratelimit(ptr noundef nonnull @phm_get_clock_info._rs.15, ptr noundef nonnull @__func__.phm_get_clock_info) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then48.cleanup_crit_edge, label %do.end54

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end54:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #6
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.18) #7
  br label %cleanup

do.end60:                                         ; preds = %phm_get_performance_level.exit92
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %memory_clock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %memory_clock, align 4
  %max_mem_clk = getelementptr inbounds %struct.pp_clock_info, ptr %pclock_info, i32 0, i32 1
  %24 = ptrtoint ptr %max_mem_clk to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %max_mem_clk, align 4
  %25 = ptrtoint ptr %performance_level to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %performance_level, align 4
  %max_eng_clk = getelementptr inbounds %struct.pp_clock_info, ptr %pclock_info, i32 0, i32 3
  %27 = ptrtoint ptr %max_eng_clk to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %max_eng_clk, align 4
  %28 = ptrtoint ptr %nonLocalMemoryFreq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nonLocalMemoryFreq, align 4
  %30 = ptrtoint ptr %nonLocalMemoryWidth to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nonLocalMemoryWidth, align 4
  %mul65 = mul i32 %31, %29
  %max_bus_bandwidth = getelementptr inbounds %struct.pp_clock_info, ptr %pclock_info, i32 0, i32 5
  %32 = ptrtoint ptr %max_bus_bandwidth to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul65, ptr %max_bus_bandwidth, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %do.end54, %if.then48.cleanup_crit_edge, %do.end38, %if.then32.cleanup_crit_edge, %do.end22, %if.then16.cleanup_crit_edge, %do.end8, %if.then4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end60 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end8 ], [ -22, %if.then4.cleanup_crit_edge ], [ -22, %do.end22 ], [ -22, %if.then16.cleanup_crit_edge ], [ %retval.0.i95, %do.end38 ], [ %retval.0.i95, %if.then32.cleanup_crit_edge ], [ %retval.0.i9198, %do.end54 ], [ %retval.0.i9198, %if.then48.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %performance_level) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_get_current_shallow_sleep_clocks(ptr noundef %hwmgr, ptr noundef %state, ptr noundef %clock_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %do.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %lor.lhs.false
  %get_current_shallow_sleep_clocks = getelementptr inbounds %struct.pp_hwmgr_func, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %get_current_shallow_sleep_clocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_current_shallow_sleep_clocks, align 4
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %do.end.return_crit_edge, label %if.end5

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %3(ptr noundef nonnull %hwmgr, ptr noundef %state, ptr noundef %clock_info) #4
  br label %return

return:                                           ; preds = %if.end5, %do.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end5 ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ -22, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_get_clock_by_type(ptr noundef %hwmgr, i32 noundef %type, ptr noundef %clocks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %do.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %lor.lhs.false
  %get_clock_by_type = getelementptr inbounds %struct.pp_hwmgr_func, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %get_clock_by_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_clock_by_type, align 4
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %do.end.return_crit_edge, label %if.end5

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %3(ptr noundef nonnull %hwmgr, i32 noundef %type, ptr noundef %clocks) #4
  br label %return

return:                                           ; preds = %if.end5, %do.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end5 ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ -22, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_get_clock_by_type_with_latency(ptr noundef %hwmgr, i32 noundef %type, ptr noundef %clocks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %do.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %lor.lhs.false
  %get_clock_by_type_with_latency = getelementptr inbounds %struct.pp_hwmgr_func, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %get_clock_by_type_with_latency to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_clock_by_type_with_latency, align 4
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %do.end.return_crit_edge, label %if.end5

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %3(ptr noundef nonnull %hwmgr, i32 noundef %type, ptr noundef %clocks) #4
  br label %return

return:                                           ; preds = %if.end5, %do.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end5 ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ -22, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_get_clock_by_type_with_voltage(ptr noundef %hwmgr, i32 noundef %type, ptr noundef %clocks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %do.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %lor.lhs.false
  %get_clock_by_type_with_voltage = getelementptr inbounds %struct.pp_hwmgr_func, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %get_clock_by_type_with_voltage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_clock_by_type_with_voltage, align 4
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %do.end.return_crit_edge, label %if.end5

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %3(ptr noundef nonnull %hwmgr, i32 noundef %type, ptr noundef %clocks) #4
  br label %return

return:                                           ; preds = %if.end5, %do.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end5 ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ -22, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_set_watermarks_for_clocks_ranges(ptr noundef %hwmgr, ptr noundef %clock_ranges) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %do.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %lor.lhs.false
  %set_watermarks_for_clocks_ranges = getelementptr inbounds %struct.pp_hwmgr_func, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %set_watermarks_for_clocks_ranges to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_watermarks_for_clocks_ranges, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end.return_crit_edge, label %if.end4

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end4:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %3(ptr noundef nonnull %hwmgr, ptr noundef %clock_ranges) #4
  br label %return

return:                                           ; preds = %if.end4, %do.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end4 ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ -22, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_display_clock_voltage_request(ptr noundef %hwmgr, ptr noundef %clock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %do.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %lor.lhs.false
  %display_clock_voltage_request = getelementptr inbounds %struct.pp_hwmgr_func, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %display_clock_voltage_request to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %display_clock_voltage_request, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end.return_crit_edge, label %if.end4

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end4:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %3(ptr noundef nonnull %hwmgr, ptr noundef %clock) #4
  br label %return

return:                                           ; preds = %if.end4, %do.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end4 ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ -22, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_get_max_high_clocks(ptr noundef %hwmgr, ptr noundef %clocks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %do.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %lor.lhs.false
  %get_max_high_clocks = getelementptr inbounds %struct.pp_hwmgr_func, ptr %1, i32 0, i32 49
  %2 = ptrtoint ptr %get_max_high_clocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_max_high_clocks, align 4
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %do.end.return_crit_edge, label %if.end5

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %3(ptr noundef nonnull %hwmgr, ptr noundef %clocks) #4
  br label %return

return:                                           ; preds = %if.end5, %do.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end5 ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ -22, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_disable_smc_firmware_ctf(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %do.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %lor.lhs.false
  %not_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %2 = ptrtoint ptr %not_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %not_vf, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end.return_crit_edge, label %if.end3

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end3:                                          ; preds = %do.end
  %disable_smc_firmware_ctf = getelementptr inbounds %struct.pp_hwmgr_func, ptr %1, i32 0, i32 60
  %4 = ptrtoint ptr %disable_smc_firmware_ctf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable_smc_firmware_ctf, align 4
  %cmp5 = icmp eq ptr %5, null
  br i1 %cmp5, label %if.end3.return_crit_edge, label %if.end7

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %5(ptr noundef nonnull %hwmgr) #4
  br label %return

return:                                           ; preds = %if.end7, %if.end3.return_crit_edge, %do.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end7 ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ 0, %do.end.return_crit_edge ], [ -22, %if.end3.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_set_active_display_count(ptr noundef %hwmgr, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %do.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %lor.lhs.false
  %set_active_display_count = getelementptr inbounds %struct.pp_hwmgr_func, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %set_active_display_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_active_display_count, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end.return_crit_edge, label %if.end4

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end4:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %3(ptr noundef nonnull %hwmgr, i32 noundef %count) #4
  br label %return

return:                                           ; preds = %if.end4, %do.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end4 ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ -22, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/hardwaremanager.c", i32 87, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @phm_enable_dynamic_state_management._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @phm_enable_dynamic_state_management._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/hardwaremanager.c", i32 107, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @phm_disable_dynamic_state_management._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @phm_disable_dynamic_state_management._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/hardwaremanager.c", i32 391, i32 2}
!13 = !{ptr @phm_get_clock_info._rs, !12, !"_rs", i1 false, i1 false}
!14 = !{ptr @__func__.phm_get_clock_info, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @phm_get_clock_info._entry, !12, !"_entry", i1 false, i1 false}
!17 = !{ptr @phm_get_clock_info._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @phm_get_clock_info._rs.8, !20, !"_rs", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/hardwaremanager.c", i32 392, i32 2}
!21 = !{ptr @phm_get_clock_info._entry.9, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @phm_get_clock_info._entry_ptr.10, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @phm_get_clock_info._rs.11, !24, !"_rs", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/hardwaremanager.c", i32 396, i32 2}
!25 = !{ptr @phm_get_clock_info._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @phm_get_clock_info._entry_ptr.13, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @phm_get_clock_info._rs.15, !29, !"_rs", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/hardwaremanager.c", i32 407, i32 2}
!30 = !{ptr @phm_get_clock_info._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @phm_get_clock_info._entry_ptr.17, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i8 0, i8 2}
