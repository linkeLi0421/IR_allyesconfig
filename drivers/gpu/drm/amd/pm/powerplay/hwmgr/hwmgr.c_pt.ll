; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/hwmgr/hwmgr.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/hwmgr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pp_smumgr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pp_hwmgr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pp_table_func = type { ptr, ptr, ptr, ptr }

@ci_smu_funcs = external dso_local constant %struct.pp_smumgr_func, align 4
@smu8_smu_funcs = external dso_local constant %struct.pp_smumgr_func, align 4
@iceland_smu_funcs = external dso_local constant %struct.pp_smumgr_func, align 4
@tonga_smu_funcs = external dso_local constant %struct.pp_smumgr_func, align 4
@fiji_smu_funcs = external dso_local constant %struct.pp_smumgr_func, align 4
@polaris10_smu_funcs = external dso_local constant %struct.pp_smumgr_func, align 4
@vegam_smu_funcs = external dso_local constant %struct.pp_smumgr_func, align 4
@vega10_smu_funcs = external dso_local constant %struct.pp_smumgr_func, align 4
@vega12_smu_funcs = external dso_local constant %struct.pp_smumgr_func, align 4
@vega20_smu_funcs = external dso_local constant %struct.pp_smumgr_func, align 4
@smu10_smu_funcs = external dso_local constant %struct.pp_smumgr_func, align 4
@hwmgr_sw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016amdgpu: hwmgr_sw_init smu backed is %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hwmgr_sw_init\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/hwmgr.c\00", [39 x i8] zeroinitializer }, align 32
@hwmgr_sw_init._entry_ptr = internal global ptr @hwmgr_sw_init._entry, section ".printk_index", align 4
@amdgpu_dpm = external dso_local local_unnamed_addr global i32, align 4
@hwmgr_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016amdgpu: dpm not supported \0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hwmgr_hw_init\00", [18 x i8] zeroinitializer }, align 32
@hwmgr_hw_init._entry_ptr = internal global ptr @hwmgr_hw_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 120, i64 130, i64 135, i64 141, i64 142]
@__sancov_gen_cov_switch_values.5 = internal global [9 x i64] [i64 7, i64 32, i64 10, i64 11, i64 12, i64 15, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 17]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 19, i64 20, i64 21]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 17]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 202, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [60 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/hwmgr.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 230, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @hwmgr_hw_init._entry, ptr @hwmgr_hw_init._entry_ptr, ptr @hwmgr_sw_init._entry, ptr @hwmgr_sw_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwmgr_sw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwmgr_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hwmgr_early_init(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hwmgr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %usec_timeout = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 21
  %0 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1000000, ptr %usec_timeout, align 4
  %pp_table_version = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 9
  %1 = ptrtoint ptr %pp_table_version to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %pp_table_version, align 4
  %dpm_level = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 18
  %2 = ptrtoint ptr %dpm_level to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %dpm_level, align 4
  %request_dpm_level = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 20
  %3 = ptrtoint ptr %request_dpm_level to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %request_dpm_level, align 4
  %platform_descriptor.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23
  %arrayidx.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i33.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx.i33.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i33.i, align 4
  %8 = ptrtoint ptr %platform_descriptor.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %platform_descriptor.i, align 4
  %or.i41.i = or i32 %9, 1073742336
  store i32 %or.i41.i, ptr %platform_descriptor.i, align 4
  %or.i43.i = or i32 %7, 8388643
  store i32 %or.i43.i, ptr %arrayidx.i33.i, align 4
  %arrayidx.i44.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 4
  %10 = ptrtoint ptr %arrayidx.i44.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i44.i, align 4
  %or.i45.i = or i32 %11, 33554432
  store i32 %or.i45.i, ptr %arrayidx.i44.i, align 4
  %feature_mask.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 46
  %12 = ptrtoint ptr %feature_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %feature_mask.i, align 4
  %or.i37.i = and i32 %5, -21697
  %and1.i.i140 = or i32 %or.i37.i, 128
  %and.i = shl i32 %13, 3
  %14 = and i32 %and.i, 64
  %and1.i.sink.i = or i32 %14, %and1.i.i140
  %and5.i = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %masksel.i = select i1 %tobool6.not.i, i32 0, i32 20480
  %and1.i9.sink.i = or i32 %and1.i.sink.i, %masksel.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and1.i9.sink.i, ptr %arrayidx.i.i, align 4
  %and23.i = and i32 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.end.hwmgr_set_user_specify_caps.exit_crit_edge, label %if.then25.i

if.end.hwmgr_set_user_specify_caps.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %hwmgr_set_user_specify_caps.exit

if.then25.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %od_enabled.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 53
  %16 = ptrtoint ptr %od_enabled.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %od_enabled.i, align 4
  br label %hwmgr_set_user_specify_caps.exit

hwmgr_set_user_specify_caps.exit:                 ; preds = %if.then25.i, %if.end.hwmgr_set_user_specify_caps.exit_crit_edge
  %fan_ctrl_is_in_default_mode = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 35
  %17 = ptrtoint ptr %fan_ctrl_is_in_default_mode to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %fan_ctrl_is_in_default_mode, align 4
  %workload_prority.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 57
  %18 = ptrtoint ptr %workload_prority.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %workload_prority.i, align 4
  %arrayidx2.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 57, i32 1
  %19 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %arrayidx2.i, align 4
  %arrayidx4.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 57, i32 2
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 57, i32 3
  %21 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %arrayidx6.i, align 4
  %arrayidx8.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 57, i32 4
  %22 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %arrayidx8.i, align 4
  %arrayidx10.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 57, i32 5
  %23 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 5, ptr %arrayidx10.i, align 4
  %workload_setting.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 58
  %24 = ptrtoint ptr %workload_setting.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %workload_setting.i, align 4
  %arrayidx13.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 58, i32 1
  %25 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %arrayidx13.i, align 4
  %arrayidx15.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 58, i32 2
  %26 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %arrayidx15.i, align 4
  %arrayidx17.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 58, i32 3
  %27 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %arrayidx17.i, align 4
  %arrayidx19.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 58, i32 4
  %28 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %arrayidx19.i, align 4
  %arrayidx21.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 58, i32 5
  %29 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 5, ptr %arrayidx21.i, align 4
  %gfxoff_state_changed_by_workload = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 59
  %30 = ptrtoint ptr %gfxoff_state_changed_by_workload to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %gfxoff_state_changed_by_workload, align 4
  %31 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hwmgr, align 4
  %chip_family = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 1
  %33 = ptrtoint ptr %chip_family to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chip_family, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %34, label %hwmgr_set_user_specify_caps.exit.cleanup_crit_edge [
    i32 120, label %sw.bb
    i32 135, label %sw.bb6
    i32 130, label %sw.bb15
    i32 141, label %sw.bb49
    i32 142, label %sw.bb72
  ]

hwmgr_set_user_specify_caps.exit.cleanup_crit_edge: ; preds = %hwmgr_set_user_specify_caps.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %hwmgr_set_user_specify_caps.exit
  call void @__sanitizer_cov_trace_pc() #7
  %pp_feature = getelementptr inbounds %struct.amdgpu_device, ptr %32, i32 0, i32 98, i32 24
  %36 = ptrtoint ptr %pp_feature to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pp_feature, align 8
  %and = and i32 %37, -32769
  store i32 %and, ptr %pp_feature, align 8
  %smumgr_funcs = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %38 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @ci_smu_funcs, ptr %smumgr_funcs, align 4
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i, align 4
  %and1.i.i143 = and i32 %40, -8193
  store i32 %and1.i.i143, ptr %arrayidx.i.i, align 4
  %41 = ptrtoint ptr %arrayidx.i33.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i33.i, align 4
  %and1.i6.i = and i32 %42, -458753
  store i32 %and1.i6.i, ptr %arrayidx.i33.i, align 4
  %43 = ptrtoint ptr %platform_descriptor.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %platform_descriptor.i, align 4
  %or.i7.i = or i32 %44, 201326592
  store i32 %or.i7.i, ptr %platform_descriptor.i, align 4
  %45 = ptrtoint ptr %feature_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %feature_mask.i, align 4
  %and3 = and i32 %46, -33409
  store i32 %and3, ptr %feature_mask.i, align 4
  %47 = ptrtoint ptr %pp_table_version to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %pp_table_version, align 4
  %od_enabled = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 53
  %48 = ptrtoint ptr %od_enabled to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %od_enabled, align 4
  %call5 = tail call i32 @smu7_init_function_pointers(ptr noundef nonnull %hwmgr) #5
  br label %cleanup

sw.bb6:                                           ; preds = %hwmgr_set_user_specify_caps.exit
  call void @__sanitizer_cov_trace_pc() #7
  %pp_feature8 = getelementptr inbounds %struct.amdgpu_device, ptr %32, i32 0, i32 98, i32 24
  %49 = ptrtoint ptr %pp_feature8 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pp_feature8, align 8
  %and9 = and i32 %50, -32769
  store i32 %and9, ptr %pp_feature8, align 8
  %od_enabled10 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 53
  %51 = ptrtoint ptr %od_enabled10 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %od_enabled10, align 4
  %smumgr_funcs11 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %52 = ptrtoint ptr %smumgr_funcs11 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @smu8_smu_funcs, ptr %smumgr_funcs11, align 4
  %53 = ptrtoint ptr %feature_mask.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %feature_mask.i, align 4
  %and13 = and i32 %54, -32769
  store i32 %and13, ptr %feature_mask.i, align 4
  %call14 = tail call i32 @smu8_init_function_pointers(ptr noundef nonnull %hwmgr) #5
  br label %cleanup

sw.bb15:                                          ; preds = %hwmgr_set_user_specify_caps.exit
  %pp_feature17 = getelementptr inbounds %struct.amdgpu_device, ptr %32, i32 0, i32 98, i32 24
  %55 = ptrtoint ptr %pp_feature17 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pp_feature17, align 8
  %and18 = and i32 %56, -32769
  store i32 %and18, ptr %pp_feature17, align 8
  %57 = ptrtoint ptr %feature_mask.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %feature_mask.i, align 4
  %and20 = and i32 %58, -32769
  store i32 %and20, ptr %feature_mask.i, align 4
  %chip_id = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 2
  %59 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %chip_id, align 4
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %60, label %sw.bb15.cleanup_crit_edge [
    i32 10, label %sw.bb21
    i32 11, label %sw.bb28
    i32 12, label %sw.bb33
    i32 16, label %sw.bb15.sw.bb38_crit_edge
    i32 15, label %sw.bb15.sw.bb38_crit_edge164
    i32 17, label %sw.bb15.sw.bb38_crit_edge165
    i32 18, label %sw.bb43
  ]

sw.bb15.sw.bb38_crit_edge165:                     ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb38

sw.bb15.sw.bb38_crit_edge164:                     ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb38

sw.bb15.sw.bb38_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb38

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb21:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #7
  %smumgr_funcs22 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %62 = ptrtoint ptr %smumgr_funcs22 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @iceland_smu_funcs, ptr %smumgr_funcs22, align 4
  %63 = ptrtoint ptr %arrayidx.i44.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i44.i, align 4
  %or.i.i = or i32 %64, 2048
  store i32 %or.i.i, ptr %arrayidx.i44.i, align 4
  %65 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i.i, align 4
  %and1.i.i147 = and i32 %66, -8193
  store i32 %and1.i.i147, ptr %arrayidx.i.i, align 4
  %67 = ptrtoint ptr %arrayidx.i33.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i33.i, align 4
  %and1.i7.i = and i32 %68, -458753
  store i32 %and1.i7.i, ptr %arrayidx.i33.i, align 4
  %and25 = and i32 %58, -33409
  %69 = ptrtoint ptr %feature_mask.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %and25, ptr %feature_mask.i, align 4
  %70 = ptrtoint ptr %pp_table_version to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %pp_table_version, align 4
  %od_enabled27 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 53
  %71 = ptrtoint ptr %od_enabled27 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %od_enabled27, align 4
  br label %sw.epilog

sw.bb28:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #7
  %smumgr_funcs29 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %72 = ptrtoint ptr %smumgr_funcs29 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @tonga_smu_funcs, ptr %smumgr_funcs29, align 4
  %73 = ptrtoint ptr %arrayidx.i44.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i44.i, align 4
  %or.i.i149 = or i32 %74, 2048
  store i32 %or.i.i149, ptr %arrayidx.i44.i, align 4
  %75 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i.i, align 4
  %77 = ptrtoint ptr %arrayidx.i33.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i33.i, align 4
  %and1.i7.i152 = and i32 %78, -458753
  store i32 %and1.i7.i152, ptr %arrayidx.i33.i, align 4
  %and1.i11.i = and i32 %76, -1342185473
  store i32 %and1.i11.i, ptr %arrayidx.i.i, align 4
  %and32 = and i32 %58, -32897
  %79 = ptrtoint ptr %feature_mask.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %and32, ptr %feature_mask.i, align 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #7
  %smumgr_funcs34 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %80 = ptrtoint ptr %smumgr_funcs34 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @fiji_smu_funcs, ptr %smumgr_funcs34, align 4
  %81 = ptrtoint ptr %arrayidx.i44.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i44.i, align 4
  %or.i.i154 = or i32 %82, 2048
  store i32 %or.i.i154, ptr %arrayidx.i44.i, align 4
  %83 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.i.i, align 4
  %and1.i.i156 = and i32 %84, -8193
  store i32 %and1.i.i156, ptr %arrayidx.i.i, align 4
  %85 = ptrtoint ptr %arrayidx.i33.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.i33.i, align 4
  %and1.i7.i158 = and i32 %86, -458753
  store i32 %and1.i7.i158, ptr %arrayidx.i33.i, align 4
  %and37 = and i32 %58, -33409
  %87 = ptrtoint ptr %feature_mask.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %and37, ptr %feature_mask.i, align 4
  br label %sw.epilog

sw.bb38:                                          ; preds = %sw.bb15.sw.bb38_crit_edge, %sw.bb15.sw.bb38_crit_edge164, %sw.bb15.sw.bb38_crit_edge165
  %smumgr_funcs39 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %88 = ptrtoint ptr %smumgr_funcs39 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @polaris10_smu_funcs, ptr %smumgr_funcs39, align 4
  %89 = ptrtoint ptr %arrayidx.i44.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx.i44.i, align 4
  %or.i.i161 = or i32 %90, 2048
  store i32 %or.i.i161, ptr %arrayidx.i44.i, align 4
  %91 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i.i, align 4
  %or.i4.i = or i32 %92, 8196
  store i32 %or.i4.i, ptr %arrayidx.i.i, align 4
  %93 = ptrtoint ptr %platform_descriptor.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %platform_descriptor.i, align 4
  %or.i7.i163 = or i32 %94, 218103808
  store i32 %or.i7.i163, ptr %platform_descriptor.i, align 4
  %95 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %60, label %sw.bb38.if.end33.sink.split.i_crit_edge [
    i32 16, label %land.lhs.true.i
    i32 17, label %if.end.i
  ]

sw.bb38.if.end33.sink.split.i_crit_edge:          ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.sink.split.i

land.lhs.true.i:                                  ; preds = %sw.bb38
  %is_kicker.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 27
  %96 = ptrtoint ptr %is_kicker.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %is_kicker.i, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i = icmp eq i8 %97, 0
  br i1 %tobool.not.i, label %if.end.thread18.i, label %land.lhs.true.i.polaris_set_asic_special_caps.exit_crit_edge

land.lhs.true.i.polaris_set_asic_special_caps.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %polaris_set_asic_special_caps.exit

if.end.thread18.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i819.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 5
  br label %if.end33.sink.split.i

if.end.i:                                         ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i8.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 5
  %98 = ptrtoint ptr %arrayidx.i8.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx.i8.i, align 4
  %or.i9.i = or i32 %99, 16
  store i32 %or.i9.i, ptr %arrayidx.i8.i, align 4
  br label %if.end33.sink.split.i

if.end33.sink.split.i:                            ; preds = %if.end.i, %if.end.thread18.i, %sw.bb38.if.end33.sink.split.i_crit_edge
  %arrayidx.i819.sink22.i = phi ptr [ %arrayidx.i819.i, %if.end.thread18.i ], [ %arrayidx.i33.i, %if.end.i ], [ %arrayidx.i33.i, %sw.bb38.if.end33.sink.split.i_crit_edge ]
  %.sink21.i = phi i32 [ 16, %if.end.thread18.i ], [ 458752, %if.end.i ], [ 458752, %sw.bb38.if.end33.sink.split.i_crit_edge ]
  %100 = ptrtoint ptr %arrayidx.i819.sink22.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i819.sink22.i, align 4
  %or.i920.i = or i32 %101, %.sink21.i
  store i32 %or.i920.i, ptr %arrayidx.i819.sink22.i, align 4
  br label %polaris_set_asic_special_caps.exit

polaris_set_asic_special_caps.exit:               ; preds = %if.end33.sink.split.i, %land.lhs.true.i.polaris_set_asic_special_caps.exit_crit_edge
  %and42 = and i32 %58, -32801
  %102 = ptrtoint ptr %feature_mask.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %and42, ptr %feature_mask.i, align 4
  br label %sw.epilog

sw.bb43:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #7
  %smumgr_funcs44 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %103 = ptrtoint ptr %smumgr_funcs44 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @vegam_smu_funcs, ptr %smumgr_funcs44, align 4
  tail call fastcc void @polaris_set_asic_special_caps(ptr noundef nonnull %hwmgr)
  %104 = ptrtoint ptr %feature_mask.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %feature_mask.i, align 4
  %and47 = and i32 %105, -33
  store i32 %and47, ptr %feature_mask.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb43, %polaris_set_asic_special_caps.exit, %sw.bb33, %sw.bb28, %sw.bb21
  %call48 = tail call i32 @smu7_init_function_pointers(ptr noundef nonnull %hwmgr) #5
  br label %cleanup

sw.bb49:                                          ; preds = %hwmgr_set_user_specify_caps.exit
  %chip_id50 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 2
  %106 = ptrtoint ptr %chip_id50 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %chip_id50, align 4
  %108 = zext i32 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %107, label %sw.bb49.cleanup_crit_edge [
    i32 19, label %sw.bb51
    i32 20, label %sw.bb59
    i32 21, label %sw.bb62
  ]

sw.bb49.cleanup_crit_edge:                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb51:                                          ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #7
  %pp_feature53 = getelementptr inbounds %struct.amdgpu_device, ptr %32, i32 0, i32 98, i32 24
  %109 = ptrtoint ptr %pp_feature53 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %pp_feature53, align 8
  %and54 = and i32 %110, -32769
  store i32 %and54, ptr %pp_feature53, align 8
  %111 = ptrtoint ptr %feature_mask.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %feature_mask.i, align 4
  %and56 = and i32 %112, -32769
  store i32 %and56, ptr %feature_mask.i, align 4
  %smumgr_funcs57 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %113 = ptrtoint ptr %smumgr_funcs57 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @vega10_smu_funcs, ptr %smumgr_funcs57, align 4
  %call58 = tail call i32 @vega10_hwmgr_init(ptr noundef nonnull %hwmgr) #5
  br label %cleanup

sw.bb59:                                          ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #7
  %smumgr_funcs60 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %114 = ptrtoint ptr %smumgr_funcs60 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @vega12_smu_funcs, ptr %smumgr_funcs60, align 4
  %call61 = tail call i32 @vega12_hwmgr_init(ptr noundef nonnull %hwmgr) #5
  br label %cleanup

sw.bb62:                                          ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #7
  %pp_feature64 = getelementptr inbounds %struct.amdgpu_device, ptr %32, i32 0, i32 98, i32 24
  %115 = ptrtoint ptr %pp_feature64 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %pp_feature64, align 8
  %and65 = and i32 %116, -32769
  store i32 %and65, ptr %pp_feature64, align 8
  %117 = ptrtoint ptr %feature_mask.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %feature_mask.i, align 4
  %and67 = and i32 %118, -32769
  store i32 %and67, ptr %feature_mask.i, align 4
  %smumgr_funcs68 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %119 = ptrtoint ptr %smumgr_funcs68 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @vega20_smu_funcs, ptr %smumgr_funcs68, align 4
  %call69 = tail call i32 @vega20_hwmgr_init(ptr noundef nonnull %hwmgr) #5
  br label %cleanup

sw.bb72:                                          ; preds = %hwmgr_set_user_specify_caps.exit
  %chip_id73 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 2
  %120 = ptrtoint ptr %chip_id73 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %chip_id73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %121)
  %cond = icmp eq i32 %121, 22
  br i1 %cond, label %sw.bb74, label %sw.bb72.cleanup_crit_edge

sw.bb72.cleanup_crit_edge:                        ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb74:                                          ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #7
  %od_enabled75 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 53
  %122 = ptrtoint ptr %od_enabled75 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %od_enabled75, align 4
  %smumgr_funcs76 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %123 = ptrtoint ptr %smumgr_funcs76 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @smu10_smu_funcs, ptr %smumgr_funcs76, align 4
  %call77 = tail call i32 @smu10_init_function_pointers(ptr noundef nonnull %hwmgr) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb74, %sw.bb72.cleanup_crit_edge, %sw.bb62, %sw.bb59, %sw.bb51, %sw.bb49.cleanup_crit_edge, %sw.epilog, %sw.bb15.cleanup_crit_edge, %sw.bb6, %sw.bb, %hwmgr_set_user_specify_caps.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb15.cleanup_crit_edge ], [ -22, %sw.bb49.cleanup_crit_edge ], [ -22, %sw.bb72.cleanup_crit_edge ], [ -22, %hwmgr_set_user_specify_caps.exit.cleanup_crit_edge ], [ 0, %sw.bb51 ], [ 0, %sw.bb59 ], [ 0, %sw.bb62 ], [ 0, %sw.bb74 ], [ 0, %sw.epilog ], [ 0, %sw.bb6 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_init_function_pointers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu8_init_function_pointers(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @polaris_set_asic_special_caps(ptr nocapture noundef %hwmgr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_descriptor = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 4
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %1, 2048
  store i32 %or.i, ptr %arrayidx.i, align 4
  %arrayidx.i1 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx.i1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i1, align 4
  %or.i4 = or i32 %3, 8196
  store i32 %or.i4, ptr %arrayidx.i1, align 4
  %4 = ptrtoint ptr %platform_descriptor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %platform_descriptor, align 4
  %or.i7 = or i32 %5, 218103808
  store i32 %or.i7, ptr %platform_descriptor, align 4
  %chip_id = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 2
  %6 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chip_id, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %7, label %entry.if.then23_crit_edge [
    i32 16, label %land.lhs.true
    i32 17, label %if.end
  ]

entry.if.then23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23

land.lhs.true:                                    ; preds = %entry
  %is_kicker = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 27
  %9 = ptrtoint ptr %is_kicker to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_kicker, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end.thread18, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.end.thread18:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i819 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 5
  br label %if.end33.sink.split

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i8 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 5
  %11 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i8, align 4
  %or.i9 = or i32 %12, 16
  store i32 %or.i9, ptr %arrayidx.i8, align 4
  br label %if.then23

if.then23:                                        ; preds = %if.end, %entry.if.then23_crit_edge
  %arrayidx.i10 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 3
  br label %if.end33.sink.split

if.end33.sink.split:                              ; preds = %if.then23, %if.end.thread18
  %arrayidx.i819.sink22 = phi ptr [ %arrayidx.i819, %if.end.thread18 ], [ %arrayidx.i10, %if.then23 ]
  %.sink21 = phi i32 [ 16, %if.end.thread18 ], [ 458752, %if.then23 ]
  %13 = ptrtoint ptr %arrayidx.i819.sink22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i819.sink22, align 4
  %or.i920 = or i32 %14, %.sink21
  store i32 %or.i920, ptr %arrayidx.i819.sink22, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.end33.sink.split, %land.lhs.true.if.end33_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vega10_hwmgr_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vega12_hwmgr_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vega20_hwmgr_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu10_init_function_pointers(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hwmgr_sw_init(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hwmgr, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %smumgr_funcs = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %0 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smumgr_funcs, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false2

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %smu_init = getelementptr inbounds %struct.pp_smumgr_func, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %smu_init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_init, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %lor.lhs.false2.return_crit_edge, label %if.end

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @phm_register_irq_handlers(ptr noundef nonnull %hwmgr) #5
  %4 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smumgr_funcs, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %7) #8
  %8 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %smumgr_funcs, align 4
  %smu_init8 = getelementptr inbounds %struct.pp_smumgr_func, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %smu_init8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smu_init8, align 4
  %call9 = tail call i32 %11(ptr noundef nonnull %hwmgr) #5
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end ], [ -22, %lor.lhs.false2.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_register_irq_handlers(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hwmgr_sw_fini(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hwmgr, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %smumgr_funcs = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %0 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smumgr_funcs, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %smu_fini = getelementptr inbounds %struct.pp_smumgr_func, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %smu_fini to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_fini, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %land.lhs.true2.if.end_crit_edge, label %if.then

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %3(ptr noundef nonnull %hwmgr) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hwmgr_hw_init(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %gim_feature = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132, i32 12
  %2 = ptrtoint ptr %gim_feature to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gim_feature, align 4
  %and = and i32 %3, 16
  %pp_one_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 6
  %and.lobit = lshr exact i32 %and, 4
  %4 = trunc i32 %and.lobit to i8
  %5 = ptrtoint ptr %pp_one_vf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %pp_one_vf, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_dpm to i32))
  %6 = load i32, ptr @amdgpu_dpm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %land.end.thread, label %land.end

land.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pm_en115 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 5
  %7 = ptrtoint ptr %pm_en115 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %pm_en115, align 1
  br label %cleanup

land.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %not_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %8 = ptrtoint ptr %not_vf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %not_vf, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp ne i8 %9, 0
  %spec.select = select i1 %tobool2.not, i1 true, i1 %tobool
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 5
  %frombool6 = zext i1 %spec.select to i8
  %10 = ptrtoint ptr %pm_en to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool6, ptr %pm_en, align 1
  br i1 %spec.select, label %if.end, label %land.end.cleanup_crit_edge

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.end
  %pptable_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 31
  %11 = ptrtoint ptr %pptable_func to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pptable_func, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %if.end.if.then14_crit_edge, label %lor.lhs.false

if.end.if.then14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14

lor.lhs.false:                                    ; preds = %if.end
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %lor.lhs.false.if.then14_crit_edge, label %lor.lhs.false12

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %15 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hwmgr_func, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool13.not = icmp eq ptr %18, null
  br i1 %tobool13.not, label %lor.lhs.false12.if.then14_crit_edge, label %if.end16

lor.lhs.false12.if.then14_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false12.if.then14_crit_edge, %lor.lhs.false.if.then14_crit_edge, %if.end.if.then14_crit_edge
  %19 = ptrtoint ptr %pm_en to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %pm_en, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false12
  %call19 = tail call i32 %14(ptr noundef %hwmgr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %fanInfo = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4
  %20 = ptrtoint ptr %fanInfo to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fanInfo, align 4, !range !20
  %22 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hwmgr, align 4
  %no_fan = getelementptr inbounds %struct.amdgpu_device, ptr %23, i32 0, i32 98, i32 9
  %24 = ptrtoint ptr %no_fan to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %21, ptr %no_fan, align 4
  %25 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hwmgr_func, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call28 = tail call i32 %28(ptr noundef %hwmgr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end22.err1_crit_edge

if.end22.err1_crit_edge:                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %err1

if.end31:                                         ; preds = %if.end22
  %max_clock_voltage_on_dc = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 7
  %29 = ptrtoint ptr %max_clock_voltage_on_dc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_clock_voltage_on_dc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp = icmp eq i32 %30, 0
  br i1 %cmp, label %if.end31.if.then36_crit_edge, label %lor.lhs.false32

if.end31.if.then36_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then36

lor.lhs.false32:                                  ; preds = %if.end31
  %mclk = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 7, i32 1
  %31 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp35 = icmp eq i32 %32, 0
  br i1 %cmp35, label %lor.lhs.false32.if.then36_crit_edge, label %lor.lhs.false32.if.end40_crit_edge

lor.lhs.false32.if.end40_crit_edge:               ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

lor.lhs.false32.if.then36_crit_edge:              ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then36

if.then36:                                        ; preds = %lor.lhs.false32.if.then36_crit_edge, %if.end31.if.then36_crit_edge
  %max_clock_voltage_on_ac = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 8
  %33 = call ptr @memcpy(ptr %max_clock_voltage_on_dc, ptr %max_clock_voltage_on_ac, i32 20)
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %lor.lhs.false32.if.end40_crit_edge
  %call41 = tail call i32 @psm_init_power_state_table(ptr noundef %hwmgr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end40.err2_crit_edge

if.end40.err2_crit_edge:                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %err2

if.end44:                                         ; preds = %if.end40
  %call45 = tail call i32 @phm_setup_asic(ptr noundef %hwmgr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end44.err2_crit_edge

if.end44.err2_crit_edge:                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %err2

if.end48:                                         ; preds = %if.end44
  %call49 = tail call i32 @phm_enable_dynamic_state_management(ptr noundef %hwmgr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end48.err2_crit_edge

if.end48.err2_crit_edge:                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %err2

if.end52:                                         ; preds = %if.end48
  %call53 = tail call i32 @phm_start_thermal_controller(ptr noundef %hwmgr) #5
  %call54 = tail call i32 @psm_set_performance_states(ptr noundef %hwmgr) #5
  %or = or i32 %call54, %call53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool55.not = icmp eq i32 %or, 0
  br i1 %tobool55.not, label %if.end57, label %if.end52.err2_crit_edge

if.end52.err2_crit_edge:                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %err2

if.end57:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hwmgr, align 4
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %35, i32 0, i32 98, i32 13
  %36 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %dpm_enabled, align 8
  br label %cleanup

err2:                                             ; preds = %if.end52.err2_crit_edge, %if.end48.err2_crit_edge, %if.end44.err2_crit_edge, %if.end40.err2_crit_edge
  %ret.0 = phi i32 [ %call41, %if.end40.err2_crit_edge ], [ %call45, %if.end44.err2_crit_edge ], [ %call49, %if.end48.err2_crit_edge ], [ %or, %if.end52.err2_crit_edge ]
  %37 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hwmgr_func, align 4
  %backend_fini = getelementptr inbounds %struct.pp_hwmgr_func, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %backend_fini to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %backend_fini, align 4
  %tobool61.not = icmp eq ptr %40, null
  br i1 %tobool61.not, label %err2.err1_crit_edge, label %if.then62

err2.err1_crit_edge:                              ; preds = %err2
  call void @__sanitizer_cov_trace_pc() #7
  br label %err1

if.then62:                                        ; preds = %err2
  call void @__sanitizer_cov_trace_pc() #7
  %call65 = tail call i32 %40(ptr noundef %hwmgr) #5
  br label %err1

err1:                                             ; preds = %if.then62, %err2.err1_crit_edge, %if.end22.err1_crit_edge
  %ret.1 = phi i32 [ %call28, %if.end22.err1_crit_edge ], [ %ret.0, %if.then62 ], [ %ret.0, %err2.err1_crit_edge ]
  %41 = ptrtoint ptr %pptable_func to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pptable_func, align 4
  %pptable_fini = getelementptr inbounds %struct.pp_table_func, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %pptable_fini to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pptable_fini, align 4
  %tobool68.not = icmp eq ptr %44, null
  br i1 %tobool68.not, label %err1.cleanup_crit_edge, label %if.then69

err1.cleanup_crit_edge:                           ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then69:                                        ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #7
  %call72 = tail call i32 %44(ptr noundef %hwmgr) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then69, %err1.cleanup_crit_edge, %if.end57, %if.end16.cleanup_crit_edge, %if.then14, %land.end.cleanup_crit_edge, %land.end.thread
  %retval.0 = phi i32 [ 0, %if.end57 ], [ 0, %if.then14 ], [ 0, %land.end.cleanup_crit_edge ], [ %call19, %if.end16.cleanup_crit_edge ], [ %ret.1, %if.then69 ], [ %ret.1, %err1.cleanup_crit_edge ], [ 0, %land.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psm_init_power_state_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_setup_asic(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_enable_dynamic_state_management(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_start_thermal_controller(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psm_set_performance_states(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hwmgr_hw_fini(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hwmgr, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false2

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %not_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %2 = ptrtoint ptr %not_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %not_vf, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %lor.lhs.false2.return_crit_edge, label %if.end

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %call = tail call i32 @phm_stop_thermal_controller(ptr noundef nonnull %hwmgr) #5
  %call4 = tail call i32 @psm_set_boot_states(ptr noundef nonnull %hwmgr) #5
  %call5 = tail call i32 @psm_adjust_power_state_dynamic(ptr noundef nonnull %hwmgr, i1 noundef zeroext true, ptr noundef null) #5
  %call6 = tail call i32 @phm_disable_dynamic_state_management(ptr noundef nonnull %hwmgr) #5
  %call7 = tail call i32 @phm_disable_clock_power_gatings(ptr noundef nonnull %hwmgr) #5
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %4 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwmgr_func, align 4
  %backend_fini = getelementptr inbounds %struct.pp_hwmgr_func, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %backend_fini to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %backend_fini, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.end.if.end13_crit_edge, label %if.then9

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call i32 %7(ptr noundef nonnull %hwmgr) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge
  %pptable_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 31
  %8 = ptrtoint ptr %pptable_func to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pptable_func, align 4
  %pptable_fini = getelementptr inbounds %struct.pp_table_func, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pptable_fini to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pptable_fini, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %if.end13.if.end19_crit_edge, label %if.then15

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %call18 = tail call i32 %11(ptr noundef nonnull %hwmgr) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end13.if.end19_crit_edge
  %call20 = tail call i32 @psm_fini_power_state_table(ptr noundef nonnull %hwmgr) #5
  br label %return

return:                                           ; preds = %if.end19, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end19 ], [ 0, %lor.lhs.false2.return_crit_edge ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_stop_thermal_controller(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psm_set_boot_states(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psm_adjust_power_state_dynamic(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_disable_dynamic_state_management(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_disable_clock_power_gatings(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psm_fini_power_state_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hwmgr_suspend(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hwmgr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %not_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %2 = ptrtoint ptr %not_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %not_vf, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %call = tail call i32 @phm_disable_smc_firmware_ctf(ptr noundef nonnull %hwmgr) #5
  %call4 = tail call i32 @psm_set_boot_states(ptr noundef nonnull %hwmgr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @psm_adjust_power_state_dynamic(ptr noundef nonnull %hwmgr, i1 noundef zeroext true, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call i32 @phm_power_down_asic(ptr noundef nonnull %hwmgr) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end11 ], [ 0, %lor.lhs.false2.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_disable_smc_firmware_ctf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_power_down_asic(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hwmgr_resume(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hwmgr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %not_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %0 = ptrtoint ptr %not_vf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %not_vf, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 5
  %2 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pm_en, align 1, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %call = tail call i32 @phm_setup_asic(ptr noundef nonnull %hwmgr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %call8 = tail call i32 @phm_enable_dynamic_state_management(ptr noundef nonnull %hwmgr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = tail call i32 @phm_start_thermal_controller(ptr noundef nonnull %hwmgr) #5
  %call13 = tail call i32 @psm_set_performance_states(ptr noundef nonnull %hwmgr) #5
  %or = or i32 %call13, %call12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool14.not = icmp eq i32 %or, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %call17 = tail call i32 @psm_adjust_power_state_dynamic(ptr noundef nonnull %hwmgr, i1 noundef zeroext false, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end16 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call, %if.end4.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ %or, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hwmgr_handle_task(ptr noundef %hwmgr, i32 noundef %task_id, ptr noundef readonly %user_state) local_unnamed_addr #0 align 64 {
entry:
  %requested_ps = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.cleanup32_crit_edge, label %if.end

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup32

if.end:                                           ; preds = %entry
  %0 = zext i32 %task_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %task_id, label %if.end.cleanup32_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb15
    i32 3, label %if.end.sw.bb30_crit_edge
    i32 2, label %if.end.sw.bb30_crit_edge56
  ]

if.end.sw.bb30_crit_edge56:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb30

if.end.sw.bb30_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb30

if.end.cleanup32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup32

sw.bb:                                            ; preds = %if.end
  %not_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %1 = ptrtoint ptr %not_vf to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %not_vf, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %sw.bb.cleanup32_crit_edge, label %if.end2

sw.bb.cleanup32_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup32

if.end2:                                          ; preds = %sw.bb
  %call = tail call i32 @phm_pre_display_configuration_changed(ptr noundef nonnull %hwmgr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end2.cleanup32_crit_edge

if.end2.cleanup32_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup32

if.end5:                                          ; preds = %if.end2
  %call6 = tail call i32 @phm_set_cpu_power_state(ptr noundef nonnull %hwmgr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup32_crit_edge

if.end5.cleanup32_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup32

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @psm_set_performance_states(ptr noundef nonnull %hwmgr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup32_crit_edge

if.end9.cleanup32_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup32

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = tail call i32 @psm_adjust_power_state_dynamic(ptr noundef nonnull %hwmgr, i1 noundef zeroext false, ptr noundef null) #5
  br label %cleanup32

sw.bb15:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %requested_ps) #5
  %3 = ptrtoint ptr %requested_ps to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %requested_ps, align 4
  %not_vf16 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %4 = ptrtoint ptr %not_vf16 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %not_vf16, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool17.not = icmp eq i8 %5, 0
  br i1 %tobool17.not, label %sw.bb15.cleanup_crit_edge, label %if.end19

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %sw.bb15
  %cmp20 = icmp eq ptr %user_state, null
  br i1 %cmp20, label %if.end19.cleanup.thread_crit_edge, label %if.end22

if.end19.cleanup.thread_crit_edge:                ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.end22:                                         ; preds = %if.end19
  %6 = ptrtoint ptr %user_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %user_state, align 4
  %switch.tableidx = add i32 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 3
  %switch.idx.mult = shl i32 %switch.tableidx, 1
  %switch.offset = or i32 %switch.idx.mult, 1
  %retval.0.i = select i1 %8, i32 %switch.offset, i32 0
  %call24 = call i32 @psm_set_user_performance_state(ptr noundef nonnull %hwmgr, i32 noundef %retval.0.i, ptr noundef nonnull %requested_ps) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %requested_ps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %requested_ps, align 4
  %call28 = call i32 @psm_adjust_power_state_dynamic(ptr noundef nonnull %hwmgr, i1 noundef zeroext true, ptr noundef %10) #5
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end27, %if.end19.cleanup.thread_crit_edge
  %ret.0.ph = phi i32 [ -22, %if.end19.cleanup.thread_crit_edge ], [ %call28, %if.end27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %requested_ps) #5
  br label %cleanup32

cleanup:                                          ; preds = %if.end22.cleanup_crit_edge, %sw.bb15.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb15.cleanup_crit_edge ], [ %call24, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %requested_ps) #5
  br label %cleanup32

sw.bb30:                                          ; preds = %if.end.sw.bb30_crit_edge, %if.end.sw.bb30_crit_edge56
  %call31 = tail call i32 @psm_adjust_power_state_dynamic(ptr noundef nonnull %hwmgr, i1 noundef zeroext true, ptr noundef null) #5
  br label %cleanup32

cleanup32:                                        ; preds = %sw.bb30, %cleanup, %cleanup.thread, %if.end13, %if.end9.cleanup32_crit_edge, %if.end5.cleanup32_crit_edge, %if.end2.cleanup32_crit_edge, %sw.bb.cleanup32_crit_edge, %if.end.cleanup32_crit_edge, %entry.cleanup32_crit_edge
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ -22, %entry.cleanup32_crit_edge ], [ 0, %sw.bb.cleanup32_crit_edge ], [ %call, %if.end2.cleanup32_crit_edge ], [ %call6, %if.end5.cleanup32_crit_edge ], [ %call10, %if.end9.cleanup32_crit_edge ], [ 0, %if.end.cleanup32_crit_edge ], [ %call31, %sw.bb30 ], [ %call14, %if.end13 ], [ %ret.0.ph, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_pre_display_configuration_changed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_set_cpu_power_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psm_set_user_performance_state(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/hwmgr.c", i32 202, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hwmgr_sw_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hwmgr_sw_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/hwmgr.c", i32 230, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @hwmgr_hw_init._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @hwmgr_hw_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i8 0, i8 2}
