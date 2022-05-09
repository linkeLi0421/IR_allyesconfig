; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/swsmu/smu12/renoir_ppt.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pptable_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cmn2asic_mapping = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cmn2asic_msg_mapping = type { i32, i32, i32 }
%struct.smu_context = type { ptr, %struct.amdgpu_irq_src, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, i64, %struct.smu_table_context, %struct.smu_dpm_context, %struct.smu_power_context, %struct.smu_feature, ptr, %struct.smu_baco_context, %struct.smu_temperature_range, ptr, %struct.smu_umd_pstate_table, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i8, i8, i32, i32, i8, i32, [7 x i32], [7 x i32], i32, i32, i8, i8, i32, i32, i32, i8, i8, %struct.work_struct, %struct.atomic64_t, %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, %struct.smu_user_dpm_profile, %struct.stb_context }
%struct.amdgpu_irq_src = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.atomic64_t = type { i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.smu_user_dpm_profile = type { i32, i32, i32, i32, i32, i32, [23 x i32], i32 }
%struct.stb_context = type { i32, i8, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.smu_power_state = type { i32, %struct.list_head, %struct.list_head, %struct.smu_state_classification_block, %struct.smu_state_validation_block, %struct.smu_state_pcie_block, %struct.smu_state_display_block, %struct.smu_state_memory_block, %struct.smu_state_software_algorithm_block, %struct.smu_uvd_clocks, %struct.smu_hw_power_state }
%struct.smu_state_classification_block = type { i32, i32, i32, i8, i8 }
%struct.smu_state_validation_block = type { i8, i8, i8 }
%struct.smu_state_pcie_block = type { i32 }
%struct.smu_state_display_block = type { i8, i8, i32, i32, i32, i8 }
%struct.smu_state_memory_block = type { i8, i8, [3 x i8] }
%struct.smu_state_software_algorithm_block = type { i8, i8 }
%struct.smu_uvd_clocks = type { i32, i32 }
%struct.smu_hw_power_state = type { i32 }
%struct.SmuMetrics_t = type { [18 x i16], i16, i16, i16, i16, i16, i16, [2 x i16], [2 x i16], [2 x i16], i16, i16, [8 x i16], [8 x i16], [8 x i16], [2 x i16], [2 x i16], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.DpmClocks_t = type { [8 x %struct.DpmClock_t], [8 x %struct.DpmClock_t], [4 x %struct.DpmClock_t], [4 x %struct.DpmClock_t], [8 x %struct.DpmClock_t], [8 x %struct.DpmClock_t], i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.DpmClock_t = type { i32, i32 }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.95, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.89 = type { i32, ptr }
%struct.amdgpu_acp = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_mmio_remap = type { i32, i32 }
%struct.amdgpu_doorbell = type { i32, i32, ptr, i32 }
%struct.amdgpu_clock = type { [3 x %struct.amdgpu_pll], %struct.amdgpu_pll, %struct.amdgpu_pll, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_pll = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_gmc = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, ptr, i32, %struct.amdgpu_irq_src, i32, i8, i32, i8, i32, i64, i64, i64, i64, %struct.spinlock, i8, ptr, %struct.atomic_t, [256 x %struct.amdgpu_gmc_fault], [256 x %struct.anon.94], i8, i8, ptr, %struct.amdgpu_xgmi, %struct.amdgpu_irq_src, i32, i32, i32, ptr, ptr }
%struct.amdgpu_gmc_fault = type { i56, %struct.atomic64_t }
%struct.anon.94 = type { i8, [7 x i8] }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.90] }
%struct.anon.90 = type { [12 x %struct.ttm_pool_type] }
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
%struct.anon.95 = type { %struct.spinlock, i64, i64, i64, i32 }
%struct.amdgpu_mode_info = type { ptr, ptr, i8, [6 x ptr], [6 x ptr], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i8, %struct.amdgpu_audio, i32, i32, i32, i32, ptr, ptr }
%struct.amdgpu_audio = type { i8, [9 x %struct.amdgpu_audio_pin], i32 }
%struct.amdgpu_audio_pin = type { i32, i32, i32, i8, i8, i32, i8, i32 }
%struct.amdgpu_sa_manager = type { %struct.wait_queue_head, ptr, ptr, [32 x %struct.list_head], %struct.list_head, i32, i64, ptr, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.amdgpu_sched = type { i32, [8 x ptr] }
%struct.amdgpu_irq = type { i8, i32, %struct.spinlock, [32 x %struct.amdgpu_irq_client], i8, %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.amdgpu_irq_src, ptr, [256 x i32], i32 }
%struct.amdgpu_irq_client = type { ptr }
%struct.amdgpu_ih_ring = type { i32, i32, i32, i8, i8, ptr, ptr, i64, i64, ptr, i64, ptr, i8, i32, %struct.amdgpu_ih_regs, %struct.wait_queue_head, i64 }
%struct.amdgpu_ih_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amd_powerplay = type { ptr, ptr }
%struct.amdgpu_pm = type { %struct.mutex, i32, i32, i32, i32, ptr, i8, i32, ptr, i8, i8, i8, i8, i8, i8, %struct.amdgpu_dpm, ptr, i32, i32, i32, %struct.amd_pp_display_configuration, i32, ptr, i8, i32, %struct.i2c_adapter, %struct.mutex, %struct.list_head, [14 x %struct.atomic_t], i32 }
%struct.amdgpu_dpm = type { ptr, i32, ptr, ptr, ptr, ptr, i32, [6 x %struct.amd_vce_state], i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.amdgpu_dpm_dynamic_state, %struct.amdgpu_dpm_fan, i32, i32, i32, i32, i32, i16, i32, i16, i8, i8, i8, i8, %struct.amdgpu_dpm_thermal, i32 }
%struct.amd_vce_state = type { i32, i32, i32, i32, i8, i8 }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.amdgpu_virt = type { i32, ptr, ptr, i8, i32, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.work_struct, %struct.amdgpu_mm_table, ptr, %struct.amdgpu_vf_error_buffer, %struct.amdgpu_virt_fw_reserve, i32, i32, i32, i8, ptr, i8, i32, %struct.delayed_work, i32, i8, i32, i32, i32, i32 }
%struct.amdgpu_mm_table = type { ptr, ptr, i64 }
%struct.amdgpu_vf_error_buffer = type { %struct.mutex, i32, i32, [16 x i16], [16 x i16], [16 x i64] }
%struct.amdgpu_virt_fw_reserve = type { ptr, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.106, i32, i32, i32, i32 }
%union.anon.106 = type { %struct.anon.108 }
%struct.anon.108 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pp_smu_wm_range_sets = type { i32, [4 x %struct.pp_smu_wm_set_range], i32, [4 x %struct.pp_smu_wm_set_range] }
%struct.pp_smu_wm_set_range = type { i16, i16, i16, i16, i8, i8 }
%struct.WatermarkRowGeneric_t = type { i16, i16, i16, i16, i8, i8, [2 x i8] }
%struct.dpm_clock = type { i32, i32 }
%struct.dpm_clocks = type { [8 x %struct.dpm_clock], [8 x %struct.dpm_clock], [4 x %struct.dpm_clock], [4 x %struct.dpm_clock], [8 x %struct.dpm_clock], [8 x %struct.dpm_clock] }
%struct.gpu_metrics_v2_2 = type { %struct.metrics_table_header, i16, i16, [8 x i16], [2 x i16], i16, i16, i64, i16, i16, i16, i16, [8 x i16], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [8 x i16], [2 x i16], i32, i16, [3 x i16], i64 }
%struct.metrics_table_header = type { i16, i8, i8 }

@renoir_ppt_funcs = internal constant { %struct.pptable_funcs, [124 x i8] } { %struct.pptable_funcs { ptr null, ptr null, ptr @renoir_get_current_power_state, ptr @smu_v12_0_set_default_dpm_tables, ptr null, ptr null, ptr @renoir_print_clk_levels, ptr @renoir_force_clk_levels, ptr @renoir_od_edit_dpm_table, ptr null, ptr null, ptr null, ptr @renoir_get_power_profile_mode, ptr @renoir_set_power_profile_mode, ptr @renoir_dpm_set_vcn_enable, ptr @renoir_dpm_set_jpeg_enable, ptr @renoir_read_sensor, ptr null, ptr null, ptr null, ptr null, ptr @renoir_is_dpm_running, ptr null, ptr null, ptr @renoir_set_watermarks_table, ptr null, ptr null, ptr null, ptr @renoir_set_performance_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @renoir_get_dpm_clock_table, ptr null, ptr null, ptr null, ptr @renoir_init_smc_tables, ptr @smu_v12_0_fini_smc_tables, ptr null, ptr null, ptr @smu_v12_0_check_fw_status, ptr null, ptr null, ptr @smu_v12_0_get_vbios_bootup_values, ptr @smu_v12_0_check_fw_version, ptr @smu_v12_0_powergate_sdma, ptr @smu_v12_0_set_gfx_cgpg, ptr null, ptr @smu_v12_0_set_driver_table_location, ptr null, ptr null, ptr null, ptr @smu_cmn_send_smc_msg_with_param, ptr @smu_cmn_send_smc_msg, ptr null, ptr null, ptr @smu_cmn_get_enabled_mask, ptr @smu_cmn_feature_is_enabled, ptr @smu_cmn_disable_all_features_with_exception, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smu_v12_0_gfx_off_control, ptr @smu_v12_0_get_gfxoff_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smu_v12_0_mode2_reset, ptr @renoir_get_dpm_ultimate_freq, ptr @smu_v12_0_set_soft_freq_limited_range, ptr null, ptr null, ptr @smu_cmn_get_pp_feature_mask, ptr @smu_cmn_set_pp_feature_mask, ptr @renoir_get_gpu_metrics, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @renoir_gfx_state_change_set, ptr @renoir_set_fine_grain_gfx_freq_parameters, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@renoir_table_map = internal global { [15 x %struct.cmn2asic_mapping], [40 x i8] } { [15 x %struct.cmn2asic_mapping] [%struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 1 }, %struct.cmn2asic_mapping { i32 0, i32 2 }, %struct.cmn2asic_mapping { i32 1, i32 4 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 7 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer], [40 x i8] zeroinitializer }, align 32
@renoir_workload_map = internal global { [7 x %struct.cmn2asic_mapping], [40 x i8] } { [7 x %struct.cmn2asic_mapping] [%struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 0 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 2 }, %struct.cmn2asic_mapping { i32 1, i32 3 }, %struct.cmn2asic_mapping { i32 1, i32 4 }, %struct.cmn2asic_mapping { i32 1, i32 5 }], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"OD_RANGE\0ASCLK: %10uMhz %10uMhz\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OD_SCLK\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0:%10uMhz\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1:%10uMhz\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"0: %uMhz %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"1: %uMhz %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"2: %uMhz %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%d: %uMhz %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"   %uMhz *\0A\00", [20 x i8] zeroinitializer }, align 32
@renoir_force_clk_levels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 801, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"amdgpu: Currently sclk only support 3 levels on APU\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"renoir_force_clk_levels\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@renoir_force_clk_levels._entry_ptr = internal global ptr @renoir_force_clk_levels._entry, section ".printk_index", align 4
@renoir_od_edit_dpm_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.13, i32 383, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"amdgpu: pp_od_clk_voltage is not accessible if power_dpm_force_performance_level is not in manual mode!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"renoir_od_edit_dpm_table\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@renoir_od_edit_dpm_table._entry_ptr = internal global ptr @renoir_od_edit_dpm_table._entry, section ".printk_index", align 4
@renoir_od_edit_dpm_table._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.13, i32 390, ptr @.str.21, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"amdgpu: Input parameter number not correct\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@renoir_od_edit_dpm_table._entry_ptr.22 = internal global ptr @renoir_od_edit_dpm_table._entry.19, section ".printk_index", align 4
@renoir_od_edit_dpm_table._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.17, ptr @.str.13, i32 398, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"amdgpu: Fine grain setting minimum sclk (%ld) MHz is less than the minimum allowed (%d) MHz\0A\00", [35 x i8] zeroinitializer }, align 32
@renoir_od_edit_dpm_table._entry_ptr.25 = internal global ptr @renoir_od_edit_dpm_table._entry.23, section ".printk_index", align 4
@renoir_od_edit_dpm_table._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.17, ptr @.str.13, i32 406, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"amdgpu: Fine grain setting maximum sclk (%ld) MHz is greater than the maximum allowed (%d) MHz\0A\00", [32 x i8] zeroinitializer }, align 32
@renoir_od_edit_dpm_table._entry_ptr.28 = internal global ptr @renoir_od_edit_dpm_table._entry.26, section ".printk_index", align 4
@renoir_od_edit_dpm_table._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.13, i32 416, ptr @.str.21, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@renoir_od_edit_dpm_table._entry_ptr.30 = internal global ptr @renoir_od_edit_dpm_table._entry.29, section ".printk_index", align 4
@renoir_od_edit_dpm_table._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.13, i32 424, ptr @.str.21, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@renoir_od_edit_dpm_table._entry_ptr.32 = internal global ptr @renoir_od_edit_dpm_table._entry.31, section ".printk_index", align 4
@renoir_od_edit_dpm_table._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.17, ptr @.str.13, i32 431, ptr @.str.21, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"amdgpu: The setting minimum sclk (%d) MHz is greater than the setting maximum sclk (%d) MHz\0A\00", [35 x i8] zeroinitializer }, align 32
@renoir_od_edit_dpm_table._entry_ptr.35 = internal global ptr @renoir_od_edit_dpm_table._entry.33, section ".printk_index", align 4
@renoir_od_edit_dpm_table._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.17, ptr @.str.13, i32 440, ptr @.str.21, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: Set hard min sclk failed!\00", [62 x i8] zeroinitializer }, align 32
@renoir_od_edit_dpm_table._entry_ptr.38 = internal global ptr @renoir_od_edit_dpm_table._entry.36, section ".printk_index", align 4
@renoir_od_edit_dpm_table._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.17, ptr @.str.13, i32 449, ptr @.str.21, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: Set soft max sclk failed!\00", [62 x i8] zeroinitializer }, align 32
@renoir_od_edit_dpm_table._entry_ptr.41 = internal global ptr @renoir_od_edit_dpm_table._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%2d %14s%s\0A\00", [20 x i8] zeroinitializer }, align 32
@amdgpu_pp_profile_name = external dso_local local_unnamed_addr constant [7 x ptr], align 4
@.str.43 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@renoir_set_power_profile_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.13, i32 863, ptr @.str.21, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: Invalid power profile mode %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"renoir_set_power_profile_mode\00", [34 x i8] zeroinitializer }, align 32
@renoir_set_power_profile_mode._entry_ptr = internal global ptr @renoir_set_power_profile_mode._entry, section ".printk_index", align 4
@renoir_set_power_profile_mode.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.45, ptr @.str.13, ptr @.str.47, i8 0, i8 -36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"amdgpu: Unsupported power profile mode %d on RENOIR\0A\00", [43 x i8] zeroinitializer }, align 32
@renoir_set_power_profile_mode.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@renoir_set_power_profile_mode._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.45, ptr @.str.13, i32 888, ptr @.str.21, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: Fail to set workload type %d\0A\00", [58 x i8] zeroinitializer }, align 32
@renoir_set_power_profile_mode._entry_ptr.50 = internal global ptr @renoir_set_power_profile_mode._entry.48, section ".printk_index", align 4
@renoir_set_watermarks_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.13, i32 1086, ptr @.str.21, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: Failed to update WMTABLE!\00", [62 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"renoir_set_watermarks_table\00", [36 x i8] zeroinitializer }, align 32
@renoir_set_watermarks_table._entry_ptr = internal global ptr @renoir_set_watermarks_table._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@renoir_get_dpm_ultimate_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.13, i32 321, ptr @.str.21, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"amdgpu: Attempt to get max GX frequency from SMC Failed !\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"renoir_get_dpm_ultimate_freq\00", [35 x i8] zeroinitializer }, align 32
@renoir_get_dpm_ultimate_freq._entry_ptr = internal global ptr @renoir_get_dpm_ultimate_freq._entry, section ".printk_index", align 4
@renoir_get_dpm_ultimate_freq._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.13, i32 349, ptr @.str.21, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"amdgpu: Attempt to get min GX frequency from SMC Failed !\0A\00", [37 x i8] zeroinitializer }, align 32
@renoir_get_dpm_ultimate_freq._entry_ptr.57 = internal global ptr @renoir_get_dpm_ultimate_freq._entry.55, section ".printk_index", align 4
@renoir_throttler_map = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\04\05\06\07! %\13\11./\15\16", [19 x i8] zeroinitializer }, align 32
@renoir_message_map = internal global { <{ [144 x %struct.cmn2asic_msg_mapping], [63 x %struct.cmn2asic_msg_mapping] }>, [620 x i8] } { <{ [144 x %struct.cmn2asic_msg_mapping], [63 x %struct.cmn2asic_msg_mapping] }> <{ [144 x %struct.cmn2asic_msg_mapping] [%struct.cmn2asic_msg_mapping { i32 1, i32 1, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 2, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 3, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 26, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 27, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 28, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 29, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 46, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 30, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 23, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 24, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 7, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 8, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 12, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 11, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 60, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 59, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 6, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 9, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 10, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 13, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 14, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 15, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 16, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 19, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 20, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 21, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 22, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 25, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 31, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 32, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 33, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 34, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 35, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 36, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 37, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 38, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 39, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 40, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 41, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 42, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 43, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 44, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 45, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 47, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 48, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 49, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 50, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 51, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 52, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 53, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 54, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 55, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 56, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 57, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 58, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 61, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 62, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 63, i32 1 }], [63 x %struct.cmn2asic_msg_mapping] zeroinitializer }>, [620 x i8] zeroinitializer }, align 32
@renoir_clk_map = internal global { <{ [15 x %struct.cmn2asic_mapping], [8 x %struct.cmn2asic_mapping] }>, [40 x i8] } { <{ [15 x %struct.cmn2asic_mapping], [8 x %struct.cmn2asic_mapping] }> <{ [15 x %struct.cmn2asic_mapping] [%struct.cmn2asic_mapping { i32 1, i32 17 }, %struct.cmn2asic_mapping { i32 1, i32 5 }, %struct.cmn2asic_mapping { i32 1, i32 7 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 1 }, %struct.cmn2asic_mapping { i32 1, i32 15 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 17 }, %struct.cmn2asic_mapping { i32 1, i32 15 }], [8 x %struct.cmn2asic_mapping] zeroinitializer }>, [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.60 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 6, i64 8, i64 12, i64 13, i64 14, i64 18, i64 21]
@__sancov_gen_cov_switch_values.61 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 6, i64 7, i64 8, i64 12, i64 14]
@__sancov_gen_cov_switch_values.62 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 6, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 14]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 5]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.69 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 2, i64 3, i64 7, i64 9, i64 10, i64 11, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.70 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 64]
@__sancov_gen_cov_switch_values.72 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 6, i64 7, i64 13, i64 14]
@__sancov_gen_cov_switch_values.73 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 6, i64 7, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.74 = internal global [6 x i64] [i64 4, i64 32, i64 7, i64 8, i64 12, i64 14]
@__sancov_gen_cov_switch_values.75 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 6, i64 7, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.76 = internal global [6 x i64] [i64 4, i64 32, i64 7, i64 8, i64 12, i64 14]
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"renoir_ppt_funcs\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1377, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"renoir_table_map\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 116, i32 32 }
@___asan_gen_.83 = private unnamed_addr constant [20 x i8] c"renoir_workload_map\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 123, i32 32 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 515, i32 37 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 522, i32 37 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 523, i32 37 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 524, i32 37 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 541, i32 37 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 542, i32 15 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 542, i32 21 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 543, i32 37 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 546, i32 37 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 593, i32 37 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 600, i32 37 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 801, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 382, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 390, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 396, i32 5 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 404, i32 5 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 416, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 424, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 428, i32 5 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 440, i32 5 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 449, i32 5 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1115, i32 36 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1116, i32 73 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 863, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 880, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 888, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1086, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 321, i32 5 }
@___asan_gen_.239 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 349, i32 5 }
@___asan_gen_.245 = private unnamed_addr constant [21 x i8] c"renoir_throttler_map\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 131, i32 22 }
@___asan_gen_.248 = private unnamed_addr constant [19 x i8] c"renoir_message_map\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 44, i32 36 }
@___asan_gen_.251 = private unnamed_addr constant [15 x i8] c"renoir_clk_map\00", align 1
@___asan_gen_.252 = private constant [61 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 106, i32 32 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @renoir_force_clk_levels._entry, ptr @renoir_force_clk_levels._entry_ptr, ptr @renoir_get_dpm_ultimate_freq._entry, ptr @renoir_get_dpm_ultimate_freq._entry.55, ptr @renoir_get_dpm_ultimate_freq._entry_ptr, ptr @renoir_get_dpm_ultimate_freq._entry_ptr.57, ptr @renoir_od_edit_dpm_table._entry, ptr @renoir_od_edit_dpm_table._entry.19, ptr @renoir_od_edit_dpm_table._entry.23, ptr @renoir_od_edit_dpm_table._entry.26, ptr @renoir_od_edit_dpm_table._entry.29, ptr @renoir_od_edit_dpm_table._entry.31, ptr @renoir_od_edit_dpm_table._entry.33, ptr @renoir_od_edit_dpm_table._entry.36, ptr @renoir_od_edit_dpm_table._entry.39, ptr @renoir_od_edit_dpm_table._entry_ptr, ptr @renoir_od_edit_dpm_table._entry_ptr.22, ptr @renoir_od_edit_dpm_table._entry_ptr.25, ptr @renoir_od_edit_dpm_table._entry_ptr.28, ptr @renoir_od_edit_dpm_table._entry_ptr.30, ptr @renoir_od_edit_dpm_table._entry_ptr.32, ptr @renoir_od_edit_dpm_table._entry_ptr.35, ptr @renoir_od_edit_dpm_table._entry_ptr.38, ptr @renoir_od_edit_dpm_table._entry_ptr.41, ptr @renoir_set_power_profile_mode._entry, ptr @renoir_set_power_profile_mode._entry.48, ptr @renoir_set_power_profile_mode._entry_ptr, ptr @renoir_set_power_profile_mode._entry_ptr.50, ptr @renoir_set_watermarks_table._entry, ptr @renoir_set_watermarks_table._entry_ptr, ptr @renoir_ppt_funcs, ptr @renoir_table_map, ptr @renoir_workload_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @renoir_throttler_map, ptr @renoir_message_map, ptr @renoir_clk_map], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renoir_ppt_funcs to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renoir_table_map to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renoir_workload_map to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renoir_force_clk_levels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renoir_od_edit_dpm_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renoir_od_edit_dpm_table._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renoir_od_edit_dpm_table._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renoir_od_edit_dpm_table._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renoir_od_edit_dpm_table._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renoir_od_edit_dpm_table._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renoir_od_edit_dpm_table._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renoir_od_edit_dpm_table._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renoir_od_edit_dpm_table._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renoir_set_power_profile_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renoir_set_power_profile_mode._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renoir_set_watermarks_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renoir_get_dpm_ultimate_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renoir_get_dpm_ultimate_freq._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renoir_throttler_map to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renoir_message_map to i32), i32 2484, i32 3104, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renoir_clk_map to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @renoir_set_ppt_funcs(ptr nocapture noundef writeonly %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 2
  %0 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @renoir_ppt_funcs, ptr %ppt_funcs, align 8
  %message_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 3
  %1 = ptrtoint ptr %message_map to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @renoir_message_map, ptr %message_map, align 4
  %clock_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 4
  %2 = ptrtoint ptr %clock_map to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @renoir_clk_map, ptr %clock_map, align 8
  %table_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 6
  %3 = ptrtoint ptr %table_map to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @renoir_table_map, ptr %table_map, align 8
  %workload_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 8
  %4 = ptrtoint ptr %workload_map to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @renoir_workload_map, ptr %workload_map, align 8
  %smc_driver_if_version = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 44
  %5 = ptrtoint ptr %smc_driver_if_version to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 14, ptr %smc_driver_if_version, align 8
  %is_apu = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 43
  %6 = ptrtoint ptr %is_apu to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %is_apu, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @renoir_get_current_power_state(ptr nocapture noundef readonly %smu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dpm_context = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 1
  %0 = ptrtoint ptr %dpm_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpm_context, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dpm_current_power_state = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 8
  %2 = ptrtoint ptr %dpm_current_power_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dpm_current_power_state, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %classification = getelementptr inbounds %struct.smu_power_state, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %classification to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %classification, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %sw.default [
    i32 1, label %if.end.cleanup_crit_edge
    i32 3, label %sw.bb3
    i32 5, label %sw.bb4
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.smu_power_state, ptr %3, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %. = select i1 %tobool7.not, i32 0, i32 10
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb4, %sw.bb3, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 4, %sw.bb4 ], [ 3, %sw.bb3 ], [ 2, %if.end.cleanup_crit_edge ], [ %., %sw.default ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v12_0_set_default_dpm_tables(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renoir_print_clk_levels(ptr noundef %smu, i32 noundef %clk_type, ptr noundef %buf) #3 align 64 {
entry:
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %metrics = alloca %struct.SmuMetrics_t, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min) #10
  %0 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %min, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max) #10
  %1 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %max, align 4
  call void @llvm.lifetime.start.p0(i64 148, ptr nonnull %metrics) #10
  %2 = call ptr @memset(ptr %metrics, i32 0, i32 148)
  %call = call i32 @smu_cmn_get_metrics_table(ptr noundef %smu, ptr noundef nonnull %metrics, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %buf, null
  %3 = ptrtoint ptr %buf to i32
  %and.i = and i32 %3, 4095
  %idx.neg.i = sub nsw i32 0, %and.i
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %idx.neg.i
  %buf.addr.0 = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %size.0 = select i1 %tobool.not.i, i32 0, i32 %and.i
  %4 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %clk_type, label %if.end.cleanup_crit_edge [
    i32 21, label %sw.bb
    i32 18, label %sw.bb12
    i32 0, label %if.end.sw.bb31_crit_edge
    i32 13, label %if.end.sw.bb31_crit_edge227
    i32 6, label %if.end.sw.epilog.thread_crit_edge
    i32 14, label %sw.bb70
    i32 8, label %sw.bb74
    i32 12, label %sw.bb78
    i32 1, label %sw.bb82
    i32 2, label %sw.bb86
  ]

if.end.sw.epilog.thread_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread

if.end.sw.bb31_crit_edge227:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb31

if.end.sw.bb31_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb31

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %dpm_level = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 4
  %5 = ptrtoint ptr %dpm_level to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dpm_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp eq i32 %6, 2
  br i1 %cmp, label %if.then1, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then1:                                         ; preds = %sw.bb
  %call2 = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 127, i32 noundef 0, ptr noundef nonnull %min) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then1.cleanup_crit_edge

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.then1
  %call6 = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 128, i32 noundef 0, ptr noundef nonnull %max) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %min to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %min, align 4
  %9 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max, align 4
  %call10 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.0, ptr noundef nonnull @.str, i32 noundef %8, i32 noundef %10) #10
  %add = add i32 %call10, %size.0
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  %dpm_level13 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 4
  %11 = ptrtoint ptr %dpm_level13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dpm_level13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp14 = icmp eq i32 %12, 2
  br i1 %cmp14, label %if.then15, label %sw.bb12.cleanup_crit_edge

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15:                                        ; preds = %sw.bb12
  %gfx_actual_hard_min_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %13 = ptrtoint ptr %gfx_actual_hard_min_freq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gfx_actual_hard_min_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp16.not = icmp eq i32 %14, 0
  br i1 %cmp16.not, label %cond.false, label %if.then15.cond.end_crit_edge

if.then15.cond.end_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %gfx_default_hard_min_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 54
  %15 = ptrtoint ptr %gfx_default_hard_min_freq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gfx_default_hard_min_freq, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then15.cond.end_crit_edge
  %cond = phi i32 [ %16, %cond.false ], [ %14, %if.then15.cond.end_crit_edge ]
  %17 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond, ptr %min, align 4
  %gfx_actual_soft_max_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %18 = ptrtoint ptr %gfx_actual_soft_max_freq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gfx_actual_soft_max_freq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp18.not = icmp eq i32 %19, 0
  br i1 %cmp18.not, label %cond.false21, label %cond.end.cond.end22_crit_edge

cond.end.cond.end22_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end22

cond.false21:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %gfx_default_soft_max_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 55
  %20 = ptrtoint ptr %gfx_default_soft_max_freq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gfx_default_soft_max_freq, align 8
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false21, %cond.end.cond.end22_crit_edge
  %cond23 = phi i32 [ %21, %cond.false21 ], [ %19, %cond.end.cond.end22_crit_edge ]
  %22 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond23, ptr %max, align 4
  %call24 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.0, ptr noundef nonnull @.str.1) #10
  %add25 = add i32 %call24, %size.0
  %23 = ptrtoint ptr %min to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %min, align 4
  %call26 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add25, ptr noundef nonnull @.str.2, i32 noundef %24) #10
  %add27 = add i32 %call26, %add25
  %call28 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add27, ptr noundef nonnull @.str.3, i32 noundef %cond23) #10
  %add29 = add i32 %call28, %add27
  br label %cleanup

sw.bb31:                                          ; preds = %if.end.sw.bb31_crit_edge, %if.end.sw.bb31_crit_edge227
  %arrayidx = getelementptr inbounds [18 x i16], ptr %metrics, i32 0, i32 17
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %26 to i32
  %call32 = call i32 @renoir_get_dpm_ultimate_freq(ptr noundef %smu, i32 noundef 0, ptr noundef nonnull %min, ptr noundef nonnull %max)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %sw.bb31.cleanup_crit_edge

sw.bb31.cleanup_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then34:                                        ; preds = %sw.bb31
  %27 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %conv)
  %cmp35 = icmp eq i32 %28, %conv
  %29 = ptrtoint ptr %min to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %min, align 4
  br i1 %cmp35, label %if.end43.thread, label %if.end43

if.end43.thread:                                  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  %call47196 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.0, ptr noundef nonnull @.str.4, i32 noundef %30, ptr noundef nonnull @.str.6) #10
  %add48197 = add i32 %call47196, %size.0
  br label %.thread

if.end43:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %conv)
  %cmp38 = icmp eq i32 %30, %conv
  %.str.5..str.6 = select i1 %cmp38, ptr @.str.5, ptr @.str.6
  %call47 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.0, ptr noundef nonnull @.str.4, i32 noundef %30, ptr noundef nonnull %.str.5..str.6) #10
  %add48 = add i32 %call47, %size.0
  br i1 %cmp38, label %if.end43..thread_crit_edge, label %if.end43._crit_edge

if.end43._crit_edge:                              ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %31

if.end43..thread_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %.thread

.thread:                                          ; preds = %if.end43..thread_crit_edge, %if.end43.thread
  %add48199.ph = phi i32 [ %add48197, %if.end43.thread ], [ %add48, %if.end43..thread_crit_edge ]
  br label %31

31:                                               ; preds = %.thread, %if.end43._crit_edge
  %32 = phi ptr [ @.str.6, %.thread ], [ @.str.5, %if.end43._crit_edge ]
  %add48199202 = phi i32 [ %add48199.ph, %.thread ], [ %add48, %if.end43._crit_edge ]
  %33 = phi i32 [ 700, %.thread ], [ %conv, %if.end43._crit_edge ]
  %call58 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add48199202, ptr noundef nonnull @.str.7, i32 noundef %33, ptr noundef nonnull %32) #10
  %add59 = add i32 %call58, %add48199202
  %34 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max, align 4
  %cond62 = select i1 %cmp35, ptr @.str.5, ptr @.str.6
  %call63 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add59, ptr noundef nonnull @.str.8, i32 noundef %35, ptr noundef nonnull %cond62) #10
  %add64 = add i32 %call63, %add59
  br label %cleanup

sw.bb70:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread

sw.bb74:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread

sw.bb78:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread

sw.bb82:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread

sw.bb86:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.bb86, %sw.bb82, %sw.bb78, %sw.bb74, %sw.bb70, %if.end.sw.epilog.thread_crit_edge
  %.sink = phi i32 [ 7, %sw.bb86 ], [ 5, %sw.bb82 ], [ 15, %sw.bb78 ], [ 14, %sw.bb74 ], [ 15, %sw.bb70 ], [ 1, %if.end.sw.epilog.thread_crit_edge ]
  %count.0.ph = phi i32 [ 8, %sw.bb86 ], [ 8, %sw.bb82 ], [ 4, %sw.bb78 ], [ 8, %sw.bb74 ], [ 4, %sw.bb70 ], [ 8, %if.end.sw.epilog.thread_crit_edge ]
  %arrayidx88 = getelementptr inbounds [18 x i16], ptr %metrics, i32 0, i32 %.sink
  %36 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx88, align 2
  %cur_value.0206 = zext i16 %37 to i32
  %clocks_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.epilog.thread
  %cur_value_match_level.0.off0226 = phi i1 [ false, %sw.epilog.thread ], [ %cur_value_match_level.1.off0, %for.inc.for.body_crit_edge ]
  %i.1223 = phi i32 [ 0, %sw.epilog.thread ], [ %inc, %for.inc.for.body_crit_edge ]
  %size.3222 = phi i32 [ %size.0, %sw.epilog.thread ], [ %size.4, %for.inc.for.body_crit_edge ]
  %38 = ptrtoint ptr %clocks_table.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clocks_table.i, align 4
  %tobool.not.i166 = icmp eq ptr %39, null
  br i1 %tobool.not.i166, label %for.body.cleanup_crit_edge, label %if.end.i167

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i167:                                      ; preds = %for.body
  %40 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %clk_type, label %if.end.i167.cleanup_crit_edge [
    i32 6, label %if.end3.i
    i32 7, label %if.end.i167.sw.bb4.i_crit_edge
    i32 14, label %if.end.i167.sw.bb4.i_crit_edge228
    i32 8, label %if.end13.i
    i32 12, label %sw.bb16.i
    i32 1, label %if.end26.i
    i32 2, label %if.end32.i
  ]

if.end.i167.sw.bb4.i_crit_edge228:                ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

if.end.i167.sw.bb4.i_crit_edge:                   ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

if.end.i167.cleanup_crit_edge:                    ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.DpmClocks_t, ptr %39, i32 0, i32 1, i32 %i.1223
  br label %if.end96

sw.bb4.i:                                         ; preds = %if.end.i167.sw.bb4.i_crit_edge, %if.end.i167.sw.bb4.i_crit_edge228
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.1223)
  %cmp5.i = icmp ugt i32 %i.1223, 3
  br i1 %cmp5.i, label %sw.bb4.i.cleanup_crit_edge, label %if.end7.i

sw.bb4.i.cleanup_crit_edge:                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i:                                        ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx8.i = getelementptr %struct.DpmClocks_t, ptr %39, i32 0, i32 2, i32 %i.1223
  br label %if.end96

if.end13.i:                                       ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx14.i = getelementptr [8 x %struct.DpmClock_t], ptr %39, i32 0, i32 %i.1223
  br label %if.end96

sw.bb16.i:                                        ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.1223)
  %cmp17.i = icmp ugt i32 %i.1223, 3
  br i1 %cmp17.i, label %sw.bb16.i.cleanup_crit_edge, label %if.end19.i

sw.bb16.i.cleanup_crit_edge:                      ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19.i:                                       ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx21.i = getelementptr %struct.DpmClocks_t, ptr %39, i32 0, i32 2, i32 %i.1223
  br label %if.end96

if.end26.i:                                       ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx27.i = getelementptr %struct.DpmClocks_t, ptr %39, i32 0, i32 4, i32 %i.1223
  br label %if.end96

if.end32.i:                                       ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx33.i = getelementptr %struct.DpmClocks_t, ptr %39, i32 0, i32 5, i32 %i.1223
  br label %if.end96

if.end96:                                         ; preds = %if.end32.i, %if.end26.i, %if.end19.i, %if.end13.i, %if.end7.i, %if.end3.i
  %arrayidx.sink.i = phi ptr [ %arrayidx.i, %if.end3.i ], [ %arrayidx8.i, %if.end7.i ], [ %arrayidx14.i, %if.end13.i ], [ %arrayidx21.i, %if.end19.i ], [ %arrayidx27.i, %if.end26.i ], [ %arrayidx33.i, %if.end32.i ]
  %41 = ptrtoint ptr %arrayidx.sink.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.sink.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool97.not = icmp eq i32 %42, 0
  br i1 %tobool97.not, label %if.end96.for.inc_crit_edge, label %if.end99

if.end96.for.inc_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end99:                                         ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %cur_value.0206)
  %cmp100 = icmp eq i32 %42, %cur_value.0206
  %cond102 = select i1 %cmp100, ptr @.str.5, ptr @.str.6
  %call103 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.3222, ptr noundef nonnull @.str.9, i32 noundef %i.1223, i32 noundef %42, ptr noundef nonnull %cond102) #10
  %add104 = add i32 %call103, %size.3222
  %spec.select165 = select i1 %cmp100, i1 true, i1 %cur_value_match_level.0.off0226
  br label %for.inc

for.inc:                                          ; preds = %if.end99, %if.end96.for.inc_crit_edge
  %size.4 = phi i32 [ %size.3222, %if.end96.for.inc_crit_edge ], [ %add104, %if.end99 ]
  %cur_value_match_level.1.off0 = phi i1 [ %cur_value_match_level.0.off0226, %if.end96.for.inc_crit_edge ], [ %spec.select165, %if.end99 ]
  %inc = add nuw nsw i32 %i.1223, 1
  %exitcond.not = icmp eq i32 %inc, %count.0.ph
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %cur_value_match_level.1.off0, label %for.end.cleanup_crit_edge, label %if.then110

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then110:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call111 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.4, ptr noundef nonnull @.str.10, i32 noundef %cur_value.0206) #10
  %add112 = add i32 %call111, %size.4
  br label %cleanup

cleanup:                                          ; preds = %if.then110, %for.end.cleanup_crit_edge, %sw.bb16.i.cleanup_crit_edge, %sw.bb4.i.cleanup_crit_edge, %if.end.i167.cleanup_crit_edge, %for.body.cleanup_crit_edge, %31, %sw.bb31.cleanup_crit_edge, %cond.end22, %sw.bb12.cleanup_crit_edge, %if.end9, %if.end5.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.then1.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %add64, %31 ], [ %size.0, %sw.bb31.cleanup_crit_edge ], [ %size.4, %for.end.cleanup_crit_edge ], [ %add112, %if.then110 ], [ %size.0, %sw.bb.cleanup_crit_edge ], [ %add, %if.end9 ], [ %size.0, %sw.bb12.cleanup_crit_edge ], [ %add29, %cond.end22 ], [ %size.0, %if.end.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ -22, %sw.bb4.i.cleanup_crit_edge ], [ -22, %sw.bb16.i.cleanup_crit_edge ], [ -22, %if.end.i167.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %metrics) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renoir_force_clk_levels(ptr noundef %smu, i32 noundef %clk_type, i32 noundef %mask) #3 align 64 {
entry:
  %min_freq = alloca i32, align 4
  %max_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_freq) #10
  %0 = ptrtoint ptr %min_freq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %min_freq, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_freq) #10
  %1 = ptrtoint ptr %max_freq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %max_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %tobool.not = icmp eq i32 %mask, 0
  %2 = tail call i32 @llvm.cttz.i32(i32 %mask, i1 true), !range !120
  %spec.select = select i1 %tobool.not, i32 0, i32 %2
  %3 = tail call i32 @llvm.ctlz.i32(i32 %mask, i1 false) #10, !range !120
  %sub3 = sub nsw i32 31, %3
  %cond6 = select i1 %tobool.not, i32 0, i32 %sub3
  %4 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %clk_type, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 13, label %entry.sw.bb_crit_edge193
    i32 6, label %sw.bb40
    i32 14, label %entry.sw.bb57_crit_edge
    i32 12, label %entry.sw.bb57_crit_edge194
  ]

entry.sw.bb57_crit_edge194:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb57

entry.sw.bb57_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb57

entry.sw.bb_crit_edge193:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge193
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %spec.select)
  %cmp = icmp ugt i32 %spec.select, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cond6)
  %cmp7 = icmp ugt i32 %cond6, 2
  %or.cond = select i1 %cmp, i1 true, i1 %cmp7
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smu, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.11) #13
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %call8 = call i32 @renoir_get_dpm_ultimate_freq(ptr noundef %smu, i32 noundef 0, ptr noundef nonnull %min_freq, ptr noundef nonnull %max_freq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %9 = zext i32 %cond6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %cond6, label %cond.false17 [
    i32 0, label %cond.true13
    i32 1, label %if.end11.cond.end20_crit_edge
  ]

if.end11.cond.end20_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end20

cond.true13:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %min_freq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min_freq, align 4
  br label %cond.end20

cond.false17:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_freq, align 4
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false17, %cond.true13, %if.end11.cond.end20_crit_edge
  %cond21 = phi i32 [ %11, %cond.true13 ], [ %13, %cond.false17 ], [ 700, %if.end11.cond.end20_crit_edge ]
  %call22 = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 130, i32 noundef %cond21, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %cond.end20.cleanup_crit_edge

cond.end20.cleanup_crit_edge:                     ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %cond.end20
  %14 = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %spec.select, label %cond.false31 [
    i32 2, label %cond.true27
    i32 1, label %if.end25.cond.end34_crit_edge
  ]

if.end25.cond.end34_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end34

cond.true27:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_freq, align 4
  br label %cond.end34

cond.false31:                                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %min_freq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %min_freq, align 4
  br label %cond.end34

cond.end34:                                       ; preds = %cond.false31, %cond.true27, %if.end25.cond.end34_crit_edge
  %cond35 = phi i32 [ %16, %cond.true27 ], [ %18, %cond.false31 ], [ 700, %if.end25.cond.end34_crit_edge ]
  %call36 = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 131, i32 noundef %cond35, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %cond.end34.sw.epilog_crit_edge, label %cond.end34.cleanup_crit_edge

cond.end34.cleanup_crit_edge:                     ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.end34.sw.epilog_crit_edge:                   ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb40:                                          ; preds = %entry
  %clocks_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %19 = ptrtoint ptr %clocks_table.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clocks_table.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %spec.select)
  %cmp1.i = icmp ugt i32 %spec.select, 7
  %or.cond192 = select i1 %tobool.not.i, i1 true, i1 %cmp1.i
  br i1 %or.cond192, label %sw.bb40.cleanup_crit_edge, label %if.end.i128

sw.bb40.cleanup_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i128:                                      ; preds = %sw.bb40
  %arrayidx.i = getelementptr %struct.DpmClocks_t, ptr %20, i32 0, i32 1, i32 %spec.select
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %23 = ptrtoint ptr %min_freq to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %min_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cond6)
  %cmp1.i129 = icmp ugt i32 %cond6, 7
  br i1 %cmp1.i129, label %if.end.i128.cleanup_crit_edge, label %if.end48

if.end.i128.cleanup_crit_edge:                    ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end48:                                         ; preds = %if.end.i128
  %arrayidx.i130 = getelementptr %struct.DpmClocks_t, ptr %20, i32 0, i32 1, i32 %cond6
  %24 = ptrtoint ptr %arrayidx.i130 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i130, align 4
  %call49 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 132, i32 noundef %25, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end52:                                         ; preds = %if.end48
  %26 = ptrtoint ptr %min_freq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %min_freq, align 4
  %call53 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 116, i32 noundef %27, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end52.sw.epilog_crit_edge, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end52.sw.epilog_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb57:                                          ; preds = %entry.sw.bb57_crit_edge, %entry.sw.bb57_crit_edge194
  %clocks_table.i134 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %28 = ptrtoint ptr %clocks_table.i134 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clocks_table.i134, align 4
  %tobool.not.i135 = icmp eq ptr %29, null
  br i1 %tobool.not.i135, label %sw.bb57.cleanup_crit_edge, label %if.end.i136

sw.bb57.cleanup_crit_edge:                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i136:                                      ; preds = %sw.bb57
  %30 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %clk_type, label %if.end.i136.cleanup_crit_edge [
    i32 12, label %sw.bb16.i
    i32 14, label %sw.bb4.i
  ]

if.end.i136.cleanup_crit_edge:                    ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb4.i:                                         ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.select)
  %cmp5.i = icmp ugt i32 %spec.select, 3
  br i1 %cmp5.i, label %sw.bb4.i.cleanup_crit_edge, label %sw.bb4.i152

sw.bb4.i.cleanup_crit_edge:                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb16.i:                                        ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.select)
  %cmp17.i = icmp ugt i32 %spec.select, 3
  br i1 %cmp17.i, label %sw.bb16.i.cleanup_crit_edge, label %sw.bb16.i160

sw.bb16.i.cleanup_crit_edge:                      ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb4.i152:                                      ; preds = %sw.bb4.i
  %arrayidx8.i = getelementptr %struct.DpmClocks_t, ptr %29, i32 0, i32 2, i32 %spec.select
  %31 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx8.i, align 4
  %33 = ptrtoint ptr %min_freq to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %min_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cond6)
  %cmp5.i151 = icmp ugt i32 %cond6, 3
  br i1 %cmp5.i151, label %sw.bb4.i152.cleanup_crit_edge, label %sw.bb4.i152.if.end65_crit_edge

sw.bb4.i152.if.end65_crit_edge:                   ; preds = %sw.bb4.i152
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

sw.bb4.i152.cleanup_crit_edge:                    ; preds = %sw.bb4.i152
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb16.i160:                                     ; preds = %sw.bb16.i
  %arrayidx21.i = getelementptr %struct.DpmClocks_t, ptr %29, i32 0, i32 2, i32 %spec.select
  %34 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx21.i, align 4
  %36 = ptrtoint ptr %min_freq to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %min_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cond6)
  %cmp17.i159 = icmp ugt i32 %cond6, 3
  br i1 %cmp17.i159, label %sw.bb16.i160.cleanup_crit_edge, label %sw.bb16.i160.if.end65_crit_edge

sw.bb16.i160.if.end65_crit_edge:                  ; preds = %sw.bb16.i160
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

sw.bb16.i160.cleanup_crit_edge:                   ; preds = %sw.bb16.i160
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end65:                                         ; preds = %sw.bb16.i160.if.end65_crit_edge, %sw.bb4.i152.if.end65_crit_edge
  %arrayidx.sink.i171 = getelementptr %struct.DpmClocks_t, ptr %29, i32 0, i32 2, i32 %cond6
  %37 = ptrtoint ptr %arrayidx.sink.i171 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.sink.i171, align 4
  %39 = ptrtoint ptr %max_freq to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %max_freq, align 4
  %call66 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 133, i32 noundef %38, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end69:                                         ; preds = %if.end65
  %40 = ptrtoint ptr %min_freq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %min_freq, align 4
  %call70 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 143, i32 noundef %41, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end69.sw.epilog_crit_edge, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end69.sw.epilog_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end69.sw.epilog_crit_edge, %if.end52.sw.epilog_crit_edge, %cond.end34.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end69.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %sw.bb16.i160.cleanup_crit_edge, %sw.bb4.i152.cleanup_crit_edge, %sw.bb16.i.cleanup_crit_edge, %sw.bb4.i.cleanup_crit_edge, %if.end.i136.cleanup_crit_edge, %sw.bb57.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.end.i128.cleanup_crit_edge, %sw.bb40.cleanup_crit_edge, %cond.end34.cleanup_crit_edge, %cond.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %do.end ], [ %call8, %if.end.cleanup_crit_edge ], [ %call22, %cond.end20.cleanup_crit_edge ], [ %call36, %cond.end34.cleanup_crit_edge ], [ %call49, %if.end48.cleanup_crit_edge ], [ %call53, %if.end52.cleanup_crit_edge ], [ %call66, %if.end65.cleanup_crit_edge ], [ %call70, %if.end69.cleanup_crit_edge ], [ -22, %if.end.i128.cleanup_crit_edge ], [ -22, %sw.bb40.cleanup_crit_edge ], [ -22, %sw.bb57.cleanup_crit_edge ], [ -22, %sw.bb4.i.cleanup_crit_edge ], [ -22, %sw.bb16.i.cleanup_crit_edge ], [ -22, %if.end.i136.cleanup_crit_edge ], [ -22, %sw.bb4.i152.cleanup_crit_edge ], [ -22, %sw.bb16.i160.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_freq) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_freq) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renoir_od_edit_dpm_table(ptr noundef %smu, i32 noundef %type, ptr nocapture noundef readonly %input, i32 noundef %size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dpm_level = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 4
  %0 = ptrtoint ptr %dpm_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dpm_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.16) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 4, label %sw.bb41
    i32 5, label %sw.bb54
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size)
  %cmp1.not = icmp eq i32 %size, 2
  br i1 %cmp1.not, label %if.end8, label %do.end5

do.end5:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %smu, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.20) #13
  br label %cleanup

if.end8:                                          ; preds = %sw.bb
  %11 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %input, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %12, label %if.end8.cleanup_crit_edge [
    i32 0, label %if.then10
    i32 1, label %if.then25
  ]

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %if.end8
  %arrayidx11 = getelementptr i32, ptr %input, i32 1
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx11, align 4
  %gfx_default_hard_min_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 54
  %16 = ptrtoint ptr %gfx_default_hard_min_freq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gfx_default_hard_min_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp12 = icmp ult i32 %15, %17
  br i1 %cmp12, label %do.end16, label %if.end21

do.end16:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %smu, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.24, i32 noundef %15, i32 noundef %17) #13
  br label %cleanup

if.end21:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %gfx_actual_hard_min_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %22 = ptrtoint ptr %gfx_actual_hard_min_freq to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %15, ptr %gfx_actual_hard_min_freq, align 4
  br label %cleanup

if.then25:                                        ; preds = %if.end8
  %arrayidx26 = getelementptr i32, ptr %input, i32 1
  %23 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx26, align 4
  %gfx_default_soft_max_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 55
  %25 = ptrtoint ptr %gfx_default_soft_max_freq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %gfx_default_soft_max_freq, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp27 = icmp ugt i32 %24, %26
  br i1 %cmp27, label %do.end31, label %if.end36

do.end31:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %smu, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.27, i32 noundef %24, i32 noundef %26) #13
  br label %cleanup

if.end36:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  %gfx_actual_soft_max_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %31 = ptrtoint ptr %gfx_actual_soft_max_freq to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %24, ptr %gfx_actual_soft_max_freq, align 8
  br label %cleanup

sw.bb41:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp42.not = icmp eq i32 %size, 0
  br i1 %cmp42.not, label %if.end49, label %do.end46

do.end46:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %smu, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.20) #13
  br label %cleanup

if.end49:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #12
  %gfx_default_hard_min_freq50 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 54
  %36 = ptrtoint ptr %gfx_default_hard_min_freq50 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %gfx_default_hard_min_freq50, align 4
  %gfx_actual_hard_min_freq51 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %38 = ptrtoint ptr %gfx_actual_hard_min_freq51 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %gfx_actual_hard_min_freq51, align 4
  %gfx_default_soft_max_freq52 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 55
  %39 = ptrtoint ptr %gfx_default_soft_max_freq52 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %gfx_default_soft_max_freq52, align 8
  %gfx_actual_soft_max_freq53 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %41 = ptrtoint ptr %gfx_actual_soft_max_freq53 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %gfx_actual_soft_max_freq53, align 8
  br label %cleanup

sw.bb54:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp55.not = icmp eq i32 %size, 0
  br i1 %cmp55.not, label %if.else62, label %do.end59

do.end59:                                         ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %smu, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.20) #13
  br label %cleanup

if.else62:                                        ; preds = %sw.bb54
  %gfx_actual_hard_min_freq63 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %46 = ptrtoint ptr %gfx_actual_hard_min_freq63 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %gfx_actual_hard_min_freq63, align 4
  %gfx_actual_soft_max_freq64 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %48 = ptrtoint ptr %gfx_actual_soft_max_freq64 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %gfx_actual_soft_max_freq64, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp65 = icmp ugt i32 %47, %49
  br i1 %cmp65, label %do.end69, label %if.end74

do.end69:                                         ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %smu, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.34, i32 noundef %47, i32 noundef %49) #13
  br label %cleanup

if.end74:                                         ; preds = %if.else62
  %call = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 131, i32 noundef %47, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end82, label %do.end79

do.end79:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %smu, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.37) #13
  br label %cleanup

if.end82:                                         ; preds = %if.end74
  %58 = ptrtoint ptr %gfx_actual_soft_max_freq64 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %gfx_actual_soft_max_freq64, align 8
  %call84 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 130, i32 noundef %59, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end82.cleanup_crit_edge, label %do.end89

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end89:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %smu, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.40) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end89, %if.end82.cleanup_crit_edge, %do.end79, %do.end69, %do.end59, %if.end49, %do.end46, %if.end36, %do.end31, %if.end21, %do.end16, %if.end8.cleanup_crit_edge, %do.end5, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end59 ], [ -22, %do.end69 ], [ %call, %do.end79 ], [ %call84, %do.end89 ], [ -22, %do.end46 ], [ -22, %do.end5 ], [ -22, %do.end16 ], [ -22, %do.end31 ], [ -22, %do.end ], [ -22, %if.end8.cleanup_crit_edge ], [ -38, %if.end.cleanup_crit_edge ], [ 0, %if.end82.cleanup_crit_edge ], [ 0, %if.end21 ], [ 0, %if.end36 ], [ 0, %if.end49 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renoir_get_power_profile_mode(ptr noundef %smu, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %power_profile_mode = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 40
  %call = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 5, i32 noundef 0) #10
  %sext.mask = and i32 %call, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask)
  %cmp2.not = icmp eq i32 %sext.mask, 0
  br i1 %cmp2.not, label %if.end5, label %for.cond.preheader.for.inc_crit_edge

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end5:                                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_pp_profile_name to i32))
  %0 = load ptr, ptr @amdgpu_pp_profile_name, align 4
  %1 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %power_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp6 = icmp eq i32 %2, 0
  %cond = select i1 %cmp6, ptr @.str.5, ptr @.str.43
  %call8 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull @.str.42, i32 noundef 0, ptr noundef %0, ptr noundef nonnull %cond) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end5, %for.cond.preheader.for.inc_crit_edge
  %size.1 = phi i32 [ 0, %for.cond.preheader.for.inc_crit_edge ], [ %call8, %if.end5 ]
  %call.1 = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 5, i32 noundef 1) #10
  %sext.mask.1 = and i32 %call.1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.1)
  %cmp2.not.1 = icmp eq i32 %sext.mask.1, 0
  br i1 %cmp2.not.1, label %if.end5.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end5.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 1), align 4
  %4 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp6.1 = icmp eq i32 %5, 1
  %cond.1 = select i1 %cmp6.1, ptr @.str.5, ptr @.str.43
  %call8.1 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef nonnull %buf, i32 noundef %size.1, ptr noundef nonnull @.str.42, i32 noundef 1, ptr noundef %3, ptr noundef nonnull %cond.1) #10
  %add.1 = add i32 %call8.1, %size.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end5.1, %for.inc.for.inc.1_crit_edge
  %size.1.1 = phi i32 [ %size.1, %for.inc.for.inc.1_crit_edge ], [ %add.1, %if.end5.1 ]
  %call.2 = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 5, i32 noundef 2) #10
  %sext.mask.2 = and i32 %call.2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.2)
  %cmp2.not.2 = icmp eq i32 %sext.mask.2, 0
  br i1 %cmp2.not.2, label %if.end5.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end5.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 2) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 2), align 4
  %7 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %power_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp6.2 = icmp eq i32 %8, 2
  %cond.2 = select i1 %cmp6.2, ptr @.str.5, ptr @.str.43
  %call8.2 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef nonnull %buf, i32 noundef %size.1.1, ptr noundef nonnull @.str.42, i32 noundef 2, ptr noundef %6, ptr noundef nonnull %cond.2) #10
  %add.2 = add i32 %call8.2, %size.1.1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end5.2, %for.inc.1.for.inc.2_crit_edge
  %size.1.2 = phi i32 [ %size.1.1, %for.inc.1.for.inc.2_crit_edge ], [ %add.2, %if.end5.2 ]
  %call.3 = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 5, i32 noundef 3) #10
  %sext.mask.3 = and i32 %call.3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.3)
  %cmp2.not.3 = icmp eq i32 %sext.mask.3, 0
  br i1 %cmp2.not.3, label %if.end5.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.end5.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 3) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 3), align 4
  %10 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %power_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp6.3 = icmp eq i32 %11, 3
  %cond.3 = select i1 %cmp6.3, ptr @.str.5, ptr @.str.43
  %call8.3 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef nonnull %buf, i32 noundef %size.1.2, ptr noundef nonnull @.str.42, i32 noundef 3, ptr noundef %9, ptr noundef nonnull %cond.3) #10
  %add.3 = add i32 %call8.3, %size.1.2
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end5.3, %for.inc.2.for.inc.3_crit_edge
  %size.1.3 = phi i32 [ %size.1.2, %for.inc.2.for.inc.3_crit_edge ], [ %add.3, %if.end5.3 ]
  %call.4 = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 5, i32 noundef 4) #10
  %sext.mask.4 = and i32 %call.4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.4)
  %cmp2.not.4 = icmp eq i32 %sext.mask.4, 0
  br i1 %cmp2.not.4, label %if.end5.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.end5.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 4) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 4), align 4
  %13 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %power_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp6.4 = icmp eq i32 %14, 4
  %cond.4 = select i1 %cmp6.4, ptr @.str.5, ptr @.str.43
  %call8.4 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef nonnull %buf, i32 noundef %size.1.3, ptr noundef nonnull @.str.42, i32 noundef 4, ptr noundef %12, ptr noundef nonnull %cond.4) #10
  %add.4 = add i32 %call8.4, %size.1.3
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end5.4, %for.inc.3.for.inc.4_crit_edge
  %size.1.4 = phi i32 [ %size.1.3, %for.inc.3.for.inc.4_crit_edge ], [ %add.4, %if.end5.4 ]
  %call.5 = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 5, i32 noundef 5) #10
  %sext.mask.5 = and i32 %call.5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.5)
  %cmp2.not.5 = icmp eq i32 %sext.mask.5, 0
  br i1 %cmp2.not.5, label %if.end5.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.end5.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 5) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 5), align 4
  %16 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %power_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %17)
  %cmp6.5 = icmp eq i32 %17, 5
  %cond.5 = select i1 %cmp6.5, ptr @.str.5, ptr @.str.43
  %call8.5 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef nonnull %buf, i32 noundef %size.1.4, ptr noundef nonnull @.str.42, i32 noundef 5, ptr noundef %15, ptr noundef nonnull %cond.5) #10
  %add.5 = add i32 %call8.5, %size.1.4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end5.5, %for.inc.4.for.inc.5_crit_edge
  %size.1.5 = phi i32 [ %size.1.4, %for.inc.4.for.inc.5_crit_edge ], [ %add.5, %if.end5.5 ]
  %call.6 = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 5, i32 noundef 6) #10
  %sext.mask.6 = and i32 %call.6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.6)
  %cmp2.not.6 = icmp eq i32 %sext.mask.6, 0
  br i1 %cmp2.not.6, label %if.end5.6, label %for.inc.5.cleanup_crit_edge

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 6) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 6), align 4
  %19 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %power_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %20)
  %cmp6.6 = icmp eq i32 %20, 6
  %cond.6 = select i1 %cmp6.6, ptr @.str.5, ptr @.str.43
  %call8.6 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef nonnull %buf, i32 noundef %size.1.5, ptr noundef nonnull @.str.42, i32 noundef 6, ptr noundef %18, ptr noundef nonnull %cond.6) #10
  %add.6 = add i32 %call8.6, %size.1.5
  br label %cleanup

cleanup:                                          ; preds = %if.end5.6, %for.inc.5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %size.1.5, %for.inc.5.cleanup_crit_edge ], [ %add.6, %if.end5.6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renoir_set_power_profile_mode(ptr noundef %smu, ptr nocapture noundef readonly %input, i32 noundef %size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i32, ptr %input, i32 %size
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp ugt i32 %1, 6
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.44, i32 noundef %1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %1, label %if.end4 [
    i32 0, label %if.end.cleanup_crit_edge
    i32 2, label %if.end.cleanup_crit_edge51
  ]

if.end.cleanup_crit_edge51:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 5, i32 noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %do.body7, label %if.end17

do.body7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @renoir_set_power_profile_mode.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@renoir_set_power_profile_mode, %if.then11)) #10
          to label %cleanup [label %if.then11], !srcloc !121

if.then11:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %smu, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @renoir_set_power_profile_mode.__UNIQUE_ID_ddebug343, ptr noundef %10, ptr noundef nonnull @.str.47, i32 noundef %1) #10
  br label %cleanup

if.end17:                                         ; preds = %if.end4
  %shl = shl nuw i32 1, %call
  %call18 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 111, i32 noundef %shl, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end32, label %do.body21

do.body21:                                        ; preds = %if.end17
  %.b49 = load i1, ptr @renoir_set_power_profile_mode.__print_once, align 1
  br i1 %.b49, label %do.body21.cleanup_crit_edge, label %if.then23

do.body21.cleanup_crit_edge:                      ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then23:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @renoir_set_power_profile_mode.__print_once, align 1
  %11 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %smu, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.49, i32 noundef %call) #13
  br label %cleanup

if.end32:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %power_profile_mode = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 40
  %15 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %1, ptr %power_profile_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then23, %do.body21.cleanup_crit_edge, %if.then11, %do.body7, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge51, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end32 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge51 ], [ -22, %if.then11 ], [ %call18, %if.then23 ], [ %call18, %do.body21.cleanup_crit_edge ], [ -22, %do.body7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renoir_dpm_set_vcn_enable(ptr noundef %smu, i1 noundef zeroext %enable) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 43) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.then.if.end15_crit_edge, label %if.then2

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then2:                                         ; preds = %if.then
  %call3 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 85, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.if.end15_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.if.end15_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.else:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.else.if.end15_crit_edge, label %if.then9

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then9:                                         ; preds = %if.else
  %call10 = tail call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef 86, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.if.end15_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end15:                                         ; preds = %if.then9.if.end15_crit_edge, %if.else.if.end15_crit_edge, %if.then2.if.end15_crit_edge, %if.then.if.end15_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then9.cleanup_crit_edge, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ %call3, %if.then2.cleanup_crit_edge ], [ %call10, %if.then9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renoir_dpm_set_jpeg_enable(ptr noundef %smu, i1 noundef zeroext %enable) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 45) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.then.if.end15_crit_edge, label %if.then2

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then2:                                         ; preds = %if.then
  %call3 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 87, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.if.end15_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.if.end15_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.else:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.else.if.end15_crit_edge, label %if.then9

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then9:                                         ; preds = %if.else
  %call10 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 88, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.if.end15_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end15:                                         ; preds = %if.then9.if.end15_crit_edge, %if.else.if.end15_crit_edge, %if.then2.if.end15_crit_edge, %if.then.if.end15_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then9.cleanup_crit_edge, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ %call3, %if.then2.cleanup_crit_edge ], [ %call10, %if.then9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renoir_read_sensor(ptr noundef %smu, i32 noundef %sensor, ptr noundef %data, ptr noundef writeonly %size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  %tobool1.not = icmp eq ptr %size, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %sensor_lock = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %sensor_lock, i32 noundef 0) #10
  %0 = zext i32 %sensor to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %sensor, label %if.end.sw.epilog_crit_edge [
    i32 7, label %sw.bb
    i32 10, label %sw.bb2
    i32 11, label %sw.bb4
    i32 9, label %sw.bb6
    i32 0, label %sw.bb8
    i32 3, label %sw.bb11
    i32 2, label %sw.bb13
    i32 15, label %sw.bb15
    i32 16, label %sw.bb17
    i32 17, label %sw.bb19
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %metrics_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %1 = ptrtoint ptr %metrics_table.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %metrics_table.i, align 8
  %metrics_lock.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i, i32 noundef 0) #10
  %call.i = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.renoir_get_smu_metrics_data.exit_crit_edge

sw.bb.renoir_get_smu_metrics_data.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %renoir_get_smu_metrics_data.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %AverageGfxActivity.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %AverageGfxActivity.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %AverageGfxActivity.i, align 2
  %5 = udiv i16 %4, 100
  %div.i = zext i16 %5 to i32
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div.i, ptr %data, align 4
  br label %renoir_get_smu_metrics_data.exit

renoir_get_smu_metrics_data.exit:                 ; preds = %if.end.i, %sw.bb.renoir_get_smu_metrics_data.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i) #10
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %if.end
  %metrics_table.i55 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %7 = ptrtoint ptr %metrics_table.i55 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %metrics_table.i55, align 8
  %metrics_lock.i56 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i56, i32 noundef 0) #10
  %call.i57 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool.not.i58 = icmp eq i32 %call.i57, 0
  br i1 %tobool.not.i58, label %if.end.i59, label %sw.bb2.renoir_get_smu_metrics_data.exit60_crit_edge

sw.bb2.renoir_get_smu_metrics_data.exit60_crit_edge: ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %renoir_get_smu_metrics_data.exit60

if.end.i59:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  %GfxTemperature.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %8, i32 0, i32 17
  %9 = ptrtoint ptr %GfxTemperature.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %GfxTemperature.i, align 2
  %11 = udiv i16 %10, 100
  %div21.i = zext i16 %11 to i32
  %mul.i = mul nuw nsw i32 %div21.i, 1000
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul.i, ptr %data, align 4
  br label %renoir_get_smu_metrics_data.exit60

renoir_get_smu_metrics_data.exit60:               ; preds = %if.end.i59, %sw.bb2.renoir_get_smu_metrics_data.exit60_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i56) #10
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %if.end
  %metrics_table.i61 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %13 = ptrtoint ptr %metrics_table.i61 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %metrics_table.i61, align 8
  %metrics_lock.i62 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i62, i32 noundef 0) #10
  %call.i63 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool.not.i64 = icmp eq i32 %call.i63, 0
  br i1 %tobool.not.i64, label %if.end.i65, label %sw.bb4.renoir_get_smu_metrics_data.exit66_crit_edge

sw.bb4.renoir_get_smu_metrics_data.exit66_crit_edge: ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %renoir_get_smu_metrics_data.exit66

if.end.i65:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  %SocTemperature.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %SocTemperature.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %SocTemperature.i, align 2
  %17 = udiv i16 %16, 100
  %div24.i = zext i16 %17 to i32
  %mul25.i = mul nuw nsw i32 %div24.i, 1000
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul25.i, ptr %data, align 4
  br label %renoir_get_smu_metrics_data.exit66

renoir_get_smu_metrics_data.exit66:               ; preds = %if.end.i65, %sw.bb4.renoir_get_smu_metrics_data.exit66_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i62) #10
  br label %sw.epilog.sink.split

sw.bb6:                                           ; preds = %if.end
  %metrics_table.i67 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %19 = ptrtoint ptr %metrics_table.i67 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %metrics_table.i67, align 8
  %metrics_lock.i68 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i68, i32 noundef 0) #10
  %call.i69 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool.not.i70 = icmp eq i32 %call.i69, 0
  br i1 %tobool.not.i70, label %if.end.i71, label %sw.bb6.renoir_get_smu_metrics_data.exit72_crit_edge

sw.bb6.renoir_get_smu_metrics_data.exit72_crit_edge: ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %renoir_get_smu_metrics_data.exit72

if.end.i71:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx9.i = getelementptr [18 x i16], ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx9.i, align 2
  %conv10.i = zext i16 %22 to i32
  %23 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv10.i, ptr %data, align 4
  br label %renoir_get_smu_metrics_data.exit72

renoir_get_smu_metrics_data.exit72:               ; preds = %if.end.i71, %sw.bb6.renoir_get_smu_metrics_data.exit72_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i68) #10
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data, align 4
  %mul = mul i32 %25, 100
  store i32 %mul, ptr %data, align 4
  br label %sw.epilog.sink.split

sw.bb8:                                           ; preds = %if.end
  %metrics_table.i73 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %26 = ptrtoint ptr %metrics_table.i73 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %metrics_table.i73, align 8
  %metrics_lock.i74 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i74, i32 noundef 0) #10
  %call.i75 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool.not.i76 = icmp eq i32 %call.i75, 0
  br i1 %tobool.not.i76, label %if.end.i77, label %sw.bb8.renoir_get_smu_metrics_data.exit78_crit_edge

sw.bb8.renoir_get_smu_metrics_data.exit78_crit_edge: ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #12
  br label %renoir_get_smu_metrics_data.exit78

if.end.i77:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr [18 x i16], ptr %27, i32 0, i32 17
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %29 to i32
  %30 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv.i, ptr %data, align 4
  br label %renoir_get_smu_metrics_data.exit78

renoir_get_smu_metrics_data.exit78:               ; preds = %if.end.i77, %sw.bb8.renoir_get_smu_metrics_data.exit78_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i74) #10
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data, align 4
  %mul10 = mul i32 %32, 100
  store i32 %mul10, ptr %data, align 4
  br label %sw.epilog.sink.split

sw.bb11:                                          ; preds = %if.end
  %metrics_table.i79 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %33 = ptrtoint ptr %metrics_table.i79 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %metrics_table.i79, align 8
  %metrics_lock.i80 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i80, i32 noundef 0) #10
  %call.i81 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool.not.i82 = icmp eq i32 %call.i81, 0
  br i1 %tobool.not.i82, label %if.end.i83, label %sw.bb11.renoir_get_smu_metrics_data.exit84_crit_edge

sw.bb11.renoir_get_smu_metrics_data.exit84_crit_edge: ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  br label %renoir_get_smu_metrics_data.exit84

if.end.i83:                                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  %Voltage.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %Voltage.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %Voltage.i, align 2
  %conv30.i = zext i16 %36 to i32
  %37 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv30.i, ptr %data, align 4
  br label %renoir_get_smu_metrics_data.exit84

renoir_get_smu_metrics_data.exit84:               ; preds = %if.end.i83, %sw.bb11.renoir_get_smu_metrics_data.exit84_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i80) #10
  br label %sw.epilog.sink.split

sw.bb13:                                          ; preds = %if.end
  %metrics_table.i85 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %38 = ptrtoint ptr %metrics_table.i85 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %metrics_table.i85, align 8
  %metrics_lock.i86 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i86, i32 noundef 0) #10
  %call.i87 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool.not.i88 = icmp eq i32 %call.i87, 0
  br i1 %tobool.not.i88, label %if.end.i89, label %sw.bb13.renoir_get_smu_metrics_data.exit90_crit_edge

sw.bb13.renoir_get_smu_metrics_data.exit90_crit_edge: ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  br label %renoir_get_smu_metrics_data.exit90

if.end.i89:                                       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx33.i = getelementptr %struct.SmuMetrics_t, ptr %39, i32 0, i32 7, i32 1
  %40 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx33.i, align 2
  %conv34.i = zext i16 %41 to i32
  %42 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv34.i, ptr %data, align 4
  br label %renoir_get_smu_metrics_data.exit90

renoir_get_smu_metrics_data.exit90:               ; preds = %if.end.i89, %sw.bb13.renoir_get_smu_metrics_data.exit90_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i86) #10
  br label %sw.epilog.sink.split

sw.bb15:                                          ; preds = %if.end
  %metrics_table.i91 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %43 = ptrtoint ptr %metrics_table.i91 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %metrics_table.i91, align 8
  %metrics_lock.i92 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i92, i32 noundef 0) #10
  %call.i93 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool.not.i94 = icmp eq i32 %call.i93, 0
  br i1 %tobool.not.i94, label %if.end.i95, label %sw.bb15.renoir_get_smu_metrics_data.exit96_crit_edge

sw.bb15.renoir_get_smu_metrics_data.exit96_crit_edge: ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  br label %renoir_get_smu_metrics_data.exit96

if.end.i95:                                       ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  %CurrentSocketPower.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %44, i32 0, i32 11
  %45 = ptrtoint ptr %CurrentSocketPower.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %CurrentSocketPower.i, align 2
  %conv17.i = zext i16 %46 to i32
  %shl.i = shl nuw nsw i32 %conv17.i, 8
  %div18.i = udiv i32 %shl.i, 1000
  %47 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %div18.i, ptr %data, align 4
  br label %renoir_get_smu_metrics_data.exit96

renoir_get_smu_metrics_data.exit96:               ; preds = %if.end.i95, %sw.bb15.renoir_get_smu_metrics_data.exit96_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i92) #10
  br label %sw.epilog.sink.split

sw.bb17:                                          ; preds = %if.end
  %metrics_table.i97 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %48 = ptrtoint ptr %metrics_table.i97 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %metrics_table.i97, align 8
  %metrics_lock.i98 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i98, i32 noundef 0) #10
  %call.i99 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool.not.i100 = icmp eq i32 %call.i99, 0
  br i1 %tobool.not.i100, label %if.end.i101, label %sw.bb17.renoir_get_smu_metrics_data.exit102_crit_edge

sw.bb17.renoir_get_smu_metrics_data.exit102_crit_edge: ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  br label %renoir_get_smu_metrics_data.exit102

if.end.i101:                                      ; preds = %sw.bb17
  %StapmOriginalLimit.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %49, i32 0, i32 21
  %50 = ptrtoint ptr %StapmOriginalLimit.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %StapmOriginalLimit.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %cmp.not.i = icmp eq i16 %51, 0
  br i1 %cmp.not.i, label %if.end.i101.sw.epilog.i_crit_edge, label %if.then38.i

if.end.i101.sw.epilog.i_crit_edge:                ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then38.i:                                      ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #12
  %conv36.i = zext i16 %51 to i32
  %ApuPower.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %49, i32 0, i32 23
  %52 = ptrtoint ptr %ApuPower.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %ApuPower.i, align 2
  %conv39.i = zext i16 %53 to i32
  %mul40.i = mul nuw nsw i32 %conv39.i, 100
  %div43.i = udiv i32 %mul40.i, %conv36.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then38.i, %if.end.i101.sw.epilog.i_crit_edge
  %div62.sink.i = phi i32 [ %div43.i, %if.then38.i ], [ 0, %if.end.i101.sw.epilog.i_crit_edge ]
  %54 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %div62.sink.i, ptr %data, align 4
  br label %renoir_get_smu_metrics_data.exit102

renoir_get_smu_metrics_data.exit102:              ; preds = %sw.epilog.i, %sw.bb17.renoir_get_smu_metrics_data.exit102_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i98) #10
  br label %sw.epilog.sink.split

sw.bb19:                                          ; preds = %if.end
  %metrics_table.i103 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %55 = ptrtoint ptr %metrics_table.i103 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %metrics_table.i103, align 8
  %metrics_lock.i104 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i104, i32 noundef 0) #10
  %call.i105 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %tobool.not.i106 = icmp eq i32 %call.i105, 0
  br i1 %tobool.not.i106, label %if.end.i107, label %sw.bb19.renoir_get_smu_metrics_data.exit110_crit_edge

sw.bb19.renoir_get_smu_metrics_data.exit110_crit_edge: ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  br label %renoir_get_smu_metrics_data.exit110

if.end.i107:                                      ; preds = %sw.bb19
  %dGpuPower.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %56, i32 0, i32 24
  %57 = ptrtoint ptr %dGpuPower.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %dGpuPower.i, align 2
  %conv46.i = zext i16 %58 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %cmp47.not.i = icmp eq i16 %58, 0
  br i1 %cmp47.not.i, label %if.end.i107.sw.epilog.i109_crit_edge, label %land.lhs.true.i

if.end.i107.sw.epilog.i109_crit_edge:             ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i109

land.lhs.true.i:                                  ; preds = %if.end.i107
  %StapmCurrentLimit.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %56, i32 0, i32 22
  %59 = ptrtoint ptr %StapmCurrentLimit.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %StapmCurrentLimit.i, align 2
  %StapmOriginalLimit50.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %56, i32 0, i32 21
  %61 = ptrtoint ptr %StapmOriginalLimit50.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %StapmOriginalLimit50.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %60, i16 %62)
  %cmp52.i = icmp ugt i16 %60, %62
  br i1 %cmp52.i, label %if.then54.i, label %land.lhs.true.i.sw.epilog.i109_crit_edge

land.lhs.true.i.sw.epilog.i109_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i109

if.then54.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv51.i = zext i16 %62 to i32
  %conv49.i = zext i16 %60 to i32
  %mul57.i = mul nuw nsw i32 %conv46.i, 100
  %sub.i = sub nsw i32 %conv49.i, %conv51.i
  %div62.i = sdiv i32 %mul57.i, %sub.i
  br label %sw.epilog.i109

sw.epilog.i109:                                   ; preds = %if.then54.i, %land.lhs.true.i.sw.epilog.i109_crit_edge, %if.end.i107.sw.epilog.i109_crit_edge
  %div62.sink.i108 = phi i32 [ %div62.i, %if.then54.i ], [ 0, %land.lhs.true.i.sw.epilog.i109_crit_edge ], [ 0, %if.end.i107.sw.epilog.i109_crit_edge ]
  %63 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %div62.sink.i108, ptr %data, align 4
  br label %renoir_get_smu_metrics_data.exit110

renoir_get_smu_metrics_data.exit110:              ; preds = %sw.epilog.i109, %sw.bb19.renoir_get_smu_metrics_data.exit110_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i104) #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %renoir_get_smu_metrics_data.exit110, %renoir_get_smu_metrics_data.exit102, %renoir_get_smu_metrics_data.exit96, %renoir_get_smu_metrics_data.exit90, %renoir_get_smu_metrics_data.exit84, %renoir_get_smu_metrics_data.exit78, %renoir_get_smu_metrics_data.exit72, %renoir_get_smu_metrics_data.exit66, %renoir_get_smu_metrics_data.exit60, %renoir_get_smu_metrics_data.exit
  %ret.0.ph = phi i32 [ %call.i, %renoir_get_smu_metrics_data.exit ], [ %call.i57, %renoir_get_smu_metrics_data.exit60 ], [ %call.i63, %renoir_get_smu_metrics_data.exit66 ], [ %call.i69, %renoir_get_smu_metrics_data.exit72 ], [ %call.i75, %renoir_get_smu_metrics_data.exit78 ], [ %call.i81, %renoir_get_smu_metrics_data.exit84 ], [ %call.i87, %renoir_get_smu_metrics_data.exit90 ], [ %call.i93, %renoir_get_smu_metrics_data.exit96 ], [ %call.i99, %renoir_get_smu_metrics_data.exit102 ], [ %call.i105, %renoir_get_smu_metrics_data.exit110 ]
  %64 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 4, ptr %size, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %if.end.sw.epilog_crit_edge ], [ %ret.0.ph, %sw.epilog.sink.split ]
  tail call void @mutex_unlock(ptr noundef %sensor_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @renoir_is_dpm_running(ptr nocapture noundef readonly %smu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 137
  %2 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_suspend, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renoir_set_watermarks_table(ptr noundef %smu, ptr noundef readonly %clock_ranges) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %watermarks_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 6
  %0 = ptrtoint ptr %watermarks_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %watermarks_table, align 8
  %tobool.not = icmp eq ptr %clock_ranges, null
  br i1 %tobool.not, label %entry.if.end80_crit_edge, label %if.then

entry.if.end80_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %clock_ranges to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clock_ranges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %lor.lhs.false

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %num_writer_wm_sets = getelementptr inbounds %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 2
  %4 = ptrtoint ptr %num_writer_wm_sets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_writer_wm_sets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp1 = icmp ugt i32 %5, 4
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %clock_ranges to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clock_ranges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4156.not = icmp eq i32 %7, 0
  br i1 %cmp4156.not, label %for.cond.preheader.for.cond32.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.cond32.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond32.preheader

for.cond32.preheaderthread-pre-split:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %num_writer_wm_sets to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %num_writer_wm_sets, align 4
  br label %for.cond32.preheader

for.cond32.preheader:                             ; preds = %for.cond32.preheaderthread-pre-split, %for.cond.preheader.for.cond32.preheader_crit_edge
  %9 = phi i32 [ %.pr, %for.cond32.preheaderthread-pre-split ], [ %5, %for.cond.preheader.for.cond32.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp34158.not = icmp eq i32 %9, 0
  br i1 %cmp34158.not, label %for.cond32.preheader.for.end79_crit_edge, label %for.cond32.preheader.for.body35_crit_edge

for.cond32.preheader.for.body35_crit_edge:        ; preds = %for.cond32.preheader
  br label %for.body35

for.cond32.preheader.for.end79_crit_edge:         ; preds = %for.cond32.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end79

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0157 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 1, i32 %i.0157
  %min_drain_clk_mhz = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 1, i32 %i.0157, i32 2
  %10 = ptrtoint ptr %min_drain_clk_mhz to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %min_drain_clk_mhz, align 2
  %arrayidx6 = getelementptr [2 x [4 x %struct.WatermarkRowGeneric_t]], ptr %1, i32 0, i32 1, i32 %i.0157
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %arrayidx6, align 4
  %max_drain_clk_mhz = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 1, i32 %i.0157, i32 3
  %13 = ptrtoint ptr %max_drain_clk_mhz to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %max_drain_clk_mhz, align 2
  %MaxClock = getelementptr [2 x [4 x %struct.WatermarkRowGeneric_t]], ptr %1, i32 0, i32 1, i32 %i.0157, i32 1
  %15 = ptrtoint ptr %MaxClock to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %MaxClock, align 2
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx, align 2
  %MinMclk = getelementptr [2 x [4 x %struct.WatermarkRowGeneric_t]], ptr %1, i32 0, i32 1, i32 %i.0157, i32 2
  %18 = ptrtoint ptr %MinMclk to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %MinMclk, align 4
  %max_fill_clk_mhz = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 1, i32 %i.0157, i32 1
  %19 = ptrtoint ptr %max_fill_clk_mhz to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %max_fill_clk_mhz, align 2
  %MaxMclk = getelementptr [2 x [4 x %struct.WatermarkRowGeneric_t]], ptr %1, i32 0, i32 1, i32 %i.0157, i32 3
  %21 = ptrtoint ptr %MaxMclk to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %MaxMclk, align 2
  %wm_inst = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 1, i32 %i.0157, i32 4
  %22 = ptrtoint ptr %wm_inst to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %wm_inst, align 2
  %WmSetting = getelementptr [2 x [4 x %struct.WatermarkRowGeneric_t]], ptr %1, i32 0, i32 1, i32 %i.0157, i32 4
  %24 = ptrtoint ptr %WmSetting to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %WmSetting, align 4
  %wm_type = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 1, i32 %i.0157, i32 5
  %25 = ptrtoint ptr %wm_type to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %wm_type, align 1
  %WmType = getelementptr [2 x [4 x %struct.WatermarkRowGeneric_t]], ptr %1, i32 0, i32 1, i32 %i.0157, i32 5
  %27 = ptrtoint ptr %WmType to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %WmType, align 1
  %inc = add nuw i32 %i.0157, 1
  %28 = ptrtoint ptr %clock_ranges to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %clock_ranges, align 4
  %cmp4 = icmp ult i32 %inc, %29
  br i1 %cmp4, label %for.body.for.body_crit_edge, label %for.cond32.preheaderthread-pre-split

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %for.cond32.preheader.for.body35_crit_edge
  %i.1159 = phi i32 [ %inc78, %for.body35.for.body35_crit_edge ], [ 0, %for.cond32.preheader.for.body35_crit_edge ]
  %arrayidx36 = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 3, i32 %i.1159
  %30 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx36, align 2
  %arrayidx40 = getelementptr [4 x %struct.WatermarkRowGeneric_t], ptr %1, i32 0, i32 %i.1159
  %32 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %arrayidx40, align 4
  %max_fill_clk_mhz44 = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 3, i32 %i.1159, i32 1
  %33 = ptrtoint ptr %max_fill_clk_mhz44 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %max_fill_clk_mhz44, align 2
  %MaxClock48 = getelementptr [4 x %struct.WatermarkRowGeneric_t], ptr %1, i32 0, i32 %i.1159, i32 1
  %35 = ptrtoint ptr %MaxClock48 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %MaxClock48, align 2
  %min_drain_clk_mhz51 = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 3, i32 %i.1159, i32 2
  %36 = ptrtoint ptr %min_drain_clk_mhz51 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %min_drain_clk_mhz51, align 2
  %MinMclk55 = getelementptr [4 x %struct.WatermarkRowGeneric_t], ptr %1, i32 0, i32 %i.1159, i32 2
  %38 = ptrtoint ptr %MinMclk55 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %MinMclk55, align 4
  %max_drain_clk_mhz58 = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 3, i32 %i.1159, i32 3
  %39 = ptrtoint ptr %max_drain_clk_mhz58 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %max_drain_clk_mhz58, align 2
  %MaxMclk62 = getelementptr [4 x %struct.WatermarkRowGeneric_t], ptr %1, i32 0, i32 %i.1159, i32 3
  %41 = ptrtoint ptr %MaxMclk62 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %MaxMclk62, align 2
  %wm_inst65 = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 3, i32 %i.1159, i32 4
  %42 = ptrtoint ptr %wm_inst65 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %wm_inst65, align 2
  %WmSetting69 = getelementptr [4 x %struct.WatermarkRowGeneric_t], ptr %1, i32 0, i32 %i.1159, i32 4
  %44 = ptrtoint ptr %WmSetting69 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %WmSetting69, align 4
  %wm_type72 = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 3, i32 %i.1159, i32 5
  %45 = ptrtoint ptr %wm_type72 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %wm_type72, align 1
  %WmType76 = getelementptr [4 x %struct.WatermarkRowGeneric_t], ptr %1, i32 0, i32 %i.1159, i32 5
  %47 = ptrtoint ptr %WmType76 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %WmType76, align 1
  %inc78 = add nuw i32 %i.1159, 1
  %48 = ptrtoint ptr %num_writer_wm_sets to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_writer_wm_sets, align 4
  %cmp34 = icmp ult i32 %inc78, %49
  br i1 %cmp34, label %for.body35.for.body35_crit_edge, label %for.body35.for.end79_crit_edge

for.body35.for.end79_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end79

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body35

for.end79:                                        ; preds = %for.body35.for.end79_crit_edge, %for.cond32.preheader.for.end79_crit_edge
  %watermarks_bitmap = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 34
  %50 = ptrtoint ptr %watermarks_bitmap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %watermarks_bitmap, align 4
  %or = or i32 %51, 1
  store i32 %or, ptr %watermarks_bitmap, align 4
  br label %if.end80

if.end80:                                         ; preds = %for.end79, %entry.if.end80_crit_edge
  %watermarks_bitmap81 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 34
  %52 = ptrtoint ptr %watermarks_bitmap81 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %watermarks_bitmap81, align 4
  %54 = and i32 %53, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %if.then86, label %if.end80.cleanup_crit_edge

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then86:                                        ; preds = %if.end80
  %call = tail call i32 @smu_cmn_write_watermarks_table(ptr noundef %smu) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool87.not = icmp eq i32 %call, 0
  br i1 %tobool87.not, label %if.end89, label %do.end

do.end:                                           ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %smu, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.51) #13
  br label %cleanup

if.end89:                                         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %watermarks_bitmap81 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %watermarks_bitmap81, align 4
  %or91 = or i32 %61, 2
  store i32 %or91, ptr %watermarks_bitmap81, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %do.end, %if.end80.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ 0, %if.end89 ], [ 0, %if.end80.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renoir_set_performance_level(ptr noundef %smu, i32 noundef %level) #3 align 64 {
entry:
  %sclk_freq.i = alloca i32, align 4
  %min_freq.i = alloca i32, align 4
  %max_freq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 8, label %sw.bb
    i32 4, label %sw.bb1
    i32 1, label %sw.bb7
    i32 16, label %sw.bb13
    i32 32, label %entry.sw.bb47_crit_edge
    i32 64, label %entry.sw.bb47_crit_edge151
    i32 128, label %sw.bb61
  ]

entry.sw.bb47_crit_edge151:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb47

entry.sw.bb47_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb47

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %gfx_default_hard_min_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 54
  %1 = ptrtoint ptr %gfx_default_hard_min_freq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %gfx_default_hard_min_freq, align 4
  %gfx_actual_hard_min_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %3 = ptrtoint ptr %gfx_actual_hard_min_freq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %gfx_actual_hard_min_freq, align 4
  %gfx_default_soft_max_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 55
  %4 = ptrtoint ptr %gfx_default_soft_max_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gfx_default_soft_max_freq, align 8
  %gfx_actual_soft_max_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %6 = ptrtoint ptr %gfx_actual_soft_max_freq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %gfx_actual_soft_max_freq, align 8
  %call = tail call fastcc i32 @renoir_force_dpm_limit_value(ptr noundef %smu, i1 noundef zeroext true)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %gfx_default_hard_min_freq2 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 54
  %7 = ptrtoint ptr %gfx_default_hard_min_freq2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gfx_default_hard_min_freq2, align 4
  %gfx_actual_hard_min_freq3 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %9 = ptrtoint ptr %gfx_actual_hard_min_freq3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %gfx_actual_hard_min_freq3, align 4
  %gfx_default_soft_max_freq4 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 55
  %10 = ptrtoint ptr %gfx_default_soft_max_freq4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gfx_default_soft_max_freq4, align 8
  %gfx_actual_soft_max_freq5 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %12 = ptrtoint ptr %gfx_actual_soft_max_freq5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %gfx_actual_soft_max_freq5, align 8
  %call6 = tail call fastcc i32 @renoir_force_dpm_limit_value(ptr noundef %smu, i1 noundef zeroext false)
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %gfx_default_hard_min_freq8 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 54
  %13 = ptrtoint ptr %gfx_default_hard_min_freq8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gfx_default_hard_min_freq8, align 4
  %gfx_actual_hard_min_freq9 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %15 = ptrtoint ptr %gfx_actual_hard_min_freq9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %gfx_actual_hard_min_freq9, align 4
  %gfx_default_soft_max_freq10 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 55
  %16 = ptrtoint ptr %gfx_default_soft_max_freq10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gfx_default_soft_max_freq10, align 8
  %gfx_actual_soft_max_freq11 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %18 = ptrtoint ptr %gfx_actual_soft_max_freq11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %gfx_actual_soft_max_freq11, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_freq.i) #10
  %19 = ptrtoint ptr %min_freq.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %min_freq.i, align 4, !annotation !123
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_freq.i) #10
  %20 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %max_freq.i, align 4, !annotation !123
  %call.i = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.bb7.for.inc.i_crit_edge, label %if.end.i

sw.bb7.for.inc.i_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %sw.bb7
  %call3.i = call i32 @renoir_get_dpm_ultimate_freq(ptr noundef %smu, i32 noundef 0, ptr noundef nonnull %min_freq.i, ptr noundef nonnull %max_freq.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.renoir_unforce_dpm_levels.exit_crit_edge

if.end.i.renoir_unforce_dpm_levels.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %renoir_unforce_dpm_levels.exit

if.end6.i:                                        ; preds = %if.end.i
  %21 = ptrtoint ptr %min_freq.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %min_freq.i, align 4
  %23 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_freq.i, align 4
  %call7.i = call i32 @smu_v12_0_set_soft_freq_limited_range(ptr noundef %smu, i32 noundef 0, i32 noundef %22, i32 noundef %24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.for.inc.i_crit_edge, label %if.end6.i.renoir_unforce_dpm_levels.exit_crit_edge

if.end6.i.renoir_unforce_dpm_levels.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %renoir_unforce_dpm_levels.exit

if.end6.i.for.inc.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end6.i.for.inc.i_crit_edge, %sw.bb7.for.inc.i_crit_edge
  %call.1.i = call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  %call.i140 = call zeroext i1 @smu_cmn_clk_dpm_is_enabled(ptr noundef %smu, i32 noundef 14) #10
  br i1 %call.i140, label %if.end12.i, label %if.then.i141

if.then.i141:                                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %uclk.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 2
  %25 = ptrtoint ptr %uclk.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %uclk.i, align 8
  %div.i = udiv i32 %26, 100
  %27 = ptrtoint ptr %min_freq.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div.i, ptr %min_freq.i, align 4
  %28 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div.i, ptr %max_freq.i, align 4
  br label %if.end6.1.i

if.end12.i:                                       ; preds = %if.end.1.i
  %clocks_table.i.i145 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %29 = ptrtoint ptr %clocks_table.i.i145 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clocks_table.i.i145, align 4
  %tobool.not.i.i146 = icmp eq ptr %30, null
  br i1 %tobool.not.i.i146, label %if.end12.i.renoir_unforce_dpm_levels.exit_crit_edge, label %if.end.i115.i

if.end12.i.renoir_unforce_dpm_levels.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %renoir_unforce_dpm_levels.exit

if.end.i115.i:                                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx8.i.i147 = getelementptr %struct.DpmClocks_t, ptr %30, i32 0, i32 2, i32 0
  %31 = ptrtoint ptr %arrayidx8.i.i147 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx8.i.i147, align 4
  %33 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %max_freq.i, align 4
  %arrayidx8.i120.i = getelementptr %struct.DpmClocks_t, ptr %30, i32 0, i32 2, i32 3
  %34 = ptrtoint ptr %arrayidx8.i120.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx8.i120.i, align 4
  %36 = ptrtoint ptr %min_freq.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %min_freq.i, align 4
  br label %if.end6.1.i

if.end6.1.i:                                      ; preds = %if.end.i115.i, %if.then.i141
  %37 = ptrtoint ptr %min_freq.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %min_freq.i, align 4
  %39 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_freq.i, align 4
  %call7.1.i = call i32 @smu_v12_0_set_soft_freq_limited_range(ptr noundef %smu, i32 noundef 14, i32 noundef %38, i32 noundef %40) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.1.i)
  %tobool8.not.1.i = icmp eq i32 %call7.1.i, 0
  br i1 %tobool8.not.1.i, label %if.end6.1.i.for.inc.1.i_crit_edge, label %if.end6.1.i.renoir_unforce_dpm_levels.exit_crit_edge

if.end6.1.i.renoir_unforce_dpm_levels.exit_crit_edge: ; preds = %if.end6.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %renoir_unforce_dpm_levels.exit

if.end6.1.i.for.inc.1.i_crit_edge:                ; preds = %if.end6.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end6.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %call.2.i = call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  %call3.2.i = call i32 @renoir_get_dpm_ultimate_freq(ptr noundef %smu, i32 noundef 6, ptr noundef nonnull %min_freq.i, ptr noundef nonnull %max_freq.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2.i)
  %tobool4.not.2.i = icmp eq i32 %call3.2.i, 0
  br i1 %tobool4.not.2.i, label %if.end6.2.i, label %if.end.2.i.renoir_unforce_dpm_levels.exit_crit_edge

if.end.2.i.renoir_unforce_dpm_levels.exit_crit_edge: ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %renoir_unforce_dpm_levels.exit

if.end6.2.i:                                      ; preds = %if.end.2.i
  %41 = ptrtoint ptr %min_freq.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %min_freq.i, align 4
  %43 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_freq.i, align 4
  %call7.2.i = call i32 @smu_v12_0_set_soft_freq_limited_range(ptr noundef %smu, i32 noundef 6, i32 noundef %42, i32 noundef %44) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.2.i)
  %tobool8.not.2.i = icmp eq i32 %call7.2.i, 0
  br i1 %tobool8.not.2.i, label %if.end6.2.i.for.inc.2.i_crit_edge, label %if.end6.2.i.renoir_unforce_dpm_levels.exit_crit_edge

if.end6.2.i.renoir_unforce_dpm_levels.exit_crit_edge: ; preds = %if.end6.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %renoir_unforce_dpm_levels.exit

if.end6.2.i.for.inc.2.i_crit_edge:                ; preds = %if.end6.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end6.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  br label %renoir_unforce_dpm_levels.exit

renoir_unforce_dpm_levels.exit:                   ; preds = %for.inc.2.i, %if.end6.2.i.renoir_unforce_dpm_levels.exit_crit_edge, %if.end.2.i.renoir_unforce_dpm_levels.exit_crit_edge, %if.end6.1.i.renoir_unforce_dpm_levels.exit_crit_edge, %if.end12.i.renoir_unforce_dpm_levels.exit_crit_edge, %if.end6.i.renoir_unforce_dpm_levels.exit_crit_edge, %if.end.i.renoir_unforce_dpm_levels.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i.renoir_unforce_dpm_levels.exit_crit_edge ], [ %call7.i, %if.end6.i.renoir_unforce_dpm_levels.exit_crit_edge ], [ %call7.1.i, %if.end6.1.i.renoir_unforce_dpm_levels.exit_crit_edge ], [ %call3.2.i, %if.end.2.i.renoir_unforce_dpm_levels.exit_crit_edge ], [ %call7.2.i, %if.end6.2.i.renoir_unforce_dpm_levels.exit_crit_edge ], [ 0, %for.inc.2.i ], [ -22, %if.end12.i.renoir_unforce_dpm_levels.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_freq.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_freq.i) #10
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %gfx_default_hard_min_freq14 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 54
  %45 = ptrtoint ptr %gfx_default_hard_min_freq14 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %gfx_default_hard_min_freq14, align 4
  %gfx_actual_hard_min_freq15 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %47 = ptrtoint ptr %gfx_actual_hard_min_freq15 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %gfx_actual_hard_min_freq15, align 4
  %gfx_default_soft_max_freq16 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 55
  %48 = ptrtoint ptr %gfx_default_soft_max_freq16 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %gfx_default_soft_max_freq16, align 8
  %gfx_actual_soft_max_freq17 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %50 = ptrtoint ptr %gfx_actual_soft_max_freq17 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %gfx_actual_soft_max_freq17, align 8
  %call18 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 131, i32 noundef 700, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.end, label %sw.bb13.cleanup_crit_edge

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb13
  %call19 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 143, i32 noundef 800, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %call23 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 116, i32 noundef 678, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %call27 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 108, i32 noundef 36504024, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %call31 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 130, i32 noundef 700, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %call35 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 133, i32 noundef 800, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %call39 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 132, i32 noundef 678, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  %call43 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 134, i32 noundef 36504024, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end42.sw.epilog_crit_edge, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42.sw.epilog_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb47:                                          ; preds = %entry.sw.bb47_crit_edge, %entry.sw.bb47_crit_edge151
  %gfx_default_hard_min_freq48 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 54
  %51 = ptrtoint ptr %gfx_default_hard_min_freq48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %gfx_default_hard_min_freq48, align 4
  %gfx_actual_hard_min_freq49 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %53 = ptrtoint ptr %gfx_actual_hard_min_freq49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %gfx_actual_hard_min_freq49, align 4
  %gfx_default_soft_max_freq50 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 55
  %54 = ptrtoint ptr %gfx_default_soft_max_freq50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %gfx_default_soft_max_freq50, align 8
  %gfx_actual_soft_max_freq51 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %56 = ptrtoint ptr %gfx_actual_soft_max_freq51 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %gfx_actual_soft_max_freq51, align 8
  %57 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %level, label %sw.bb47.renoir_get_profiling_clk_mask.exit_crit_edge [
    i32 32, label %if.then.i
    i32 64, label %if.then3.i
  ]

sw.bb47.renoir_get_profiling_clk_mask.exit_crit_edge: ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #12
  br label %renoir_get_profiling_clk_mask.exit

if.then.i:                                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #12
  br label %renoir_get_profiling_clk_mask.exit

if.then3.i:                                       ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #12
  br label %renoir_get_profiling_clk_mask.exit

renoir_get_profiling_clk_mask.exit:               ; preds = %if.then3.i, %if.then.i, %sw.bb47.renoir_get_profiling_clk_mask.exit_crit_edge
  %sclk_mask.0 = phi i32 [ -1, %sw.bb47.renoir_get_profiling_clk_mask.exit_crit_edge ], [ -1, %if.then3.i ], [ 0, %if.then.i ]
  %cmp5.i.i = phi i1 [ true, %sw.bb47.renoir_get_profiling_clk_mask.exit_crit_edge ], [ false, %if.then3.i ], [ true, %if.then.i ]
  %mclk_mask.0 = phi i32 [ -1, %sw.bb47.renoir_get_profiling_clk_mask.exit_crit_edge ], [ 3, %if.then3.i ], [ -1, %if.then.i ]
  %shl = shl nuw nsw i32 1, %sclk_mask.0
  %call56 = tail call i32 @renoir_force_clk_levels(ptr noundef %smu, i32 noundef 13, i32 noundef %shl)
  %shl57 = shl nuw nsw i32 1, %mclk_mask.0
  %58 = tail call i32 @llvm.ctlz.i32(i32 %shl57, i1 true) #10, !range !120
  %sub3.i = xor i32 %58, 31
  %clocks_table.i134.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %59 = ptrtoint ptr %clocks_table.i134.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %clocks_table.i134.i, align 4
  %tobool.not.i135.i = icmp eq ptr %60, null
  %or.cond = or i1 %cmp5.i.i, %tobool.not.i135.i
  br i1 %or.cond, label %renoir_get_profiling_clk_mask.exit.sw.epilog_crit_edge, label %sw.bb4.i152.i

renoir_get_profiling_clk_mask.exit.sw.epilog_crit_edge: ; preds = %renoir_get_profiling_clk_mask.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb4.i152.i:                                    ; preds = %renoir_get_profiling_clk_mask.exit
  %arrayidx8.i.i = getelementptr %struct.DpmClocks_t, ptr %60, i32 0, i32 2, i32 %mclk_mask.0
  %61 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub3.i)
  %cmp5.i151.i = icmp ugt i32 %sub3.i, 3
  br i1 %cmp5.i151.i, label %sw.bb4.i152.i.sw.epilog_crit_edge, label %if.end65.i

sw.bb4.i152.i.sw.epilog_crit_edge:                ; preds = %sw.bb4.i152.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end65.i:                                       ; preds = %sw.bb4.i152.i
  %arrayidx.sink.i171.i = getelementptr %struct.DpmClocks_t, ptr %60, i32 0, i32 2, i32 %sub3.i
  %63 = ptrtoint ptr %arrayidx.sink.i171.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.sink.i171.i, align 4
  %call66.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 133, i32 noundef %64, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool67.not.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.not.i, label %if.end69.i, label %if.end65.i.sw.epilog_crit_edge

if.end65.i.sw.epilog_crit_edge:                   ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end69.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  %call70.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 143, i32 noundef %62, ptr noundef null) #10
  br label %sw.epilog

sw.bb61:                                          ; preds = %entry
  %gfx_default_hard_min_freq62 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 54
  %65 = ptrtoint ptr %gfx_default_hard_min_freq62 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %gfx_default_hard_min_freq62, align 4
  %gfx_actual_hard_min_freq63 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %67 = ptrtoint ptr %gfx_actual_hard_min_freq63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %gfx_actual_hard_min_freq63, align 4
  %gfx_default_soft_max_freq64 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 55
  %68 = ptrtoint ptr %gfx_default_soft_max_freq64 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %gfx_default_soft_max_freq64, align 8
  %gfx_actual_soft_max_freq65 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %70 = ptrtoint ptr %gfx_actual_soft_max_freq65 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %gfx_actual_soft_max_freq65, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sclk_freq.i) #10
  %71 = ptrtoint ptr %sclk_freq.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %sclk_freq.i, align 4
  %call.i.i = tail call zeroext i1 @smu_cmn_clk_dpm_is_enabled(ptr noundef %smu, i32 noundef 13) #10
  br i1 %call.i.i, label %if.end12.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #12
  %gfxclk.i.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 1
  %72 = ptrtoint ptr %gfxclk.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %gfxclk.i.i, align 4
  %div10.i.i = udiv i32 %73, 100
  %74 = ptrtoint ptr %sclk_freq.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %div10.i.i, ptr %sclk_freq.i, align 4
  br label %if.end.i138

if.end12.i.i:                                     ; preds = %sw.bb61
  %call20.i.i = call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef 128, ptr noundef nonnull %sclk_freq.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %if.end12.i.i.if.end.i138_crit_edge, label %renoir_get_dpm_ultimate_freq.exit.i

if.end12.i.i.if.end.i138_crit_edge:               ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i138

renoir_get_dpm_ultimate_freq.exit.i:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %smu, align 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.53) #13
  br label %renoir_set_peak_clock_by_device.exit

if.end.i138:                                      ; preds = %if.end12.i.i.if.end.i138_crit_edge, %if.then.i.i
  %79 = ptrtoint ptr %sclk_freq.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %sclk_freq.i, align 4
  %call1.i = call i32 @smu_v12_0_set_soft_freq_limited_range(ptr noundef %smu, i32 noundef 13, i32 noundef %80, i32 noundef %80) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i138.renoir_set_peak_clock_by_device.exit_crit_edge

if.end.i138.renoir_set_peak_clock_by_device.exit_crit_edge: ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #12
  br label %renoir_set_peak_clock_by_device.exit

if.end4.i:                                        ; preds = %if.end.i138
  %call.i26.i = call zeroext i1 @smu_cmn_clk_dpm_is_enabled(ptr noundef %smu, i32 noundef 7) #10
  br i1 %call.i26.i, label %if.end12.i29.i, label %if.then.i27.i

if.then.i27.i:                                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %uclk.i.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 2
  %81 = ptrtoint ptr %uclk.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %uclk.i.i, align 8
  %div10.i28.i = udiv i32 %82, 100
  br label %if.end8.i

if.end12.i29.i:                                   ; preds = %if.end4.i
  %clocks_table.i.i.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %83 = ptrtoint ptr %clocks_table.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %clocks_table.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %84, null
  br i1 %tobool.not.i.i.i, label %if.end12.i29.i.renoir_set_peak_clock_by_device.exit_crit_edge, label %if.end.i.i.i

if.end12.i29.i.renoir_set_peak_clock_by_device.exit_crit_edge: ; preds = %if.end12.i29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %renoir_set_peak_clock_by_device.exit

if.end.i.i.i:                                     ; preds = %if.end12.i29.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx8.i.i.i = getelementptr %struct.DpmClocks_t, ptr %84, i32 0, i32 2, i32 0
  %85 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx8.i.i.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i.i.i, %if.then.i27.i
  %uclk_freq.0.ph.i = phi i32 [ %div10.i28.i, %if.then.i27.i ], [ %86, %if.end.i.i.i ]
  %call9.i = call i32 @smu_v12_0_set_soft_freq_limited_range(ptr noundef %smu, i32 noundef 7, i32 noundef %uclk_freq.0.ph.i, i32 noundef %uclk_freq.0.ph.i) #10
  br label %renoir_set_peak_clock_by_device.exit

renoir_set_peak_clock_by_device.exit:             ; preds = %if.end8.i, %if.end12.i29.i.renoir_set_peak_clock_by_device.exit_crit_edge, %if.end.i138.renoir_set_peak_clock_by_device.exit_crit_edge, %renoir_get_dpm_ultimate_freq.exit.i
  %retval.0.i139 = phi i32 [ %call20.i.i, %renoir_get_dpm_ultimate_freq.exit.i ], [ %call1.i, %if.end.i138.renoir_set_peak_clock_by_device.exit_crit_edge ], [ %call9.i, %if.end8.i ], [ -22, %if.end12.i29.i.renoir_set_peak_clock_by_device.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclk_freq.i) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %renoir_set_peak_clock_by_device.exit, %if.end69.i, %if.end65.i.sw.epilog_crit_edge, %sw.bb4.i152.i.sw.epilog_crit_edge, %renoir_get_profiling_clk_mask.exit.sw.epilog_crit_edge, %if.end42.sw.epilog_crit_edge, %renoir_unforce_dpm_levels.exit, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %retval.0.i139, %renoir_set_peak_clock_by_device.exit ], [ 0, %if.end42.sw.epilog_crit_edge ], [ %retval.0.i, %renoir_unforce_dpm_levels.exit ], [ %call6, %sw.bb1 ], [ %call, %sw.bb ], [ 0, %if.end69.i ], [ 0, %renoir_get_profiling_clk_mask.exit.sw.epilog_crit_edge ], [ 0, %sw.bb4.i152.i.sw.epilog_crit_edge ], [ 0, %if.end65.i.sw.epilog_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end42.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb13.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ %call18, %sw.bb13.cleanup_crit_edge ], [ %call19, %if.end.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ %call31, %if.end30.cleanup_crit_edge ], [ %call35, %if.end34.cleanup_crit_edge ], [ %call39, %if.end38.cleanup_crit_edge ], [ %call43, %if.end42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renoir_get_dpm_clock_table(ptr nocapture noundef readonly %smu, ptr noundef writeonly %clock_table) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %clocks_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %0 = ptrtoint ptr %clocks_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clocks_table, align 4
  %tobool.not = icmp eq ptr %clock_table, null
  %tobool1.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = ptrtoint ptr %clock_table to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %clock_table, align 4
  %Vol = getelementptr [8 x %struct.DpmClock_t], ptr %1, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %Vol to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %Vol, align 4
  %Vol9 = getelementptr [8 x %struct.dpm_clock], ptr %clock_table, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %Vol9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %Vol9, align 4
  %arrayidx.1 = getelementptr [8 x %struct.DpmClock_t], ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.1, align 4
  %arrayidx3.1 = getelementptr [8 x %struct.dpm_clock], ptr %clock_table, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx3.1, align 4
  %Vol.1 = getelementptr [8 x %struct.DpmClock_t], ptr %1, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %Vol.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %Vol.1, align 4
  %Vol9.1 = getelementptr [8 x %struct.dpm_clock], ptr %clock_table, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %Vol9.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %Vol9.1, align 4
  %arrayidx.2 = getelementptr [8 x %struct.DpmClock_t], ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.2, align 4
  %arrayidx3.2 = getelementptr [8 x %struct.dpm_clock], ptr %clock_table, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx3.2, align 4
  %Vol.2 = getelementptr [8 x %struct.DpmClock_t], ptr %1, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %Vol.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %Vol.2, align 4
  %Vol9.2 = getelementptr [8 x %struct.dpm_clock], ptr %clock_table, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %Vol9.2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %Vol9.2, align 4
  %arrayidx.3 = getelementptr [8 x %struct.DpmClock_t], ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.3, align 4
  %arrayidx3.3 = getelementptr [8 x %struct.dpm_clock], ptr %clock_table, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx3.3, align 4
  %Vol.3 = getelementptr [8 x %struct.DpmClock_t], ptr %1, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %Vol.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %Vol.3, align 4
  %Vol9.3 = getelementptr [8 x %struct.dpm_clock], ptr %clock_table, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %Vol9.3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %Vol9.3, align 4
  %arrayidx.4 = getelementptr [8 x %struct.DpmClock_t], ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.4, align 4
  %arrayidx3.4 = getelementptr [8 x %struct.dpm_clock], ptr %clock_table, i32 0, i32 4
  %28 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx3.4, align 4
  %Vol.4 = getelementptr [8 x %struct.DpmClock_t], ptr %1, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %Vol.4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %Vol.4, align 4
  %Vol9.4 = getelementptr [8 x %struct.dpm_clock], ptr %clock_table, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %Vol9.4 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %Vol9.4, align 4
  %arrayidx.5 = getelementptr [8 x %struct.DpmClock_t], ptr %1, i32 0, i32 5
  %32 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.5, align 4
  %arrayidx3.5 = getelementptr [8 x %struct.dpm_clock], ptr %clock_table, i32 0, i32 5
  %34 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx3.5, align 4
  %Vol.5 = getelementptr [8 x %struct.DpmClock_t], ptr %1, i32 0, i32 5, i32 1
  %35 = ptrtoint ptr %Vol.5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %Vol.5, align 4
  %Vol9.5 = getelementptr [8 x %struct.dpm_clock], ptr %clock_table, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %Vol9.5 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %Vol9.5, align 4
  %arrayidx.6 = getelementptr [8 x %struct.DpmClock_t], ptr %1, i32 0, i32 6
  %38 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.6, align 4
  %arrayidx3.6 = getelementptr [8 x %struct.dpm_clock], ptr %clock_table, i32 0, i32 6
  %40 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx3.6, align 4
  %Vol.6 = getelementptr [8 x %struct.DpmClock_t], ptr %1, i32 0, i32 6, i32 1
  %41 = ptrtoint ptr %Vol.6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %Vol.6, align 4
  %Vol9.6 = getelementptr [8 x %struct.dpm_clock], ptr %clock_table, i32 0, i32 6, i32 1
  %43 = ptrtoint ptr %Vol9.6 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %Vol9.6, align 4
  %arrayidx.7 = getelementptr [8 x %struct.DpmClock_t], ptr %1, i32 0, i32 7
  %44 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.7, align 4
  %arrayidx3.7 = getelementptr [8 x %struct.dpm_clock], ptr %clock_table, i32 0, i32 7
  %46 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx3.7, align 4
  %Vol.7 = getelementptr [8 x %struct.DpmClock_t], ptr %1, i32 0, i32 7, i32 1
  %47 = ptrtoint ptr %Vol.7 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %Vol.7, align 4
  %Vol9.7 = getelementptr [8 x %struct.dpm_clock], ptr %clock_table, i32 0, i32 7, i32 1
  %49 = ptrtoint ptr %Vol9.7 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %Vol9.7, align 4
  %arrayidx13 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 1, i32 0
  %50 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx13, align 4
  %arrayidx16 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 0
  %52 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx16, align 4
  %Vol20 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 1, i32 0, i32 1
  %53 = ptrtoint ptr %Vol20 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %Vol20, align 4
  %Vol23 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 0, i32 1
  %55 = ptrtoint ptr %Vol23 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %Vol23, align 4
  %arrayidx13.1 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx13.1, align 4
  %arrayidx16.1 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arrayidx16.1, align 4
  %Vol20.1 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 1, i32 1, i32 1
  %59 = ptrtoint ptr %Vol20.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %Vol20.1, align 4
  %Vol23.1 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 1, i32 1
  %61 = ptrtoint ptr %Vol23.1 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %Vol23.1, align 4
  %arrayidx13.2 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 1, i32 2
  %62 = ptrtoint ptr %arrayidx13.2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx13.2, align 4
  %arrayidx16.2 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 2
  %64 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx16.2, align 4
  %Vol20.2 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 1, i32 2, i32 1
  %65 = ptrtoint ptr %Vol20.2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %Vol20.2, align 4
  %Vol23.2 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 2, i32 1
  %67 = ptrtoint ptr %Vol23.2 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %Vol23.2, align 4
  %arrayidx13.3 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 1, i32 3
  %68 = ptrtoint ptr %arrayidx13.3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx13.3, align 4
  %arrayidx16.3 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 3
  %70 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx16.3, align 4
  %Vol20.3 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 1, i32 3, i32 1
  %71 = ptrtoint ptr %Vol20.3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %Vol20.3, align 4
  %Vol23.3 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 3, i32 1
  %73 = ptrtoint ptr %Vol23.3 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %Vol23.3, align 4
  %arrayidx13.4 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 1, i32 4
  %74 = ptrtoint ptr %arrayidx13.4 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx13.4, align 4
  %arrayidx16.4 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 4
  %76 = ptrtoint ptr %arrayidx16.4 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %arrayidx16.4, align 4
  %Vol20.4 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 1, i32 4, i32 1
  %77 = ptrtoint ptr %Vol20.4 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %Vol20.4, align 4
  %Vol23.4 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 4, i32 1
  %79 = ptrtoint ptr %Vol23.4 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %Vol23.4, align 4
  %arrayidx13.5 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 1, i32 5
  %80 = ptrtoint ptr %arrayidx13.5 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx13.5, align 4
  %arrayidx16.5 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 5
  %82 = ptrtoint ptr %arrayidx16.5 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %arrayidx16.5, align 4
  %Vol20.5 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 1, i32 5, i32 1
  %83 = ptrtoint ptr %Vol20.5 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %Vol20.5, align 4
  %Vol23.5 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 5, i32 1
  %85 = ptrtoint ptr %Vol23.5 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %Vol23.5, align 4
  %arrayidx13.6 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 1, i32 6
  %86 = ptrtoint ptr %arrayidx13.6 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx13.6, align 4
  %arrayidx16.6 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 6
  %88 = ptrtoint ptr %arrayidx16.6 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %arrayidx16.6, align 4
  %Vol20.6 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 1, i32 6, i32 1
  %89 = ptrtoint ptr %Vol20.6 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %Vol20.6, align 4
  %Vol23.6 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 6, i32 1
  %91 = ptrtoint ptr %Vol23.6 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %Vol23.6, align 4
  %arrayidx13.7 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 1, i32 7
  %92 = ptrtoint ptr %arrayidx13.7 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx13.7, align 4
  %arrayidx16.7 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 7
  %94 = ptrtoint ptr %arrayidx16.7 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %arrayidx16.7, align 4
  %Vol20.7 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 1, i32 7, i32 1
  %95 = ptrtoint ptr %Vol20.7 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %Vol20.7, align 4
  %Vol23.7 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 7, i32 1
  %97 = ptrtoint ptr %Vol23.7 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %Vol23.7, align 4
  %arrayidx30 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 2, i32 0
  %98 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx30, align 4
  %arrayidx33 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 2, i32 0
  %100 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %arrayidx33, align 4
  %Vol37 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 2, i32 0, i32 1
  %101 = ptrtoint ptr %Vol37 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %Vol37, align 4
  %Vol40 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 2, i32 0, i32 1
  %103 = ptrtoint ptr %Vol40 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %Vol40, align 4
  %arrayidx30.1 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 2, i32 1
  %104 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx30.1, align 4
  %arrayidx33.1 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 2, i32 1
  %106 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %arrayidx33.1, align 4
  %Vol37.1 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 2, i32 1, i32 1
  %107 = ptrtoint ptr %Vol37.1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %Vol37.1, align 4
  %Vol40.1 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 2, i32 1, i32 1
  %109 = ptrtoint ptr %Vol40.1 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %Vol40.1, align 4
  %arrayidx30.2 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 2, i32 2
  %110 = ptrtoint ptr %arrayidx30.2 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx30.2, align 4
  %arrayidx33.2 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 2, i32 2
  %112 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %arrayidx33.2, align 4
  %Vol37.2 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 2, i32 2, i32 1
  %113 = ptrtoint ptr %Vol37.2 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %Vol37.2, align 4
  %Vol40.2 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 2, i32 2, i32 1
  %115 = ptrtoint ptr %Vol40.2 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %Vol40.2, align 4
  %arrayidx30.3 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 2, i32 3
  %116 = ptrtoint ptr %arrayidx30.3 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx30.3, align 4
  %arrayidx33.3 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 2, i32 3
  %118 = ptrtoint ptr %arrayidx33.3 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %arrayidx33.3, align 4
  %Vol37.3 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 2, i32 3, i32 1
  %119 = ptrtoint ptr %Vol37.3 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %Vol37.3, align 4
  %Vol40.3 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 2, i32 3, i32 1
  %121 = ptrtoint ptr %Vol40.3 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %Vol40.3, align 4
  %arrayidx47 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 3, i32 0
  %122 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx47, align 4
  %arrayidx50 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 3, i32 0
  %124 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %arrayidx50, align 4
  %Vol54 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 3, i32 0, i32 1
  %125 = ptrtoint ptr %Vol54 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %Vol54, align 4
  %Vol57 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 3, i32 0, i32 1
  %127 = ptrtoint ptr %Vol57 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %Vol57, align 4
  %arrayidx47.1 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 3, i32 1
  %128 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx47.1, align 4
  %arrayidx50.1 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 3, i32 1
  %130 = ptrtoint ptr %arrayidx50.1 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %arrayidx50.1, align 4
  %Vol54.1 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 3, i32 1, i32 1
  %131 = ptrtoint ptr %Vol54.1 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %Vol54.1, align 4
  %Vol57.1 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 3, i32 1, i32 1
  %133 = ptrtoint ptr %Vol57.1 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %Vol57.1, align 4
  %arrayidx47.2 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 3, i32 2
  %134 = ptrtoint ptr %arrayidx47.2 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx47.2, align 4
  %arrayidx50.2 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 3, i32 2
  %136 = ptrtoint ptr %arrayidx50.2 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %arrayidx50.2, align 4
  %Vol54.2 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 3, i32 2, i32 1
  %137 = ptrtoint ptr %Vol54.2 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %Vol54.2, align 4
  %Vol57.2 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 3, i32 2, i32 1
  %139 = ptrtoint ptr %Vol57.2 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %Vol57.2, align 4
  %arrayidx47.3 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 3, i32 3
  %140 = ptrtoint ptr %arrayidx47.3 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx47.3, align 4
  %arrayidx50.3 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 3, i32 3
  %142 = ptrtoint ptr %arrayidx50.3 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %arrayidx50.3, align 4
  %Vol54.3 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 3, i32 3, i32 1
  %143 = ptrtoint ptr %Vol54.3 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %Vol54.3, align 4
  %Vol57.3 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 3, i32 3, i32 1
  %145 = ptrtoint ptr %Vol57.3 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %Vol57.3, align 4
  %arrayidx64 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 4, i32 0
  %146 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx64, align 4
  %arrayidx67 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 4, i32 0
  %148 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %arrayidx67, align 4
  %Vol71 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 4, i32 0, i32 1
  %149 = ptrtoint ptr %Vol71 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %Vol71, align 4
  %Vol74 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 4, i32 0, i32 1
  %151 = ptrtoint ptr %Vol74 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %Vol74, align 4
  %arrayidx64.1 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 4, i32 1
  %152 = ptrtoint ptr %arrayidx64.1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx64.1, align 4
  %arrayidx67.1 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 4, i32 1
  %154 = ptrtoint ptr %arrayidx67.1 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %arrayidx67.1, align 4
  %Vol71.1 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 4, i32 1, i32 1
  %155 = ptrtoint ptr %Vol71.1 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %Vol71.1, align 4
  %Vol74.1 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 4, i32 1, i32 1
  %157 = ptrtoint ptr %Vol74.1 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %Vol74.1, align 4
  %arrayidx64.2 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 4, i32 2
  %158 = ptrtoint ptr %arrayidx64.2 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx64.2, align 4
  %arrayidx67.2 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 4, i32 2
  %160 = ptrtoint ptr %arrayidx67.2 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %arrayidx67.2, align 4
  %Vol71.2 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 4, i32 2, i32 1
  %161 = ptrtoint ptr %Vol71.2 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %Vol71.2, align 4
  %Vol74.2 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 4, i32 2, i32 1
  %163 = ptrtoint ptr %Vol74.2 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %Vol74.2, align 4
  %arrayidx64.3 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 4, i32 3
  %164 = ptrtoint ptr %arrayidx64.3 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx64.3, align 4
  %arrayidx67.3 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 4, i32 3
  %166 = ptrtoint ptr %arrayidx67.3 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %arrayidx67.3, align 4
  %Vol71.3 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 4, i32 3, i32 1
  %167 = ptrtoint ptr %Vol71.3 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %Vol71.3, align 4
  %Vol74.3 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 4, i32 3, i32 1
  %169 = ptrtoint ptr %Vol74.3 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %Vol74.3, align 4
  %arrayidx64.4 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 4, i32 4
  %170 = ptrtoint ptr %arrayidx64.4 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx64.4, align 4
  %arrayidx67.4 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 4, i32 4
  %172 = ptrtoint ptr %arrayidx67.4 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %arrayidx67.4, align 4
  %Vol71.4 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 4, i32 4, i32 1
  %173 = ptrtoint ptr %Vol71.4 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %Vol71.4, align 4
  %Vol74.4 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 4, i32 4, i32 1
  %175 = ptrtoint ptr %Vol74.4 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %Vol74.4, align 4
  %arrayidx64.5 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 4, i32 5
  %176 = ptrtoint ptr %arrayidx64.5 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx64.5, align 4
  %arrayidx67.5 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 4, i32 5
  %178 = ptrtoint ptr %arrayidx67.5 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %arrayidx67.5, align 4
  %Vol71.5 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 4, i32 5, i32 1
  %179 = ptrtoint ptr %Vol71.5 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %Vol71.5, align 4
  %Vol74.5 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 4, i32 5, i32 1
  %181 = ptrtoint ptr %Vol74.5 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %180, ptr %Vol74.5, align 4
  %arrayidx64.6 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 4, i32 6
  %182 = ptrtoint ptr %arrayidx64.6 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx64.6, align 4
  %arrayidx67.6 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 4, i32 6
  %184 = ptrtoint ptr %arrayidx67.6 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %arrayidx67.6, align 4
  %Vol71.6 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 4, i32 6, i32 1
  %185 = ptrtoint ptr %Vol71.6 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %Vol71.6, align 4
  %Vol74.6 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 4, i32 6, i32 1
  %187 = ptrtoint ptr %Vol74.6 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %Vol74.6, align 4
  %arrayidx64.7 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 4, i32 7
  %188 = ptrtoint ptr %arrayidx64.7 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx64.7, align 4
  %arrayidx67.7 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 4, i32 7
  %190 = ptrtoint ptr %arrayidx67.7 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %arrayidx67.7, align 4
  %Vol71.7 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 4, i32 7, i32 1
  %191 = ptrtoint ptr %Vol71.7 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %Vol71.7, align 4
  %Vol74.7 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 4, i32 7, i32 1
  %193 = ptrtoint ptr %Vol74.7 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %Vol74.7, align 4
  %arrayidx81 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 5, i32 0
  %194 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx81, align 4
  %arrayidx84 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 5, i32 0
  %196 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %arrayidx84, align 4
  %Vol88 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 5, i32 0, i32 1
  %197 = ptrtoint ptr %Vol88 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %Vol88, align 4
  %Vol91 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 5, i32 0, i32 1
  %199 = ptrtoint ptr %Vol91 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %Vol91, align 4
  %arrayidx81.1 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 5, i32 1
  %200 = ptrtoint ptr %arrayidx81.1 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx81.1, align 4
  %arrayidx84.1 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 5, i32 1
  %202 = ptrtoint ptr %arrayidx84.1 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %201, ptr %arrayidx84.1, align 4
  %Vol88.1 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 5, i32 1, i32 1
  %203 = ptrtoint ptr %Vol88.1 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %Vol88.1, align 4
  %Vol91.1 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 5, i32 1, i32 1
  %205 = ptrtoint ptr %Vol91.1 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %204, ptr %Vol91.1, align 4
  %arrayidx81.2 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 5, i32 2
  %206 = ptrtoint ptr %arrayidx81.2 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx81.2, align 4
  %arrayidx84.2 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 5, i32 2
  %208 = ptrtoint ptr %arrayidx84.2 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %207, ptr %arrayidx84.2, align 4
  %Vol88.2 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 5, i32 2, i32 1
  %209 = ptrtoint ptr %Vol88.2 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %Vol88.2, align 4
  %Vol91.2 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 5, i32 2, i32 1
  %211 = ptrtoint ptr %Vol91.2 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %210, ptr %Vol91.2, align 4
  %arrayidx81.3 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 5, i32 3
  %212 = ptrtoint ptr %arrayidx81.3 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx81.3, align 4
  %arrayidx84.3 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 5, i32 3
  %214 = ptrtoint ptr %arrayidx84.3 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %arrayidx84.3, align 4
  %Vol88.3 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 5, i32 3, i32 1
  %215 = ptrtoint ptr %Vol88.3 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %Vol88.3, align 4
  %Vol91.3 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 5, i32 3, i32 1
  %217 = ptrtoint ptr %Vol91.3 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %216, ptr %Vol91.3, align 4
  %arrayidx81.4 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 5, i32 4
  %218 = ptrtoint ptr %arrayidx81.4 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx81.4, align 4
  %arrayidx84.4 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 5, i32 4
  %220 = ptrtoint ptr %arrayidx84.4 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %219, ptr %arrayidx84.4, align 4
  %Vol88.4 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 5, i32 4, i32 1
  %221 = ptrtoint ptr %Vol88.4 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %Vol88.4, align 4
  %Vol91.4 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 5, i32 4, i32 1
  %223 = ptrtoint ptr %Vol91.4 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %222, ptr %Vol91.4, align 4
  %arrayidx81.5 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 5, i32 5
  %224 = ptrtoint ptr %arrayidx81.5 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx81.5, align 4
  %arrayidx84.5 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 5, i32 5
  %226 = ptrtoint ptr %arrayidx84.5 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %225, ptr %arrayidx84.5, align 4
  %Vol88.5 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 5, i32 5, i32 1
  %227 = ptrtoint ptr %Vol88.5 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %Vol88.5, align 4
  %Vol91.5 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 5, i32 5, i32 1
  %229 = ptrtoint ptr %Vol91.5 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %228, ptr %Vol91.5, align 4
  %arrayidx81.6 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 5, i32 6
  %230 = ptrtoint ptr %arrayidx81.6 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %arrayidx81.6, align 4
  %arrayidx84.6 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 5, i32 6
  %232 = ptrtoint ptr %arrayidx84.6 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %231, ptr %arrayidx84.6, align 4
  %Vol88.6 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 5, i32 6, i32 1
  %233 = ptrtoint ptr %Vol88.6 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %Vol88.6, align 4
  %Vol91.6 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 5, i32 6, i32 1
  %235 = ptrtoint ptr %Vol91.6 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %234, ptr %Vol91.6, align 4
  %arrayidx81.7 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 5, i32 7
  %236 = ptrtoint ptr %arrayidx81.7 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx81.7, align 4
  %arrayidx84.7 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 5, i32 7
  %238 = ptrtoint ptr %arrayidx84.7 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %237, ptr %arrayidx84.7, align 4
  %Vol88.7 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 5, i32 7, i32 1
  %239 = ptrtoint ptr %Vol88.7 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %Vol88.7, align 4
  %Vol91.7 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 5, i32 7, i32 1
  %241 = ptrtoint ptr %Vol91.7 to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %240, ptr %Vol91.7, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.body.preheader ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renoir_init_smc_tables(ptr nocapture noundef %smu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 124, ptr %arrayidx, align 8
  %align = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 1, i32 1
  %1 = ptrtoint ptr %align to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4096, ptr %align, align 8
  %domain = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 1, i32 2
  %2 = ptrtoint ptr %domain to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 4, ptr %domain, align 4
  %arrayidx6 = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 3
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 328, ptr %arrayidx6, align 8
  %align9 = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 3, i32 1
  %4 = ptrtoint ptr %align9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %align9, align 8
  %domain11 = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 3, i32 2
  %5 = ptrtoint ptr %domain11 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 4, ptr %domain11, align 4
  %arrayidx15 = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 8
  %6 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 148, ptr %arrayidx15, align 8
  %align18 = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 8, i32 1
  %7 = ptrtoint ptr %align18 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4096, ptr %align18, align 8
  %domain20 = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 8, i32 2
  %8 = ptrtoint ptr %domain20 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %domain20, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 328) #14
  %clocks_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %10 = ptrtoint ptr %clocks_table to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %clocks_table, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i66 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 148) #14
  %metrics_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %12 = ptrtoint ptr %metrics_table to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i66, ptr %metrics_table, align 8
  %tobool26.not = icmp eq ptr %call7.i.i66, null
  br i1 %tobool26.not, label %if.end.err1_out_crit_edge, label %if.end28

if.end.err1_out_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err1_out

if.end28:                                         ; preds = %if.end
  %metrics_time = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 3
  %13 = ptrtoint ptr %metrics_time to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %metrics_time, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i67 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 124) #14
  %watermarks_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 6
  %15 = ptrtoint ptr %watermarks_table to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i67, ptr %watermarks_table, align 8
  %tobool31.not = icmp eq ptr %call7.i.i67, null
  br i1 %tobool31.not, label %if.end28.err2_out_crit_edge, label %if.end33

if.end28.err2_out_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %err2_out

if.end33:                                         ; preds = %if.end28
  %gpu_metrics_table_size = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 19
  %16 = ptrtoint ptr %gpu_metrics_table_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 128, ptr %gpu_metrics_table_size, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i68 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 128) #14
  %gpu_metrics_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 20
  %18 = ptrtoint ptr %gpu_metrics_table to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i68, ptr %gpu_metrics_table, align 4
  %tobool37.not = icmp eq ptr %call7.i.i68, null
  br i1 %tobool37.not, label %err3_out, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err3_out:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %watermarks_table to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %watermarks_table, align 8
  tail call void @kfree(ptr noundef %20) #10
  br label %err2_out

err2_out:                                         ; preds = %err3_out, %if.end28.err2_out_crit_edge
  %21 = ptrtoint ptr %metrics_table to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %metrics_table, align 8
  tail call void @kfree(ptr noundef %22) #10
  br label %err1_out

err1_out:                                         ; preds = %err2_out, %if.end.err1_out_crit_edge
  %23 = ptrtoint ptr %clocks_table to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clocks_table, align 4
  tail call void @kfree(ptr noundef %24) #10
  br label %cleanup

cleanup:                                          ; preds = %err1_out, %if.end33.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -12, %err1_out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v12_0_fini_smc_tables(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v12_0_check_fw_status(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v12_0_get_vbios_bootup_values(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v12_0_check_fw_version(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v12_0_powergate_sdma(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v12_0_set_gfx_cgpg(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v12_0_set_driver_table_location(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_send_smc_msg_with_param(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_send_smc_msg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_enabled_mask(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_feature_is_enabled(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_disable_all_features_with_exception(ptr noundef, i1 noundef zeroext, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v12_0_gfx_off_control(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v12_0_get_gfxoff_status(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v12_0_mode2_reset(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renoir_get_dpm_ultimate_freq(ptr noundef %smu, i32 noundef %clk_type, ptr noundef %min, ptr noundef %max) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @smu_cmn_clk_dpm_is_enabled(ptr noundef %smu, i32 noundef %clk_type) #10
  br i1 %call, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %0 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %clk_type, label %if.then.sw.epilog_crit_edge [
    i32 14, label %if.then.sw.bb_crit_edge
    i32 7, label %if.then.sw.bb_crit_edge152
    i32 0, label %if.then.sw.bb1_crit_edge
    i32 13, label %if.then.sw.bb1_crit_edge153
    i32 6, label %sw.bb4
  ]

if.then.sw.bb1_crit_edge153:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

if.then.sw.bb1_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

if.then.sw.bb_crit_edge152:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge152
  %uclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 2
  %1 = ptrtoint ptr %uclk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %uclk, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.then.sw.bb1_crit_edge, %if.then.sw.bb1_crit_edge153
  %gfxclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 1
  %3 = ptrtoint ptr %gfxclk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gfxclk, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %socclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 3
  %5 = ptrtoint ptr %socclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %socclk, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb1, %sw.bb, %if.then.sw.epilog_crit_edge
  %clock_limit.0 = phi i32 [ %6, %sw.bb4 ], [ %4, %sw.bb1 ], [ %2, %sw.bb ], [ 0, %if.then.sw.epilog_crit_edge ]
  %tobool.not = icmp eq ptr %min, null
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then7

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then7:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %div = udiv i32 %clock_limit.0, 100
  %7 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div, ptr %min, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %sw.epilog.if.end_crit_edge
  %tobool8.not = icmp eq ptr %max, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %div10 = udiv i32 %clock_limit.0, 100
  %8 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div10, ptr %max, align 4
  br label %cleanup

if.end12:                                         ; preds = %entry
  %tobool13.not = icmp eq ptr %max, null
  br i1 %tobool13.not, label %if.end12.if.end36_crit_edge, label %if.then14

if.end12.if.end36_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then14:                                        ; preds = %if.end12
  %9 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %clk_type, label %if.then14.cleanup_crit_edge [
    i32 0, label %if.then14.sw.bb19_crit_edge
    i32 13, label %if.then14.sw.bb19_crit_edge154
    i32 7, label %if.then14.sw.bb24_crit_edge
    i32 12, label %if.then14.sw.bb24_crit_edge155
    i32 14, label %if.then14.sw.bb24_crit_edge156
    i32 6, label %sw.bb29
  ]

if.then14.sw.bb24_crit_edge156:                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb24

if.then14.sw.bb24_crit_edge155:                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb24

if.then14.sw.bb24_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb24

if.then14.sw.bb19_crit_edge154:                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

if.then14.sw.bb19_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb19:                                          ; preds = %if.then14.sw.bb19_crit_edge, %if.then14.sw.bb19_crit_edge154
  %call20 = tail call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef 128, ptr noundef nonnull %max) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %sw.bb19.if.end36_crit_edge, label %do.end

sw.bb19.if.end36_crit_edge:                       ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

do.end:                                           ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smu, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.53) #13
  br label %cleanup

sw.bb24:                                          ; preds = %if.then14.sw.bb24_crit_edge, %if.then14.sw.bb24_crit_edge155, %if.then14.sw.bb24_crit_edge156
  %clocks_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %14 = ptrtoint ptr %clocks_table.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clocks_table.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %sw.bb24.cleanup_crit_edge, label %if.end.i

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb24
  %16 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %clk_type, label %if.end.i.cleanup_crit_edge [
    i32 12, label %if.end19.i
    i32 7, label %if.end.i.if.end7.i_crit_edge
    i32 14, label %if.end.i.if.end7.i_crit_edge157
    i32 8, label %if.end.i.if.end36.sink.split_crit_edge
  ]

if.end.i.if.end36.sink.split_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.sink.split

if.end.i.if.end7.i_crit_edge157:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge157
  %arrayidx8.i = getelementptr %struct.DpmClocks_t, ptr %15, i32 0, i32 2, i32 0
  br label %if.end36.sink.split

if.end19.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx21.i = getelementptr %struct.DpmClocks_t, ptr %15, i32 0, i32 2, i32 0
  br label %if.end36.sink.split

sw.bb29:                                          ; preds = %if.then14
  %clocks_table.i100 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %17 = ptrtoint ptr %clocks_table.i100 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clocks_table.i100, align 4
  %tobool.not.i101 = icmp eq ptr %18, null
  br i1 %tobool.not.i101, label %sw.bb29.cleanup_crit_edge, label %renoir_get_dpm_clk_limited.exit110.thread

sw.bb29.cleanup_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

renoir_get_dpm_clk_limited.exit110.thread:        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i105 = getelementptr %struct.DpmClocks_t, ptr %18, i32 0, i32 1, i32 7
  br label %if.end36.sink.split

if.end36.sink.split:                              ; preds = %renoir_get_dpm_clk_limited.exit110.thread, %if.end19.i, %if.end7.i, %if.end.i.if.end36.sink.split_crit_edge
  %arrayidx.i105.sink = phi ptr [ %arrayidx.i105, %renoir_get_dpm_clk_limited.exit110.thread ], [ %arrayidx8.i, %if.end7.i ], [ %arrayidx21.i, %if.end19.i ], [ %15, %if.end.i.if.end36.sink.split_crit_edge ]
  %19 = ptrtoint ptr %arrayidx.i105.sink to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i105.sink, align 4
  %21 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %max, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end36.sink.split, %sw.bb19.if.end36_crit_edge, %if.end12.if.end36_crit_edge
  %tobool37.not = icmp eq ptr %min, null
  br i1 %tobool37.not, label %if.end36.cleanup_crit_edge, label %if.then38

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then38:                                        ; preds = %if.end36
  %22 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %clk_type, label %if.then38.cleanup_crit_edge [
    i32 0, label %if.then38.sw.bb39_crit_edge
    i32 13, label %if.then38.sw.bb39_crit_edge158
    i32 7, label %if.then38.sw.bb49_crit_edge
    i32 12, label %if.then38.sw.bb49_crit_edge159
    i32 14, label %if.then38.sw.bb49_crit_edge160
    i32 6, label %sw.bb54
  ]

if.then38.sw.bb49_crit_edge160:                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb49

if.then38.sw.bb49_crit_edge159:                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb49

if.then38.sw.bb49_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb49

if.then38.sw.bb39_crit_edge158:                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb39

if.then38.sw.bb39_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb39

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb39:                                          ; preds = %if.then38.sw.bb39_crit_edge, %if.then38.sw.bb39_crit_edge158
  %call40 = tail call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef 127, ptr noundef nonnull %min) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %sw.bb39.cleanup_crit_edge, label %do.end45

sw.bb39.cleanup_crit_edge:                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end45:                                         ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %smu, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.56) #13
  br label %cleanup

sw.bb49:                                          ; preds = %if.then38.sw.bb49_crit_edge, %if.then38.sw.bb49_crit_edge159, %if.then38.sw.bb49_crit_edge160
  %clocks_table.i111 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %27 = ptrtoint ptr %clocks_table.i111 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clocks_table.i111, align 4
  %tobool.not.i112 = icmp eq ptr %28, null
  br i1 %tobool.not.i112, label %sw.bb49.cleanup_crit_edge, label %if.end.i115

sw.bb49.cleanup_crit_edge:                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i115:                                      ; preds = %sw.bb49
  %29 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %clk_type, label %if.end.i115.cleanup_crit_edge [
    i32 12, label %sw.bb16.i125
    i32 7, label %if.end.i115.sw.bb4.i119_crit_edge
    i32 14, label %if.end.i115.sw.bb4.i119_crit_edge161
    i32 8, label %sw.bb10.i122
  ]

if.end.i115.sw.bb4.i119_crit_edge161:             ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i119

if.end.i115.sw.bb4.i119_crit_edge:                ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i119

if.end.i115.cleanup_crit_edge:                    ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb4.i119:                                      ; preds = %if.end.i115.sw.bb4.i119_crit_edge, %if.end.i115.sw.bb4.i119_crit_edge161
  %arrayidx8.i120 = getelementptr %struct.DpmClocks_t, ptr %28, i32 0, i32 2, i32 3
  br label %cleanup.sink.split.i135

sw.bb10.i122:                                     ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx14.i123 = getelementptr [8 x %struct.DpmClock_t], ptr %28, i32 0, i32 3
  br label %cleanup.sink.split.i135

sw.bb16.i125:                                     ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx21.i126 = getelementptr %struct.DpmClocks_t, ptr %28, i32 0, i32 2, i32 3
  br label %cleanup.sink.split.i135

cleanup.sink.split.i135:                          ; preds = %sw.bb16.i125, %sw.bb10.i122, %sw.bb4.i119
  %arrayidx.sink.i134 = phi ptr [ %arrayidx8.i120, %sw.bb4.i119 ], [ %arrayidx14.i123, %sw.bb10.i122 ], [ %arrayidx21.i126, %sw.bb16.i125 ]
  %30 = ptrtoint ptr %arrayidx.sink.i134 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.sink.i134, align 4
  %32 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %min, align 4
  br label %cleanup

sw.bb54:                                          ; preds = %if.then38
  %clocks_table.i138 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %33 = ptrtoint ptr %clocks_table.i138 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clocks_table.i138, align 4
  %tobool.not.i139 = icmp eq ptr %34, null
  br i1 %tobool.not.i139, label %sw.bb54.cleanup_crit_edge, label %if.end.i140

sw.bb54.cleanup_crit_edge:                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i140:                                      ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i142 = getelementptr %struct.DpmClocks_t, ptr %34, i32 0, i32 1, i32 0
  %35 = ptrtoint ptr %arrayidx.i142 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i142, align 4
  %37 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %min, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i140, %sw.bb54.cleanup_crit_edge, %cleanup.sink.split.i135, %if.end.i115.cleanup_crit_edge, %sw.bb49.cleanup_crit_edge, %do.end45, %sw.bb39.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %sw.bb29.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.bb24.cleanup_crit_edge, %do.end, %if.then14.cleanup_crit_edge, %if.then9, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 0, %if.end.cleanup_crit_edge ], [ %call40, %do.end45 ], [ 0, %sw.bb39.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ], [ %call20, %do.end ], [ -22, %if.then14.cleanup_crit_edge ], [ -22, %if.then38.cleanup_crit_edge ], [ -22, %sw.bb29.cleanup_crit_edge ], [ -22, %sw.bb49.cleanup_crit_edge ], [ -22, %if.end.i115.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i135 ], [ -22, %sw.bb54.cleanup_crit_edge ], [ 0, %if.end.i140 ], [ -22, %sw.bb24.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v12_0_set_soft_freq_limited_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_pp_feature_mask(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_set_pp_feature_mask(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renoir_get_gpu_metrics(ptr noundef %smu, ptr nocapture noundef writeonly %table) #3 align 64 {
entry:
  %metrics = alloca %struct.SmuMetrics_t, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %gpu_metrics_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 20
  %0 = ptrtoint ptr %gpu_metrics_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpu_metrics_table, align 4
  call void @llvm.lifetime.start.p0(i64 148, ptr nonnull %metrics) #10
  %2 = call ptr @memset(ptr %metrics, i32 255, i32 148)
  %call = call i32 @smu_cmn_get_metrics_table(ptr noundef %smu, ptr noundef nonnull %metrics, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @smu_cmn_init_soft_gpu_metrics(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 2) #10
  %GfxTemperature = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 17
  %3 = ptrtoint ptr %GfxTemperature to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %GfxTemperature, align 2
  %temperature_gfx = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %temperature_gfx to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %temperature_gfx, align 4
  %SocTemperature = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 18
  %6 = ptrtoint ptr %SocTemperature to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %SocTemperature, align 2
  %temperature_soc = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %temperature_soc to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %temperature_soc, align 2
  %temperature_core = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 3
  %CoreTemperature = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 14
  %9 = call ptr @memcpy(ptr %temperature_core, ptr %CoreTemperature, i32 16)
  %L3Temperature = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 16
  %10 = ptrtoint ptr %L3Temperature to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %L3Temperature, align 2
  %temperature_l3 = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %temperature_l3 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %temperature_l3, align 8
  %arrayidx6 = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 16, i32 1
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx6, align 2
  %arrayidx8 = getelementptr %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %arrayidx8, align 2
  %AverageGfxActivity = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 5
  %16 = ptrtoint ptr %AverageGfxActivity to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %AverageGfxActivity, align 2
  %average_gfx_activity = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %average_gfx_activity to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %average_gfx_activity, align 4
  %AverageUvdActivity = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 6
  %19 = ptrtoint ptr %AverageUvdActivity to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %AverageUvdActivity, align 2
  %average_mm_activity = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %average_mm_activity to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %average_mm_activity, align 2
  %CurrentSocketPower = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 11
  %22 = ptrtoint ptr %CurrentSocketPower to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %CurrentSocketPower, align 2
  %average_socket_power = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 8
  %24 = ptrtoint ptr %average_socket_power to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %average_socket_power, align 8
  %Power = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 9
  %25 = ptrtoint ptr %Power to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %Power, align 2
  %average_cpu_power = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %average_cpu_power to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %average_cpu_power, align 2
  %arrayidx11 = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 9, i32 1
  %28 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx11, align 2
  %average_soc_power = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 10
  %30 = ptrtoint ptr %average_soc_power to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %average_soc_power, align 4
  %average_core_power = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 12
  %CorePower = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 13
  %31 = call ptr @memcpy(ptr %average_core_power, ptr %CorePower, i32 16)
  %AverageGfxclkFrequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 1
  %32 = ptrtoint ptr %AverageGfxclkFrequency to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %AverageGfxclkFrequency, align 2
  %average_gfxclk_frequency = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 13
  %34 = ptrtoint ptr %average_gfxclk_frequency to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %average_gfxclk_frequency, align 8
  %AverageSocclkFrequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 2
  %35 = ptrtoint ptr %AverageSocclkFrequency to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %AverageSocclkFrequency, align 2
  %average_socclk_frequency = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 14
  %37 = ptrtoint ptr %average_socclk_frequency to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %average_socclk_frequency, align 2
  %AverageFclkFrequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 4
  %38 = ptrtoint ptr %AverageFclkFrequency to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %AverageFclkFrequency, align 2
  %average_fclk_frequency = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 16
  %40 = ptrtoint ptr %average_fclk_frequency to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %average_fclk_frequency, align 2
  %AverageVclkFrequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 3
  %41 = ptrtoint ptr %AverageVclkFrequency to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %AverageVclkFrequency, align 2
  %average_vclk_frequency = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 17
  %43 = ptrtoint ptr %average_vclk_frequency to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %average_vclk_frequency, align 8
  %arrayidx14 = getelementptr inbounds [18 x i16], ptr %metrics, i32 0, i32 17
  %44 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx14, align 2
  %current_gfxclk = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 19
  %46 = ptrtoint ptr %current_gfxclk to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %current_gfxclk, align 4
  %arrayidx16 = getelementptr inbounds [18 x i16], ptr %metrics, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx16, align 2
  %current_socclk = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 20
  %49 = ptrtoint ptr %current_socclk to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %current_socclk, align 2
  %arrayidx18 = getelementptr inbounds [18 x i16], ptr %metrics, i32 0, i32 16
  %50 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx18, align 2
  %current_uclk = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 21
  %52 = ptrtoint ptr %current_uclk to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %current_uclk, align 8
  %arrayidx20 = getelementptr inbounds [18 x i16], ptr %metrics, i32 0, i32 15
  %53 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx20, align 2
  %current_fclk = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 22
  %55 = ptrtoint ptr %current_fclk to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %current_fclk, align 2
  %arrayidx22 = getelementptr inbounds [18 x i16], ptr %metrics, i32 0, i32 5
  %56 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx22, align 2
  %current_vclk = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 23
  %58 = ptrtoint ptr %current_vclk to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %current_vclk, align 4
  %arrayidx24 = getelementptr inbounds [18 x i16], ptr %metrics, i32 0, i32 7
  %59 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx24, align 2
  %current_dclk = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 24
  %61 = ptrtoint ptr %current_dclk to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %current_dclk, align 2
  %current_coreclk = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 25
  %CoreFrequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 12
  %62 = call ptr @memcpy(ptr %current_coreclk, ptr %CoreFrequency, i32 16)
  %L3Frequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 15
  %63 = ptrtoint ptr %L3Frequency to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %L3Frequency, align 2
  %current_l3clk = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 26
  %65 = ptrtoint ptr %current_l3clk to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %current_l3clk, align 8
  %arrayidx30 = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 15, i32 1
  %66 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx30, align 2
  %arrayidx32 = getelementptr %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 26, i32 1
  %68 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %arrayidx32, align 2
  %ThrottlerStatus = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 19
  %69 = ptrtoint ptr %ThrottlerStatus to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %ThrottlerStatus, align 2
  %conv = zext i16 %70 to i32
  %throttle_status = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 27
  %71 = ptrtoint ptr %throttle_status to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv, ptr %throttle_status, align 4
  %72 = load i16, ptr %ThrottlerStatus, align 2
  %conv34 = zext i16 %72 to i32
  %call35 = call i64 @smu_cmn_get_indep_throttler_status(i32 noundef %conv34, ptr noundef nonnull @renoir_throttler_map) #10
  %indep_throttle_status = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 30
  %73 = ptrtoint ptr %indep_throttle_status to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %call35, ptr %indep_throttle_status, align 8
  %FanPwm = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 10
  %74 = ptrtoint ptr %FanPwm to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %FanPwm, align 2
  %fan_pwm = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 28
  %76 = ptrtoint ptr %fan_pwm to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %fan_pwm, align 8
  %call.i.i = call i64 @ktime_get_with_offset(i32 noundef 1) #10
  %system_clock_counter = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 7
  %77 = ptrtoint ptr %system_clock_counter to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %call.i.i, ptr %system_clock_counter, align 8
  %78 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %1, ptr %table, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 128, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %metrics) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @renoir_gfx_state_change_set(ptr nocapture noundef readnone %smu, i32 noundef %state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renoir_set_fine_grain_gfx_freq_parameters(ptr noundef %smu) #3 align 64 {
entry:
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min) #10
  %0 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %min, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max) #10
  %1 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %max, align 4
  %call = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 127, i32 noundef 0, ptr noundef nonnull %min) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 128, i32 noundef 0, ptr noundef nonnull %max) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %min to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min, align 4
  %gfx_default_hard_min_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 54
  %4 = ptrtoint ptr %gfx_default_hard_min_freq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %gfx_default_hard_min_freq, align 4
  %5 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max, align 4
  %gfx_default_soft_max_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 55
  %7 = ptrtoint ptr %gfx_default_soft_max_freq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %gfx_default_soft_max_freq, align 8
  %gfx_actual_hard_min_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %8 = ptrtoint ptr %gfx_actual_hard_min_freq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %gfx_actual_hard_min_freq, align 4
  %gfx_actual_soft_max_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %9 = ptrtoint ptr %gfx_actual_soft_max_freq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %gfx_actual_soft_max_freq, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_metrics_table(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_to_asic_specific_index(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_metrics_table_locked(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_write_watermarks_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @renoir_force_dpm_limit_value(ptr noundef %smu, i1 noundef zeroext %highest) unnamed_addr #3 align 64 {
entry:
  %min_freq = alloca i32, align 4
  %max_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_freq) #10
  %0 = ptrtoint ptr %min_freq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %min_freq, align 4, !annotation !123
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_freq) #10
  %1 = ptrtoint ptr %max_freq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %max_freq, align 4, !annotation !123
  %call = call i32 @renoir_get_dpm_ultimate_freq(ptr noundef %smu, i32 noundef 0, ptr noundef nonnull %min_freq, ptr noundef nonnull %max_freq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond:                                         ; preds = %if.end
  %call.1 = call i32 @renoir_get_dpm_ultimate_freq(ptr noundef %smu, i32 noundef 14, ptr noundef nonnull %min_freq, ptr noundef nonnull %max_freq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %if.end.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.1:                                         ; preds = %for.cond
  %2 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %max_freq.val.1 = load i32, ptr %max_freq, align 4
  %3 = ptrtoint ptr %min_freq to i32
  call void @__asan_load4_noabort(i32 %3)
  %min_freq.val.1 = load i32, ptr %min_freq, align 4
  %cond.1 = select i1 %highest, i32 %max_freq.val.1, i32 %min_freq.val.1
  %call2.1 = call i32 @smu_v12_0_set_soft_freq_limited_range(ptr noundef %smu, i32 noundef 14, i32 noundef %cond.1, i32 noundef %cond.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1)
  %tobool3.not.1 = icmp eq i32 %call2.1, 0
  br i1 %tobool3.not.1, label %for.cond.1, label %if.end.1.cleanup_crit_edge

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.1:                                       ; preds = %if.end.1
  %call.2 = call i32 @renoir_get_dpm_ultimate_freq(ptr noundef %smu, i32 noundef 6, ptr noundef nonnull %min_freq, ptr noundef nonnull %max_freq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %if.end.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.2:                                         ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %max_freq.val.2 = load i32, ptr %max_freq, align 4
  %5 = ptrtoint ptr %min_freq to i32
  call void @__asan_load4_noabort(i32 %5)
  %min_freq.val.2 = load i32, ptr %min_freq, align 4
  %cond.2 = select i1 %highest, i32 %max_freq.val.2, i32 %min_freq.val.2
  %call2.2 = call i32 @smu_v12_0_set_soft_freq_limited_range(ptr noundef %smu, i32 noundef 6, i32 noundef %cond.2, i32 noundef %cond.2) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %6)
  %max_freq.val = load i32, ptr %max_freq, align 4
  %7 = ptrtoint ptr %min_freq to i32
  call void @__asan_load4_noabort(i32 %7)
  %min_freq.val = load i32, ptr %min_freq, align 4
  %cond = select i1 %highest, i32 %max_freq.val, i32 %min_freq.val
  %call2 = call i32 @smu_v12_0_set_soft_freq_limited_range(ptr noundef %smu, i32 noundef 0, i32 noundef %cond, i32 noundef %cond) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %for.cond, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.end.2, %for.cond.1.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call.1, %for.cond.cleanup_crit_edge ], [ %call2.1, %if.end.1.cleanup_crit_edge ], [ %call.2, %for.cond.1.cleanup_crit_edge ], [ %call2.2, %if.end.2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_freq) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_freq) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @smu_cmn_clk_dpm_is_enabled(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smu_cmn_init_soft_gpu_metrics(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @smu_cmn_get_indep_throttler_status(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !105, !107, !109}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @renoir_ppt_funcs, !1, !"renoir_ppt_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 1377, i32 35}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 515, i32 37}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 522, i32 37}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 523, i32 37}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 524, i32 37}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 541, i32 37}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 542, i32 15}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 542, i32 21}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 543, i32 37}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 546, i32 37}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 593, i32 37}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 600, i32 37}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 801, i32 4}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @renoir_force_clk_levels._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @renoir_force_clk_levels._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 382, i32 3}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @renoir_od_edit_dpm_table._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @renoir_od_edit_dpm_table._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 390, i32 4}
!40 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @renoir_od_edit_dpm_table._entry.19, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @renoir_od_edit_dpm_table._entry_ptr.22, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 396, i32 5}
!45 = !{ptr @renoir_od_edit_dpm_table._entry.23, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @renoir_od_edit_dpm_table._entry_ptr.25, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 404, i32 5}
!49 = !{ptr @renoir_od_edit_dpm_table._entry.26, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @renoir_od_edit_dpm_table._entry_ptr.28, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @renoir_od_edit_dpm_table._entry.29, !52, !"_entry", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 416, i32 4}
!53 = !{ptr @renoir_od_edit_dpm_table._entry_ptr.30, !52, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @renoir_od_edit_dpm_table._entry.31, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 424, i32 4}
!56 = !{ptr @renoir_od_edit_dpm_table._entry_ptr.32, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 428, i32 5}
!59 = !{ptr @renoir_od_edit_dpm_table._entry.33, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @renoir_od_edit_dpm_table._entry_ptr.35, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.37, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 440, i32 5}
!63 = !{ptr @renoir_od_edit_dpm_table._entry.36, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @renoir_od_edit_dpm_table._entry_ptr.38, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.40, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 449, i32 5}
!67 = !{ptr @renoir_od_edit_dpm_table._entry.39, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @renoir_od_edit_dpm_table._entry_ptr.41, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.42, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 1115, i32 36}
!71 = !{ptr @.str.43, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 1116, i32 73}
!73 = !{ptr @.str.44, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 863, i32 3}
!75 = !{ptr @.str.45, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @renoir_set_power_profile_mode._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @renoir_set_power_profile_mode._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.46, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 880, i32 3}
!80 = !{ptr @.str.47, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @renoir_set_power_profile_mode.__UNIQUE_ID_ddebug343, !79, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!82 = distinct !{null, !83, !"__print_once", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 888, i32 3}
!84 = !{ptr @.str.49, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @renoir_set_power_profile_mode._entry.48, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @renoir_set_power_profile_mode._entry_ptr.50, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 1086, i32 4}
!89 = !{ptr @.str.52, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @renoir_set_watermarks_table._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @renoir_set_watermarks_table._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.53, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 321, i32 5}
!94 = !{ptr @.str.54, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @renoir_get_dpm_ultimate_freq._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @renoir_get_dpm_ultimate_freq._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.56, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 349, i32 5}
!99 = !{ptr @renoir_get_dpm_ultimate_freq._entry.55, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @renoir_get_dpm_ultimate_freq._entry_ptr.57, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @renoir_throttler_map, !102, !"renoir_throttler_map", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 131, i32 22}
!103 = !{ptr @renoir_message_map, !104, !"renoir_message_map", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 44, i32 36}
!105 = !{ptr @renoir_clk_map, !106, !"renoir_clk_map", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 106, i32 32}
!107 = !{ptr @renoir_table_map, !108, !"renoir_table_map", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 116, i32 32}
!109 = !{ptr @renoir_workload_map, !110, !"renoir_workload_map", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/renoir_ppt.c", i32 123, i32 32}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i32 0, i32 33}
!121 = !{i64 2148969974, i64 2148969979, i64 2148969992, i64 2148970036, i64 2148970070, i64 2148970091}
!122 = !{i8 0, i8 2}
!123 = !{!"auto-init"}
