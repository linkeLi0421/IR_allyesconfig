; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_thermal.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_thermal.c"
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
%struct.phm_fan_speed_info = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.cgs_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.amdgpu_gmc = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, ptr, i32, %struct.amdgpu_irq_src, i32, i8, i32, i8, i32, i64, i64, i64, i64, %struct.spinlock, i8, ptr, %struct.atomic_t, [256 x %struct.amdgpu_gmc_fault], [256 x %struct.anon.95], i8, i8, ptr, %struct.amdgpu_xgmi, %struct.amdgpu_irq_src, i32, i32, i32, ptr, ptr }
%struct.amdgpu_gmc_fault = type { i56, %struct.atomic64_t }
%struct.anon.95 = type { i8, [7 x i8] }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.94] }
%struct.anon.94 = type { [12 x %struct.ttm_pool_type] }
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
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pp_hwmgr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PP_TemperatureRange = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @smu7_fan_ctrl_get_fan_speed_info(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef writeonly %fan_speed_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fanInfo = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4
  %0 = ptrtoint ptr %fanInfo to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fanInfo, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %supports_percent_read = getelementptr inbounds %struct.phm_fan_speed_info, ptr %fan_speed_info, i32 0, i32 4
  %2 = ptrtoint ptr %supports_percent_read to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %supports_percent_read, align 4
  %supports_percent_write = getelementptr inbounds %struct.phm_fan_speed_info, ptr %fan_speed_info, i32 0, i32 5
  %3 = ptrtoint ptr %supports_percent_write to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %supports_percent_write, align 1
  %4 = ptrtoint ptr %fan_speed_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %fan_speed_info, align 4
  %max_percent = getelementptr inbounds %struct.phm_fan_speed_info, ptr %fan_speed_info, i32 0, i32 1
  %5 = ptrtoint ptr %max_percent to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 100, ptr %max_percent, align 4
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %7, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %ucTachometerPulsesPerRevolution = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4, i32 1
  %8 = ptrtoint ptr %ucTachometerPulsesPerRevolution to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ucTachometerPulsesPerRevolution, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %if.then4

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %supports_rpm_read = getelementptr inbounds %struct.phm_fan_speed_info, ptr %fan_speed_info, i32 0, i32 6
  %10 = ptrtoint ptr %supports_rpm_read to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %supports_rpm_read, align 2
  %supports_rpm_write = getelementptr inbounds %struct.phm_fan_speed_info, ptr %fan_speed_info, i32 0, i32 7
  %11 = ptrtoint ptr %supports_rpm_write to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %supports_rpm_write, align 1
  %ulMinRPM = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4, i32 2
  %12 = ptrtoint ptr %ulMinRPM to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ulMinRPM, align 4
  %min_rpm = getelementptr inbounds %struct.phm_fan_speed_info, ptr %fan_speed_info, i32 0, i32 2
  %14 = ptrtoint ptr %min_rpm to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %min_rpm, align 4
  %ulMaxRPM = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4, i32 3
  %15 = ptrtoint ptr %ulMaxRPM to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ulMaxRPM, align 4
  br label %return.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %min_rpm9 = getelementptr inbounds %struct.phm_fan_speed_info, ptr %fan_speed_info, i32 0, i32 2
  %17 = ptrtoint ptr %min_rpm9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %min_rpm9, align 4
  br label %return.sink.split

return.sink.split:                                ; preds = %if.else, %if.then4
  %.sink = phi i32 [ %16, %if.then4 ], [ 0, %if.else ]
  %max_rpm = getelementptr inbounds %struct.phm_fan_speed_info, ptr %fan_speed_info, i32 0, i32 3
  %18 = ptrtoint ptr %max_rpm to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %max_rpm, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -19, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_fan_ctrl_get_fan_speed_pwm(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef writeonly %speed) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fanInfo = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4
  %0 = ptrtoint ptr %fanInfo to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fanInfo, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %read_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %read_ind_register to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_ind_register, align 4
  %call = tail call i32 %7(ptr noundef %3, i32 noundef 1, i32 noundef -1070595992) #4
  %and = and i32 %call, 255
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %read_ind_register4 = getelementptr inbounds %struct.cgs_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %read_ind_register4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_ind_register4, align 4
  %call6 = tail call i32 %13(ptr noundef %9, i32 noundef 1, i32 noundef -1070596088) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end198

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end198:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %and7 = lshr i32 %call6, 9
  %14 = trunc i32 %and7 to i16
  %15 = and i16 %14, 255
  %div192.lhs.trunc = mul nuw i16 %15, 255
  %div192.rhs.trunc = trunc i32 %and to i16
  %div192320 = udiv i16 %div192.lhs.trunc, %div192.rhs.trunc
  %16 = call i16 @llvm.umin.i16(i16 %div192320, i16 255)
  %17 = zext i16 %16 to i32
  %18 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %speed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end198, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end198 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_fan_ctrl_get_fan_speed_rpm(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef writeonly %speed) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fanInfo = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4
  %0 = ptrtoint ptr %fanInfo to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fanInfo, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ucTachometerPulsesPerRevolution = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4, i32 1
  %2 = ptrtoint ptr %ucTachometerPulsesPerRevolution to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ucTachometerPulsesPerRevolution, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
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
  %call = tail call i32 %9(ptr noundef %5, i32 noundef 1, i32 noundef -1070595980) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hwmgr, align 4
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %asic_funcs, align 4
  %get_xclk = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %get_xclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_xclk, align 4
  %call8 = tail call i32 %15(ptr noundef %11) #4
  %mul9 = mul i32 %call8, 600000
  %div = udiv i32 %mul9, %call
  %16 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div, ptr %speed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_fan_ctrl_set_static_mode(ptr nocapture noundef %hwmgr, i32 noundef %mode) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fan_ctrl_is_in_default_mode = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 35
  %0 = ptrtoint ptr %fan_ctrl_is_in_default_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fan_ctrl_is_in_default_mode, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %read_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %read_ind_register to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_ind_register, align 4
  %call = tail call i32 %7(ptr noundef %3, i32 noundef 1, i32 noundef -1070595988) #4
  %and = lshr i32 %call, 11
  %shr = and i32 %and, 7
  %fan_ctrl_default_mode = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 36
  %8 = ptrtoint ptr %fan_ctrl_default_mode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shr, ptr %fan_ctrl_default_mode, align 4
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %read_ind_register4 = getelementptr inbounds %struct.cgs_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %read_ind_register4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_ind_register4, align 4
  %call6 = tail call i32 %14(ptr noundef %10, i32 noundef 1, i32 noundef -1070595988) #4
  %and7 = and i32 %call6, 255
  %tmin = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 38
  %15 = ptrtoint ptr %tmin to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and7, ptr %tmin, align 4
  %16 = ptrtoint ptr %fan_ctrl_is_in_default_mode to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %fan_ctrl_is_in_default_mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %device10 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %17 = ptrtoint ptr %device10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device10, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %write_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %write_ind_register to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_ind_register, align 4
  %read_ind_register15 = getelementptr inbounds %struct.cgs_ops, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %read_ind_register15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_ind_register15, align 4
  %call17 = tail call i32 %24(ptr noundef %18, i32 noundef 1, i32 noundef -1070595988) #4
  %and18 = and i32 %call17, -256
  tail call void %22(ptr noundef %18, i32 noundef 1, i32 noundef -1070595988, i32 noundef %and18) #4
  %25 = ptrtoint ptr %device10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device10, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %write_ind_register21 = getelementptr inbounds %struct.cgs_ops, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %write_ind_register21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_ind_register21, align 4
  %read_ind_register25 = getelementptr inbounds %struct.cgs_ops, ptr %28, i32 0, i32 2
  %31 = ptrtoint ptr %read_ind_register25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read_ind_register25, align 4
  %call27 = tail call i32 %32(ptr noundef %26, i32 noundef 1, i32 noundef -1070595988) #4
  %and28 = and i32 %call27, -14337
  %shl = shl i32 %mode, 11
  %and29 = and i32 %shl, 14336
  %or30 = or i32 %and28, %and29
  tail call void %30(ptr noundef %26, i32 noundef 1, i32 noundef -1070595988, i32 noundef %or30) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_fan_ctrl_set_default_mode(ptr nocapture noundef %hwmgr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fan_ctrl_is_in_default_mode = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 35
  %0 = ptrtoint ptr %fan_ctrl_is_in_default_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fan_ctrl_is_in_default_mode, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %write_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %write_ind_register to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_ind_register, align 4
  %read_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %read_ind_register to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_ind_register, align 4
  %call = tail call i32 %9(ptr noundef %3, i32 noundef 1, i32 noundef -1070595988) #4
  %and = and i32 %call, -14337
  %fan_ctrl_default_mode = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 36
  %10 = ptrtoint ptr %fan_ctrl_default_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fan_ctrl_default_mode, align 4
  %shl = shl i32 %11, 11
  %and5 = and i32 %shl, 14336
  %or = or i32 %and5, %and
  tail call void %7(ptr noundef %3, i32 noundef 1, i32 noundef -1070595988, i32 noundef %or) #4
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %write_ind_register8 = getelementptr inbounds %struct.cgs_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %write_ind_register8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_ind_register8, align 4
  %read_ind_register12 = getelementptr inbounds %struct.cgs_ops, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %read_ind_register12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_ind_register12, align 4
  %call14 = tail call i32 %19(ptr noundef %13, i32 noundef 1, i32 noundef -1070595988) #4
  %and15 = and i32 %call14, -256
  %tmin = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 38
  %20 = ptrtoint ptr %tmin to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tmin, align 4
  %and17 = and i32 %21, 255
  %or18 = or i32 %and17, %and15
  tail call void %17(ptr noundef %13, i32 noundef 1, i32 noundef -1070595988, i32 noundef %or18) #4
  %22 = ptrtoint ptr %fan_ctrl_is_in_default_mode to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %fan_ctrl_is_in_default_mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_fan_ctrl_start_smc_fan_control(ptr noundef %hwmgr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 4
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %if.else12, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 91, i32 noundef 0, ptr noundef null) #4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %and1.i70 = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i70)
  %cmp.i71.not = icmp eq i32 %and1.i70, 0
  %hwmgr_func8 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %4 = ptrtoint ptr %hwmgr_func8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwmgr_func8, align 4
  br i1 %cmp.i71.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %set_max_fan_rpm_output = getelementptr inbounds %struct.pp_hwmgr_func, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %set_max_fan_rpm_output to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_max_fan_rpm_output, align 4
  %usMaxFanRPM = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 21
  %8 = ptrtoint ptr %usMaxFanRPM to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %usMaxFanRPM, align 2
  %call7 = tail call i32 %7(ptr noundef %hwmgr, i16 noundef zeroext %9) #4
  br label %if.end14

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %set_max_fan_pwm_output = getelementptr inbounds %struct.pp_hwmgr_func, ptr %5, i32 0, i32 25
  %10 = ptrtoint ptr %set_max_fan_pwm_output to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_max_fan_pwm_output, align 4
  %usMaxFanPWM = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 16
  %12 = ptrtoint ptr %usMaxFanPWM to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %usMaxFanPWM, align 4
  %call11 = tail call i32 %11(ptr noundef %hwmgr, i16 noundef zeroext %13) #4
  br label %if.end14

if.else12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call13 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 91, i32 noundef 1, ptr noundef null) #4
  br label %if.end14

if.end14:                                         ; preds = %if.else12, %if.else, %if.then6
  %result.0 = phi i32 [ %call1, %if.then6 ], [ %call1, %if.else ], [ %call13, %if.else12 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0)
  %tobool.not = icmp eq i32 %result.0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end14.if.end47_crit_edge

if.end14.if.end47_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

land.lhs.true:                                    ; preds = %if.end14
  %ucTargetTemperature = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 27
  %14 = ptrtoint ptr %ucTargetTemperature to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ucTargetTemperature, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool17.not = icmp eq i8 %15, 0
  br i1 %tobool17.not, label %land.lhs.true.land.lhs.true26_crit_edge, label %if.end24

land.lhs.true.land.lhs.true26_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true26

if.end24:                                         ; preds = %land.lhs.true
  %conv = zext i8 %15 to i32
  %call23 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 522, i32 noundef %conv, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool25.not = icmp eq i32 %call23, 0
  br i1 %tobool25.not, label %if.end24.land.lhs.true26_crit_edge, label %if.end24.if.end47_crit_edge

if.end24.if.end47_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.end24.land.lhs.true26_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true26

land.lhs.true26:                                  ; preds = %if.end24.land.lhs.true26_crit_edge, %land.lhs.true.land.lhs.true26_crit_edge
  %chip_id = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 2
  %16 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chip_id, align 4
  %.off = add i32 %17, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %land.lhs.true35, label %land.lhs.true26.if.end47_crit_edge

land.lhs.true26.if.end47_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

land.lhs.true35:                                  ; preds = %land.lhs.true26
  %ucEnableZeroRPM = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 36
  %18 = ptrtoint ptr %ucEnableZeroRPM to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ucEnableZeroRPM, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool39.not = icmp eq i8 %19, 0
  br i1 %tobool39.not, label %land.lhs.true35.if.end47_crit_edge, label %land.lhs.true40

land.lhs.true35.if.end47_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

land.lhs.true40:                                  ; preds = %land.lhs.true35
  %arrayidx.i72 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 5
  %20 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i72, align 4
  %and1.i73 = and i32 %21, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i73)
  %cmp.i74.not = icmp eq i32 %and1.i73, 0
  br i1 %cmp.i74.not, label %if.then45, label %land.lhs.true40.if.end47_crit_edge

land.lhs.true40.if.end47_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.then45:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #6
  %call46 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 770, ptr noundef null) #4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %land.lhs.true40.if.end47_crit_edge, %land.lhs.true35.if.end47_crit_edge, %land.lhs.true26.if.end47_crit_edge, %if.end24.if.end47_crit_edge, %if.end14.if.end47_crit_edge
  %result.2 = phi i32 [ %call23, %if.end24.if.end47_crit_edge ], [ 0, %land.lhs.true40.if.end47_crit_edge ], [ %call46, %if.then45 ], [ 0, %land.lhs.true35.if.end47_crit_edge ], [ 0, %land.lhs.true26.if.end47_crit_edge ], [ %result.0, %if.end14.if.end47_crit_edge ]
  %fan_ctrl_enabled = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 37
  %22 = ptrtoint ptr %fan_ctrl_enabled to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %fan_ctrl_enabled, align 4
  ret i32 %result.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc_with_parameter(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_fan_ctrl_stop_smc_fan_control(ptr noundef %hwmgr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fan_ctrl_enabled = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 37
  %0 = ptrtoint ptr %fan_ctrl_enabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %fan_ctrl_enabled, align 4
  %call = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 92, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_fan_ctrl_set_fan_speed_pwm(ptr noundef %hwmgr, i32 noundef %speed) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fanInfo = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4
  %0 = ptrtoint ptr %fanInfo to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fanInfo, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.umin.i32(i32 %speed, i32 255)
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %if.end.if.end3_crit_edge, label %if.then1

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %fan_ctrl_enabled.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 37
  %5 = ptrtoint ptr %fan_ctrl_enabled.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %fan_ctrl_enabled.i, align 4
  %call.i = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 92, ptr noundef null) #4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %read_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %read_ind_register to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_ind_register, align 4
  %call5 = tail call i32 %11(ptr noundef %7, i32 noundef 1, i32 noundef -1070595992) #4
  %and = and i32 %call5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %if.end3.cleanup_crit_edge, label %if.end201

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end201:                                        ; preds = %if.end3
  %narrow = mul nuw nsw i32 %and, %2
  %mul = zext i32 %narrow to i64
  %12 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 72340172838076673, i64 %mul, i64 72340172838076673) #7, !srcloc !10
  %13 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 72340172838076673, i64 %mul, i64 %12) #7, !srcloc !11
  %extract.t310 = trunc i64 %13 to i32
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %write_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %write_ind_register to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_ind_register, align 4
  %read_ind_register209 = getelementptr inbounds %struct.cgs_ops, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %read_ind_register209 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_ind_register209, align 4
  %call211 = tail call i32 %21(ptr noundef %15, i32 noundef 1, i32 noundef -1070595996) #4
  %and212 = and i32 %call211, -256
  %and214 = and i32 %extract.t310, 255
  %or215 = or i32 %and212, %and214
  tail call void %19(ptr noundef %15, i32 noundef 1, i32 noundef -1070595996, i32 noundef %or215) #4
  %fan_ctrl_is_in_default_mode.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 35
  %22 = ptrtoint ptr %fan_ctrl_is_in_default_mode.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %fan_ctrl_is_in_default_mode.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.end201.smu7_fan_ctrl_set_static_mode.exit_crit_edge, label %if.then.i

if.end201.smu7_fan_ctrl_set_static_mode.exit_crit_edge: ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #6
  br label %smu7_fan_ctrl_set_static_mode.exit

if.then.i:                                        ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %read_ind_register.i = getelementptr inbounds %struct.cgs_ops, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %read_ind_register.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read_ind_register.i, align 4
  %call.i311 = tail call i32 %29(ptr noundef %25, i32 noundef 1, i32 noundef -1070595988) #4
  %and.i = lshr i32 %call.i311, 11
  %shr.i = and i32 %and.i, 7
  %fan_ctrl_default_mode.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 36
  %30 = ptrtoint ptr %fan_ctrl_default_mode.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shr.i, ptr %fan_ctrl_default_mode.i, align 4
  %31 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %read_ind_register4.i = getelementptr inbounds %struct.cgs_ops, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %read_ind_register4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read_ind_register4.i, align 4
  %call6.i = tail call i32 %36(ptr noundef %32, i32 noundef 1, i32 noundef -1070595988) #4
  %and7.i = and i32 %call6.i, 255
  %tmin.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 38
  %37 = ptrtoint ptr %tmin.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and7.i, ptr %tmin.i, align 4
  %38 = ptrtoint ptr %fan_ctrl_is_in_default_mode.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %fan_ctrl_is_in_default_mode.i, align 4
  br label %smu7_fan_ctrl_set_static_mode.exit

smu7_fan_ctrl_set_static_mode.exit:               ; preds = %if.then.i, %if.end201.smu7_fan_ctrl_set_static_mode.exit_crit_edge
  %39 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %write_ind_register.i = getelementptr inbounds %struct.cgs_ops, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %write_ind_register.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write_ind_register.i, align 4
  %read_ind_register15.i = getelementptr inbounds %struct.cgs_ops, ptr %42, i32 0, i32 2
  %45 = ptrtoint ptr %read_ind_register15.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read_ind_register15.i, align 4
  %call17.i = tail call i32 %46(ptr noundef %40, i32 noundef 1, i32 noundef -1070595988) #4
  %and18.i = and i32 %call17.i, -256
  tail call void %44(ptr noundef %40, i32 noundef 1, i32 noundef -1070595988, i32 noundef %and18.i) #4
  %47 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %write_ind_register21.i = getelementptr inbounds %struct.cgs_ops, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %write_ind_register21.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write_ind_register21.i, align 4
  %read_ind_register25.i = getelementptr inbounds %struct.cgs_ops, ptr %50, i32 0, i32 2
  %53 = ptrtoint ptr %read_ind_register25.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read_ind_register25.i, align 4
  %call27.i = tail call i32 %54(ptr noundef %48, i32 noundef 1, i32 noundef -1070595988) #4
  %and28.i = and i32 %call27.i, -14337
  %or30.i = or i32 %and28.i, 2048
  tail call void %52(ptr noundef %48, i32 noundef 1, i32 noundef -1070595988, i32 noundef %or30.i) #4
  br label %cleanup

cleanup:                                          ; preds = %smu7_fan_ctrl_set_static_mode.exit, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %smu7_fan_ctrl_set_static_mode.exit ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_fan_ctrl_reset_fan_speed_to_default(ptr noundef %hwmgr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fanInfo = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4
  %0 = ptrtoint ptr %fanInfo to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fanInfo, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  %fan_ctrl_is_in_default_mode.i14 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 35
  %4 = ptrtoint ptr %fan_ctrl_is_in_default_mode.i14 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fan_ctrl_is_in_default_mode.i14, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i15 = icmp eq i8 %5, 0
  br i1 %cmp.i.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  br i1 %tobool.not.i15, label %if.then1.smu7_fan_ctrl_set_static_mode.exit_crit_edge, label %if.then.i

if.then1.smu7_fan_ctrl_set_static_mode.exit_crit_edge: ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  br label %smu7_fan_ctrl_set_static_mode.exit

if.then.i:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %read_ind_register.i = getelementptr inbounds %struct.cgs_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %read_ind_register.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_ind_register.i, align 4
  %call.i = tail call i32 %11(ptr noundef %7, i32 noundef 1, i32 noundef -1070595988) #4
  %and.i = lshr i32 %call.i, 11
  %shr.i = and i32 %and.i, 7
  %fan_ctrl_default_mode.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 36
  %12 = ptrtoint ptr %fan_ctrl_default_mode.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr.i, ptr %fan_ctrl_default_mode.i, align 4
  %13 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %read_ind_register4.i = getelementptr inbounds %struct.cgs_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %read_ind_register4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_ind_register4.i, align 4
  %call6.i = tail call i32 %18(ptr noundef %14, i32 noundef 1, i32 noundef -1070595988) #4
  %and7.i = and i32 %call6.i, 255
  %tmin.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 38
  %19 = ptrtoint ptr %tmin.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and7.i, ptr %tmin.i, align 4
  %20 = ptrtoint ptr %fan_ctrl_is_in_default_mode.i14 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %fan_ctrl_is_in_default_mode.i14, align 4
  br label %smu7_fan_ctrl_set_static_mode.exit

smu7_fan_ctrl_set_static_mode.exit:               ; preds = %if.then.i, %if.then1.smu7_fan_ctrl_set_static_mode.exit_crit_edge
  %device10.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %21 = ptrtoint ptr %device10.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device10.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %write_ind_register.i = getelementptr inbounds %struct.cgs_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %write_ind_register.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_ind_register.i, align 4
  %read_ind_register15.i = getelementptr inbounds %struct.cgs_ops, ptr %24, i32 0, i32 2
  %27 = ptrtoint ptr %read_ind_register15.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read_ind_register15.i, align 4
  %call17.i = tail call i32 %28(ptr noundef %22, i32 noundef 1, i32 noundef -1070595988) #4
  %and18.i = and i32 %call17.i, -256
  tail call void %26(ptr noundef %22, i32 noundef 1, i32 noundef -1070595988, i32 noundef %and18.i) #4
  %29 = ptrtoint ptr %device10.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device10.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %write_ind_register21.i = getelementptr inbounds %struct.cgs_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %write_ind_register21.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_ind_register21.i, align 4
  %read_ind_register25.i = getelementptr inbounds %struct.cgs_ops, ptr %32, i32 0, i32 2
  %35 = ptrtoint ptr %read_ind_register25.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read_ind_register25.i, align 4
  %call27.i = tail call i32 %36(ptr noundef %30, i32 noundef 1, i32 noundef -1070595988) #4
  %and28.i = and i32 %call27.i, -14337
  %or30.i = or i32 %and28.i, 2048
  tail call void %34(ptr noundef %30, i32 noundef 1, i32 noundef -1070595988, i32 noundef %or30.i) #4
  %call5 = tail call i32 @smu7_fan_ctrl_start_smc_fan_control(ptr noundef %hwmgr)
  br label %cleanup

if.else:                                          ; preds = %if.end
  br i1 %tobool.not.i15, label %if.then.i23, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i23:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %device.i16 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %37 = ptrtoint ptr %device.i16 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device.i16, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %write_ind_register.i17 = getelementptr inbounds %struct.cgs_ops, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %write_ind_register.i17 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_ind_register.i17, align 4
  %read_ind_register.i18 = getelementptr inbounds %struct.cgs_ops, ptr %40, i32 0, i32 2
  %43 = ptrtoint ptr %read_ind_register.i18 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read_ind_register.i18, align 4
  %call.i19 = tail call i32 %44(ptr noundef %38, i32 noundef 1, i32 noundef -1070595988) #4
  %and.i20 = and i32 %call.i19, -14337
  %fan_ctrl_default_mode.i21 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 36
  %45 = ptrtoint ptr %fan_ctrl_default_mode.i21 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fan_ctrl_default_mode.i21, align 4
  %shl.i = shl i32 %46, 11
  %and5.i = and i32 %shl.i, 14336
  %or.i = or i32 %and5.i, %and.i20
  tail call void %42(ptr noundef %38, i32 noundef 1, i32 noundef -1070595988, i32 noundef %or.i) #4
  %47 = ptrtoint ptr %device.i16 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device.i16, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %write_ind_register8.i = getelementptr inbounds %struct.cgs_ops, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %write_ind_register8.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write_ind_register8.i, align 4
  %read_ind_register12.i = getelementptr inbounds %struct.cgs_ops, ptr %50, i32 0, i32 2
  %53 = ptrtoint ptr %read_ind_register12.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read_ind_register12.i, align 4
  %call14.i = tail call i32 %54(ptr noundef %48, i32 noundef 1, i32 noundef -1070595988) #4
  %and15.i = and i32 %call14.i, -256
  %tmin.i22 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 38
  %55 = ptrtoint ptr %tmin.i22 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tmin.i22, align 4
  %and17.i = and i32 %56, 255
  %or18.i = or i32 %and17.i, %and15.i
  tail call void %52(ptr noundef %48, i32 noundef 1, i32 noundef -1070595988, i32 noundef %or18.i) #4
  %57 = ptrtoint ptr %fan_ctrl_is_in_default_mode.i14 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %fan_ctrl_is_in_default_mode.i14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i23, %if.else.cleanup_crit_edge, %smu7_fan_ctrl_set_static_mode.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call5, %smu7_fan_ctrl_set_static_mode.exit ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then.i23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_fan_ctrl_set_fan_speed_rpm(ptr noundef %hwmgr, i32 noundef %speed) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fanInfo = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4
  %0 = ptrtoint ptr %fanInfo to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fanInfo, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ucTachometerPulsesPerRevolution = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4, i32 1
  %2 = ptrtoint ptr %ucTachometerPulsesPerRevolution to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ucTachometerPulsesPerRevolution, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %speed)
  %cmp5 = icmp eq i32 %speed, 0
  %or.cond = or i1 %cmp5, %cmp
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %ulMinRPM = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4, i32 2
  %4 = ptrtoint ptr %ulMinRPM to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ulMinRPM, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %speed)
  %cmp10 = icmp ugt i32 %5, %speed
  br i1 %cmp10, label %lor.lhs.false7.cleanup_crit_edge, label %lor.lhs.false12

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false7
  %ulMaxRPM = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4, i32 3
  %6 = ptrtoint ptr %ulMaxRPM to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ulMaxRPM, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %speed)
  %cmp15 = icmp ult i32 %7, %speed
  br i1 %cmp15, label %lor.lhs.false12.cleanup_crit_edge, label %if.end

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false12
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %9, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %if.end.if.end19_crit_edge, label %if.then17

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %fan_ctrl_enabled.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 37
  %10 = ptrtoint ptr %fan_ctrl_enabled.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %fan_ctrl_enabled.i, align 4
  %call.i = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 92, ptr noundef null) #4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end.if.end19_crit_edge
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
  %call21 = tail call i32 %16(ptr noundef %12) #4
  %mul22 = mul i32 %call21, 600000
  %mul23 = shl i32 %speed, 3
  %div = udiv i32 %mul22, %mul23
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %17 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %write_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %write_ind_register to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_ind_register, align 4
  %read_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %read_ind_register to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_ind_register, align 4
  %call28 = tail call i32 %24(ptr noundef %18, i32 noundef 1, i32 noundef -1070595984) #4
  %and = and i32 %call28, 7
  %shl = shl i32 %div, 3
  %or = or i32 %and, %shl
  tail call void %22(ptr noundef %18, i32 noundef 1, i32 noundef -1070595984, i32 noundef %or) #4
  %fan_ctrl_is_in_default_mode.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 35
  %25 = ptrtoint ptr %fan_ctrl_is_in_default_mode.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %fan_ctrl_is_in_default_mode.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %if.end19.smu7_fan_ctrl_set_static_mode.exit_crit_edge, label %if.then.i

if.end19.smu7_fan_ctrl_set_static_mode.exit_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %smu7_fan_ctrl_set_static_mode.exit

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %read_ind_register.i = getelementptr inbounds %struct.cgs_ops, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %read_ind_register.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read_ind_register.i, align 4
  %call.i47 = tail call i32 %32(ptr noundef %28, i32 noundef 1, i32 noundef -1070595988) #4
  %and.i = lshr i32 %call.i47, 11
  %shr.i = and i32 %and.i, 7
  %fan_ctrl_default_mode.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 36
  %33 = ptrtoint ptr %fan_ctrl_default_mode.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %shr.i, ptr %fan_ctrl_default_mode.i, align 4
  %34 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %read_ind_register4.i = getelementptr inbounds %struct.cgs_ops, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %read_ind_register4.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read_ind_register4.i, align 4
  %call6.i = tail call i32 %39(ptr noundef %35, i32 noundef 1, i32 noundef -1070595988) #4
  %and7.i = and i32 %call6.i, 255
  %tmin.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 38
  %40 = ptrtoint ptr %tmin.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and7.i, ptr %tmin.i, align 4
  %41 = ptrtoint ptr %fan_ctrl_is_in_default_mode.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %fan_ctrl_is_in_default_mode.i, align 4
  br label %smu7_fan_ctrl_set_static_mode.exit

smu7_fan_ctrl_set_static_mode.exit:               ; preds = %if.then.i, %if.end19.smu7_fan_ctrl_set_static_mode.exit_crit_edge
  %42 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %write_ind_register.i = getelementptr inbounds %struct.cgs_ops, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %write_ind_register.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write_ind_register.i, align 4
  %read_ind_register15.i = getelementptr inbounds %struct.cgs_ops, ptr %45, i32 0, i32 2
  %48 = ptrtoint ptr %read_ind_register15.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read_ind_register15.i, align 4
  %call17.i = tail call i32 %49(ptr noundef %43, i32 noundef 1, i32 noundef -1070595988) #4
  %and18.i = and i32 %call17.i, -256
  tail call void %47(ptr noundef %43, i32 noundef 1, i32 noundef -1070595988, i32 noundef %and18.i) #4
  %50 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %device, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %write_ind_register21.i = getelementptr inbounds %struct.cgs_ops, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %write_ind_register21.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write_ind_register21.i, align 4
  %read_ind_register25.i = getelementptr inbounds %struct.cgs_ops, ptr %53, i32 0, i32 2
  %56 = ptrtoint ptr %read_ind_register25.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read_ind_register25.i, align 4
  %call27.i = tail call i32 %57(ptr noundef %51, i32 noundef 1, i32 noundef -1070595988) #4
  %and28.i = and i32 %call27.i, -14337
  %or30.i = or i32 %and28.i, 10240
  tail call void %55(ptr noundef %51, i32 noundef 1, i32 noundef -1070595988, i32 noundef %or30.i) #4
  br label %cleanup

cleanup:                                          ; preds = %smu7_fan_ctrl_set_static_mode.exit, %lor.lhs.false12.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_thermal_get_temperature(ptr nocapture noundef readonly %hwmgr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %call = tail call i32 %5(ptr noundef %1, i32 noundef 1, i32 noundef -1070596076) #4
  %and = lshr i32 %call, 9
  %shr = and i32 %and, 511
  %phi.bo = mul nuw nsw i32 %shr, 1000
  ret i32 %phi.bo
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_thermal_disable_alert(ptr noundef %hwmgr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %call = tail call i32 %5(ptr noundef %1, i32 noundef 1, i32 noundef -1070596084) #4
  %shr = and i32 %call, 201326592
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %write_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %write_ind_register to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_ind_register, align 4
  %read_ind_register7 = getelementptr inbounds %struct.cgs_ops, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %read_ind_register7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_ind_register7, align 4
  %call9 = tail call i32 %13(ptr noundef %7, i32 noundef 1, i32 noundef -1070596084) #4
  %and10 = and i32 %call9, -251658241
  %or = or i32 %shr, %and10
  %or12 = or i32 %or, 50331648
  tail call void %11(ptr noundef %7, i32 noundef 1, i32 noundef -1070596084, i32 noundef %or12) #4
  %call13 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 307, ptr noundef null) #4
  ret i32 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_thermal_stop_thermal_controller(ptr noundef %hwmgr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %0 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read_ind_register.i = getelementptr inbounds %struct.cgs_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read_ind_register.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_ind_register.i, align 4
  %call.i = tail call i32 %5(ptr noundef %1, i32 noundef 1, i32 noundef -1070596084) #4
  %shr.i = and i32 %call.i, 201326592
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %write_ind_register.i = getelementptr inbounds %struct.cgs_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %write_ind_register.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_ind_register.i, align 4
  %read_ind_register7.i = getelementptr inbounds %struct.cgs_ops, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %read_ind_register7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_ind_register7.i, align 4
  %call9.i = tail call i32 %13(ptr noundef %7, i32 noundef 1, i32 noundef -1070596084) #4
  %and10.i = and i32 %call9.i, -251658241
  %or.i = or i32 %shr.i, %and10.i
  %or12.i = or i32 %or.i, 50331648
  tail call void %11(ptr noundef %7, i32 noundef 1, i32 noundef -1070596084, i32 noundef %or12.i) #4
  %call13.i = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 307, ptr noundef null) #4
  %fanInfo = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4
  %14 = ptrtoint ptr %fanInfo to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fanInfo, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %fan_ctrl_is_in_default_mode.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 35
  %16 = ptrtoint ptr %fan_ctrl_is_in_default_mode.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fan_ctrl_is_in_default_mode.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %write_ind_register.i5 = getelementptr inbounds %struct.cgs_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %write_ind_register.i5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_ind_register.i5, align 4
  %read_ind_register.i6 = getelementptr inbounds %struct.cgs_ops, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %read_ind_register.i6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_ind_register.i6, align 4
  %call.i7 = tail call i32 %25(ptr noundef %19, i32 noundef 1, i32 noundef -1070595988) #4
  %and.i = and i32 %call.i7, -14337
  %fan_ctrl_default_mode.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 36
  %26 = ptrtoint ptr %fan_ctrl_default_mode.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fan_ctrl_default_mode.i, align 4
  %shl.i = shl i32 %27, 11
  %and5.i = and i32 %shl.i, 14336
  %or.i8 = or i32 %and5.i, %and.i
  tail call void %23(ptr noundef %19, i32 noundef 1, i32 noundef -1070595988, i32 noundef %or.i8) #4
  %28 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %write_ind_register8.i = getelementptr inbounds %struct.cgs_ops, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %write_ind_register8.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_ind_register8.i, align 4
  %read_ind_register12.i = getelementptr inbounds %struct.cgs_ops, ptr %31, i32 0, i32 2
  %34 = ptrtoint ptr %read_ind_register12.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read_ind_register12.i, align 4
  %call14.i = tail call i32 %35(ptr noundef %29, i32 noundef 1, i32 noundef -1070595988) #4
  %and15.i = and i32 %call14.i, -256
  %tmin.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 38
  %36 = ptrtoint ptr %tmin.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tmin.i, align 4
  %and17.i = and i32 %37, 255
  %or18.i = or i32 %and17.i, %and15.i
  tail call void %33(ptr noundef %29, i32 noundef 1, i32 noundef -1070595988, i32 noundef %or18.i) #4
  %38 = ptrtoint ptr %fan_ctrl_is_in_default_mode.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %fan_ctrl_is_in_default_mode.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call13.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_start_thermal_controller(ptr noundef %hwmgr, ptr noundef readonly %range) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %range, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %ucTachometerPulsesPerRevolution.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4, i32 1
  %0 = ptrtoint ptr %ucTachometerPulsesPerRevolution.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ucTachometerPulsesPerRevolution.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.end.smu7_thermal_initialize.exit_crit_edge, label %if.then.i

if.end.smu7_thermal_initialize.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %smu7_thermal_initialize.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %write_ind_register.i = getelementptr inbounds %struct.cgs_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %write_ind_register.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_ind_register.i, align 4
  %read_ind_register.i = getelementptr inbounds %struct.cgs_ops, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %read_ind_register.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_ind_register.i, align 4
  %call.i = tail call i32 %9(ptr noundef %3, i32 noundef 1, i32 noundef -1070595984) #4
  %and.i = and i32 %call.i, -8
  %10 = ptrtoint ptr %ucTachometerPulsesPerRevolution.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ucTachometerPulsesPerRevolution.i, align 1
  %12 = add i8 %11, 7
  %13 = and i8 %12, 7
  %and8.i = zext i8 %13 to i32
  %or.i = or i32 %and.i, %and8.i
  tail call void %7(ptr noundef %3, i32 noundef 1, i32 noundef -1070595984, i32 noundef %or.i) #4
  br label %smu7_thermal_initialize.exit

smu7_thermal_initialize.exit:                     ; preds = %if.then.i, %if.end.smu7_thermal_initialize.exit_crit_edge
  %device9.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %14 = ptrtoint ptr %device9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device9.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %write_ind_register11.i = getelementptr inbounds %struct.cgs_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %write_ind_register11.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_ind_register11.i, align 4
  %read_ind_register15.i = getelementptr inbounds %struct.cgs_ops, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %read_ind_register15.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_ind_register15.i, align 4
  %call17.i = tail call i32 %21(ptr noundef %15, i32 noundef 1, i32 noundef -1070595988) #4
  %and18.i = and i32 %call17.i, 33554431
  %or19.i = or i32 %and18.i, 1342177280
  tail call void %19(ptr noundef %15, i32 noundef 1, i32 noundef -1070595988, i32 noundef %or19.i) #4
  %22 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %range, align 4
  %max = getelementptr inbounds %struct.PP_TemperatureRange, ptr %range, i32 0, i32 1
  %24 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max, align 4
  %26 = tail call i32 @llvm.smax.i32(i32 %23, i32 0) #4
  %27 = tail call i32 @llvm.smin.i32(i32 %25, i32 255000) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %27)
  %cmp4.i = icmp sgt i32 %26, %27
  br i1 %cmp4.i, label %smu7_thermal_initialize.exit.cleanup_crit_edge, label %if.end3

smu7_thermal_initialize.exit.cleanup_crit_edge:   ; preds = %smu7_thermal_initialize.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %smu7_thermal_initialize.exit
  %28 = ptrtoint ptr %device9.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device9.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %write_ind_register.i19 = getelementptr inbounds %struct.cgs_ops, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %write_ind_register.i19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_ind_register.i19, align 4
  %read_ind_register.i20 = getelementptr inbounds %struct.cgs_ops, ptr %31, i32 0, i32 2
  %34 = ptrtoint ptr %read_ind_register.i20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read_ind_register.i20, align 4
  %call.i21 = tail call i32 %35(ptr noundef %29, i32 noundef 1, i32 noundef -1070596084) #4
  %and.i22 = and i32 %call.i21, -65281
  %div.i = sdiv i32 %27, 1000
  %shl.i = shl nsw i32 %div.i, 8
  %and11.i = and i32 %shl.i, 65280
  %or.i23 = or i32 %and.i22, %and11.i
  tail call void %33(ptr noundef %29, i32 noundef 1, i32 noundef -1070596084, i32 noundef %or.i23) #4
  %36 = ptrtoint ptr %device9.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device9.i, align 4
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
  %call20.i = tail call i32 %43(ptr noundef %37, i32 noundef 1, i32 noundef -1070596084) #4
  %and21.i = and i32 %call20.i, -16711681
  %div2259.i = udiv i32 %26, 1000
  %shl23.i = shl i32 %div2259.i, 16
  %and24.i = and i32 %shl23.i, 16711680
  %or25.i = or i32 %and21.i, %and24.i
  tail call void %41(ptr noundef %37, i32 noundef 1, i32 noundef -1070596084, i32 noundef %or25.i) #4
  %44 = ptrtoint ptr %device9.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device9.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %write_ind_register28.i = getelementptr inbounds %struct.cgs_ops, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %write_ind_register28.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_ind_register28.i, align 4
  %read_ind_register32.i = getelementptr inbounds %struct.cgs_ops, ptr %47, i32 0, i32 2
  %50 = ptrtoint ptr %read_ind_register32.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read_ind_register32.i, align 4
  %call34.i = tail call i32 %51(ptr noundef %45, i32 noundef 1, i32 noundef -1070596092) #4
  %and35.i = and i32 %call34.i, -4177921
  %shl37.i = shl i32 %div.i, 14
  %and38.i = and i32 %shl37.i, 4177920
  %or39.i = or i32 %and35.i, %and38.i
  tail call void %49(ptr noundef %45, i32 noundef 1, i32 noundef -1070596092, i32 noundef %or39.i) #4
  %52 = ptrtoint ptr %device9.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device9.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %read_ind_register.i25 = getelementptr inbounds %struct.cgs_ops, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %read_ind_register.i25 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read_ind_register.i25, align 4
  %call.i26 = tail call i32 %57(ptr noundef %53, i32 noundef 1, i32 noundef -1070596084) #4
  %and2.i = and i32 %call.i26, 201326592
  %58 = ptrtoint ptr %device9.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device9.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %write_ind_register.i27 = getelementptr inbounds %struct.cgs_ops, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %write_ind_register.i27 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write_ind_register.i27, align 4
  %read_ind_register8.i = getelementptr inbounds %struct.cgs_ops, ptr %61, i32 0, i32 2
  %64 = ptrtoint ptr %read_ind_register8.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read_ind_register8.i, align 4
  %call10.i = tail call i32 %65(ptr noundef %59, i32 noundef 1, i32 noundef -1070596084) #4
  %and11.i28 = and i32 %call10.i, -251658241
  %or.i29 = or i32 %and11.i28, %and2.i
  tail call void %63(ptr noundef %59, i32 noundef 1, i32 noundef -1070596084, i32 noundef %or.i29) #4
  %call13.i = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 266, ptr noundef null) #4
  %call4 = tail call i32 @smum_thermal_avfs_enable(ptr noundef %hwmgr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call8 = tail call i32 @smum_thermal_setup_fan_table(ptr noundef %hwmgr) #4
  %arrayidx.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 1
  %66 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i.i, align 4
  %and1.i.i = and i32 %67, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.i.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %cmp.i.not.i, label %if.end7.cleanup_crit_edge, label %if.then.i30

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i30:                                      ; preds = %if.end7
  %call1.i = tail call i32 @smu7_fan_ctrl_start_smc_fan_control(ptr noundef %hwmgr) #4
  %fan_ctrl_is_in_default_mode.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 35
  %68 = ptrtoint ptr %fan_ctrl_is_in_default_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %fan_ctrl_is_in_default_mode.i.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i.i = icmp eq i8 %69, 0
  br i1 %tobool.not.i.i, label %if.then.i30.smu7_fan_ctrl_set_static_mode.exit.i_crit_edge, label %if.then.i.i

if.then.i30.smu7_fan_ctrl_set_static_mode.exit.i_crit_edge: ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_pc() #6
  br label %smu7_fan_ctrl_set_static_mode.exit.i

if.then.i.i:                                      ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_pc() #6
  %70 = ptrtoint ptr %device9.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %device9.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %read_ind_register.i.i = getelementptr inbounds %struct.cgs_ops, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %read_ind_register.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read_ind_register.i.i, align 4
  %call.i.i = tail call i32 %75(ptr noundef %71, i32 noundef 1, i32 noundef -1070595988) #4
  %and.i.i = lshr i32 %call.i.i, 11
  %shr.i.i = and i32 %and.i.i, 7
  %fan_ctrl_default_mode.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 36
  %76 = ptrtoint ptr %fan_ctrl_default_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %shr.i.i, ptr %fan_ctrl_default_mode.i.i, align 4
  %77 = ptrtoint ptr %device9.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %device9.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %read_ind_register4.i.i = getelementptr inbounds %struct.cgs_ops, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %read_ind_register4.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read_ind_register4.i.i, align 4
  %call6.i.i = tail call i32 %82(ptr noundef %78, i32 noundef 1, i32 noundef -1070595988) #4
  %and7.i.i = and i32 %call6.i.i, 255
  %tmin.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 38
  %83 = ptrtoint ptr %tmin.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %and7.i.i, ptr %tmin.i.i, align 4
  %84 = ptrtoint ptr %fan_ctrl_is_in_default_mode.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %fan_ctrl_is_in_default_mode.i.i, align 4
  br label %smu7_fan_ctrl_set_static_mode.exit.i

smu7_fan_ctrl_set_static_mode.exit.i:             ; preds = %if.then.i.i, %if.then.i30.smu7_fan_ctrl_set_static_mode.exit.i_crit_edge
  %85 = ptrtoint ptr %device9.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %device9.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %write_ind_register.i.i = getelementptr inbounds %struct.cgs_ops, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %write_ind_register.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write_ind_register.i.i, align 4
  %read_ind_register15.i.i = getelementptr inbounds %struct.cgs_ops, ptr %88, i32 0, i32 2
  %91 = ptrtoint ptr %read_ind_register15.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %read_ind_register15.i.i, align 4
  %call17.i.i = tail call i32 %92(ptr noundef %86, i32 noundef 1, i32 noundef -1070595988) #4
  %and18.i.i = and i32 %call17.i.i, -256
  tail call void %90(ptr noundef %86, i32 noundef 1, i32 noundef -1070595988, i32 noundef %and18.i.i) #4
  %93 = ptrtoint ptr %device9.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %device9.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %write_ind_register21.i.i = getelementptr inbounds %struct.cgs_ops, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %write_ind_register21.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %write_ind_register21.i.i, align 4
  %read_ind_register25.i.i = getelementptr inbounds %struct.cgs_ops, ptr %96, i32 0, i32 2
  %99 = ptrtoint ptr %read_ind_register25.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %read_ind_register25.i.i, align 4
  %call27.i.i = tail call i32 %100(ptr noundef %94, i32 noundef 1, i32 noundef -1070595988) #4
  %and28.i.i = and i32 %call27.i.i, -14337
  %or30.i.i = or i32 %and28.i.i, 2048
  tail call void %98(ptr noundef %94, i32 noundef 1, i32 noundef -1070595988, i32 noundef %or30.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %smu7_fan_ctrl_set_static_mode.exit.i, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %smu7_thermal_initialize.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %smu7_thermal_initialize.exit.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %smu7_fan_ctrl_set_static_mode.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_thermal_avfs_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_thermal_setup_fan_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_thermal_ctrl_uninitialize_thermal_controller(ptr nocapture noundef %hwmgr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fanInfo = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4
  %0 = ptrtoint ptr %fanInfo to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fanInfo, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %fan_ctrl_is_in_default_mode.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 35
  %2 = ptrtoint ptr %fan_ctrl_is_in_default_mode.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fan_ctrl_is_in_default_mode.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %write_ind_register.i = getelementptr inbounds %struct.cgs_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %write_ind_register.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_ind_register.i, align 4
  %read_ind_register.i = getelementptr inbounds %struct.cgs_ops, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %read_ind_register.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_ind_register.i, align 4
  %call.i = tail call i32 %11(ptr noundef %5, i32 noundef 1, i32 noundef -1070595988) #4
  %and.i = and i32 %call.i, -14337
  %fan_ctrl_default_mode.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 36
  %12 = ptrtoint ptr %fan_ctrl_default_mode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fan_ctrl_default_mode.i, align 4
  %shl.i = shl i32 %13, 11
  %and5.i = and i32 %shl.i, 14336
  %or.i = or i32 %and5.i, %and.i
  tail call void %9(ptr noundef %5, i32 noundef 1, i32 noundef -1070595988, i32 noundef %or.i) #4
  %14 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %write_ind_register8.i = getelementptr inbounds %struct.cgs_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %write_ind_register8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_ind_register8.i, align 4
  %read_ind_register12.i = getelementptr inbounds %struct.cgs_ops, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %read_ind_register12.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_ind_register12.i, align 4
  %call14.i = tail call i32 %21(ptr noundef %15, i32 noundef 1, i32 noundef -1070595988) #4
  %and15.i = and i32 %call14.i, -256
  %tmin.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 38
  %22 = ptrtoint ptr %tmin.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tmin.i, align 4
  %and17.i = and i32 %23, 255
  %or18.i = or i32 %and17.i, %and15.i
  tail call void %19(ptr noundef %15, i32 noundef 1, i32 noundef -1070595988, i32 noundef %or18.i) #4
  %24 = ptrtoint ptr %fan_ctrl_is_in_default_mode.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %fan_ctrl_is_in_default_mode.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{i8 0, i8 2}
!10 = !{i64 479329, i64 479356}
!11 = !{i64 479669, i64 479696, i64 479730, i64 479751}
