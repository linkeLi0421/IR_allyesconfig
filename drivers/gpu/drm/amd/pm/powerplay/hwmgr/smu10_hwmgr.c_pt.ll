; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu10_hwmgr.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c"
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
%struct.DpmClock_t = type { i32, i32 }
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
%struct.smu10_hwmgr = type { i32, i32, %struct.smu10_system_info, %struct.smu10_mclk_latency_table, i32, %struct.smu10_display_phy_info_entry, i32, i8, i8, i32, i8, i8, i32, i32, i32, i32, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.smu10_dpm_entry, %struct.smu10_dpm_entry, %struct.smu10_dpm_entry, %struct.smu10_dpm_entry, i8, i32, i32, i32, i8, i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, %struct.Watermarks_t, %struct.smu10_clock_voltage_information, %struct.DpmClocks_t, i32, i8, i32, i32, i8 }
%struct.smu10_system_info = type { i8, i8 }
%struct.smu10_mclk_latency_table = type { i32, [8 x %struct.smu10_mclk_latency_entries] }
%struct.smu10_mclk_latency_entries = type { i32, i32 }
%struct.smu10_display_phy_info_entry = type { i8, i8, i8, i8 }
%struct.smu10_dpm_entry = type { i32, i32, i32, i32 }
%struct.Watermarks_t = type { [2 x [4 x %struct.WatermarkRowGeneric_t]], [7 x i32] }
%struct.WatermarkRowGeneric_t = type { i16, i16, i16, i16, i8, i8, [2 x i8] }
%struct.smu10_clock_voltage_information = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.DpmClocks_t = type { [4 x %struct.DpmClock_t], [8 x %struct.DpmClock_t], [4 x %struct.DpmClock_t], [4 x %struct.DpmClock_t] }
%struct.smu10_voltage_dependency_table = type { i32, [0 x %struct.smu10_clock_voltage_dependency_record] }
%struct.smu10_clock_voltage_dependency_record = type { i32, i32 }
%struct.phm_clock_voltage_dependency_table = type { i32, [0 x %struct.phm_clock_voltage_dependency_record] }
%struct.phm_clock_voltage_dependency_record = type { i32, i32 }
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
%struct.pp_power_state = type { i32, %struct.PP_StateLinkedList, %struct.PP_StateLinkedList, %struct.PP_StateClassificationBlock, %struct.PP_StateValidationBlock, %struct.PP_StatePcieBlock, %struct.PP_StateDisplayBlock, %struct.PP_StateMemroyBlock, %struct.PP_TemperatureRange, %struct.PP_StateSoftwareAlgorithmBlock, %struct.PP_UVD_CLOCKS, %struct.pp_hw_power_state }
%struct.PP_StateLinkedList = type { ptr, ptr }
%struct.PP_StateClassificationBlock = type { i32, i32, i32, i8, i8 }
%struct.PP_StateValidationBlock = type { i8, i8, i8 }
%struct.PP_StatePcieBlock = type { i32 }
%struct.PP_StateDisplayBlock = type { i8, i8, i32, i32, i32, i8 }
%struct.PP_StateMemroyBlock = type { i8, i8, [3 x i8] }
%struct.PP_TemperatureRange = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.PP_StateSoftwareAlgorithmBlock = type { i8, i8 }
%struct.PP_UVD_CLOCKS = type { i32, i32 }
%struct.pp_hw_power_state = type { i32 }
%struct.PHM_PerformanceLevel = type { i32, i32, i32, i32, i32, i32 }
%struct.smu10_power_state = type { i32, i32, %struct.smu10_uvd_clocks, i32, i32, i32, i32, i8, i32, i32, i8, i8, i8, i8, i32, [8 x %struct.smu10_power_level], %struct.pp_disable_nbpslo_flags }
%struct.smu10_uvd_clocks = type { i32, i32, i32, i32, i32, i32 }
%struct.smu10_power_level = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.pp_disable_nbpslo_flags = type { %union.anon.115 }
%union.anon.115 = type { %struct.anon.116 }
%struct.anon.116 = type { i32 }
%struct.pp_clock_info = type { i32, i32, i32, i32, i32, i32 }
%struct.pp_clock_levels_with_latency = type { i32, [16 x %struct.pp_clock_with_latency] }
%struct.pp_clock_with_latency = type { i32, i32 }
%struct.pp_clock_levels_with_voltage = type { i32, [16 x %struct.pp_clock_with_voltage] }
%struct.pp_clock_with_voltage = type { i32, i32 }
%struct.pp_display_clock_request = type { i32, i32 }
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@smu10_hwmgr_funcs = internal constant { %struct.pp_hwmgr_func, [76 x i8] } { %struct.pp_hwmgr_func { ptr @smu10_hwmgr_backend_init, ptr @smu10_hwmgr_backend_fini, ptr @smu10_setup_asic_task, ptr @smu10_get_power_state_size, ptr @smu10_apply_state_adjust_rules, ptr null, ptr @smu10_dpm_force_dpm_level, ptr @smu10_enable_dpm_tasks, ptr @smu10_disable_dpm_tasks, ptr @smu10_dpm_patch_boot_state, ptr @smu10_dpm_get_pp_table_entry, ptr @smu10_dpm_get_num_of_pp_table_entries, ptr null, ptr null, ptr @smu10_powergate_vcn, ptr null, ptr @smu10_dpm_get_mclk, ptr @smu10_dpm_get_sclk, ptr @smu10_set_power_state_tasks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smu10_set_cpu_power_state, ptr @smu10_store_cc6_data, ptr @smu10_get_dal_power_level, ptr @smu10_get_performance_level, ptr @smu10_get_current_shallow_sleep_clocks, ptr null, ptr @smu10_get_clock_by_type_with_latency, ptr @smu10_get_clock_by_type_with_voltage, ptr @smu10_set_watermarks_for_clocks_ranges, ptr @smu10_display_clock_voltage_request, ptr @smu10_get_max_high_clocks, ptr @smu10_power_off_asic, ptr @smu10_force_clock_level, ptr @smu10_print_clock_levels, ptr @smu10_gfx_off_control, ptr null, ptr null, ptr null, ptr null, ptr @smu10_read_sensor, ptr null, ptr null, ptr @smu10_set_active_display_count, ptr @smu10_set_min_deep_sleep_dcefclk, ptr null, ptr null, ptr null, ptr null, ptr @smu10_get_power_profile_mode, ptr @smu10_set_power_profile_mode, ptr null, ptr @smu10_set_fine_grain_clk_vol, ptr null, ptr @smu10_powergate_mmhub, ptr @smu10_smus_notify_pwe, ptr @smu10_powergate_sdma, ptr null, ptr @smu10_set_hard_min_dcefclk_by_freq, ptr @smu10_set_hard_min_fclk_by_freq, ptr @smu10_set_hard_min_gfxclk_by_freq, ptr @smu10_set_soft_max_gfxclk_by_freq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smu10_asic_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smu10_gfx_state_change }, [76 x i8] zeroinitializer }, align 32
@pptable_funcs = external dso_local constant %struct.pp_table_func, align 4
@smu10_hwmgr_backend_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013amdgpu: smu10_initialize_dpm_defaults failed\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"smu10_hwmgr_backend_init\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c\00", [33 x i8] zeroinitializer }, align 32
@smu10_hwmgr_backend_init._entry_ptr = internal global ptr @smu10_hwmgr_backend_init._entry, section ".printk_index", align 4
@smu10_hwmgr_backend_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013amdgpu: smu10_get_system_info_data failed\0A\00", [51 x i8] zeroinitializer }, align 32
@smu10_hwmgr_backend_init._entry_ptr.5 = internal global ptr @smu10_hwmgr_backend_init._entry.3, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@smu10_populate_clock_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.smu10_populate_clock_table = private unnamed_addr constant [27 x i8] c"smu10_populate_clock_table\00", align 1
@smu10_populate_clock_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.smu10_populate_clock_table, ptr @.str.2, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\014amdgpu: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@smu10_populate_clock_table._entry_ptr = internal global ptr @smu10_populate_clock_table._entry, section ".printk_index", align 4
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Attempt to copy clock table from smc failed\00", [52 x i8] zeroinitializer }, align 32
@VddDcfClk = internal constant { [3 x %struct.DpmClock_t], [40 x i8] } { [3 x %struct.DpmClock_t] [%struct.DpmClock_t { i32 300, i32 2600 }, %struct.DpmClock_t { i32 600, i32 3200 }, %struct.DpmClock_t { i32 600, i32 3600 }], [40 x i8] zeroinitializer }, align 32
@VddSocClk = internal constant { [3 x %struct.DpmClock_t], [40 x i8] } { [3 x %struct.DpmClock_t] [%struct.DpmClock_t { i32 478, i32 2600 }, %struct.DpmClock_t { i32 722, i32 3200 }, %struct.DpmClock_t { i32 722, i32 3600 }], [40 x i8] zeroinitializer }, align 32
@VddFClk = internal constant { [3 x %struct.DpmClock_t], [40 x i8] } { [3 x %struct.DpmClock_t] [%struct.DpmClock_t { i32 400, i32 2600 }, %struct.DpmClock_t { i32 1200, i32 3200 }, %struct.DpmClock_t { i32 1200, i32 3600 }], [40 x i8] zeroinitializer }, align 32
@VddDispClk = internal constant { [3 x %struct.DpmClock_t], [40 x i8] } { [3 x %struct.DpmClock_t] [%struct.DpmClock_t { i32 435, i32 2600 }, %struct.DpmClock_t { i32 661, i32 3200 }, %struct.DpmClock_t { i32 1086, i32 3600 }], [40 x i8] zeroinitializer }, align 32
@VddDppClk = internal constant { [3 x %struct.DpmClock_t], [40 x i8] } { [3 x %struct.DpmClock_t] [%struct.DpmClock_t { i32 435, i32 2600 }, %struct.DpmClock_t { i32 661, i32 3200 }, %struct.DpmClock_t { i32 661, i32 3600 }], [40 x i8] zeroinitializer }, align 32
@VddPhyClk = internal constant { [3 x %struct.DpmClock_t], [40 x i8] } { [3 x %struct.DpmClock_t] [%struct.DpmClock_t { i32 540, i32 2600 }, %struct.DpmClock_t { i32 810, i32 3200 }, %struct.DpmClock_t { i32 810, i32 3600 }], [40 x i8] zeroinitializer }, align 32
@smu10_init_dynamic_state_adjustment_rule_settings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013amdgpu: Can not allocate memory!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"smu10_init_dynamic_state_adjustment_rule_settings\00", [46 x i8] zeroinitializer }, align 32
@smu10_init_dynamic_state_adjustment_rule_settings._entry_ptr = internal global ptr @smu10_init_dynamic_state_adjustment_rule_settings._entry, section ".printk_index", align 4
@smu10_dpm_force_dpm_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016amdgpu: smu firmware version too old, can not set dpm level\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"smu10_dpm_force_dpm_level\00", [38 x i8] zeroinitializer }, align 32
@smu10_dpm_force_dpm_level._entry_ptr = internal global ptr @smu10_dpm_force_dpm_level._entry, section ".printk_index", align 4
@smu10_enable_dpm_tasks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016amdgpu: restore the fine grain parameters\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"smu10_enable_dpm_tasks\00", [41 x i8] zeroinitializer }, align 32
@smu10_enable_dpm_tasks._entry_ptr = internal global ptr @smu10_enable_dpm_tasks._entry, section ".printk_index", align 4
@__func__.smu10_set_clock_limit = private unnamed_addr constant [22 x i8] c"smu10_set_clock_limit\00", align 1
@smu10_set_clock_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.smu10_set_clock_limit, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu10_set_clock_limit._entry_ptr = internal global ptr @smu10_set_clock_limit._entry, section ".printk_index", align 4
@smu10_display_clock_voltage_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016amdgpu: [DisplayClockVoltageRequest]Invalid Clock Type!\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"smu10_display_clock_voltage_request\00", [60 x i8] zeroinitializer }, align 32
@smu10_display_clock_voltage_request._entry_ptr = internal global ptr @smu10_display_clock_voltage_request._entry, section ".printk_index", align 4
@smu10_force_clock_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 976, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016amdgpu: Currently sclk only support 3 levels on RV\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"smu10_force_clock_level\00", [40 x i8] zeroinitializer }, align 32
@smu10_force_clock_level._entry_ptr = internal global ptr @smu10_force_clock_level._entry, section ".printk_index", align 4
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"0: %uMhz %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"1: %uMhz %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"2: %uMhz %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%d: %uMhz %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s:\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OD_SCLK\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"0: %10uMhz\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"1: %10uMhz\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OD_RANGE\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SCLK: %7uMHz %10uMHz\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NUM\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MODE_NAME\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"BUSY_SET_POINT\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FPS\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"USE_RLC_BUSY\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MIN_ACTIVE_LEVEL\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s %16s %s %s %s %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%3d %14s%s: %14d %3d %10d %14d\0A\00", [32 x i8] zeroinitializer }, align 32
@amdgpu_pp_profile_name = external dso_local local_unnamed_addr constant [7 x ptr], align 4
@.str.40 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@smu10_set_power_profile_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 1482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013amdgpu: Invalid power profile mode %ld\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"smu10_set_power_profile_mode\00", [35 x i8] zeroinitializer }, align 32
@smu10_set_power_profile_mode._entry_ptr = internal global ptr @smu10_set_power_profile_mode._entry, section ".printk_index", align 4
@smu10_set_fine_grain_clk_vol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 1527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013amdgpu: Fine grain not support\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"smu10_set_fine_grain_clk_vol\00", [35 x i8] zeroinitializer }, align 32
@smu10_set_fine_grain_clk_vol._entry_ptr = internal global ptr @smu10_set_fine_grain_clk_vol._entry, section ".printk_index", align 4
@smu10_set_fine_grain_clk_vol._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 1532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"\013amdgpu: pp_od_clk_voltage is not accessible if power_dpm_force_performance_level is not in manual mode!\0A\00", [53 x i8] zeroinitializer }, align 32
@smu10_set_fine_grain_clk_vol._entry_ptr.47 = internal global ptr @smu10_set_fine_grain_clk_vol._entry.45, section ".printk_index", align 4
@smu10_set_fine_grain_clk_vol._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.2, i32 1538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013amdgpu: Input parameter number not correct\0A\00", [50 x i8] zeroinitializer }, align 32
@smu10_set_fine_grain_clk_vol._entry_ptr.50 = internal global ptr @smu10_set_fine_grain_clk_vol._entry.48, section ".printk_index", align 4
@smu10_set_fine_grain_clk_vol._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.44, ptr @.str.2, i32 1546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\013amdgpu: Fine grain setting minimum sclk (%ld) MHz is less than the minimum allowed (%d) MHz\0A\00", [33 x i8] zeroinitializer }, align 32
@smu10_set_fine_grain_clk_vol._entry_ptr.53 = internal global ptr @smu10_set_fine_grain_clk_vol._entry.51, section ".printk_index", align 4
@smu10_set_fine_grain_clk_vol._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.44, ptr @.str.2, i32 1554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"\013amdgpu: Fine grain setting maximum sclk (%ld) MHz is greater than the maximum allowed (%d) MHz\0A\00", [62 x i8] zeroinitializer }, align 32
@smu10_set_fine_grain_clk_vol._entry_ptr.56 = internal global ptr @smu10_set_fine_grain_clk_vol._entry.54, section ".printk_index", align 4
@smu10_set_fine_grain_clk_vol._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.2, i32 1563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu10_set_fine_grain_clk_vol._entry_ptr.58 = internal global ptr @smu10_set_fine_grain_clk_vol._entry.57, section ".printk_index", align 4
@smu10_set_fine_grain_clk_vol._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.2, i32 1573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu10_set_fine_grain_clk_vol._entry_ptr.60 = internal global ptr @smu10_set_fine_grain_clk_vol._entry.59, section ".printk_index", align 4
@smu10_set_fine_grain_clk_vol._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.44, ptr @.str.2, i32 1579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\013amdgpu: The setting minimum sclk (%d) MHz is greater than the setting maximum sclk (%d) MHz\0A\00", [33 x i8] zeroinitializer }, align 32
@smu10_set_fine_grain_clk_vol._entry_ptr.63 = internal global ptr @smu10_set_fine_grain_clk_vol._entry.61, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.64 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 3, i64 4, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.65 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 3, i64 4, i64 5, i64 7, i64 8]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 8]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.70 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 8, i64 11]
@__sancov_gen_cov_switch_values.71 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 7, i64 9, i64 10, i64 23]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 5]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"smu10_hwmgr_funcs\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1610, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 549, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 557, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 491, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [10 x i8] c"VddDcfClk\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 420, i32 25 }
@___asan_gen_.113 = private unnamed_addr constant [10 x i8] c"VddSocClk\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 426, i32 25 }
@___asan_gen_.116 = private unnamed_addr constant [8 x i8] c"VddFClk\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 432, i32 25 }
@___asan_gen_.119 = private unnamed_addr constant [11 x i8] c"VddDispClk\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 438, i32 25 }
@___asan_gen_.122 = private unnamed_addr constant [10 x i8] c"VddDppClk\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 444, i32 25 }
@___asan_gen_.125 = private unnamed_addr constant [10 x i8] c"VddPhyClk\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 450, i32 25 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 140, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 625, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 385, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 198, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 76, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 976, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1039, i32 31 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1041, i32 15 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1041, i32 21 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1042, i32 31 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1045, i32 31 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1053, i32 32 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1068, i32 32 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1068, i32 41 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1069, i32 32 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1071, i32 32 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1084, i32 41 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1085, i32 32 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1442, i32 33 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1443, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1444, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1445, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1446, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1447, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1454, i32 35 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1458, i32 36 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1459, i32 75 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1482, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1527, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1532, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1538, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1545, i32 5 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1553, i32 5 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1563, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1573, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.291 = private constant [66 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1578, i32 4 }
@llvm.compiler.used = appending global [91 x ptr] [ptr @smu10_display_clock_voltage_request._entry, ptr @smu10_display_clock_voltage_request._entry_ptr, ptr @smu10_dpm_force_dpm_level._entry, ptr @smu10_dpm_force_dpm_level._entry_ptr, ptr @smu10_enable_dpm_tasks._entry, ptr @smu10_enable_dpm_tasks._entry_ptr, ptr @smu10_force_clock_level._entry, ptr @smu10_force_clock_level._entry_ptr, ptr @smu10_hwmgr_backend_init._entry, ptr @smu10_hwmgr_backend_init._entry.3, ptr @smu10_hwmgr_backend_init._entry_ptr, ptr @smu10_hwmgr_backend_init._entry_ptr.5, ptr @smu10_init_dynamic_state_adjustment_rule_settings._entry, ptr @smu10_init_dynamic_state_adjustment_rule_settings._entry_ptr, ptr @smu10_populate_clock_table._entry, ptr @smu10_populate_clock_table._entry_ptr, ptr @smu10_set_clock_limit._entry, ptr @smu10_set_clock_limit._entry_ptr, ptr @smu10_set_fine_grain_clk_vol._entry, ptr @smu10_set_fine_grain_clk_vol._entry.45, ptr @smu10_set_fine_grain_clk_vol._entry.48, ptr @smu10_set_fine_grain_clk_vol._entry.51, ptr @smu10_set_fine_grain_clk_vol._entry.54, ptr @smu10_set_fine_grain_clk_vol._entry.57, ptr @smu10_set_fine_grain_clk_vol._entry.59, ptr @smu10_set_fine_grain_clk_vol._entry.61, ptr @smu10_set_fine_grain_clk_vol._entry_ptr, ptr @smu10_set_fine_grain_clk_vol._entry_ptr.47, ptr @smu10_set_fine_grain_clk_vol._entry_ptr.50, ptr @smu10_set_fine_grain_clk_vol._entry_ptr.53, ptr @smu10_set_fine_grain_clk_vol._entry_ptr.56, ptr @smu10_set_fine_grain_clk_vol._entry_ptr.58, ptr @smu10_set_fine_grain_clk_vol._entry_ptr.60, ptr @smu10_set_fine_grain_clk_vol._entry_ptr.63, ptr @smu10_set_power_profile_mode._entry, ptr @smu10_set_power_profile_mode._entry_ptr, ptr @smu10_hwmgr_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @smu10_populate_clock_table._rs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @VddDcfClk, ptr @VddSocClk, ptr @VddFClk, ptr @VddDispClk, ptr @VddDppClk, ptr @VddPhyClk, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.62], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_hwmgr_funcs to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_hwmgr_backend_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_hwmgr_backend_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_populate_clock_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_populate_clock_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VddDcfClk to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VddSocClk to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VddFClk to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VddDispClk to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VddDppClk to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VddPhyClk to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_init_dynamic_state_adjustment_rule_settings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_dpm_force_dpm_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_enable_dpm_tasks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_set_clock_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_display_clock_voltage_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_force_clock_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_set_power_profile_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_set_fine_grain_clk_vol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_set_fine_grain_clk_vol._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_set_fine_grain_clk_vol._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_set_fine_grain_clk_vol._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_set_fine_grain_clk_vol._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_set_fine_grain_clk_vol._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_set_fine_grain_clk_vol._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_set_fine_grain_clk_vol._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @smu10_init_function_pointers(ptr nocapture noundef writeonly %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @smu10_hwmgr_funcs, ptr %hwmgr_func, align 4
  %pptable_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 31
  %1 = ptrtoint ptr %pptable_func to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @pptable_funcs, ptr %pptable_func, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_hwmgr_backend_init(ptr noundef %hwmgr) #1 align 64 {
entry:
  %result.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 632) #16
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
  %dce_slow_sclk_threshold.i = getelementptr inbounds %struct.smu10_hwmgr, ptr %call7.i.i, i32 0, i32 6
  %2 = ptrtoint ptr %dce_slow_sclk_threshold.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 30000, ptr %dce_slow_sclk_threshold.i, align 8
  %thermal_auto_throttling_treshold.i = getelementptr inbounds %struct.smu10_hwmgr, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %thermal_auto_throttling_treshold.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %thermal_auto_throttling_treshold.i, align 4
  %is_nb_dpm_enabled.i = getelementptr inbounds %struct.smu10_hwmgr, ptr %call7.i.i, i32 0, i32 12
  %4 = ptrtoint ptr %is_nb_dpm_enabled.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %is_nb_dpm_enabled.i, align 8
  %dpm_flags.i = getelementptr inbounds %struct.smu10_hwmgr, ptr %call7.i.i, i32 0, i32 33
  %5 = ptrtoint ptr %dpm_flags.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %dpm_flags.i, align 4
  %need_min_deep_sleep_dcefclk.i = getelementptr inbounds %struct.smu10_hwmgr, ptr %call7.i.i, i32 0, i32 67
  %6 = ptrtoint ptr %need_min_deep_sleep_dcefclk.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %need_min_deep_sleep_dcefclk.i, align 8
  %num_active_display.i = getelementptr inbounds %struct.smu10_hwmgr, ptr %call7.i.i, i32 0, i32 69
  %7 = ptrtoint ptr %num_active_display.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %num_active_display.i, align 8
  %deep_sleep_dcefclk.i = getelementptr inbounds %struct.smu10_hwmgr, ptr %call7.i.i, i32 0, i32 68
  %8 = ptrtoint ptr %deep_sleep_dcefclk.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %deep_sleep_dcefclk.i, align 4
  %platform_descriptor.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23
  %arrayidx.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  %and1.i.i = and i32 %10, -65
  store i32 %and1.i.i, ptr %arrayidx.i.i, align 4
  %arrayidx.i1.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx.i1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i1.i, align 4
  %and1.i2.i = and i32 %12, -67108865
  store i32 %and1.i2.i, ptr %arrayidx.i1.i, align 4
  %13 = ptrtoint ptr %platform_descriptor.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %platform_descriptor.i, align 4
  %or.i.i = or i32 %14, 2
  store i32 %or.i.i, ptr %platform_descriptor.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result.i) #13
  %clock_table.i = getelementptr inbounds %struct.smu10_hwmgr, ptr %call7.i.i, i32 0, i32 65
  %clock_vol_info.i = getelementptr inbounds %struct.smu10_hwmgr, ptr %call7.i.i, i32 0, i32 64
  %call.i = tail call i32 @smum_smc_table_manager(ptr noundef %hwmgr, ptr noundef %clock_table.i, i16 noundef zeroext 1, i1 noundef zeroext true) #13
  %15 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i, ptr %result.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %call1.i = tail call i32 @___ratelimit(ptr noundef nonnull @smu10_populate_clock_table._rs, ptr noundef nonnull @__func__.smu10_populate_clock_table) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i.smu10_populate_clock_table.exit_crit_edge, label %do.end.i

if.then.i.smu10_populate_clock_table.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu10_populate_clock_table.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #17
  br label %smu10_populate_clock_table.exit

land.lhs.true.i:                                  ; preds = %if.end
  %16 = ptrtoint ptr %clock_table.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %clock_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp9.not.i = icmp eq i32 %17, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  br i1 %cmp9.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 36) #16
  %cmp.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %cmp.i.i, label %if.then10.i.smu10_get_clock_voltage_dependency_table.exit.i_crit_edge, label %if.end.i.i

if.then10.i.smu10_get_clock_voltage_dependency_table.exit.i_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu10_get_clock_voltage_dependency_table.exit.i

if.end.i.i:                                       ; preds = %if.then10.i
  %19 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %call7.i.i.i.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.i
  %i.03.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i ]
  %pclk_dependency_table.addr.02.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %clock_table.i, %if.end.i.i ]
  %20 = ptrtoint ptr %pclk_dependency_table.addr.02.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pclk_dependency_table.addr.02.i.i, align 4
  %mul.i.i = mul i32 %21, 100
  %arrayidx.i.i44 = getelementptr %struct.smu10_voltage_dependency_table, ptr %call7.i.i.i.i, i32 0, i32 1, i32 %i.03.i.i
  %22 = ptrtoint ptr %arrayidx.i.i44 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul.i.i, ptr %arrayidx.i.i44, align 4
  %Vol.i.i = getelementptr inbounds %struct.DpmClock_t, ptr %pclk_dependency_table.addr.02.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %Vol.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %Vol.i.i, align 4
  %vol.i.i = getelementptr %struct.smu10_voltage_dependency_table, ptr %call7.i.i.i.i, i32 0, i32 1, i32 %i.03.i.i, i32 1
  %25 = ptrtoint ptr %vol.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %vol.i.i, align 8
  %incdec.ptr.i.i = getelementptr %struct.DpmClock_t, ptr %pclk_dependency_table.addr.02.i.i, i32 1
  %inc.i.i = add nuw i32 %i.03.i.i, 1
  %26 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call7.i.i.i.i, align 8
  %cmp3.i.i = icmp ult i32 %inc.i.i, %27
  br i1 %cmp3.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %clock_vol_info.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i.i.i, ptr %clock_vol_info.i, align 8
  br label %smu10_get_clock_voltage_dependency_table.exit.i

smu10_get_clock_voltage_dependency_table.exit.i:  ; preds = %for.end.i.i, %if.then10.i.smu10_get_clock_voltage_dependency_table.exit.i_crit_edge
  %vdd_dep_on_socclk.i = getelementptr inbounds %struct.smu10_hwmgr, ptr %call7.i.i, i32 0, i32 64, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i1.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 68) #16
  %cmp.i2.i = icmp eq ptr %call7.i.i.i1.i, null
  br i1 %cmp.i2.i, label %smu10_get_clock_voltage_dependency_table.exit.i.smu10_get_clock_voltage_dependency_table.exit15.i_crit_edge, label %if.end.i3.i

smu10_get_clock_voltage_dependency_table.exit.i.smu10_get_clock_voltage_dependency_table.exit15.i_crit_edge: ; preds = %smu10_get_clock_voltage_dependency_table.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu10_get_clock_voltage_dependency_table.exit15.i

if.end.i3.i:                                      ; preds = %smu10_get_clock_voltage_dependency_table.exit.i
  %SocClocks.i = getelementptr inbounds %struct.smu10_hwmgr, ptr %call7.i.i, i32 0, i32 65, i32 1
  %30 = ptrtoint ptr %call7.i.i.i1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 8, ptr %call7.i.i.i1.i, align 8
  br label %for.body.i13.i

for.body.i13.i:                                   ; preds = %for.body.i13.i.for.body.i13.i_crit_edge, %if.end.i3.i
  %i.03.i4.i = phi i32 [ %inc.i11.i, %for.body.i13.i.for.body.i13.i_crit_edge ], [ 0, %if.end.i3.i ]
  %pclk_dependency_table.addr.02.i5.i = phi ptr [ %incdec.ptr.i10.i, %for.body.i13.i.for.body.i13.i_crit_edge ], [ %SocClocks.i, %if.end.i3.i ]
  %31 = ptrtoint ptr %pclk_dependency_table.addr.02.i5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pclk_dependency_table.addr.02.i5.i, align 4
  %mul.i6.i = mul i32 %32, 100
  %arrayidx.i7.i = getelementptr %struct.smu10_voltage_dependency_table, ptr %call7.i.i.i1.i, i32 0, i32 1, i32 %i.03.i4.i
  %33 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mul.i6.i, ptr %arrayidx.i7.i, align 4
  %Vol.i8.i = getelementptr inbounds %struct.DpmClock_t, ptr %pclk_dependency_table.addr.02.i5.i, i32 0, i32 1
  %34 = ptrtoint ptr %Vol.i8.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %Vol.i8.i, align 4
  %vol.i9.i = getelementptr %struct.smu10_voltage_dependency_table, ptr %call7.i.i.i1.i, i32 0, i32 1, i32 %i.03.i4.i, i32 1
  %36 = ptrtoint ptr %vol.i9.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %vol.i9.i, align 8
  %incdec.ptr.i10.i = getelementptr %struct.DpmClock_t, ptr %pclk_dependency_table.addr.02.i5.i, i32 1
  %inc.i11.i = add nuw i32 %i.03.i4.i, 1
  %37 = ptrtoint ptr %call7.i.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call7.i.i.i1.i, align 8
  %cmp3.i12.i = icmp ult i32 %inc.i11.i, %38
  br i1 %cmp3.i12.i, label %for.body.i13.i.for.body.i13.i_crit_edge, label %for.end.i14.i

for.body.i13.i.for.body.i13.i_crit_edge:          ; preds = %for.body.i13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i13.i

for.end.i14.i:                                    ; preds = %for.body.i13.i
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %vdd_dep_on_socclk.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i.i1.i, ptr %vdd_dep_on_socclk.i, align 4
  br label %smu10_get_clock_voltage_dependency_table.exit15.i

smu10_get_clock_voltage_dependency_table.exit15.i: ; preds = %for.end.i14.i, %smu10_get_clock_voltage_dependency_table.exit.i.smu10_get_clock_voltage_dependency_table.exit15.i_crit_edge
  %vdd_dep_on_fclk.i = getelementptr inbounds %struct.smu10_hwmgr, ptr %call7.i.i, i32 0, i32 64, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i16.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 36) #16
  %cmp.i17.i = icmp eq ptr %call7.i.i.i16.i, null
  br i1 %cmp.i17.i, label %smu10_get_clock_voltage_dependency_table.exit15.i.smu10_get_clock_voltage_dependency_table.exit30.i_crit_edge, label %if.end.i18.i

smu10_get_clock_voltage_dependency_table.exit15.i.smu10_get_clock_voltage_dependency_table.exit30.i_crit_edge: ; preds = %smu10_get_clock_voltage_dependency_table.exit15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu10_get_clock_voltage_dependency_table.exit30.i

if.end.i18.i:                                     ; preds = %smu10_get_clock_voltage_dependency_table.exit15.i
  %FClocks.i = getelementptr inbounds %struct.smu10_hwmgr, ptr %call7.i.i, i32 0, i32 65, i32 2
  %41 = ptrtoint ptr %call7.i.i.i16.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4, ptr %call7.i.i.i16.i, align 8
  br label %for.body.i28.i

for.body.i28.i:                                   ; preds = %for.body.i28.i.for.body.i28.i_crit_edge, %if.end.i18.i
  %i.03.i19.i = phi i32 [ %inc.i26.i, %for.body.i28.i.for.body.i28.i_crit_edge ], [ 0, %if.end.i18.i ]
  %pclk_dependency_table.addr.02.i20.i = phi ptr [ %incdec.ptr.i25.i, %for.body.i28.i.for.body.i28.i_crit_edge ], [ %FClocks.i, %if.end.i18.i ]
  %42 = ptrtoint ptr %pclk_dependency_table.addr.02.i20.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pclk_dependency_table.addr.02.i20.i, align 4
  %mul.i21.i = mul i32 %43, 100
  %arrayidx.i22.i = getelementptr %struct.smu10_voltage_dependency_table, ptr %call7.i.i.i16.i, i32 0, i32 1, i32 %i.03.i19.i
  %44 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mul.i21.i, ptr %arrayidx.i22.i, align 4
  %Vol.i23.i = getelementptr inbounds %struct.DpmClock_t, ptr %pclk_dependency_table.addr.02.i20.i, i32 0, i32 1
  %45 = ptrtoint ptr %Vol.i23.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %Vol.i23.i, align 4
  %vol.i24.i = getelementptr %struct.smu10_voltage_dependency_table, ptr %call7.i.i.i16.i, i32 0, i32 1, i32 %i.03.i19.i, i32 1
  %47 = ptrtoint ptr %vol.i24.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %vol.i24.i, align 8
  %incdec.ptr.i25.i = getelementptr %struct.DpmClock_t, ptr %pclk_dependency_table.addr.02.i20.i, i32 1
  %inc.i26.i = add nuw i32 %i.03.i19.i, 1
  %48 = ptrtoint ptr %call7.i.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %call7.i.i.i16.i, align 8
  %cmp3.i27.i = icmp ult i32 %inc.i26.i, %49
  br i1 %cmp3.i27.i, label %for.body.i28.i.for.body.i28.i_crit_edge, label %for.end.i29.i

for.body.i28.i.for.body.i28.i_crit_edge:          ; preds = %for.body.i28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i28.i

for.end.i29.i:                                    ; preds = %for.body.i28.i
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %vdd_dep_on_fclk.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call7.i.i.i16.i, ptr %vdd_dep_on_fclk.i, align 8
  br label %smu10_get_clock_voltage_dependency_table.exit30.i

smu10_get_clock_voltage_dependency_table.exit30.i: ; preds = %for.end.i29.i, %smu10_get_clock_voltage_dependency_table.exit15.i.smu10_get_clock_voltage_dependency_table.exit30.i_crit_edge
  %vdd_dep_on_mclk.i = getelementptr inbounds %struct.smu10_hwmgr, ptr %call7.i.i, i32 0, i32 64, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %51 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i31.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 3520, i32 noundef 36) #16
  %cmp.i32.i = icmp eq ptr %call7.i.i.i31.i, null
  br i1 %cmp.i32.i, label %smu10_get_clock_voltage_dependency_table.exit30.i.if.end30.i_crit_edge, label %if.end.i33.i

smu10_get_clock_voltage_dependency_table.exit30.i.if.end30.i_crit_edge: ; preds = %smu10_get_clock_voltage_dependency_table.exit30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

if.end.i33.i:                                     ; preds = %smu10_get_clock_voltage_dependency_table.exit30.i
  %MemClocks.i = getelementptr inbounds %struct.smu10_hwmgr, ptr %call7.i.i, i32 0, i32 65, i32 3
  %52 = ptrtoint ptr %call7.i.i.i31.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4, ptr %call7.i.i.i31.i, align 8
  br label %for.body.i43.i

for.body.i43.i:                                   ; preds = %for.body.i43.i.for.body.i43.i_crit_edge, %if.end.i33.i
  %i.03.i34.i = phi i32 [ %inc.i41.i, %for.body.i43.i.for.body.i43.i_crit_edge ], [ 0, %if.end.i33.i ]
  %pclk_dependency_table.addr.02.i35.i = phi ptr [ %incdec.ptr.i40.i, %for.body.i43.i.for.body.i43.i_crit_edge ], [ %MemClocks.i, %if.end.i33.i ]
  %53 = ptrtoint ptr %pclk_dependency_table.addr.02.i35.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pclk_dependency_table.addr.02.i35.i, align 4
  %mul.i36.i = mul i32 %54, 100
  %arrayidx.i37.i = getelementptr %struct.smu10_voltage_dependency_table, ptr %call7.i.i.i31.i, i32 0, i32 1, i32 %i.03.i34.i
  %55 = ptrtoint ptr %arrayidx.i37.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %mul.i36.i, ptr %arrayidx.i37.i, align 4
  %Vol.i38.i = getelementptr inbounds %struct.DpmClock_t, ptr %pclk_dependency_table.addr.02.i35.i, i32 0, i32 1
  %56 = ptrtoint ptr %Vol.i38.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %Vol.i38.i, align 4
  %vol.i39.i = getelementptr %struct.smu10_voltage_dependency_table, ptr %call7.i.i.i31.i, i32 0, i32 1, i32 %i.03.i34.i, i32 1
  %58 = ptrtoint ptr %vol.i39.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %vol.i39.i, align 8
  %incdec.ptr.i40.i = getelementptr %struct.DpmClock_t, ptr %pclk_dependency_table.addr.02.i35.i, i32 1
  %inc.i41.i = add nuw i32 %i.03.i34.i, 1
  %59 = ptrtoint ptr %call7.i.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %call7.i.i.i31.i, align 8
  %cmp3.i42.i = icmp ult i32 %inc.i41.i, %60
  br i1 %cmp3.i42.i, label %for.body.i43.i.for.body.i43.i_crit_edge, label %for.end.i44.i

for.body.i43.i.for.body.i43.i_crit_edge:          ; preds = %for.body.i43.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i43.i

for.end.i44.i:                                    ; preds = %for.body.i43.i
  call void @__sanitizer_cov_trace_pc() #15
  %61 = ptrtoint ptr %vdd_dep_on_mclk.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call7.i.i.i31.i, ptr %vdd_dep_on_mclk.i, align 4
  br label %if.end30.i

if.else.i:                                        ; preds = %land.lhs.true.i
  %call7.i.i.i46.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 28) #16
  %cmp.i47.i = icmp eq ptr %call7.i.i.i46.i, null
  br i1 %cmp.i47.i, label %if.else.i.smu10_get_clock_voltage_dependency_table.exit60.i_crit_edge, label %if.end.i48.i

if.else.i.smu10_get_clock_voltage_dependency_table.exit60.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu10_get_clock_voltage_dependency_table.exit60.i

if.end.i48.i:                                     ; preds = %if.else.i
  %62 = ptrtoint ptr %call7.i.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 3, ptr %call7.i.i.i46.i, align 8
  br label %for.body.i58.i

for.body.i58.i:                                   ; preds = %for.body.i58.i.for.body.i58.i_crit_edge, %if.end.i48.i
  %i.03.i49.i = phi i32 [ %inc.i56.i, %for.body.i58.i.for.body.i58.i_crit_edge ], [ 0, %if.end.i48.i ]
  %pclk_dependency_table.addr.02.i50.i = phi ptr [ %incdec.ptr.i55.i, %for.body.i58.i.for.body.i58.i_crit_edge ], [ @VddDcfClk, %if.end.i48.i ]
  %63 = ptrtoint ptr %pclk_dependency_table.addr.02.i50.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pclk_dependency_table.addr.02.i50.i, align 4
  %mul.i51.i = mul i32 %64, 100
  %arrayidx.i52.i = getelementptr %struct.smu10_voltage_dependency_table, ptr %call7.i.i.i46.i, i32 0, i32 1, i32 %i.03.i49.i
  %65 = ptrtoint ptr %arrayidx.i52.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %mul.i51.i, ptr %arrayidx.i52.i, align 4
  %Vol.i53.i = getelementptr inbounds %struct.DpmClock_t, ptr %pclk_dependency_table.addr.02.i50.i, i32 0, i32 1
  %66 = ptrtoint ptr %Vol.i53.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %Vol.i53.i, align 4
  %vol.i54.i = getelementptr %struct.smu10_voltage_dependency_table, ptr %call7.i.i.i46.i, i32 0, i32 1, i32 %i.03.i49.i, i32 1
  %68 = ptrtoint ptr %vol.i54.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %vol.i54.i, align 8
  %incdec.ptr.i55.i = getelementptr %struct.DpmClock_t, ptr %pclk_dependency_table.addr.02.i50.i, i32 1
  %inc.i56.i = add nuw i32 %i.03.i49.i, 1
  %69 = ptrtoint ptr %call7.i.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %call7.i.i.i46.i, align 8
  %cmp3.i57.i = icmp ult i32 %inc.i56.i, %70
  br i1 %cmp3.i57.i, label %for.body.i58.i.for.body.i58.i_crit_edge, label %for.end.i59.i

for.body.i58.i.for.body.i58.i_crit_edge:          ; preds = %for.body.i58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i58.i

for.end.i59.i:                                    ; preds = %for.body.i58.i
  call void @__sanitizer_cov_trace_pc() #15
  %71 = ptrtoint ptr %clock_vol_info.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call7.i.i.i46.i, ptr %clock_vol_info.i, align 8
  br label %smu10_get_clock_voltage_dependency_table.exit60.i

smu10_get_clock_voltage_dependency_table.exit60.i: ; preds = %for.end.i59.i, %if.else.i.smu10_get_clock_voltage_dependency_table.exit60.i_crit_edge
  %vdd_dep_on_socclk26.i = getelementptr inbounds %struct.smu10_hwmgr, ptr %call7.i.i, i32 0, i32 64, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %72 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i61.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %72, i32 noundef 3520, i32 noundef 28) #16
  %cmp.i62.i = icmp eq ptr %call7.i.i.i61.i, null
  br i1 %cmp.i62.i, label %smu10_get_clock_voltage_dependency_table.exit60.i.smu10_get_clock_voltage_dependency_table.exit75.i_crit_edge, label %if.end.i63.i

smu10_get_clock_voltage_dependency_table.exit60.i.smu10_get_clock_voltage_dependency_table.exit75.i_crit_edge: ; preds = %smu10_get_clock_voltage_dependency_table.exit60.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu10_get_clock_voltage_dependency_table.exit75.i

if.end.i63.i:                                     ; preds = %smu10_get_clock_voltage_dependency_table.exit60.i
  %73 = ptrtoint ptr %call7.i.i.i61.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 3, ptr %call7.i.i.i61.i, align 8
  br label %for.body.i73.i

for.body.i73.i:                                   ; preds = %for.body.i73.i.for.body.i73.i_crit_edge, %if.end.i63.i
  %i.03.i64.i = phi i32 [ %inc.i71.i, %for.body.i73.i.for.body.i73.i_crit_edge ], [ 0, %if.end.i63.i ]
  %pclk_dependency_table.addr.02.i65.i = phi ptr [ %incdec.ptr.i70.i, %for.body.i73.i.for.body.i73.i_crit_edge ], [ @VddSocClk, %if.end.i63.i ]
  %74 = ptrtoint ptr %pclk_dependency_table.addr.02.i65.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pclk_dependency_table.addr.02.i65.i, align 4
  %mul.i66.i = mul i32 %75, 100
  %arrayidx.i67.i = getelementptr %struct.smu10_voltage_dependency_table, ptr %call7.i.i.i61.i, i32 0, i32 1, i32 %i.03.i64.i
  %76 = ptrtoint ptr %arrayidx.i67.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %mul.i66.i, ptr %arrayidx.i67.i, align 4
  %Vol.i68.i = getelementptr inbounds %struct.DpmClock_t, ptr %pclk_dependency_table.addr.02.i65.i, i32 0, i32 1
  %77 = ptrtoint ptr %Vol.i68.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %Vol.i68.i, align 4
  %vol.i69.i = getelementptr %struct.smu10_voltage_dependency_table, ptr %call7.i.i.i61.i, i32 0, i32 1, i32 %i.03.i64.i, i32 1
  %79 = ptrtoint ptr %vol.i69.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %vol.i69.i, align 8
  %incdec.ptr.i70.i = getelementptr %struct.DpmClock_t, ptr %pclk_dependency_table.addr.02.i65.i, i32 1
  %inc.i71.i = add nuw i32 %i.03.i64.i, 1
  %80 = ptrtoint ptr %call7.i.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %call7.i.i.i61.i, align 8
  %cmp3.i72.i = icmp ult i32 %inc.i71.i, %81
  br i1 %cmp3.i72.i, label %for.body.i73.i.for.body.i73.i_crit_edge, label %for.end.i74.i

for.body.i73.i.for.body.i73.i_crit_edge:          ; preds = %for.body.i73.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i73.i

for.end.i74.i:                                    ; preds = %for.body.i73.i
  call void @__sanitizer_cov_trace_pc() #15
  %82 = ptrtoint ptr %vdd_dep_on_socclk26.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call7.i.i.i61.i, ptr %vdd_dep_on_socclk26.i, align 4
  br label %smu10_get_clock_voltage_dependency_table.exit75.i

smu10_get_clock_voltage_dependency_table.exit75.i: ; preds = %for.end.i74.i, %smu10_get_clock_voltage_dependency_table.exit60.i.smu10_get_clock_voltage_dependency_table.exit75.i_crit_edge
  %vdd_dep_on_fclk28.i = getelementptr inbounds %struct.smu10_hwmgr, ptr %call7.i.i, i32 0, i32 64, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %83 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i76.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %83, i32 noundef 3520, i32 noundef 28) #16
  %cmp.i77.i = icmp eq ptr %call7.i.i.i76.i, null
  br i1 %cmp.i77.i, label %smu10_get_clock_voltage_dependency_table.exit75.i.if.end30.i_crit_edge, label %if.end.i78.i

smu10_get_clock_voltage_dependency_table.exit75.i.if.end30.i_crit_edge: ; preds = %smu10_get_clock_voltage_dependency_table.exit75.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

if.end.i78.i:                                     ; preds = %smu10_get_clock_voltage_dependency_table.exit75.i
  %84 = ptrtoint ptr %call7.i.i.i76.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 3, ptr %call7.i.i.i76.i, align 8
  br label %for.body.i88.i

for.body.i88.i:                                   ; preds = %for.body.i88.i.for.body.i88.i_crit_edge, %if.end.i78.i
  %i.03.i79.i = phi i32 [ %inc.i86.i, %for.body.i88.i.for.body.i88.i_crit_edge ], [ 0, %if.end.i78.i ]
  %pclk_dependency_table.addr.02.i80.i = phi ptr [ %incdec.ptr.i85.i, %for.body.i88.i.for.body.i88.i_crit_edge ], [ @VddFClk, %if.end.i78.i ]
  %85 = ptrtoint ptr %pclk_dependency_table.addr.02.i80.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pclk_dependency_table.addr.02.i80.i, align 4
  %mul.i81.i = mul i32 %86, 100
  %arrayidx.i82.i = getelementptr %struct.smu10_voltage_dependency_table, ptr %call7.i.i.i76.i, i32 0, i32 1, i32 %i.03.i79.i
  %87 = ptrtoint ptr %arrayidx.i82.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %mul.i81.i, ptr %arrayidx.i82.i, align 4
  %Vol.i83.i = getelementptr inbounds %struct.DpmClock_t, ptr %pclk_dependency_table.addr.02.i80.i, i32 0, i32 1
  %88 = ptrtoint ptr %Vol.i83.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %Vol.i83.i, align 4
  %vol.i84.i = getelementptr %struct.smu10_voltage_dependency_table, ptr %call7.i.i.i76.i, i32 0, i32 1, i32 %i.03.i79.i, i32 1
  %90 = ptrtoint ptr %vol.i84.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %vol.i84.i, align 8
  %incdec.ptr.i85.i = getelementptr %struct.DpmClock_t, ptr %pclk_dependency_table.addr.02.i80.i, i32 1
  %inc.i86.i = add nuw i32 %i.03.i79.i, 1
  %91 = ptrtoint ptr %call7.i.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %call7.i.i.i76.i, align 8
  %cmp3.i87.i = icmp ult i32 %inc.i86.i, %92
  br i1 %cmp3.i87.i, label %for.body.i88.i.for.body.i88.i_crit_edge, label %for.end.i89.i

for.body.i88.i.for.body.i88.i_crit_edge:          ; preds = %for.body.i88.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i88.i

for.end.i89.i:                                    ; preds = %for.body.i88.i
  call void @__sanitizer_cov_trace_pc() #15
  %93 = ptrtoint ptr %vdd_dep_on_fclk28.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call7.i.i.i76.i, ptr %vdd_dep_on_fclk28.i, align 8
  br label %if.end30.i

if.end30.i:                                       ; preds = %for.end.i89.i, %smu10_get_clock_voltage_dependency_table.exit75.i.if.end30.i_crit_edge, %for.end.i44.i, %smu10_get_clock_voltage_dependency_table.exit30.i.if.end30.i_crit_edge
  %vdd_dep_on_dispclk.i = getelementptr inbounds %struct.smu10_hwmgr, ptr %call7.i.i, i32 0, i32 64, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %94 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i91.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %94, i32 noundef 3520, i32 noundef 28) #16
  %cmp.i92.i = icmp eq ptr %call7.i.i.i91.i, null
  br i1 %cmp.i92.i, label %if.end30.i.smu10_get_clock_voltage_dependency_table.exit105.i_crit_edge, label %if.end.i93.i

if.end30.i.smu10_get_clock_voltage_dependency_table.exit105.i_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu10_get_clock_voltage_dependency_table.exit105.i

if.end.i93.i:                                     ; preds = %if.end30.i
  %95 = ptrtoint ptr %call7.i.i.i91.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 3, ptr %call7.i.i.i91.i, align 8
  br label %for.body.i103.i

for.body.i103.i:                                  ; preds = %for.body.i103.i.for.body.i103.i_crit_edge, %if.end.i93.i
  %i.03.i94.i = phi i32 [ %inc.i101.i, %for.body.i103.i.for.body.i103.i_crit_edge ], [ 0, %if.end.i93.i ]
  %pclk_dependency_table.addr.02.i95.i = phi ptr [ %incdec.ptr.i100.i, %for.body.i103.i.for.body.i103.i_crit_edge ], [ @VddDispClk, %if.end.i93.i ]
  %96 = ptrtoint ptr %pclk_dependency_table.addr.02.i95.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pclk_dependency_table.addr.02.i95.i, align 4
  %mul.i96.i = mul i32 %97, 100
  %arrayidx.i97.i = getelementptr %struct.smu10_voltage_dependency_table, ptr %call7.i.i.i91.i, i32 0, i32 1, i32 %i.03.i94.i
  %98 = ptrtoint ptr %arrayidx.i97.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %mul.i96.i, ptr %arrayidx.i97.i, align 4
  %Vol.i98.i = getelementptr inbounds %struct.DpmClock_t, ptr %pclk_dependency_table.addr.02.i95.i, i32 0, i32 1
  %99 = ptrtoint ptr %Vol.i98.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %Vol.i98.i, align 4
  %vol.i99.i = getelementptr %struct.smu10_voltage_dependency_table, ptr %call7.i.i.i91.i, i32 0, i32 1, i32 %i.03.i94.i, i32 1
  %101 = ptrtoint ptr %vol.i99.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %vol.i99.i, align 8
  %incdec.ptr.i100.i = getelementptr %struct.DpmClock_t, ptr %pclk_dependency_table.addr.02.i95.i, i32 1
  %inc.i101.i = add nuw i32 %i.03.i94.i, 1
  %102 = ptrtoint ptr %call7.i.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %call7.i.i.i91.i, align 8
  %cmp3.i102.i = icmp ult i32 %inc.i101.i, %103
  br i1 %cmp3.i102.i, label %for.body.i103.i.for.body.i103.i_crit_edge, label %for.end.i104.i

for.body.i103.i.for.body.i103.i_crit_edge:        ; preds = %for.body.i103.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i103.i

for.end.i104.i:                                   ; preds = %for.body.i103.i
  call void @__sanitizer_cov_trace_pc() #15
  %104 = ptrtoint ptr %vdd_dep_on_dispclk.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call7.i.i.i91.i, ptr %vdd_dep_on_dispclk.i, align 8
  br label %smu10_get_clock_voltage_dependency_table.exit105.i

smu10_get_clock_voltage_dependency_table.exit105.i: ; preds = %for.end.i104.i, %if.end30.i.smu10_get_clock_voltage_dependency_table.exit105.i_crit_edge
  %vdd_dep_on_dppclk.i = getelementptr inbounds %struct.smu10_hwmgr, ptr %call7.i.i, i32 0, i32 64, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %105 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i106.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %105, i32 noundef 3520, i32 noundef 28) #16
  %cmp.i107.i = icmp eq ptr %call7.i.i.i106.i, null
  br i1 %cmp.i107.i, label %smu10_get_clock_voltage_dependency_table.exit105.i.smu10_get_clock_voltage_dependency_table.exit120.i_crit_edge, label %if.end.i108.i

smu10_get_clock_voltage_dependency_table.exit105.i.smu10_get_clock_voltage_dependency_table.exit120.i_crit_edge: ; preds = %smu10_get_clock_voltage_dependency_table.exit105.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu10_get_clock_voltage_dependency_table.exit120.i

if.end.i108.i:                                    ; preds = %smu10_get_clock_voltage_dependency_table.exit105.i
  %106 = ptrtoint ptr %call7.i.i.i106.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 3, ptr %call7.i.i.i106.i, align 8
  br label %for.body.i118.i

for.body.i118.i:                                  ; preds = %for.body.i118.i.for.body.i118.i_crit_edge, %if.end.i108.i
  %i.03.i109.i = phi i32 [ %inc.i116.i, %for.body.i118.i.for.body.i118.i_crit_edge ], [ 0, %if.end.i108.i ]
  %pclk_dependency_table.addr.02.i110.i = phi ptr [ %incdec.ptr.i115.i, %for.body.i118.i.for.body.i118.i_crit_edge ], [ @VddDppClk, %if.end.i108.i ]
  %107 = ptrtoint ptr %pclk_dependency_table.addr.02.i110.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %pclk_dependency_table.addr.02.i110.i, align 4
  %mul.i111.i = mul i32 %108, 100
  %arrayidx.i112.i = getelementptr %struct.smu10_voltage_dependency_table, ptr %call7.i.i.i106.i, i32 0, i32 1, i32 %i.03.i109.i
  %109 = ptrtoint ptr %arrayidx.i112.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %mul.i111.i, ptr %arrayidx.i112.i, align 4
  %Vol.i113.i = getelementptr inbounds %struct.DpmClock_t, ptr %pclk_dependency_table.addr.02.i110.i, i32 0, i32 1
  %110 = ptrtoint ptr %Vol.i113.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %Vol.i113.i, align 4
  %vol.i114.i = getelementptr %struct.smu10_voltage_dependency_table, ptr %call7.i.i.i106.i, i32 0, i32 1, i32 %i.03.i109.i, i32 1
  %112 = ptrtoint ptr %vol.i114.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %vol.i114.i, align 8
  %incdec.ptr.i115.i = getelementptr %struct.DpmClock_t, ptr %pclk_dependency_table.addr.02.i110.i, i32 1
  %inc.i116.i = add nuw i32 %i.03.i109.i, 1
  %113 = ptrtoint ptr %call7.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %call7.i.i.i106.i, align 8
  %cmp3.i117.i = icmp ult i32 %inc.i116.i, %114
  br i1 %cmp3.i117.i, label %for.body.i118.i.for.body.i118.i_crit_edge, label %for.end.i119.i

for.body.i118.i.for.body.i118.i_crit_edge:        ; preds = %for.body.i118.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i118.i

for.end.i119.i:                                   ; preds = %for.body.i118.i
  call void @__sanitizer_cov_trace_pc() #15
  %115 = ptrtoint ptr %vdd_dep_on_dppclk.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call7.i.i.i106.i, ptr %vdd_dep_on_dppclk.i, align 4
  br label %smu10_get_clock_voltage_dependency_table.exit120.i

smu10_get_clock_voltage_dependency_table.exit120.i: ; preds = %for.end.i119.i, %smu10_get_clock_voltage_dependency_table.exit105.i.smu10_get_clock_voltage_dependency_table.exit120.i_crit_edge
  %vdd_dep_on_phyclk.i = getelementptr inbounds %struct.smu10_hwmgr, ptr %call7.i.i, i32 0, i32 64, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %116 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i121.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %116, i32 noundef 3520, i32 noundef 28) #16
  %cmp.i122.i = icmp eq ptr %call7.i.i.i121.i, null
  br i1 %cmp.i122.i, label %smu10_get_clock_voltage_dependency_table.exit120.i.smu10_get_clock_voltage_dependency_table.exit135.i_crit_edge, label %if.end.i123.i

smu10_get_clock_voltage_dependency_table.exit120.i.smu10_get_clock_voltage_dependency_table.exit135.i_crit_edge: ; preds = %smu10_get_clock_voltage_dependency_table.exit120.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu10_get_clock_voltage_dependency_table.exit135.i

if.end.i123.i:                                    ; preds = %smu10_get_clock_voltage_dependency_table.exit120.i
  %117 = ptrtoint ptr %call7.i.i.i121.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 3, ptr %call7.i.i.i121.i, align 8
  br label %for.body.i133.i

for.body.i133.i:                                  ; preds = %for.body.i133.i.for.body.i133.i_crit_edge, %if.end.i123.i
  %i.03.i124.i = phi i32 [ %inc.i131.i, %for.body.i133.i.for.body.i133.i_crit_edge ], [ 0, %if.end.i123.i ]
  %pclk_dependency_table.addr.02.i125.i = phi ptr [ %incdec.ptr.i130.i, %for.body.i133.i.for.body.i133.i_crit_edge ], [ @VddPhyClk, %if.end.i123.i ]
  %118 = ptrtoint ptr %pclk_dependency_table.addr.02.i125.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %pclk_dependency_table.addr.02.i125.i, align 4
  %mul.i126.i = mul i32 %119, 100
  %arrayidx.i127.i = getelementptr %struct.smu10_voltage_dependency_table, ptr %call7.i.i.i121.i, i32 0, i32 1, i32 %i.03.i124.i
  %120 = ptrtoint ptr %arrayidx.i127.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %mul.i126.i, ptr %arrayidx.i127.i, align 4
  %Vol.i128.i = getelementptr inbounds %struct.DpmClock_t, ptr %pclk_dependency_table.addr.02.i125.i, i32 0, i32 1
  %121 = ptrtoint ptr %Vol.i128.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %Vol.i128.i, align 4
  %vol.i129.i = getelementptr %struct.smu10_voltage_dependency_table, ptr %call7.i.i.i121.i, i32 0, i32 1, i32 %i.03.i124.i, i32 1
  %123 = ptrtoint ptr %vol.i129.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %vol.i129.i, align 8
  %incdec.ptr.i130.i = getelementptr %struct.DpmClock_t, ptr %pclk_dependency_table.addr.02.i125.i, i32 1
  %inc.i131.i = add nuw i32 %i.03.i124.i, 1
  %124 = ptrtoint ptr %call7.i.i.i121.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %call7.i.i.i121.i, align 8
  %cmp3.i132.i = icmp ult i32 %inc.i131.i, %125
  br i1 %cmp3.i132.i, label %for.body.i133.i.for.body.i133.i_crit_edge, label %for.end.i134.i

for.body.i133.i.for.body.i133.i_crit_edge:        ; preds = %for.body.i133.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i133.i

for.end.i134.i:                                   ; preds = %for.body.i133.i
  call void @__sanitizer_cov_trace_pc() #15
  %126 = ptrtoint ptr %vdd_dep_on_phyclk.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call7.i.i.i121.i, ptr %vdd_dep_on_phyclk.i, align 8
  br label %smu10_get_clock_voltage_dependency_table.exit135.i

smu10_get_clock_voltage_dependency_table.exit135.i: ; preds = %for.end.i134.i, %smu10_get_clock_voltage_dependency_table.exit120.i.smu10_get_clock_voltage_dependency_table.exit135.i_crit_edge
  %call34.i = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 44, ptr noundef nonnull %result.i) #13
  %127 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %result.i, align 4
  %div.i = udiv i32 %128, 10
  %mul.i = mul i32 %div.i, 1000
  %gfx_min_freq_limit.i = getelementptr inbounds %struct.smu10_hwmgr, ptr %call7.i.i, i32 0, i32 57
  %129 = ptrtoint ptr %gfx_min_freq_limit.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %mul.i, ptr %gfx_min_freq_limit.i, align 8
  %call35.i = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 45, ptr noundef nonnull %result.i) #13
  %130 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %result.i, align 4
  %div36.i = udiv i32 %131, 10
  %mul37.i = mul i32 %div36.i, 1000
  %gfx_max_freq_limit.i = getelementptr inbounds %struct.smu10_hwmgr, ptr %call7.i.i, i32 0, i32 58
  %132 = ptrtoint ptr %gfx_max_freq_limit.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %mul37.i, ptr %gfx_max_freq_limit.i, align 4
  br label %smu10_populate_clock_table.exit

smu10_populate_clock_table.exit:                  ; preds = %smu10_get_clock_voltage_dependency_table.exit135.i, %do.end.i, %if.then.i.smu10_populate_clock_table.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result.i) #13
  %133 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %backend, align 4
  %sys_info.i = getelementptr inbounds %struct.smu10_hwmgr, ptr %134, i32 0, i32 2
  %htc_hyst_lmt.i = getelementptr inbounds %struct.smu10_hwmgr, ptr %134, i32 0, i32 2, i32 1
  %135 = ptrtoint ptr %htc_hyst_lmt.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 5, ptr %htc_hyst_lmt.i, align 1
  %136 = ptrtoint ptr %sys_info.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 -53, ptr %sys_info.i, align 4
  %thermal_auto_throttling_treshold.i46 = getelementptr inbounds %struct.smu10_hwmgr, ptr %134, i32 0, i32 1
  %137 = ptrtoint ptr %thermal_auto_throttling_treshold.i46 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %thermal_auto_throttling_treshold.i46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp.i47 = icmp eq i32 %138, 0
  br i1 %cmp.i47, label %if.then.i48, label %smu10_populate_clock_table.exit.if.end.i_crit_edge

smu10_populate_clock_table.exit.if.end.i_crit_edge: ; preds = %smu10_populate_clock_table.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i48:                                      ; preds = %smu10_populate_clock_table.exit
  call void @__sanitizer_cov_trace_pc() #15
  %139 = ptrtoint ptr %thermal_auto_throttling_treshold.i46 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 203, ptr %thermal_auto_throttling_treshold.i46, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i48, %smu10_populate_clock_table.exit.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %140 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i49 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %140, i32 noundef 3520, i32 noundef 68) #16
  %cmp.i.i50 = icmp eq ptr %call7.i.i.i.i49, null
  br i1 %cmp.i.i50, label %do.end.i.i, label %if.end.i.i51

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #17
  br label %smu10_get_system_info_data.exit

if.end.i.i51:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %141 = ptrtoint ptr %call7.i.i.i.i49 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 8, ptr %call7.i.i.i.i49, align 8
  %entries.i.i = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i49, i32 0, i32 1
  %142 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 1, ptr %entries.i.i, align 4
  %v.i.i = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i49, i32 2
  %143 = ptrtoint ptr %v.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %v.i.i, align 8
  %arrayidx7.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i49, i32 3
  %144 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 2, ptr %arrayidx7.i.i, align 4
  %v11.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i49, i32 4
  %145 = ptrtoint ptr %v11.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 1, ptr %v11.i.i, align 8
  %arrayidx13.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i49, i32 5
  %146 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 3, ptr %arrayidx13.i.i, align 4
  %v17.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i49, i32 6
  %147 = ptrtoint ptr %v17.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 2, ptr %v17.i.i, align 8
  %arrayidx19.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i49, i32 7
  %148 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 4, ptr %arrayidx19.i.i, align 4
  %v23.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i49, i32 8
  %149 = ptrtoint ptr %v23.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 3, ptr %v23.i.i, align 8
  %arrayidx25.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i49, i32 9
  %150 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 5, ptr %arrayidx25.i.i, align 4
  %v29.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i49, i32 10
  %151 = ptrtoint ptr %v29.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 4, ptr %v29.i.i, align 8
  %arrayidx31.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i49, i32 11
  %152 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 6, ptr %arrayidx31.i.i, align 4
  %v35.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i49, i32 12
  %153 = ptrtoint ptr %v35.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 5, ptr %v35.i.i, align 8
  %arrayidx37.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i49, i32 13
  %154 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 7, ptr %arrayidx37.i.i, align 4
  %v41.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i49, i32 14
  %155 = ptrtoint ptr %v41.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 6, ptr %v41.i.i, align 8
  %arrayidx43.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i49, i32 15
  %156 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 8, ptr %arrayidx43.i.i, align 4
  %v47.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i.i.i49, i32 16
  %157 = ptrtoint ptr %v47.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 7, ptr %v47.i.i, align 8
  %vddc_dep_on_dal_pwrl.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 4
  %158 = ptrtoint ptr %vddc_dep_on_dal_pwrl.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %call7.i.i.i.i49, ptr %vddc_dep_on_dal_pwrl.i.i, align 4
  br label %smu10_get_system_info_data.exit

smu10_get_system_info_data.exit:                  ; preds = %if.end.i.i51, %do.end.i.i
  %hardwareActivityPerformanceLevels = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 4
  %159 = ptrtoint ptr %hardwareActivityPerformanceLevels to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 8, ptr %hardwareActivityPerformanceLevels, align 4
  %hardwarePerformanceLevels = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 9
  %160 = ptrtoint ptr %hardwarePerformanceLevels to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 8, ptr %hardwarePerformanceLevels, align 4
  %vbiosInterruptId = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 1
  %161 = ptrtoint ptr %vbiosInterruptId to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %vbiosInterruptId, align 4
  %clockStep = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 3
  %162 = ptrtoint ptr %clockStep to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 500, ptr %clockStep, align 4
  %memoryClock = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 3, i32 1
  %163 = ptrtoint ptr %memoryClock to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 500, ptr %memoryClock, align 4
  %minimumClocksReductionPercentage = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 5
  %164 = ptrtoint ptr %minimumClocksReductionPercentage to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 50, ptr %minimumClocksReductionPercentage, align 4
  %pstate_sclk = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 51
  %165 = ptrtoint ptr %pstate_sclk to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 70000, ptr %pstate_sclk, align 4
  %pstate_mclk = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 52
  %166 = ptrtoint ptr %pstate_mclk to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 93300, ptr %pstate_mclk, align 4
  %od_enabled = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 53
  %167 = ptrtoint ptr %od_enabled to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 1, ptr %od_enabled, align 4
  %fine_grain_enabled = getelementptr inbounds %struct.smu10_hwmgr, ptr %call7.i.i, i32 0, i32 70
  %168 = ptrtoint ptr %fine_grain_enabled to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 0, ptr %fine_grain_enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %smu10_get_system_info_data.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %smu10_get_system_info_data.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_hwmgr_backend_fini(ptr nocapture noundef %hwmgr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %clock_vol_info = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 64
  %2 = ptrtoint ptr %clock_vol_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock_vol_info, align 4
  tail call void @kfree(ptr noundef %3) #13
  %4 = ptrtoint ptr %clock_vol_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %clock_vol_info, align 4
  %vdd_dep_on_socclk = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 64, i32 1
  %5 = ptrtoint ptr %vdd_dep_on_socclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vdd_dep_on_socclk, align 4
  tail call void @kfree(ptr noundef %6) #13
  %7 = ptrtoint ptr %vdd_dep_on_socclk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %vdd_dep_on_socclk, align 4
  %vdd_dep_on_fclk = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 64, i32 2
  %8 = ptrtoint ptr %vdd_dep_on_fclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdd_dep_on_fclk, align 4
  tail call void @kfree(ptr noundef %9) #13
  %10 = ptrtoint ptr %vdd_dep_on_fclk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %vdd_dep_on_fclk, align 4
  %vdd_dep_on_dispclk = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 64, i32 4
  %11 = ptrtoint ptr %vdd_dep_on_dispclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vdd_dep_on_dispclk, align 4
  tail call void @kfree(ptr noundef %12) #13
  %13 = ptrtoint ptr %vdd_dep_on_dispclk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %vdd_dep_on_dispclk, align 4
  %vdd_dep_on_dppclk = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 64, i32 5
  %14 = ptrtoint ptr %vdd_dep_on_dppclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vdd_dep_on_dppclk, align 4
  tail call void @kfree(ptr noundef %15) #13
  %16 = ptrtoint ptr %vdd_dep_on_dppclk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %vdd_dep_on_dppclk, align 4
  %vdd_dep_on_phyclk = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 64, i32 6
  %17 = ptrtoint ptr %vdd_dep_on_phyclk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vdd_dep_on_phyclk, align 4
  tail call void @kfree(ptr noundef %18) #13
  %19 = ptrtoint ptr %vdd_dep_on_phyclk to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %vdd_dep_on_phyclk, align 4
  %vddc_dep_on_dal_pwrl = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 4
  %20 = ptrtoint ptr %vddc_dep_on_dal_pwrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vddc_dep_on_dal_pwrl, align 4
  tail call void @kfree(ptr noundef %21) #13
  %22 = ptrtoint ptr %vddc_dep_on_dal_pwrl to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %vddc_dep_on_dal_pwrl, align 4
  %23 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %backend, align 4
  tail call void @kfree(ptr noundef %24) #13
  %25 = ptrtoint ptr %backend to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %backend, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_setup_asic_task(ptr noundef %hwmgr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend.i, align 4
  %2 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr, align 4
  %vcn_power_gated.i = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 59
  %4 = ptrtoint ptr %vcn_power_gated.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %vcn_power_gated.i, align 4
  %isp_tileA_power_gated.i = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 46
  %5 = ptrtoint ptr %isp_tileA_power_gated.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %isp_tileA_power_gated.i, align 4
  %isp_tileB_power_gated.i = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 47
  %6 = ptrtoint ptr %isp_tileB_power_gated.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %isp_tileB_power_gated.i, align 1
  %pg_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 100
  %7 = ptrtoint ptr %pg_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pg_flags.i, align 4
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.smu10_init_power_gate_state.exit_crit_edge, label %if.then.i

entry.smu10_init_power_gate_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu10_init_power_gate_state.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 47, i32 noundef 1, ptr noundef null) #13
  br label %smu10_init_power_gate_state.exit

smu10_init_power_gate_state.exit:                 ; preds = %if.then.i, %entry.smu10_init_power_gate_state.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ 0, %entry.smu10_init_power_gate_state.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smu10_get_power_state_size(ptr nocapture noundef readnone %hwmgr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 200
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smu10_apply_state_adjust_rules(ptr nocapture noundef readnone %hwmgr, ptr nocapture noundef readnone %prequest_ps, ptr nocapture noundef readnone %pcurrent_ps) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_dpm_force_dpm_level(ptr noundef %hwmgr, i32 noundef %level) #1 align 64 {
entry:
  %fine_grain_min_freq = alloca i32, align 4
  %fine_grain_max_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %display_config = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 45
  %2 = ptrtoint ptr %display_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %display_config, align 4
  %min_core_set_clock = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %min_core_set_clock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %min_core_set_clock, align 4
  %min_mem_set_clock = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %min_mem_set_clock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %min_mem_set_clock, align 4
  %vdd_dep_on_fclk = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 64, i32 2
  %8 = ptrtoint ptr %vdd_dep_on_fclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdd_dep_on_fclk, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %sub = add i32 %11, -1
  %vdd_dep_on_socclk = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 64, i32 1
  %12 = ptrtoint ptr %vdd_dep_on_socclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vdd_dep_on_socclk, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %sub4 = add i32 %15, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fine_grain_min_freq) #13
  %16 = ptrtoint ptr %fine_grain_min_freq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %fine_grain_min_freq, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fine_grain_max_freq) #13
  %17 = ptrtoint ptr %fine_grain_max_freq to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %fine_grain_max_freq, align 4
  %smu_version = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 3
  %18 = ptrtoint ptr %smu_version to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %smu_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1980160, i32 %19)
  %cmp = icmp ult i32 %19, 1980160
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %div = udiv i32 %7, 100
  %gfx_min_freq_limit = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 57
  %20 = ptrtoint ptr %gfx_min_freq_limit to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gfx_min_freq_limit, align 4
  %22 = tail call i32 @llvm.umax.i32(i32 %5, i32 %21)
  %div9 = udiv i32 %22, 100
  %FClocks = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 65, i32 2
  %23 = ptrtoint ptr %FClocks to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %FClocks, align 4
  %25 = tail call i32 @llvm.umax.i32(i32 %div, i32 %24)
  %26 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %level, label %if.end.cleanup_crit_edge [
    i32 8, label %if.end.sw.bb_crit_edge
    i32 128, label %if.end.sw.bb_crit_edge211
    i32 32, label %sw.bb30
    i32 64, label %sw.bb38
    i32 16, label %sw.bb46
    i32 1, label %sw.bb60
    i32 4, label %sw.bb96
    i32 2, label %sw.bb110
  ]

if.end.sw.bb_crit_edge211:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge211
  %fine_grain_enabled = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 70
  %27 = ptrtoint ptr %fine_grain_enabled to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %fine_grain_enabled, align 4
  %call17 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 44, ptr noundef nonnull %fine_grain_min_freq) #13
  %call18 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 45, ptr noundef nonnull %fine_grain_max_freq) #13
  %28 = ptrtoint ptr %fine_grain_min_freq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fine_grain_min_freq, align 4
  %gfx_actual_soft_min_freq = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 55
  %30 = ptrtoint ptr %gfx_actual_soft_min_freq to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %gfx_actual_soft_min_freq, align 4
  %31 = ptrtoint ptr %fine_grain_max_freq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fine_grain_max_freq, align 4
  %gfx_actual_soft_max_freq = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 56
  %33 = ptrtoint ptr %gfx_actual_soft_max_freq to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %gfx_actual_soft_max_freq, align 4
  %gfx_max_freq_limit = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 58
  %34 = ptrtoint ptr %gfx_max_freq_limit to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %gfx_max_freq_limit, align 4
  %div19 = udiv i32 %35, 100
  %call20 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 49, i32 noundef %div19, ptr noundef null) #13
  %call21 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 18, i32 noundef 1200, ptr noundef null) #13
  %call22 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 33, i32 noundef 757, ptr noundef null) #13
  %call23 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 16, i32 noundef 62915360, ptr noundef null) #13
  %36 = ptrtoint ptr %gfx_max_freq_limit to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %gfx_max_freq_limit, align 4
  %div25 = udiv i32 %37, 100
  %call26 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 48, i32 noundef %div25, ptr noundef null) #13
  %call27 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 51, i32 noundef 1200, ptr noundef null) #13
  %call28 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 50, i32 noundef 757, ptr noundef null) #13
  %call29 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 52, i32 noundef 62915360, ptr noundef null) #13
  br label %cleanup

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %fine_grain_enabled31 = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 70
  %38 = ptrtoint ptr %fine_grain_enabled31 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %fine_grain_enabled31, align 4
  %call32 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 44, ptr noundef nonnull %fine_grain_min_freq) #13
  %call33 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 45, ptr noundef nonnull %fine_grain_max_freq) #13
  %39 = ptrtoint ptr %fine_grain_min_freq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fine_grain_min_freq, align 4
  %gfx_actual_soft_min_freq34 = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 55
  %41 = ptrtoint ptr %gfx_actual_soft_min_freq34 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %gfx_actual_soft_min_freq34, align 4
  %42 = ptrtoint ptr %fine_grain_max_freq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fine_grain_max_freq, align 4
  %gfx_actual_soft_max_freq35 = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 56
  %44 = ptrtoint ptr %gfx_actual_soft_max_freq35 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %gfx_actual_soft_max_freq35, align 4
  %call36 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 49, i32 noundef %div9, ptr noundef null) #13
  %call37 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 48, i32 noundef %div9, ptr noundef null) #13
  br label %cleanup

sw.bb38:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %fine_grain_enabled39 = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 70
  %45 = ptrtoint ptr %fine_grain_enabled39 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %fine_grain_enabled39, align 4
  %call40 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 44, ptr noundef nonnull %fine_grain_min_freq) #13
  %call41 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 45, ptr noundef nonnull %fine_grain_max_freq) #13
  %46 = ptrtoint ptr %fine_grain_min_freq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fine_grain_min_freq, align 4
  %gfx_actual_soft_min_freq42 = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 55
  %48 = ptrtoint ptr %gfx_actual_soft_min_freq42 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %gfx_actual_soft_min_freq42, align 4
  %49 = ptrtoint ptr %fine_grain_max_freq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fine_grain_max_freq, align 4
  %gfx_actual_soft_max_freq43 = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 56
  %51 = ptrtoint ptr %gfx_actual_soft_max_freq43 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %gfx_actual_soft_max_freq43, align 4
  %call44 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 18, i32 noundef %25, ptr noundef null) #13
  %call45 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 51, i32 noundef %25, ptr noundef null) #13
  br label %cleanup

sw.bb46:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %fine_grain_enabled47 = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 70
  %52 = ptrtoint ptr %fine_grain_enabled47 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %fine_grain_enabled47, align 4
  %call48 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 44, ptr noundef nonnull %fine_grain_min_freq) #13
  %call49 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 45, ptr noundef nonnull %fine_grain_max_freq) #13
  %53 = ptrtoint ptr %fine_grain_min_freq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fine_grain_min_freq, align 4
  %gfx_actual_soft_min_freq50 = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 55
  %55 = ptrtoint ptr %gfx_actual_soft_min_freq50 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %gfx_actual_soft_min_freq50, align 4
  %56 = ptrtoint ptr %fine_grain_max_freq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fine_grain_max_freq, align 4
  %gfx_actual_soft_max_freq51 = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 56
  %58 = ptrtoint ptr %gfx_actual_soft_max_freq51 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %gfx_actual_soft_max_freq51, align 4
  %call52 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 49, i32 noundef 700, ptr noundef null) #13
  %call53 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 18, i32 noundef 933, ptr noundef null) #13
  %call54 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 33, i32 noundef 626, ptr noundef null) #13
  %call55 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 16, i32 noundef 44892713, ptr noundef null) #13
  %call56 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 48, i32 noundef 700, ptr noundef null) #13
  %call57 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 51, i32 noundef 933, ptr noundef null) #13
  %call58 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 50, i32 noundef 626, ptr noundef null) #13
  %call59 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 52, i32 noundef 44892713, ptr noundef null) #13
  br label %cleanup

sw.bb60:                                          ; preds = %if.end
  %fine_grain_enabled61 = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 70
  %59 = ptrtoint ptr %fine_grain_enabled61 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %fine_grain_enabled61, align 4
  %call62 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 44, ptr noundef nonnull %fine_grain_min_freq) #13
  %call63 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 45, ptr noundef nonnull %fine_grain_max_freq) #13
  %60 = ptrtoint ptr %fine_grain_min_freq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %fine_grain_min_freq, align 4
  %gfx_actual_soft_min_freq64 = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 55
  %62 = ptrtoint ptr %gfx_actual_soft_min_freq64 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %gfx_actual_soft_min_freq64, align 4
  %63 = ptrtoint ptr %fine_grain_max_freq to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fine_grain_max_freq, align 4
  %gfx_actual_soft_max_freq65 = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 56
  %65 = ptrtoint ptr %gfx_actual_soft_max_freq65 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %gfx_actual_soft_max_freq65, align 4
  %call66 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 49, i32 noundef %div9, ptr noundef null) #13
  %66 = ptrtoint ptr %display_config to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %display_config, align 4
  %num_display = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %num_display to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_display, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %69)
  %cmp68 = icmp ugt i32 %69, 3
  br i1 %cmp68, label %cond.true, label %sw.bb60.cond.end_crit_edge

sw.bb60.cond.end_crit_edge:                       ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %vdd_dep_on_fclk to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %vdd_dep_on_fclk, align 4
  %entries = getelementptr inbounds %struct.smu10_voltage_dependency_table, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %entries, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %sw.bb60.cond.end_crit_edge
  %cond = phi i32 [ %73, %cond.true ], [ %25, %sw.bb60.cond.end_crit_edge ]
  %call72 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 18, i32 noundef %cond, ptr noundef null) #13
  %74 = ptrtoint ptr %vdd_dep_on_socclk to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vdd_dep_on_socclk, align 4
  %entries75 = getelementptr inbounds %struct.smu10_voltage_dependency_table, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %entries75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %entries75, align 4
  %call78 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 33, i32 noundef %77, ptr noundef null) #13
  %call79 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 16, i32 noundef 26214700, ptr noundef null) #13
  %gfx_max_freq_limit80 = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 58
  %78 = ptrtoint ptr %gfx_max_freq_limit80 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %gfx_max_freq_limit80, align 4
  %div81 = udiv i32 %79, 100
  %call82 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 48, i32 noundef %div81, ptr noundef null) #13
  %80 = ptrtoint ptr %vdd_dep_on_fclk to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %vdd_dep_on_fclk, align 4
  %arrayidx86 = getelementptr %struct.smu10_voltage_dependency_table, ptr %81, i32 0, i32 1, i32 %sub
  %82 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx86, align 4
  %call88 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 51, i32 noundef %83, ptr noundef null) #13
  %84 = ptrtoint ptr %vdd_dep_on_socclk to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %vdd_dep_on_socclk, align 4
  %arrayidx92 = getelementptr %struct.smu10_voltage_dependency_table, ptr %85, i32 0, i32 1, i32 %sub4
  %86 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx92, align 4
  %call94 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 50, i32 noundef %87, ptr noundef null) #13
  %call95 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 52, i32 noundef 62915360, ptr noundef null) #13
  br label %cleanup

sw.bb96:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %fine_grain_enabled97 = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 70
  %88 = ptrtoint ptr %fine_grain_enabled97 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %fine_grain_enabled97, align 4
  %call98 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 44, ptr noundef nonnull %fine_grain_min_freq) #13
  %call99 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 45, ptr noundef nonnull %fine_grain_max_freq) #13
  %89 = ptrtoint ptr %fine_grain_min_freq to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %fine_grain_min_freq, align 4
  %gfx_actual_soft_min_freq100 = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 55
  %91 = ptrtoint ptr %gfx_actual_soft_min_freq100 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %gfx_actual_soft_min_freq100, align 4
  %92 = ptrtoint ptr %fine_grain_max_freq to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %fine_grain_max_freq, align 4
  %gfx_actual_soft_max_freq101 = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 56
  %94 = ptrtoint ptr %gfx_actual_soft_max_freq101 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %gfx_actual_soft_max_freq101, align 4
  %95 = ptrtoint ptr %gfx_min_freq_limit to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %gfx_min_freq_limit, align 4
  %div103 = udiv i32 %96, 100
  %call104 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 49, i32 noundef %div103, ptr noundef null) #13
  %97 = ptrtoint ptr %gfx_min_freq_limit to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %gfx_min_freq_limit, align 4
  %div106 = udiv i32 %98, 100
  %call107 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 48, i32 noundef %div106, ptr noundef null) #13
  %call108 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 18, i32 noundef %25, ptr noundef null) #13
  %call109 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 51, i32 noundef %25, ptr noundef null) #13
  br label %cleanup

sw.bb110:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %fine_grain_enabled111 = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 70
  %99 = ptrtoint ptr %fine_grain_enabled111 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %fine_grain_enabled111, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb110, %sw.bb96, %cond.end, %sw.bb46, %sw.bb38, %sw.bb30, %sw.bb, %if.end.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fine_grain_max_freq) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fine_grain_min_freq) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_enable_dpm_tasks(ptr noundef %hwmgr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %2 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backend, align 4
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 137
  %4 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %in_suspend, align 1, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %do.end

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #17
  %gfx_actual_soft_min_freq = getelementptr inbounds %struct.smu10_hwmgr, ptr %3, i32 0, i32 55
  %6 = ptrtoint ptr %gfx_actual_soft_min_freq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gfx_actual_soft_min_freq, align 4
  %call2 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 49, i32 noundef %7, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %do.end
  %gfx_actual_soft_max_freq = getelementptr inbounds %struct.smu10_hwmgr, ptr %3, i32 0, i32 56
  %8 = ptrtoint ptr %gfx_actual_soft_max_freq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gfx_actual_soft_max_freq, align 4
  %call5 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 48, i32 noundef %9, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %entry.if.end9_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ %call2, %do.end.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smu10_disable_dpm_tasks(ptr nocapture noundef readnone %hwmgr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smu10_dpm_patch_boot_state(ptr nocapture noundef readnone %hwmgr, ptr nocapture noundef readnone %hw_ps) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_dpm_get_pp_table_entry(ptr noundef %hwmgr, i32 noundef %entry1, ptr noundef %ps) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hardware = getelementptr inbounds %struct.pp_power_state, ptr %ps, i32 0, i32 11
  %0 = ptrtoint ptr %hardware to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 538317089, ptr %hardware, align 4
  %call3 = tail call i32 @pp_tables_get_entry(ptr noundef %hwmgr, i32 noundef %entry1, ptr noundef %ps, ptr noundef nonnull @smu10_dpm_get_pp_table_entry_callback) #13
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
define internal i32 @smu10_dpm_get_num_of_pp_table_entries(ptr noundef %hwmgr) #1 align 64 {
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
define internal void @smu10_powergate_vcn(ptr noundef %hwmgr, i1 noundef zeroext %bgate) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  br i1 %bgate, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr, align 4
  %call = tail call i32 @amdgpu_device_ip_set_powergating_state(ptr noundef %3, i32 noundef 11, i32 noundef 0) #13
  %call1 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 11, i32 noundef 0, ptr noundef null) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 12, i32 noundef 0, ptr noundef null) #13
  %4 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwmgr, align 4
  %call4 = tail call i32 @amdgpu_device_ip_set_powergating_state(ptr noundef %5, i32 noundef 11, i32 noundef 1) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i8 [ 1, %if.then ], [ 0, %if.else ]
  %6 = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 59
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %.sink, ptr %6, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smu10_dpm_get_mclk(ptr noundef readonly %hwmgr, i1 noundef zeroext %low) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %vdd_dep_on_fclk = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 64, i32 2
  %2 = ptrtoint ptr %vdd_dep_on_fclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdd_dep_on_fclk, align 4
  br i1 %low, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %entries = getelementptr inbounds %struct.smu10_voltage_dependency_table, ptr %3, i32 0, i32 1
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %sub = add i32 %5, -1
  %arrayidx7 = getelementptr %struct.smu10_voltage_dependency_table, ptr %3, i32 0, i32 1, i32 %sub
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then1
  %arrayidx7.sink = phi ptr [ %arrayidx7, %if.else ], [ %entries, %if.then1 ]
  %6 = ptrtoint ptr %arrayidx7.sink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %7, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smu10_dpm_get_sclk(ptr noundef readonly %hwmgr, i1 noundef zeroext %low) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %gfx_max_freq_limit = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 58
  %gfx_min_freq_limit = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 57
  %gfx_max_freq_limit.sink = select i1 %low, ptr %gfx_min_freq_limit, ptr %gfx_max_freq_limit
  %2 = ptrtoint ptr %gfx_max_freq_limit.sink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gfx_max_freq_limit.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_set_power_state_tasks(ptr noundef %hwmgr, ptr nocapture noundef readnone %input) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %display_config.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 45
  %0 = ptrtoint ptr %display_config.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %display_config.i, align 4
  %min_dcef_set_clk.i = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %min_dcef_set_clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min_dcef_set_clk.i, align 4
  %mul.i = mul i32 %3, 10
  %backend.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %4 = ptrtoint ptr %backend.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %backend.i.i, align 4
  %div.i.i = udiv i32 %mul.i, 1000
  %dcf_actual_hard_min_freq.i.i = getelementptr inbounds %struct.smu10_hwmgr, ptr %5, i32 0, i32 50
  %6 = ptrtoint ptr %dcf_actual_hard_min_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dcf_actual_hard_min_freq.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %7)
  %cmp.i.i = icmp eq i32 %div.i.i, %7
  br i1 %cmp.i.i, label %entry.smu10_set_clock_limit.exit_crit_edge, label %sw.epilog.i.i

entry.smu10_set_clock_limit.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu10_set_clock_limit.exit

sw.epilog.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %dcf_actual_hard_min_freq.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div.i.i, ptr %dcf_actual_hard_min_freq.i.i, align 4
  %call8.i.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 32, i32 noundef %div.i.i, ptr noundef null) #13
  br label %smu10_set_clock_limit.exit

smu10_set_clock_limit.exit:                       ; preds = %sw.epilog.i.i, %entry.smu10_set_clock_limit.exit_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smu10_set_cpu_power_state(ptr nocapture noundef readnone %hwmgr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smu10_store_cc6_data(ptr nocapture noundef readonly %hwmgr, i32 noundef %separation_time, i1 noundef zeroext %cc6_disable, i1 noundef zeroext %pstate_disable, i1 noundef zeroext %pstate_switch_disable) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %cc6_disable to i8
  %frombool1 = zext i1 %pstate_disable to i8
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %separation_time3 = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %separation_time3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %separation_time3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %separation_time)
  %cmp.not = icmp eq i32 %3, %separation_time
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %cc6_disable4 = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 42
  %4 = ptrtoint ptr %cc6_disable4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cc6_disable4, align 4, !range !154
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %frombool)
  %cmp7.not = icmp eq i8 %5, %frombool
  br i1 %cmp7.not, label %lor.lhs.false9, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %pstate_disable12 = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 43
  %6 = ptrtoint ptr %pstate_disable12 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pstate_disable12, align 1, !range !154
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %frombool1)
  %cmp15.not = icmp eq i8 %7, %frombool1
  br i1 %cmp15.not, label %lor.lhs.false9.if.end_crit_edge, label %lor.lhs.false9.if.then_crit_edge

lor.lhs.false9.if.then_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false9.if.end_crit_edge:                  ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false9.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %separation_time3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %separation_time, ptr %separation_time3, align 4
  %cc6_disable19 = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 42
  %9 = ptrtoint ptr %cc6_disable19 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %cc6_disable19, align 4
  %pstate_disable22 = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 43
  %10 = ptrtoint ptr %pstate_disable22 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool1, ptr %pstate_disable22, align 1
  %cc6_setting_changed = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 44
  %11 = ptrtoint ptr %cc6_setting_changed to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %cc6_setting_changed, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false9.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smu10_get_dal_power_level(ptr nocapture noundef readnone %hwmgr, ptr nocapture noundef readnone %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smu10_get_performance_level(ptr noundef readonly %hwmgr, ptr noundef readnone %state, i32 noundef %designation, i32 noundef %index, ptr noundef writeonly %level) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %level, null
  %cmp1 = icmp eq ptr %hwmgr, null
  %or.cond = or i1 %cmp1, %cmp
  %cmp3 = icmp eq ptr %state, null
  %or.cond27 = or i1 %cmp3, %or.cond
  br i1 %or.cond27, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp4 = icmp eq i32 %index, 0
  %vdd_dep_on_fclk = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 64, i32 2
  %2 = ptrtoint ptr %vdd_dep_on_fclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdd_dep_on_fclk, align 4
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %entries = getelementptr inbounds %struct.smu10_voltage_dependency_table, ptr %3, i32 0, i32 1
  %gfx_min_freq_limit = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 57
  br label %if.end15

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %sub = add i32 %5, -1
  %arrayidx11 = getelementptr %struct.smu10_voltage_dependency_table, ptr %3, i32 0, i32 1, i32 %sub
  %gfx_max_freq_limit = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 58
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then5
  %.sink.in = phi ptr [ %entries, %if.then5 ], [ %arrayidx11, %if.else ]
  %storemerge.in = phi ptr [ %gfx_min_freq_limit, %if.then5 ], [ %gfx_max_freq_limit, %if.else ]
  %6 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.sink = load i32, ptr %.sink.in, align 4
  %7 = getelementptr inbounds %struct.PHM_PerformanceLevel, ptr %level, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %7, align 4
  %9 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %storemerge = load i32, ptr %storemerge.in, align 4
  %10 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %storemerge, ptr %level, align 4
  %nonLocalMemoryFreq = getelementptr inbounds %struct.PHM_PerformanceLevel, ptr %level, i32 0, i32 4
  %11 = ptrtoint ptr %nonLocalMemoryFreq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %nonLocalMemoryFreq, align 4
  %nonLocalMemoryWidth = getelementptr inbounds %struct.PHM_PerformanceLevel, ptr %level, i32 0, i32 5
  %12 = ptrtoint ptr %nonLocalMemoryWidth to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %nonLocalMemoryWidth, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smu10_get_current_shallow_sleep_clocks(ptr nocapture noundef readnone %hwmgr, ptr nocapture noundef readonly %state, ptr nocapture noundef writeonly %clock_info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 538317089, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 538317089
  %hw_ps..i = select i1 %cmp.not.i, ptr %state, ptr null
  %levels = getelementptr inbounds %struct.smu10_power_state, ptr %hw_ps..i, i32 0, i32 15
  %2 = ptrtoint ptr %levels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %levels, align 4
  %ss_divider_index = getelementptr inbounds %struct.smu10_power_state, ptr %hw_ps..i, i32 0, i32 15, i32 0, i32 3
  %4 = ptrtoint ptr %ss_divider_index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ss_divider_index, align 2
  %conv = zext i8 %5 to i32
  %div20 = lshr i32 %3, %conv
  %min_eng_clk = getelementptr inbounds %struct.pp_clock_info, ptr %clock_info, i32 0, i32 2
  %6 = ptrtoint ptr %min_eng_clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div20, ptr %min_eng_clk, align 4
  %level = getelementptr inbounds %struct.smu10_power_state, ptr %hw_ps..i, i32 0, i32 1
  %7 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %level, align 4
  %sub = add i32 %8, -1
  %arrayidx4 = getelementptr %struct.smu10_power_state, ptr %hw_ps..i, i32 0, i32 15, i32 %sub
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4, align 4
  %ss_divider_index10 = getelementptr %struct.smu10_power_state, ptr %hw_ps..i, i32 0, i32 15, i32 %sub, i32 3
  %11 = ptrtoint ptr %ss_divider_index10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ss_divider_index10, align 2
  %conv11 = zext i8 %12 to i32
  %div1321 = lshr i32 %10, %conv11
  %max_eng_clk = getelementptr inbounds %struct.pp_clock_info, ptr %clock_info, i32 0, i32 3
  %13 = ptrtoint ptr %max_eng_clk to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div1321, ptr %max_eng_clk, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_get_clock_by_type_with_latency(ptr nocapture noundef readonly %hwmgr, i32 noundef %type, ptr nocapture noundef %clocks) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %clock_vol_info = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 64
  %cmp = icmp eq ptr %clock_vol_info, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb1
    i32 8, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb3
    i32 7, label %sw.bb4
    i32 9, label %sw.bb5
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %vdd_dep_on_mclk = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 64, i32 3
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %vdd_dep_on_fclk = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 64, i32 2
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %vdd_dep_on_dispclk = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 64, i32 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %vdd_dep_on_phyclk = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 64, i32 6
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %vdd_dep_on_dppclk = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 64, i32 5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb1, %sw.bb, %if.end.sw.epilog_crit_edge
  %pclk_vol_table.0.in = phi ptr [ %vdd_dep_on_dppclk, %sw.bb5 ], [ %vdd_dep_on_phyclk, %sw.bb4 ], [ %vdd_dep_on_dispclk, %sw.bb3 ], [ %vdd_dep_on_fclk, %sw.bb1 ], [ %vdd_dep_on_mclk, %sw.bb ], [ %clock_vol_info, %if.end.sw.epilog_crit_edge ]
  %latency_required.0.off0 = phi i1 [ false, %sw.bb5 ], [ false, %sw.bb4 ], [ false, %sw.bb3 ], [ true, %sw.bb1 ], [ true, %sw.bb ], [ false, %if.end.sw.epilog_crit_edge ]
  %3 = ptrtoint ptr %pclk_vol_table.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %pclk_vol_table.0 = load ptr, ptr %pclk_vol_table.0.in, align 4
  %cmp6 = icmp eq ptr %pclk_vol_table.0, null
  br i1 %cmp6, label %sw.epilog.cleanup_crit_edge, label %lor.lhs.false

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.epilog
  %4 = ptrtoint ptr %pclk_vol_table.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pclk_vol_table.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7 = icmp eq i32 %5, 0
  br i1 %cmp7, label %lor.lhs.false.cleanup_crit_edge, label %if.end9

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %clocks, align 4
  %7 = ptrtoint ptr %pclk_vol_table.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pclk_vol_table.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1153.not = icmp eq i32 %8, 0
  br i1 %cmp1153.not, label %if.end9.cleanup_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end9.for.body_crit_edge
  %i.054 = phi i32 [ %inc27, %for.inc.for.body_crit_edge ], [ 0, %if.end9.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.smu10_voltage_dependency_table, ptr %pclk_vol_table.0, i32 0, i32 1, i32 %i.054
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then12:                                        ; preds = %for.body
  %mul = mul i32 %10, 10
  %11 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clocks, align 4
  %arrayidx17 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %12
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul, ptr %arrayidx17, align 4
  br i1 %latency_required.0.off0, label %cond.true, label %if.then12.cond.end_crit_edge

if.then12.cond.end_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %16 = add i32 %15, -25000
  call void @__sanitizer_cov_trace_const_cmp4(i32 55000, i32 %16)
  %17 = icmp ult i32 %16, 55000
  call void @__sanitizer_cov_trace_const_cmp4(i32 79999, i32 %15)
  %cmp2.i = icmp ugt i32 %15, 79999
  %..i = select i1 %cmp2.i, i32 35, i32 65535
  %retval.0.i = select i1 %17, i32 245, i32 %..i
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then12.cond.end_crit_edge
  %cond = phi i32 [ %retval.0.i, %cond.true ], [ 0, %if.then12.cond.end_crit_edge ]
  %latency_in_us = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %12, i32 1
  %18 = ptrtoint ptr %latency_in_us to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond, ptr %latency_in_us, align 4
  %19 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clocks, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %clocks, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end, %for.body.for.inc_crit_edge
  %inc27 = add nuw i32 %i.054, 1
  %21 = ptrtoint ptr %pclk_vol_table.0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pclk_vol_table.0, align 4
  %cmp11 = icmp ult i32 %inc27, %22
  br i1 %cmp11, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_get_clock_by_type_with_voltage(ptr nocapture noundef readonly %hwmgr, i32 noundef %type, ptr nocapture noundef %clocks) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %clock_vol_info = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 64
  %cmp = icmp eq ptr %clock_vol_info, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb1
    i32 8, label %if.end.sw.epilog_crit_edge
    i32 5, label %sw.bb3
    i32 1, label %sw.bb4
    i32 7, label %sw.bb5
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %vdd_dep_on_mclk = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 64, i32 3
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %vdd_dep_on_fclk = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 64, i32 2
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %vdd_dep_on_socclk = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 64, i32 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %vdd_dep_on_dispclk = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 64, i32 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %vdd_dep_on_phyclk = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 64, i32 6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb1, %sw.bb, %if.end.sw.epilog_crit_edge
  %pclk_vol_table.0.in = phi ptr [ %vdd_dep_on_phyclk, %sw.bb5 ], [ %vdd_dep_on_dispclk, %sw.bb4 ], [ %vdd_dep_on_socclk, %sw.bb3 ], [ %vdd_dep_on_fclk, %sw.bb1 ], [ %vdd_dep_on_mclk, %sw.bb ], [ %clock_vol_info, %if.end.sw.epilog_crit_edge ]
  %3 = ptrtoint ptr %pclk_vol_table.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %pclk_vol_table.0 = load ptr, ptr %pclk_vol_table.0.in, align 4
  %cmp6 = icmp eq ptr %pclk_vol_table.0, null
  br i1 %cmp6, label %sw.epilog.cleanup_crit_edge, label %lor.lhs.false

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.epilog
  %4 = ptrtoint ptr %pclk_vol_table.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pclk_vol_table.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7 = icmp eq i32 %5, 0
  br i1 %cmp7, label %lor.lhs.false.cleanup_crit_edge, label %if.end9

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %clocks, align 4
  %7 = ptrtoint ptr %pclk_vol_table.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pclk_vol_table.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1149.not = icmp eq i32 %8, 0
  br i1 %cmp1149.not, label %if.end9.cleanup_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end9.for.body_crit_edge
  %i.050 = phi i32 [ %inc25, %for.inc.for.body_crit_edge ], [ 0, %if.end9.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.smu10_voltage_dependency_table, ptr %pclk_vol_table.0, i32 0, i32 1, i32 %i.050
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %mul = mul i32 %10, 10
  %11 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clocks, align 4
  %arrayidx17 = getelementptr %struct.pp_clock_levels_with_voltage, ptr %clocks, i32 0, i32 1, i32 %12
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul, ptr %arrayidx17, align 4
  %vol = getelementptr %struct.smu10_voltage_dependency_table, ptr %pclk_vol_table.0, i32 0, i32 1, i32 %i.050, i32 1
  %14 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vol, align 4
  %voltage_in_mv = getelementptr %struct.pp_clock_levels_with_voltage, ptr %clocks, i32 0, i32 1, i32 %12, i32 1
  %16 = ptrtoint ptr %voltage_in_mv to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %voltage_in_mv, align 4
  %17 = load i32, ptr %clocks, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %clocks, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %for.body.for.inc_crit_edge
  %inc25 = add nuw i32 %i.050, 1
  %18 = ptrtoint ptr %pclk_vol_table.0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pclk_vol_table.0, align 4
  %cmp11 = icmp ult i32 %inc25, %19
  br i1 %cmp11, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_set_watermarks_for_clocks_ranges(ptr noundef %hwmgr, ptr noundef %clock_ranges) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %water_marks_table = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 63
  %2 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr, align 4
  %call = tail call i32 @smu_set_watermarks_for_clocks_ranges(ptr noundef %water_marks_table, ptr noundef %clock_ranges) #13
  %apu_flags = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %apu_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %apu_flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.body.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %WmType = getelementptr %struct.smu10_hwmgr, ptr %1, i32 0, i32 63, i32 0, i32 1, i32 0, i32 5
  %6 = ptrtoint ptr %WmType to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %WmType, align 1
  %WmType.1 = getelementptr %struct.smu10_hwmgr, ptr %1, i32 0, i32 63, i32 0, i32 1, i32 1, i32 5
  %7 = ptrtoint ptr %WmType.1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %WmType.1, align 1
  %WmType.2 = getelementptr %struct.smu10_hwmgr, ptr %1, i32 0, i32 63, i32 0, i32 1, i32 2, i32 5
  %8 = ptrtoint ptr %WmType.2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %WmType.2, align 1
  %WmType.3 = getelementptr %struct.smu10_hwmgr, ptr %1, i32 0, i32 63, i32 0, i32 1, i32 3, i32 5
  %9 = ptrtoint ptr %WmType.3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %WmType.3, align 1
  %WmType9 = getelementptr %struct.smu10_hwmgr, ptr %1, i32 0, i32 63, i32 0, i32 0, i32 0, i32 5
  %10 = ptrtoint ptr %WmType9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %WmType9, align 1
  %WmType9.1 = getelementptr %struct.smu10_hwmgr, ptr %1, i32 0, i32 63, i32 0, i32 0, i32 1, i32 5
  %11 = ptrtoint ptr %WmType9.1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %WmType9.1, align 1
  %WmType9.2 = getelementptr %struct.smu10_hwmgr, ptr %1, i32 0, i32 63, i32 0, i32 0, i32 2, i32 5
  %12 = ptrtoint ptr %WmType9.2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %WmType9.2, align 1
  %WmType9.3 = getelementptr %struct.smu10_hwmgr, ptr %1, i32 0, i32 63, i32 0, i32 0, i32 3, i32 5
  %13 = ptrtoint ptr %WmType9.3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %WmType9.3, align 1
  br label %if.end

if.end:                                           ; preds = %for.body.preheader, %entry.if.end_crit_edge
  %call13 = tail call i32 @smum_smc_table_manager(ptr noundef %hwmgr, ptr noundef %water_marks_table, i16 noundef zeroext 0, i1 noundef zeroext false) #13
  %water_marks_exist = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 62
  %14 = ptrtoint ptr %water_marks_exist to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %water_marks_exist, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_display_clock_voltage_request(ptr noundef %hwmgr, ptr nocapture noundef readonly %clock_req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %2 = ptrtoint ptr %clock_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clock_req, align 4
  %clock_freq_in_khz = getelementptr inbounds %struct.pp_display_clock_request, ptr %clock_req, i32 0, i32 1
  %4 = ptrtoint ptr %clock_freq_in_khz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clock_freq_in_khz, align 4
  %div = udiv i32 %5, 1000
  %6 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %3, label %do.end [
    i32 8, label %sw.bb
    i32 5, label %entry.sw.epilog_crit_edge
    i32 4, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %dcf_actual_hard_min_freq = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 50
  %7 = ptrtoint ptr %dcf_actual_hard_min_freq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dcf_actual_hard_min_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %8)
  %cmp = icmp eq i32 %div, %8
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog.sink.split_crit_edge

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %f_actual_hard_min_freq = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 51
  %9 = ptrtoint ptr %f_actual_hard_min_freq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f_actual_hard_min_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %10)
  %cmp4 = icmp eq i32 %div, %10
  br i1 %cmp4, label %sw.bb3.cleanup_crit_edge, label %sw.bb3.sw.epilog.sink.split_crit_edge

sw.bb3.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #17
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %sw.bb3.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %f_actual_hard_min_freq.sink = phi ptr [ %dcf_actual_hard_min_freq, %sw.bb.sw.epilog.sink.split_crit_edge ], [ %f_actual_hard_min_freq, %sw.bb3.sw.epilog.sink.split_crit_edge ]
  %msg.0.ph = phi i16 [ 32, %sw.bb.sw.epilog.sink.split_crit_edge ], [ 18, %sw.bb3.sw.epilog.sink.split_crit_edge ]
  %11 = ptrtoint ptr %f_actual_hard_min_freq.sink to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div, ptr %f_actual_hard_min_freq.sink, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %msg.0 = phi i16 [ 33, %entry.sw.epilog_crit_edge ], [ %msg.0.ph, %sw.epilog.sink.split ]
  %call8 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext %msg.0, i32 noundef %div, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %sw.bb3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @smu10_get_max_high_clocks(ptr nocapture noundef readnone %hwmgr, ptr nocapture noundef writeonly %clocks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 80000, ptr %clocks, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smu10_power_off_asic(ptr nocapture noundef readonly %hwmgr) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend.i, align 4
  %separation_time.i = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 41
  %2 = call ptr @memset(ptr %separation_time.i, i32 0, i32 7)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_force_clock_level(ptr noundef %hwmgr, i32 noundef %type, i32 noundef %mask) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %vdd_dep_on_fclk = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 64, i32 2
  %2 = ptrtoint ptr %vdd_dep_on_fclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdd_dep_on_fclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %tobool.not = icmp eq i32 %mask, 0
  %4 = tail call i32 @llvm.cttz.i32(i32 %mask, i1 true), !range !155
  %spec.select = select i1 %tobool.not, i32 0, i32 %4
  %5 = tail call i32 @llvm.ctlz.i32(i32 %mask, i1 false) #13, !range !155
  %sub3 = sub nsw i32 31, %5
  %cond6 = select i1 %tobool.not, i32 0, i32 %sub3
  %6 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb36
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %spec.select)
  %cmp = icmp ugt i32 %spec.select, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cond6)
  %cmp7 = icmp ugt i32 %cond6, 2
  %or.cond = select i1 %cmp, i1 true, i1 %cmp7
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #17
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %7 = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %spec.select, label %cond.false14 [
    i32 2, label %cond.true10
    i32 1, label %if.end.cond.end18_crit_edge
  ]

if.end.cond.end18_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end18

cond.true10:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %gfx_max_freq_limit = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 58
  br label %cond.end18.sink.split

cond.false14:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %gfx_min_freq_limit = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 57
  br label %cond.end18.sink.split

cond.end18.sink.split:                            ; preds = %cond.false14, %cond.true10
  %gfx_min_freq_limit.sink = phi ptr [ %gfx_min_freq_limit, %cond.false14 ], [ %gfx_max_freq_limit, %cond.true10 ]
  %8 = ptrtoint ptr %gfx_min_freq_limit.sink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gfx_min_freq_limit.sink, align 4
  %div15 = udiv i32 %9, 100
  br label %cond.end18

cond.end18:                                       ; preds = %cond.end18.sink.split, %if.end.cond.end18_crit_edge
  %cond19 = phi i32 [ 700, %if.end.cond.end18_crit_edge ], [ %div15, %cond.end18.sink.split ]
  %call20 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 49, i32 noundef %cond19, ptr noundef null) #13
  %10 = zext i32 %cond6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %cond6, label %cond.false28 [
    i32 0, label %cond.true22
    i32 1, label %cond.end18.cond.end33_crit_edge
  ]

cond.end18.cond.end33_crit_edge:                  ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end33

cond.true22:                                      ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #15
  %gfx_min_freq_limit23 = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 57
  br label %cond.end33.sink.split

cond.false28:                                     ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #15
  %gfx_max_freq_limit29 = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 58
  br label %cond.end33.sink.split

cond.end33.sink.split:                            ; preds = %cond.false28, %cond.true22
  %gfx_max_freq_limit29.sink = phi ptr [ %gfx_max_freq_limit29, %cond.false28 ], [ %gfx_min_freq_limit23, %cond.true22 ]
  %11 = ptrtoint ptr %gfx_max_freq_limit29.sink to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gfx_max_freq_limit29.sink, align 4
  %div30 = udiv i32 %12, 100
  br label %cond.end33

cond.end33:                                       ; preds = %cond.end33.sink.split, %cond.end18.cond.end33_crit_edge
  %cond34 = phi i32 [ 700, %cond.end18.cond.end33_crit_edge ], [ %div30, %cond.end33.sink.split ]
  %call35 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 48, i32 noundef %cond34, ptr noundef null) #13
  br label %cleanup

sw.bb36:                                          ; preds = %entry
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 4
  %sub37 = add i32 %14, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %sub37)
  %cmp38 = icmp ugt i32 %spec.select, %sub37
  call void @__sanitizer_cov_trace_cmp4(i32 %cond6, i32 %sub37)
  %cmp42 = icmp ugt i32 %cond6, %sub37
  %or.cond78 = select i1 %cmp38, i1 true, i1 %cmp42
  br i1 %or.cond78, label %sw.bb36.cleanup_crit_edge, label %if.end44

sw.bb36.cleanup_crit_edge:                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end44:                                         ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.smu10_voltage_dependency_table, ptr %3, i32 0, i32 1, i32 %spec.select
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %div45 = udiv i32 %16, 100
  %call46 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 18, i32 noundef %div45, ptr noundef null) #13
  %arrayidx48 = getelementptr %struct.smu10_voltage_dependency_table, ptr %3, i32 0, i32 1, i32 %cond6
  %17 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx48, align 4
  %div50 = udiv i32 %18, 100
  %call51 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 51, i32 noundef %div50, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %sw.bb36.cleanup_crit_edge, %cond.end33, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %sw.bb36.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end44 ], [ 0, %cond.end33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_print_clock_levels(ptr noundef %hwmgr, i32 noundef %type, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  %now = alloca i32, align 4
  %min_freq = alloca i32, align 4
  %max_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %vdd_dep_on_fclk = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 64, i32 2
  %2 = ptrtoint ptr %vdd_dep_on_fclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdd_dep_on_fclk, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %now) #13
  %4 = ptrtoint ptr %now to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %now, align 4, !annotation !156
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_freq) #13
  %5 = ptrtoint ptr %min_freq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %min_freq, align 4, !annotation !156
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_freq) #13
  %6 = ptrtoint ptr %max_freq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %max_freq, align 4
  %7 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb24
    i32 8, label %sw.bb37
    i32 11, label %sw.bb69
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 42, ptr noundef nonnull %now) #13
  %8 = ptrtoint ptr %now to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %now, align 4
  %gfx_max_freq_limit = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 58
  %10 = ptrtoint ptr %gfx_max_freq_limit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gfx_max_freq_limit, align 4
  %div = udiv i32 %11, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %div)
  %cmp = icmp eq i32 %9, %div
  %gfx_min_freq_limit6158 = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 57
  %12 = ptrtoint ptr %gfx_min_freq_limit6158 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gfx_min_freq_limit6158, align 4
  %div7159 = udiv i32 %13, 100
  br i1 %cmp, label %if.end5.thread, label %if.end5

if.end5.thread:                                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %call9160 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %div7159, ptr noundef nonnull @.str.22)
  br label %cond.end

if.end5:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %div7159)
  %cmp2 = icmp eq i32 %9, %div7159
  %.str.21..str.22 = select i1 %cmp2, ptr @.str.21, ptr @.str.22
  %call9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %div7159, ptr noundef nonnull %.str.21..str.22)
  br i1 %cmp2, label %if.end5.cond.end_crit_edge, label %cond.true

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %now to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %now, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end5.cond.end_crit_edge, %if.end5.thread
  %cond21 = phi ptr [ @.str.21, %if.end5.thread ], [ @.str.22, %if.end5.cond.end_crit_edge ], [ @.str.22, %cond.true ]
  %call9162 = phi i32 [ %call9160, %if.end5.thread ], [ %call9, %if.end5.cond.end_crit_edge ], [ %call9, %cond.true ]
  %cond14 = phi ptr [ @.str.22, %if.end5.thread ], [ @.str.22, %if.end5.cond.end_crit_edge ], [ @.str.21, %cond.true ]
  %cond12 = phi i32 [ 700, %if.end5.thread ], [ 700, %if.end5.cond.end_crit_edge ], [ %15, %cond.true ]
  %add.ptr10163 = getelementptr i8, ptr %buf, i32 %call9162
  %call15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr10163, ptr noundef nonnull @.str.23, i32 noundef %cond12, ptr noundef nonnull %cond14)
  %add16 = add i32 %call15, %call9162
  %add.ptr17 = getelementptr i8, ptr %buf, i32 %add16
  %16 = ptrtoint ptr %gfx_max_freq_limit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gfx_max_freq_limit, align 4
  %div19 = udiv i32 %17, 100
  %call22 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr17, ptr noundef nonnull @.str.24, i32 noundef %div19, ptr noundef nonnull %cond21)
  %add23 = add i32 %call22, %add16
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  %call25 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 43, ptr noundef nonnull %now) #13
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp26164.not = icmp eq i32 %19, 0
  br i1 %cmp26164.not, label %sw.bb24.cleanup_crit_edge, label %sw.bb24.for.body_crit_edge

sw.bb24.for.body_crit_edge:                       ; preds = %sw.bb24
  br label %for.body

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.bb24.for.body_crit_edge
  %size.0166 = phi i32 [ %add36, %for.body.for.body_crit_edge ], [ 0, %sw.bb24.for.body_crit_edge ]
  %i.1165 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %sw.bb24.for.body_crit_edge ]
  %add.ptr27 = getelementptr i8, ptr %buf, i32 %size.0166
  %arrayidx = getelementptr %struct.smu10_voltage_dependency_table, ptr %3, i32 0, i32 1, i32 %i.1165
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %div28 = udiv i32 %21, 100
  %22 = ptrtoint ptr %now to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %now, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div28, i32 %23)
  %cmp33 = icmp eq i32 %div28, %23
  %cond34 = select i1 %cmp33, ptr @.str.21, ptr @.str.22
  %call35 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr27, ptr noundef nonnull @.str.25, i32 noundef %i.1165, i32 noundef %div28, ptr noundef nonnull %cond34)
  %add36 = add i32 %call35, %size.0166
  %inc = add nuw i32 %i.1165, 1
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %3, align 4
  %cmp26 = icmp ult i32 %inc, %25
  br i1 %cmp26, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

sw.bb37:                                          ; preds = %entry
  %od_enabled = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 53
  %26 = ptrtoint ptr %od_enabled to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %od_enabled, align 4, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  br i1 %tobool.not, label %sw.bb37.cleanup_crit_edge, label %if.then38

sw.bb37.cleanup_crit_edge:                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then38:                                        ; preds = %sw.bb37
  %call39 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 44, ptr noundef nonnull %min_freq) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.then38.cleanup_crit_edge

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end42:                                         ; preds = %if.then38
  %call43 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 45, ptr noundef nonnull %max_freq) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  %call48 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27)
  %add.ptr50 = getelementptr i8, ptr %buf, i32 %call48
  %gfx_actual_soft_min_freq = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 55
  %28 = ptrtoint ptr %gfx_actual_soft_min_freq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %gfx_actual_soft_min_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp51.not = icmp eq i32 %29, 0
  br i1 %cmp51.not, label %cond.false54, label %if.end46.cond.end55_crit_edge

if.end46.cond.end55_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end55

cond.false54:                                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %min_freq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %min_freq, align 4
  br label %cond.end55

cond.end55:                                       ; preds = %cond.false54, %if.end46.cond.end55_crit_edge
  %cond56 = phi i32 [ %31, %cond.false54 ], [ %29, %if.end46.cond.end55_crit_edge ]
  %call57 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr50, ptr noundef nonnull @.str.28, i32 noundef %cond56)
  %add58 = add i32 %call57, %call48
  %add.ptr59 = getelementptr i8, ptr %buf, i32 %add58
  %gfx_actual_soft_max_freq = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 56
  %32 = ptrtoint ptr %gfx_actual_soft_max_freq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %gfx_actual_soft_max_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp60.not = icmp eq i32 %33, 0
  br i1 %cmp60.not, label %cond.false63, label %cond.end55.cond.end64_crit_edge

cond.end55.cond.end64_crit_edge:                  ; preds = %cond.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end64

cond.false63:                                     ; preds = %cond.end55
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_freq, align 4
  br label %cond.end64

cond.end64:                                       ; preds = %cond.false63, %cond.end55.cond.end64_crit_edge
  %cond65 = phi i32 [ %35, %cond.false63 ], [ %33, %cond.end55.cond.end64_crit_edge ]
  %call66 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr59, ptr noundef nonnull @.str.29, i32 noundef %cond65)
  %add67 = add i32 %call66, %add58
  br label %cleanup

sw.bb69:                                          ; preds = %entry
  %od_enabled70 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 53
  %36 = ptrtoint ptr %od_enabled70 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %od_enabled70, align 4, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool71.not = icmp eq i8 %37, 0
  br i1 %tobool71.not, label %sw.bb69.cleanup_crit_edge, label %if.then72

sw.bb69.cleanup_crit_edge:                        ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then72:                                        ; preds = %sw.bb69
  %call73 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 44, ptr noundef nonnull %min_freq) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.then72.cleanup_crit_edge

if.then72.cleanup_crit_edge:                      ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end76:                                         ; preds = %if.then72
  %call77 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 45, ptr noundef nonnull %max_freq) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end76.cleanup_crit_edge

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end80:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  %call82 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.30)
  %add.ptr84 = getelementptr i8, ptr %buf, i32 %call82
  %38 = ptrtoint ptr %min_freq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %min_freq, align 4
  %40 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_freq, align 4
  %call85 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr84, ptr noundef nonnull @.str.31, i32 noundef %39, i32 noundef %41)
  %add86 = add i32 %call85, %call82
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.end76.cleanup_crit_edge, %if.then72.cleanup_crit_edge, %sw.bb69.cleanup_crit_edge, %cond.end64, %if.end42.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %sw.bb37.cleanup_crit_edge, %for.body.cleanup_crit_edge, %sw.bb24.cleanup_crit_edge, %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call39, %if.then38.cleanup_crit_edge ], [ %call43, %if.end42.cleanup_crit_edge ], [ %call73, %if.then72.cleanup_crit_edge ], [ %call77, %if.end76.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %add86, %if.end80 ], [ 0, %sw.bb69.cleanup_crit_edge ], [ %add67, %cond.end64 ], [ 0, %sw.bb37.cleanup_crit_edge ], [ %add23, %cond.end ], [ 0, %sw.bb24.cleanup_crit_edge ], [ %add36, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_freq) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_freq) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %now) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_gfx_off_control(ptr noundef %hwmgr, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %pp_feature.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 24
  %2 = ptrtoint ptr %pp_feature.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pp_feature.i, align 8
  %and.i = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i, label %if.then.return_crit_edge, label %if.then.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 7, ptr noundef null) #13
  br label %return

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i, label %if.else.return_crit_edge, label %if.then.i7

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then.i7:                                       ; preds = %if.else
  %call.i6 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 8, ptr noundef null) #13
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %if.then.i7
  %4 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwmgr, align 4
  %virt.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %5, i32 0, i32 132
  %6 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %virt.i.i, align 8
  %and.i.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %while.cond.i.cond.false.i.i_crit_edge, label %land.lhs.true.i.i

while.cond.i.cond.false.i.i_crit_edge:            ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i.i

land.lhs.true.i.i:                                ; preds = %while.cond.i
  %funcs.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %5, i32 0, i32 106, i32 2, i32 15
  %8 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.cond.false.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.cond.false.i.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %sriov_rreg.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %sriov_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sriov_rreg.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %11, null
  br i1 %tobool7.not.i.i, label %land.lhs.true3.i.i.cond.false.i.i_crit_edge, label %cond.true.i.i

land.lhs.true3.i.i.cond.false.i.i_crit_edge:      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i.i

cond.true.i.i:                                    ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i = getelementptr %struct.amdgpu_device, ptr %5, i32 0, i32 130, i32 23
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add.i.i = add i32 %15, 387
  %call.i.i = tail call i32 %11(ptr noundef %5, i32 noundef %add.i.i, i32 noundef 0, i32 noundef 23) #13
  br label %smu10_is_gfx_on.exit.i

cond.false.i.i:                                   ; preds = %land.lhs.true3.i.i.cond.false.i.i_crit_edge, %land.lhs.true.i.i.cond.false.i.i_crit_edge, %while.cond.i.cond.false.i.i_crit_edge
  %arrayidx15.i.i = getelementptr %struct.amdgpu_device, ptr %5, i32 0, i32 130, i32 23
  %16 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx15.i.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add18.i.i = add i32 %19, 387
  %call19.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %5, i32 noundef %add18.i.i, i32 noundef 0) #13
  br label %smu10_is_gfx_on.exit.i

smu10_is_gfx_on.exit.i:                           ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %call.i.i, %cond.true.i.i ], [ %call19.i.i, %cond.false.i.i ]
  %and20.i.i = and i32 %cond.i.i, 6
  %cmp.i.i = icmp eq i32 %and20.i.i, 4
  br i1 %cmp.i.i, label %smu10_is_gfx_on.exit.i.return_crit_edge, label %while.body.i

smu10_is_gfx_on.exit.i.return_crit_edge:          ; preds = %smu10_is_gfx_on.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

while.body.i:                                     ; preds = %smu10_is_gfx_on.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @msleep(i32 noundef 1) #13
  br label %while.cond.i

return:                                           ; preds = %smu10_is_gfx_on.exit.i.return_crit_edge, %if.else.return_crit_edge, %if.then.i, %if.then.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_read_sensor(ptr noundef %hwmgr, i32 noundef %idx, ptr nocapture noundef writeonly %value, ptr nocapture noundef writeonly %size) #1 align 64 {
entry:
  %sclk = alloca i32, align 4
  %mclk = alloca i32, align 4
  %activity_percent = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %2 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sclk) #13
  %4 = ptrtoint ptr %sclk to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %sclk, align 4, !annotation !156
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mclk) #13
  %5 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %mclk, align 4, !annotation !156
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %activity_percent) #13
  %6 = ptrtoint ptr %activity_percent to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %activity_percent, align 4, !annotation !156
  %apu_flags = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 10
  %7 = ptrtoint ptr %apu_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %apu_flags, align 4
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %smu_version = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 3
  %9 = ptrtoint ptr %smu_version to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %smu_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 269882, i32 %10)
  %cmp = icmp ugt i32 %10, 269882
  br i1 %cmp, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %and3 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else.if.else9_crit_edge, label %land.lhs.true5

if.else.if.else9_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else9

land.lhs.true5:                                   ; preds = %if.else
  %smu_version6 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 3
  %11 = ptrtoint ptr %smu_version6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %smu_version6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1987839, i32 %12)
  %cmp7 = icmp ugt i32 %12, 1987839
  br i1 %cmp7, label %land.lhs.true5.if.end10_crit_edge, label %land.lhs.true5.if.else9_crit_edge

land.lhs.true5.if.else9_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else9

land.lhs.true5.if.end10_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.else9:                                         ; preds = %land.lhs.true5.if.else9_crit_edge, %if.else.if.else9_crit_edge
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %land.lhs.true5.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge
  %has_gfx_busy.0.off0 = phi i1 [ false, %if.else9 ], [ true, %land.lhs.true.if.end10_crit_edge ], [ true, %land.lhs.true5.if.end10_crit_edge ]
  %13 = zext i32 %idx to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %idx, label %if.end10.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 9, label %sw.bb11
    i32 10, label %sw.bb14
    i32 23, label %sw.bb16
    i32 7, label %sw.bb18
  ]

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %call = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 42, ptr noundef nonnull %sclk) #13
  %14 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sclk, align 4
  %mul = mul i32 %15, 100
  %16 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul, ptr %value, align 4
  %17 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %size, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %call12 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 43, ptr noundef nonnull %mclk) #13
  %18 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mclk, align 4
  %mul13 = mul i32 %19, 100
  %20 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul13, ptr %value, align 4
  %21 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %size, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end10
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 132
  %22 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb14.cond.false.i_crit_edge, label %land.lhs.true.i

sw.bb14.cond.false.i_crit_edge:                   ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %sw.bb14
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 2, i32 15
  %24 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %funcs.i, align 4
  %tobool2.not.i = icmp eq ptr %25, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool7.not.i = icmp eq ptr %27, null
  br i1 %tobool7.not.i, label %land.lhs.true3.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true3.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %3, i32 0, i32 130, i32 25
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %call.i = tail call i32 %27(ptr noundef %3, i32 noundef %31, i32 noundef 0, i32 noundef 25) #13
  br label %smu10_thermal_get_temperature.exit

cond.false.i:                                     ; preds = %land.lhs.true3.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %sw.bb14.cond.false.i_crit_edge
  %arrayidx15.i = getelementptr %struct.amdgpu_device, ptr %3, i32 0, i32 130, i32 25
  %32 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx15.i, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %call19.i = tail call i32 @amdgpu_device_rreg(ptr noundef %3, i32 noundef %35, i32 noundef 0) #13
  br label %smu10_thermal_get_temperature.exit

smu10_thermal_get_temperature.exit:               ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %call19.i, %cond.false.i ]
  %div2336.i = lshr i32 %cond.i, 24
  %phi.bo.i = mul nuw nsw i32 %div2336.i, 1000
  %36 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %phi.bo.i, ptr %value, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %vcn_power_gated = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 59
  %37 = ptrtoint ptr %vcn_power_gated to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %vcn_power_gated, align 4, !range !154
  %39 = xor i8 %38, 1
  %40 = zext i8 %39 to i32
  %41 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %value, align 4
  %42 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4, ptr %size, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end10
  br i1 %has_gfx_busy.0.off0, label %if.else21, label %sw.bb18.sw.epilog_crit_edge

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.else21:                                        ; preds = %sw.bb18
  %call22 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 61, ptr noundef nonnull %activity_percent) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.else21.sw.epilog_crit_edge

if.else21.sw.epilog_crit_edge:                    ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then24:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %activity_percent to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %activity_percent, align 4
  %45 = call i32 @llvm.umin.i32(i32 %44, i32 100)
  %46 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %value, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then24, %if.else21.sw.epilog_crit_edge, %sw.bb18.sw.epilog_crit_edge, %sw.bb16, %smu10_thermal_get_temperature.exit, %sw.bb11, %sw.bb, %if.end10.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %if.then24 ], [ 0, %sw.bb16 ], [ 0, %smu10_thermal_get_temperature.exit ], [ 0, %sw.bb11 ], [ 0, %sw.bb ], [ -95, %sw.bb18.sw.epilog_crit_edge ], [ -5, %if.else21.sw.epilog_crit_edge ], [ -95, %if.end10.sw.epilog_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %activity_percent) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mclk) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclk) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_set_active_display_count(ptr noundef %hwmgr, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %num_active_display = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 69
  %2 = ptrtoint ptr %num_active_display to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_active_display, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %count)
  %cmp.not = icmp eq i32 %3, %count
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %num_active_display to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %count, ptr %num_active_display, align 4
  %call = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 24, i32 noundef %count, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_set_min_deep_sleep_dcefclk(ptr noundef %hwmgr, i32 noundef %clock) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %tobool.not = icmp eq i32 %clock, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %deep_sleep_dcefclk = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 68
  %2 = ptrtoint ptr %deep_sleep_dcefclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %deep_sleep_dcefclk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %clock)
  %cmp.not = icmp eq i32 %3, %clock
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %deep_sleep_dcefclk to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %clock, ptr %deep_sleep_dcefclk, align 4
  %call = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 36, i32 noundef %clock, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_get_power_profile_mode(ptr nocapture noundef readonly %hwmgr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %phm_get_sysfs_buf.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

phm_get_sysfs_buf.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %buf to i32
  %and.i = and i32 %0, 4095
  %idx.neg.i = sub nsw i32 0, %and.i
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %idx.neg.i
  %call = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %add.ptr.i, i32 noundef %and.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #13
  %add = add i32 %call, %and.i
  %power_profile_mode = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_pp_profile_name to i32))
  %1 = load ptr, ptr @amdgpu_pp_profile_name, align 4
  %2 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  %cond = select i1 %cmp1, ptr @.str.21, ptr @.str.40
  %call13 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %add.ptr.i, i32 noundef %add, ptr noundef nonnull @.str.39, i32 noundef 0, ptr noundef %1, ptr noundef nonnull %cond, i32 noundef 70, i32 noundef 60, i32 noundef 0, i32 noundef 0) #13
  %add14 = add i32 %call13, %add
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 1), align 4
  %5 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %power_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp1.1 = icmp eq i32 %6, 1
  %cond.1 = select i1 %cmp1.1, ptr @.str.21, ptr @.str.40
  %call13.1 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %add.ptr.i, i32 noundef %add14, ptr noundef nonnull @.str.39, i32 noundef 1, ptr noundef %4, ptr noundef nonnull %cond.1, i32 noundef 70, i32 noundef 60, i32 noundef 1, i32 noundef 3) #13
  %add14.1 = add i32 %call13.1, %add14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 2) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 2), align 4
  %8 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %power_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp1.2 = icmp eq i32 %9, 2
  %cond.2 = select i1 %cmp1.2, ptr @.str.21, ptr @.str.40
  %call13.2 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %add.ptr.i, i32 noundef %add14.1, ptr noundef nonnull @.str.39, i32 noundef 2, ptr noundef %7, ptr noundef nonnull %cond.2, i32 noundef 90, i32 noundef 60, i32 noundef 0, i32 noundef 0) #13
  %add14.2 = add i32 %call13.2, %add14.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 3) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 3), align 4
  %11 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %power_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp1.3 = icmp eq i32 %12, 3
  %cond.3 = select i1 %cmp1.3, ptr @.str.21, ptr @.str.40
  %call13.3 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %add.ptr.i, i32 noundef %add14.2, ptr noundef nonnull @.str.39, i32 noundef 3, ptr noundef %10, ptr noundef nonnull %cond.3, i32 noundef 70, i32 noundef 60, i32 noundef 0, i32 noundef 0) #13
  %add14.3 = add i32 %call13.3, %add14.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 4) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 4), align 4
  %14 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %power_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp1.4 = icmp eq i32 %15, 4
  %cond.4 = select i1 %cmp1.4, ptr @.str.21, ptr @.str.40
  %call13.4 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %add.ptr.i, i32 noundef %add14.3, ptr noundef nonnull @.str.39, i32 noundef 4, ptr noundef %13, ptr noundef nonnull %cond.4, i32 noundef 70, i32 noundef 90, i32 noundef 0, i32 noundef 0) #13
  %add14.4 = add i32 %call13.4, %add14.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 5) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 5), align 4
  %17 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %power_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %18)
  %cmp1.5 = icmp eq i32 %18, 5
  %cond.5 = select i1 %cmp1.5, ptr @.str.21, ptr @.str.40
  %call13.5 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %add.ptr.i, i32 noundef %add14.4, ptr noundef nonnull @.str.39, i32 noundef 5, ptr noundef %16, ptr noundef nonnull %cond.5, i32 noundef 30, i32 noundef 60, i32 noundef 0, i32 noundef 6) #13
  %add14.5 = add i32 %call13.5, %add14.4
  br label %cleanup

cleanup:                                          ; preds = %phm_get_sysfs_buf.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %add14.5, %phm_get_sysfs_buf.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_set_power_profile_mode(ptr noundef %hwmgr, ptr nocapture noundef readonly %input, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i32, ptr %input, i32 %size
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp sgt i32 %1, 5
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %1) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %power_profile_mode = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 49
  %2 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_profile_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp3 = icmp eq i32 %3, %1
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %switch.tableidx = add i32 %1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 3
  br i1 %4, label %switch.lookup, label %if.end5.if.end14_crit_edge

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

switch.lookup:                                    ; preds = %if.end5
  %switch.offset = add i32 %1, -1
  %5 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hwmgr, align 4
  %apu_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %apu_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %apu_flags.i, align 4
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %switch.lookup.if.end14_crit_edge, label %land.lhs.true.i

switch.lookup.if.end14_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

land.lhs.true.i:                                  ; preds = %switch.lookup
  %smu_version.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 3
  %9 = ptrtoint ptr %smu_version.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %smu_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 269866, i32 %10)
  %cmp.i = icmp ugt i32 %10, 269866
  br i1 %cmp.i, label %land.lhs.true9, label %land.lhs.true.i.if.end14_crit_edge

land.lhs.true.i.if.end14_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

land.lhs.true9:                                   ; preds = %land.lhs.true.i
  %gfxoff_state_changed_by_workload = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 59
  %11 = ptrtoint ptr %gfxoff_state_changed_by_workload to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %gfxoff_state_changed_by_workload, align 4, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not = icmp eq i8 %12, 0
  br i1 %tobool10.not, label %if.then11, label %land.lhs.true9.if.end14_crit_edge

land.lhs.true9.if.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  %call12 = tail call i32 @smu10_gfx_off_control(ptr noundef %hwmgr, i1 noundef zeroext false)
  %13 = ptrtoint ptr %gfxoff_state_changed_by_workload to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %gfxoff_state_changed_by_workload, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %land.lhs.true9.if.end14_crit_edge, %land.lhs.true.i.if.end14_crit_edge, %switch.lookup.if.end14_crit_edge, %if.end5.if.end14_crit_edge
  %pplib_workload.0.i52 = phi i32 [ %switch.offset, %if.then11 ], [ %switch.offset, %land.lhs.true9.if.end14_crit_edge ], [ 0, %if.end5.if.end14_crit_edge ], [ %switch.offset, %switch.lookup.if.end14_crit_edge ], [ %switch.offset, %land.lhs.true.i.if.end14_crit_edge ]
  %shl = shl nuw nsw i32 1, %pplib_workload.0.i52
  %call15 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 21, i32 noundef %shl, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end14.if.end20_crit_edge

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %power_profile_mode, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end14.if.end20_crit_edge
  br i1 %4, label %land.lhs.true22, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true22:                                  ; preds = %if.end20
  %gfxoff_state_changed_by_workload23 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 59
  %17 = ptrtoint ptr %gfxoff_state_changed_by_workload23 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %gfxoff_state_changed_by_workload23, align 4, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool24.not = icmp eq i8 %18, 0
  br i1 %tobool24.not, label %land.lhs.true22.cleanup_crit_edge, label %if.then25

land.lhs.true22.cleanup_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then25:                                        ; preds = %land.lhs.true22
  %19 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hwmgr, align 4
  %pp_feature.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %20, i32 0, i32 98, i32 24
  %21 = ptrtoint ptr %pp_feature.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pp_feature.i.i, align 8
  %and.i.i = and i32 %22, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then25.smu10_gfx_off_control.exit_crit_edge, label %if.then.i.i

if.then25.smu10_gfx_off_control.exit_crit_edge:   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %smu10_gfx_off_control.exit

if.then.i.i:                                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 7, ptr noundef null) #13
  br label %smu10_gfx_off_control.exit

smu10_gfx_off_control.exit:                       ; preds = %if.then.i.i, %if.then25.smu10_gfx_off_control.exit_crit_edge
  %23 = ptrtoint ptr %gfxoff_state_changed_by_workload23 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %gfxoff_state_changed_by_workload23, align 4
  br label %cleanup

cleanup:                                          ; preds = %smu10_gfx_off_control.exit, %land.lhs.true22.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %smu10_gfx_off_control.exit ], [ 0, %land.lhs.true22.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_set_fine_grain_clk_vol(ptr noundef %hwmgr, i32 noundef %type, ptr nocapture noundef readonly %input, i32 noundef %size) #1 align 64 {
entry:
  %min_freq = alloca i32, align 4
  %max_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_freq) #13
  %0 = ptrtoint ptr %min_freq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %min_freq, align 4, !annotation !156
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_freq) #13
  %1 = ptrtoint ptr %max_freq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %max_freq, align 4
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %2 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backend, align 4
  %od_enabled = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 53
  %4 = ptrtoint ptr %od_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %od_enabled, align 4, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %fine_grain_enabled = getelementptr inbounds %struct.smu10_hwmgr, ptr %3, i32 0, i32 70
  %6 = ptrtoint ptr %fine_grain_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fine_grain_enabled, align 4, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #17
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %8 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %type, label %if.end8.cleanup_crit_edge [
    i32 0, label %if.then9
    i32 4, label %if.then52
    i32 5, label %if.then67
  ]

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then9:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size)
  %cmp10.not = icmp eq i32 %size, 2
  br i1 %cmp10.not, label %if.end17, label %do.end14

do.end14:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #17
  br label %cleanup

if.end17:                                         ; preds = %if.then9
  %9 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %input, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %10, label %if.end17.cleanup_crit_edge [
    i32 0, label %if.then19
    i32 1, label %if.then34
  ]

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then19:                                        ; preds = %if.end17
  %call20 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 44, ptr noundef nonnull %min_freq) #13
  %arrayidx21 = getelementptr i32, ptr %input, i32 1
  %12 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx21, align 4
  %14 = ptrtoint ptr %min_freq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %min_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp22 = icmp ult i32 %13, %15
  br i1 %cmp22, label %do.end26, label %if.end30

do.end26:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %13, i32 noundef %15) #17
  br label %cleanup

if.end30:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  %gfx_actual_soft_min_freq = getelementptr inbounds %struct.smu10_hwmgr, ptr %3, i32 0, i32 55
  %16 = ptrtoint ptr %gfx_actual_soft_min_freq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %gfx_actual_soft_min_freq, align 4
  br label %if.end101

if.then34:                                        ; preds = %if.end17
  %call35 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 45, ptr noundef nonnull %max_freq) #13
  %arrayidx36 = getelementptr i32, ptr %input, i32 1
  %17 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx36, align 4
  %19 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp37 = icmp ugt i32 %18, %20
  br i1 %cmp37, label %do.end41, label %if.end45

do.end41:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %18, i32 noundef %20) #17
  br label %cleanup

if.end45:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  %gfx_actual_soft_max_freq = getelementptr inbounds %struct.smu10_hwmgr, ptr %3, i32 0, i32 56
  %21 = ptrtoint ptr %gfx_actual_soft_max_freq to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %gfx_actual_soft_max_freq, align 4
  br label %if.end101

if.then52:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp53.not = icmp eq i32 %size, 0
  br i1 %cmp53.not, label %if.end60, label %do.end57

do.end57:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #17
  br label %cleanup

if.end60:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  %call61 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 44, ptr noundef nonnull %min_freq) #13
  %call62 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 45, ptr noundef nonnull %max_freq) #13
  %22 = ptrtoint ptr %min_freq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %min_freq, align 4
  %gfx_actual_soft_min_freq63 = getelementptr inbounds %struct.smu10_hwmgr, ptr %3, i32 0, i32 55
  %24 = ptrtoint ptr %gfx_actual_soft_min_freq63 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %gfx_actual_soft_min_freq63, align 4
  %25 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_freq, align 4
  %gfx_actual_soft_max_freq64 = getelementptr inbounds %struct.smu10_hwmgr, ptr %3, i32 0, i32 56
  %27 = ptrtoint ptr %gfx_actual_soft_max_freq64 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %gfx_actual_soft_max_freq64, align 4
  br label %if.end101

if.then67:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp68.not = icmp eq i32 %size, 0
  br i1 %cmp68.not, label %if.end75, label %do.end72

do.end72:                                         ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #15
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #17
  br label %cleanup

if.end75:                                         ; preds = %if.then67
  %gfx_actual_soft_min_freq76 = getelementptr inbounds %struct.smu10_hwmgr, ptr %3, i32 0, i32 55
  %28 = ptrtoint ptr %gfx_actual_soft_min_freq76 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %gfx_actual_soft_min_freq76, align 4
  %gfx_actual_soft_max_freq77 = getelementptr inbounds %struct.smu10_hwmgr, ptr %3, i32 0, i32 56
  %30 = ptrtoint ptr %gfx_actual_soft_max_freq77 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %gfx_actual_soft_max_freq77, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp78 = icmp ugt i32 %29, %31
  br i1 %cmp78, label %do.end82, label %if.end87

do.end82:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %29, i32 noundef %31) #17
  br label %cleanup

if.end87:                                         ; preds = %if.end75
  %call89 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 49, i32 noundef %29, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %if.end87.cleanup_crit_edge

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end92:                                         ; preds = %if.end87
  %32 = ptrtoint ptr %gfx_actual_soft_max_freq77 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %gfx_actual_soft_max_freq77, align 4
  %call94 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 48, i32 noundef %33, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end92.if.end101_crit_edge, label %if.end92.cleanup_crit_edge

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end92.if.end101_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101

if.end101:                                        ; preds = %if.end92.if.end101_crit_edge, %if.end60, %if.end45, %if.end30
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %if.end92.cleanup_crit_edge, %if.end87.cleanup_crit_edge, %do.end82, %do.end72, %do.end57, %do.end41, %do.end26, %if.end17.cleanup_crit_edge, %do.end14, %if.end8.cleanup_crit_edge, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end14 ], [ -22, %do.end26 ], [ 0, %if.end101 ], [ -22, %do.end41 ], [ -22, %do.end57 ], [ -22, %do.end72 ], [ -22, %do.end82 ], [ -22, %do.end5 ], [ -22, %do.end ], [ -22, %if.end17.cleanup_crit_edge ], [ %call89, %if.end87.cleanup_crit_edge ], [ %call94, %if.end92.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_freq) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_freq) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_powergate_mmhub(ptr noundef %hwmgr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 53, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_smus_notify_pwe(ptr noundef %hwmgr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 54, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_powergate_sdma(ptr noundef %hwmgr, i1 noundef zeroext %gate) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %. = select i1 %gate, i16 13, i16 14
  %call1 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext %., ptr noundef null) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_set_hard_min_dcefclk_by_freq(ptr noundef %hwmgr, i32 noundef %clock) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %tobool.not = icmp eq i32 %clock, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %dcf_actual_hard_min_freq = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %dcf_actual_hard_min_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dcf_actual_hard_min_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %clock)
  %cmp.not = icmp eq i32 %3, %clock
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %dcf_actual_hard_min_freq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %clock, ptr %dcf_actual_hard_min_freq, align 4
  %call = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 32, i32 noundef %clock, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_set_hard_min_fclk_by_freq(ptr noundef %hwmgr, i32 noundef %clock) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %tobool.not = icmp eq i32 %clock, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %f_actual_hard_min_freq = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 51
  %2 = ptrtoint ptr %f_actual_hard_min_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_actual_hard_min_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %clock)
  %cmp.not = icmp eq i32 %3, %clock
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %f_actual_hard_min_freq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %clock, ptr %f_actual_hard_min_freq, align 4
  %call = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 18, i32 noundef %clock, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_set_hard_min_gfxclk_by_freq(ptr noundef %hwmgr, i32 noundef %clock) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %tobool.not = icmp eq i32 %clock, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %gfx_actual_soft_min_freq = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 55
  %2 = ptrtoint ptr %gfx_actual_soft_min_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gfx_actual_soft_min_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %clock)
  %cmp.not = icmp eq i32 %3, %clock
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %gfx_actual_soft_min_freq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %clock, ptr %gfx_actual_soft_min_freq, align 4
  %call = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 49, i32 noundef %clock, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_set_soft_max_gfxclk_by_freq(ptr noundef %hwmgr, i32 noundef %clock) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %tobool.not = icmp eq i32 %clock, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %gfx_max_freq_limit = getelementptr inbounds %struct.smu10_hwmgr, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %gfx_max_freq_limit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gfx_max_freq_limit, align 4
  %mul = mul i32 %clock, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %mul)
  %cmp.not = icmp eq i32 %3, %mul
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %gfx_max_freq_limit to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul, ptr %gfx_max_freq_limit, align 4
  %call = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 48, i32 noundef %clock, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_asic_reset(ptr noundef %hwmgr, i32 noundef %mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 30, i32 noundef %mode, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_gfx_state_change(ptr noundef %hwmgr, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 55, i32 noundef %state, ptr noundef null) #13
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_smc_table_manager(ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc_with_parameter(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pp_tables_get_entry(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smu10_dpm_get_pp_table_entry_callback(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef %hw_ps, i32 noundef %index, ptr nocapture noundef readnone %clock_info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw_ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_ps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 538317089, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 538317089
  %hw_ps..i = select i1 %cmp.not.i, ptr %hw_ps, ptr null
  %arrayidx = getelementptr %struct.smu10_power_state, ptr %hw_ps..i, i32 0, i32 15, i32 %index
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %arrayidx, align 4
  %vddc_index = getelementptr %struct.smu10_power_state, ptr %hw_ps..i, i32 0, i32 15, i32 %index, i32 1
  %3 = ptrtoint ptr %vddc_index to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %vddc_index, align 4
  %add = add i32 %index, 1
  %level = getelementptr inbounds %struct.smu10_power_state, ptr %hw_ps..i, i32 0, i32 1
  %4 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %level, align 4
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ds_divider_index = getelementptr %struct.smu10_power_state, ptr %hw_ps..i, i32 0, i32 15, i32 %index, i32 2
  %7 = ptrtoint ptr %ds_divider_index to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 5, ptr %ds_divider_index, align 1
  %ss_divider_index = getelementptr %struct.smu10_power_state, ptr %hw_ps..i, i32 0, i32 15, i32 %index, i32 3
  %8 = ptrtoint ptr %ss_divider_index to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 5, ptr %ss_divider_index, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pp_tables_get_num_of_entries(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_set_powergating_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_set_watermarks_for_clocks_ranges(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !140, !141, !143, !144}
!llvm.module.flags = !{!145, !146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !{ptr @smu10_hwmgr_funcs, !1, !"smu10_hwmgr_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1610, i32 35}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 549, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @smu10_hwmgr_backend_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @smu10_hwmgr_backend_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 557, i32 3}
!10 = !{ptr @smu10_hwmgr_backend_init._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @smu10_hwmgr_backend_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 491, i32 2}
!14 = !{ptr @smu10_populate_clock_table._rs, !13, !"_rs", i1 false, i1 false}
!15 = !{ptr @__func__.smu10_populate_clock_table, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @smu10_populate_clock_table._entry, !13, !"_entry", i1 false, i1 false}
!18 = !{ptr @smu10_populate_clock_table._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @VddDcfClk, !21, !"VddDcfClk", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 420, i32 25}
!22 = !{ptr @VddSocClk, !23, !"VddSocClk", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 426, i32 25}
!24 = !{ptr @VddFClk, !25, !"VddFClk", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 432, i32 25}
!26 = !{ptr @VddDispClk, !27, !"VddDispClk", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 438, i32 25}
!28 = !{ptr @VddDppClk, !29, !"VddDppClk", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 444, i32 25}
!30 = !{ptr @VddPhyClk, !31, !"VddPhyClk", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 450, i32 25}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 140, i32 3}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @smu10_init_dynamic_state_adjustment_rule_settings._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @smu10_init_dynamic_state_adjustment_rule_settings._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 625, i32 3}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @smu10_dpm_force_dpm_level._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @smu10_dpm_force_dpm_level._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 385, i32 3}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @smu10_enable_dpm_tasks._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @smu10_enable_dpm_tasks._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = distinct !{null, !48, !"_rs", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 198, i32 2}
!49 = !{ptr @__func__.smu10_set_clock_limit, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @smu10_set_clock_limit._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @smu10_set_clock_limit._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = distinct !{null, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 76, i32 3}
!55 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @smu10_display_clock_voltage_request._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @smu10_display_clock_voltage_request._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 976, i32 4}
!60 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @smu10_force_clock_level._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @smu10_force_clock_level._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1039, i32 31}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1041, i32 15}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1041, i32 21}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1042, i32 31}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1045, i32 31}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1053, i32 32}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1068, i32 32}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1068, i32 41}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1069, i32 32}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1071, i32 32}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1084, i32 41}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1085, i32 32}
!87 = distinct !{null, !88, !"profile_mode_setting", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1435, i32 3}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1442, i32 33}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1443, i32 4}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1444, i32 4}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1445, i32 4}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1446, i32 4}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1447, i32 4}
!101 = distinct !{null, !102, !"title", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1442, i32 21}
!103 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1454, i32 35}
!105 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1458, i32 36}
!107 = !{ptr @.str.40, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1459, i32 75}
!109 = !{ptr @.str.41, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1482, i32 3}
!111 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @smu10_set_power_profile_mode._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @smu10_set_power_profile_mode._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.43, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1527, i32 3}
!116 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @smu10_set_fine_grain_clk_vol._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @smu10_set_fine_grain_clk_vol._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1532, i32 3}
!121 = !{ptr @smu10_set_fine_grain_clk_vol._entry.45, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @smu10_set_fine_grain_clk_vol._entry_ptr.47, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.49, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1538, i32 4}
!125 = !{ptr @smu10_set_fine_grain_clk_vol._entry.48, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @smu10_set_fine_grain_clk_vol._entry_ptr.50, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1545, i32 5}
!129 = !{ptr @smu10_set_fine_grain_clk_vol._entry.51, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @smu10_set_fine_grain_clk_vol._entry_ptr.53, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1553, i32 5}
!133 = !{ptr @smu10_set_fine_grain_clk_vol._entry.54, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @smu10_set_fine_grain_clk_vol._entry_ptr.56, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @smu10_set_fine_grain_clk_vol._entry.57, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1563, i32 4}
!137 = !{ptr @smu10_set_fine_grain_clk_vol._entry_ptr.58, !136, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @smu10_set_fine_grain_clk_vol._entry.59, !139, !"_entry", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1573, i32 4}
!140 = !{ptr @smu10_set_fine_grain_clk_vol._entry_ptr.60, !139, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.62, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu10_hwmgr.c", i32 1578, i32 4}
!143 = !{ptr @smu10_set_fine_grain_clk_vol._entry.61, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @smu10_set_fine_grain_clk_vol._entry_ptr.63, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{i32 1, !"wchar_size", i32 2}
!146 = !{i32 1, !"min_enum_size", i32 4}
!147 = !{i32 8, !"branch-target-enforcement", i32 0}
!148 = !{i32 8, !"sign-return-address", i32 0}
!149 = !{i32 8, !"sign-return-address-all", i32 0}
!150 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!151 = !{i32 7, !"uwtable", i32 1}
!152 = !{i32 7, !"frame-pointer", i32 2}
!153 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!154 = !{i8 0, i8 2}
!155 = !{i32 0, i32 33}
!156 = !{!"auto-init"}
