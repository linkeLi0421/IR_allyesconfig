; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/psp_v11_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.psp_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.psp_context = type { ptr, %struct.psp_ring, ptr, ptr, ptr, i64, ptr, ptr, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, ptr, i64, ptr, ptr, ptr, i64, ptr, ptr, i64, ptr, %struct.atomic_t, i8, i8, ptr, i32, %struct.ta_context, %struct.psp_xgmi_context, %struct.psp_ras_context, %struct.ta_cp_context, %struct.ta_cp_context, %struct.ta_cp_context, %struct.ta_cp_context, %struct.mutex, %struct.psp_memory_training_context, i32 }
%struct.psp_ring = type { i32, ptr, i64, ptr, i32, i32 }
%struct.psp_bin_desc = type { i32, i32, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.ta_context = type { i8, i32, %struct.ta_mem_context, %struct.psp_bin_desc, i32 }
%struct.ta_mem_context = type { ptr, i64, ptr, i32 }
%struct.psp_xgmi_context = type { %struct.ta_context, %struct.psp_xgmi_topology_info, i8 }
%struct.psp_xgmi_topology_info = type { i32, [64 x %struct.psp_xgmi_node_info] }
%struct.psp_xgmi_node_info = type { i64, i8, i8, i32, i8 }
%struct.psp_ras_context = type { %struct.ta_context, ptr }
%struct.ta_cp_context = type { %struct.ta_context, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.psp_memory_training_context = type { i64, ptr, i64, i64, ptr, i32, i32, i8 }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.101, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.ta_firmware_header_v1_0 = type { %struct.common_firmware_header, %struct.psp_fw_legacy_bin_desc, %struct.psp_fw_legacy_bin_desc, %struct.psp_fw_legacy_bin_desc, %struct.psp_fw_legacy_bin_desc, %struct.psp_fw_legacy_bin_desc }
%struct.common_firmware_header = type { i32, i32, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.psp_fw_legacy_bin_desc = type { i32, i32, i32 }
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_firmware343 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/vega20_sos.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware344 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/vega20_asd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware345 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/vega20_ta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware346 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/navi10_sos.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware347 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/navi10_asd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware348 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/navi10_ta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware349 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/navi14_sos.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware350 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/navi14_asd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware351 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/navi14_ta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware352 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/navi12_sos.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware353 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/navi12_asd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware354 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/navi12_ta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware355 = internal constant [40 x i8] c"amdgpu.firmware=amdgpu/arcturus_sos.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware356 = internal constant [40 x i8] c"amdgpu.firmware=amdgpu/arcturus_asd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware357 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/arcturus_ta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware358 = internal constant [46 x i8] c"amdgpu.firmware=amdgpu/sienna_cichlid_sos.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware359 = internal constant [45 x i8] c"amdgpu.firmware=amdgpu/sienna_cichlid_ta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware360 = internal constant [45 x i8] c"amdgpu.firmware=amdgpu/navy_flounder_sos.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware361 = internal constant [44 x i8] c"amdgpu.firmware=amdgpu/navy_flounder_ta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware362 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/vangogh_asd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware363 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/vangogh_toc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware364 = internal constant [48 x i8] c"amdgpu.firmware=amdgpu/dimgrey_cavefish_sos.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware365 = internal constant [47 x i8] c"amdgpu.firmware=amdgpu/dimgrey_cavefish_ta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware366 = internal constant [42 x i8] c"amdgpu.firmware=amdgpu/beige_goby_sos.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware367 = internal constant [41 x i8] c"amdgpu.firmware=amdgpu/beige_goby_ta.bin\00", section ".modinfo", align 1
@psp_v11_0_funcs = internal constant { %struct.psp_funcs, [52 x i8] } { %struct.psp_funcs { ptr @psp_v11_0_init_microcode, ptr @psp_v11_0_bootloader_load_kdb, ptr @psp_v11_0_bootloader_load_spl, ptr @psp_v11_0_bootloader_load_sysdrv, ptr null, ptr null, ptr null, ptr @psp_v11_0_bootloader_load_sos, ptr @psp_v11_0_ring_init, ptr @psp_v11_0_ring_create, ptr @psp_v11_0_ring_stop, ptr @psp_v11_0_ring_destroy, ptr null, ptr @psp_v11_0_mode1_reset, ptr @psp_v11_0_memory_training, ptr @psp_v11_0_ring_get_wptr, ptr @psp_v11_0_ring_set_wptr, ptr @psp_v11_0_load_usbc_pd_fw, ptr @psp_v11_0_read_usbc_pd_fw }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vega20\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"navi10\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"navi14\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"navi12\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"arcturus\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sienna_cichlid\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"navy_flounder\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vangogh\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dimgrey_cavefish\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"beige_goby\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"amdgpu/%s_ta.bin\00", [47 x i8] zeroinitializer }, align 32
@psp_v11_0_init_microcode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 147, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"amdgpu: psp v11.0: Failed to load firmware \22%s\22\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"psp_v11_0_init_microcode\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/amd/amdgpu/psp_v11_0.c\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@psp_v11_0_init_microcode._entry_ptr = internal global ptr @psp_v11_0_init_microcode._entry, section ".printk_index", align 4
@psp_v11_0_init_microcode._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 188, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@psp_v11_0_init_microcode._entry_ptr.18 = internal global ptr @psp_v11_0_init_microcode._entry.17, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"psp_v11_0_ring_stop_sriov failed!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to wait for sOS ready for ring creation\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Fail to stop psp ring\0A\00", [41 x i8] zeroinitializer }, align 32
@psp_v11_0_mode1_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.14, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016[drm] psp is not working correctly before mode1 reset!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"psp_v11_0_mode1_reset\00", [42 x i8] zeroinitializer }, align 32
@psp_v11_0_mode1_reset._entry_ptr = internal global ptr @psp_v11_0_mode1_reset._entry, section ".printk_index", align 4
@psp_v11_0_mode1_reset._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.14, i32 529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016[drm] psp mode 1 reset failed!\0A\00", [62 x i8] zeroinitializer }, align 32
@psp_v11_0_mode1_reset._entry_ptr.26 = internal global ptr @psp_v11_0_mode1_reset._entry.24, section ".printk_index", align 4
@psp_v11_0_mode1_reset._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.14, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016[drm] psp mode1 reset succeed \0A\00", [62 x i8] zeroinitializer }, align 32
@psp_v11_0_mode1_reset._entry_ptr.29 = internal global ptr @psp_v11_0_mode1_reset._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Memory training is not supported.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Memory training initialization failure.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"SOS is alive, skip memory training.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"sys_cache[%08x,%08x,%08x,%08x] p2c_header[%08x,%08x,%08x,%08x]\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Short training depends on restore.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"sys_cache[0] is invalid, restore depends on save.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"sys_cache is invalid or out-of-date, need save training data to sys_cache.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"p2c_header[0] is invalid, save depends on long training.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Memory training ops:%x.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"visible_vram_size %llx or aper_base_kaddr %p is not initialized.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to allocate system memory.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Send long training msg failed.\0A\00", [32 x i8] zeroinitializer }, align 32
@amdgpu_force_long_training = external dso_local local_unnamed_addr global i32, align 4
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"send training msg failed.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"training %s %s, cost %d @ %d ms\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"short\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"long\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"succeed\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Address load failed - MP0_SMN_C2PMSG_35.Bits [15:0] = 0x%04x\0A\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 720896, i64 720898, i64 720900, i64 720901, i64 720903, i64 720905, i64 720907, i64 720908, i64 720909, i64 722176]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8]
@___asan_gen_.50 = private unnamed_addr constant [16 x i8] c"psp_v11_0_funcs\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 776, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 94, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 98, i32 15 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 101, i32 15 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 104, i32 15 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 107, i32 15 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 110, i32 15 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 113, i32 15 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 116, i32 15 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 119, i32 15 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 122, i32 15 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 125, i32 15 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 141, i32 38 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 146, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 187, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 429, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 456, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 495, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 515, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 529, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 533, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 583, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 586, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 591, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 596, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 601, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 607, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 614, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 620, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 629, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 641, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 649, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 657, i32 5 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 685, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 562, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.195 = private constant [42 x i8] c"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 753, i32 3 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_firmware343, ptr @__UNIQUE_ID_firmware344, ptr @__UNIQUE_ID_firmware345, ptr @__UNIQUE_ID_firmware346, ptr @__UNIQUE_ID_firmware347, ptr @__UNIQUE_ID_firmware348, ptr @__UNIQUE_ID_firmware349, ptr @__UNIQUE_ID_firmware350, ptr @__UNIQUE_ID_firmware351, ptr @__UNIQUE_ID_firmware352, ptr @__UNIQUE_ID_firmware353, ptr @__UNIQUE_ID_firmware354, ptr @__UNIQUE_ID_firmware355, ptr @__UNIQUE_ID_firmware356, ptr @__UNIQUE_ID_firmware357, ptr @__UNIQUE_ID_firmware358, ptr @__UNIQUE_ID_firmware359, ptr @__UNIQUE_ID_firmware360, ptr @__UNIQUE_ID_firmware361, ptr @__UNIQUE_ID_firmware362, ptr @__UNIQUE_ID_firmware363, ptr @__UNIQUE_ID_firmware364, ptr @__UNIQUE_ID_firmware365, ptr @__UNIQUE_ID_firmware366, ptr @__UNIQUE_ID_firmware367, ptr @psp_v11_0_init_microcode._entry, ptr @psp_v11_0_init_microcode._entry.17, ptr @psp_v11_0_init_microcode._entry_ptr, ptr @psp_v11_0_init_microcode._entry_ptr.18, ptr @psp_v11_0_mode1_reset._entry, ptr @psp_v11_0_mode1_reset._entry.24, ptr @psp_v11_0_mode1_reset._entry.27, ptr @psp_v11_0_mode1_reset._entry_ptr, ptr @psp_v11_0_mode1_reset._entry_ptr.26, ptr @psp_v11_0_mode1_reset._entry_ptr.29, ptr @psp_v11_0_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_v11_0_funcs to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_v11_0_init_microcode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_v11_0_init_microcode._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_v11_0_mode1_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_v11_0_mode1_reset._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_v11_0_mode1_reset._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @psp_v11_0_set_psp_funcs(ptr nocapture noundef writeonly %psp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 3
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @psp_v11_0_funcs, ptr %funcs, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_v11_0_init_microcode(ptr noundef %psp) #1 align 64 {
entry:
  %fw_name = alloca [36 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fw_name) #8
  %2 = call ptr @memset(ptr %fw_name, i32 255, i32 36)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 172, i32 14
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %do.body [
    i32 720898, label %entry.sw.bb18_crit_edge
    i32 720896, label %entry.sw.bb85_crit_edge
    i32 720901, label %sw.bb4
    i32 720905, label %sw.bb5
    i32 720900, label %sw.bb6
    i32 720903, label %entry.sw.bb175_crit_edge
    i32 720907, label %sw.bb8
    i32 722176, label %sw.bb184
    i32 720908, label %sw.bb10
    i32 720909, label %sw.bb11
  ]

entry.sw.bb175_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb175

entry.sw.bb85_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb85

entry.sw.bb18_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb85

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb85

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb175

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb175

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb175

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/psp_v11_0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 128, 0\0A.popsection", ""() #8, !srcloc !149
  unreachable

sw.bb18:                                          ; preds = %sw.bb6, %entry.sw.bb18_crit_edge
  %chip_name.0.ph303 = phi ptr [ @.str.1, %entry.sw.bb18_crit_edge ], [ @.str.5, %sw.bb6 ]
  %call = tail call i32 @psp_init_sos_microcode(ptr noundef %psp, ptr noundef nonnull %chip_name.0.ph303) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %sw.bb18.cleanup_crit_edge

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb18
  %call19 = tail call i32 @psp_init_asd_microcode(ptr noundef %psp, ptr noundef nonnull %chip_name.0.ph303) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %call23 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name, i32 noundef 36, ptr noundef nonnull @.str.11, ptr noundef nonnull %chip_name.0.ph303)
  %ta_fw = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 30
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call26 = call i32 @request_firmware(ptr noundef %ta_fw, ptr noundef nonnull %fw_name, ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  %8 = ptrtoint ptr %ta_fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ta_fw, align 4
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_firmware(ptr noundef %9) #8
  %10 = ptrtoint ptr %ta_fw to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %ta_fw, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.12, ptr noundef nonnull %fw_name) #11
  br label %sw.epilog200

if.else:                                          ; preds = %if.end22
  %call40 = call i32 @amdgpu_ucode_validate(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.else.out2_crit_edge

if.else.out2_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %out2

if.end43:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %ta_fw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ta_fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %xgmi = getelementptr inbounds %struct.ta_firmware_header_v1_0, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %xgmi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %xgmi, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %bin_desc = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 33, i32 0, i32 3
  %20 = ptrtoint ptr %bin_desc to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %bin_desc, align 8
  %size_bytes = getelementptr inbounds %struct.ta_firmware_header_v1_0, ptr %16, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %size_bytes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size_bytes, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %size_bytes53 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 33, i32 0, i32 3, i32 2
  %24 = ptrtoint ptr %size_bytes53 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %size_bytes53, align 8
  %ucode_array_offset_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %16, i32 0, i32 8
  %25 = ptrtoint ptr %ucode_array_offset_bytes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ucode_array_offset_bytes, align 4
  %27 = call i32 @llvm.bswap.i32(i32 %26)
  %add.ptr = getelementptr i8, ptr %16, i32 %27
  %start_addr = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 33, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %start_addr to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr, ptr %start_addr, align 4
  %ucode_version = getelementptr inbounds %struct.common_firmware_header, ptr %16, i32 0, i32 6
  %29 = ptrtoint ptr %ucode_version to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ucode_version, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %ta_fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 31
  %32 = ptrtoint ptr %ta_fw_version to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %ta_fw_version, align 8
  %ras = getelementptr inbounds %struct.ta_firmware_header_v1_0, ptr %16, i32 0, i32 2
  %33 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ras, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34)
  %bin_desc63 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 34, i32 0, i32 3
  %36 = ptrtoint ptr %bin_desc63 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %bin_desc63, align 8
  %size_bytes66 = getelementptr inbounds %struct.ta_firmware_header_v1_0, ptr %16, i32 0, i32 2, i32 2
  %37 = ptrtoint ptr %size_bytes66 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size_bytes66, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38)
  %size_bytes71 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 34, i32 0, i32 3, i32 2
  %40 = ptrtoint ptr %size_bytes71 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %size_bytes71, align 8
  %offset_bytes = getelementptr inbounds %struct.ta_firmware_header_v1_0, ptr %16, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %offset_bytes to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %offset_bytes, align 4
  %43 = call i32 @llvm.bswap.i32(i32 %42)
  %add.ptr78 = getelementptr i8, ptr %add.ptr, i32 %43
  %start_addr83 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 34, i32 0, i32 3, i32 3
  %44 = ptrtoint ptr %start_addr83 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr78, ptr %start_addr83, align 4
  br label %sw.epilog200

sw.bb85:                                          ; preds = %sw.bb5, %sw.bb4, %entry.sw.bb85_crit_edge
  %chip_name.0.ph298 = phi ptr [ @.str.3, %sw.bb4 ], [ @.str.4, %sw.bb5 ], [ @.str.2, %entry.sw.bb85_crit_edge ]
  %call86 = tail call i32 @psp_init_sos_microcode(ptr noundef %psp, ptr noundef nonnull %chip_name.0.ph298) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %sw.bb85.cleanup_crit_edge

sw.bb85.cleanup_crit_edge:                        ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end89:                                         ; preds = %sw.bb85
  %call90 = tail call i32 @psp_init_asd_microcode(ptr noundef %psp, ptr noundef nonnull %chip_name.0.ph298) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.end89.cleanup_crit_edge

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end93:                                         ; preds = %if.end89
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %45 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %virt, align 8
  %and = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool94.not = icmp eq i32 %and, 0
  br i1 %tobool94.not, label %if.end96, label %if.end93.sw.epilog200_crit_edge

if.end93.sw.epilog200_crit_edge:                  ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog200

if.end96:                                         ; preds = %if.end93
  %call98 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name, i32 noundef 36, ptr noundef nonnull @.str.11, ptr noundef nonnull %chip_name.0.ph298)
  %ta_fw100 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 30
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 8
  %call103 = call i32 @request_firmware(ptr noundef %ta_fw100, ptr noundef nonnull %fw_name, ptr noundef %48) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  %49 = ptrtoint ptr %ta_fw100 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ta_fw100, align 4
  br i1 %tobool104.not, label %if.else115, label %if.then105

if.then105:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_firmware(ptr noundef %50) #8
  %51 = ptrtoint ptr %ta_fw100 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %ta_fw100, align 4
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %53, ptr noundef nonnull @.str.12, ptr noundef nonnull %fw_name) #11
  br label %sw.epilog200

if.else115:                                       ; preds = %if.end96
  %call118 = call i32 @amdgpu_ucode_validate(ptr noundef %50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end121, label %if.else115.out2_crit_edge

if.else115.out2_crit_edge:                        ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #10
  br label %out2

if.end121:                                        ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %ta_fw100 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ta_fw100, align 4
  %data124 = getelementptr inbounds %struct.firmware, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %data124 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data124, align 4
  %hdcp = getelementptr inbounds %struct.ta_firmware_header_v1_0, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %hdcp to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hdcp, align 4
  %60 = call i32 @llvm.bswap.i32(i32 %59)
  %bin_desc128 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 35, i32 0, i32 3
  %61 = ptrtoint ptr %bin_desc128 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %bin_desc128, align 8
  %size_bytes131 = getelementptr inbounds %struct.ta_firmware_header_v1_0, ptr %57, i32 0, i32 3, i32 2
  %62 = ptrtoint ptr %size_bytes131 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %size_bytes131, align 4
  %64 = call i32 @llvm.bswap.i32(i32 %63)
  %size_bytes136 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 35, i32 0, i32 3, i32 2
  %65 = ptrtoint ptr %size_bytes136 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %size_bytes136, align 8
  %ucode_array_offset_bytes138 = getelementptr inbounds %struct.common_firmware_header, ptr %57, i32 0, i32 8
  %66 = ptrtoint ptr %ucode_array_offset_bytes138 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ucode_array_offset_bytes138, align 4
  %68 = call i32 @llvm.bswap.i32(i32 %67)
  %add.ptr139 = getelementptr i8, ptr %57, i32 %68
  %start_addr144 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 35, i32 0, i32 3, i32 3
  %69 = ptrtoint ptr %start_addr144 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %add.ptr139, ptr %start_addr144, align 4
  %ucode_version146 = getelementptr inbounds %struct.common_firmware_header, ptr %57, i32 0, i32 6
  %70 = ptrtoint ptr %ucode_version146 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ucode_version146, align 4
  %72 = call i32 @llvm.bswap.i32(i32 %71)
  %ta_fw_version148 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 31
  %73 = ptrtoint ptr %ta_fw_version148 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %ta_fw_version148, align 8
  %dtm = getelementptr inbounds %struct.ta_firmware_header_v1_0, ptr %57, i32 0, i32 4
  %74 = ptrtoint ptr %dtm to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dtm, align 4
  %76 = call i32 @llvm.bswap.i32(i32 %75)
  %bin_desc152 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 36, i32 0, i32 3
  %77 = ptrtoint ptr %bin_desc152 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %bin_desc152, align 8
  %size_bytes155 = getelementptr inbounds %struct.ta_firmware_header_v1_0, ptr %57, i32 0, i32 4, i32 2
  %78 = ptrtoint ptr %size_bytes155 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %size_bytes155, align 4
  %80 = call i32 @llvm.bswap.i32(i32 %79)
  %size_bytes160 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 36, i32 0, i32 3, i32 2
  %81 = ptrtoint ptr %size_bytes160 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %size_bytes160, align 8
  %offset_bytes167 = getelementptr inbounds %struct.ta_firmware_header_v1_0, ptr %57, i32 0, i32 4, i32 1
  %82 = ptrtoint ptr %offset_bytes167 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %offset_bytes167, align 4
  %84 = call i32 @llvm.bswap.i32(i32 %83)
  %add.ptr168 = getelementptr i8, ptr %add.ptr139, i32 %84
  %start_addr173 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 36, i32 0, i32 3, i32 3
  %85 = ptrtoint ptr %start_addr173 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %add.ptr168, ptr %start_addr173, align 4
  br label %sw.epilog200

sw.bb175:                                         ; preds = %sw.bb11, %sw.bb10, %sw.bb8, %entry.sw.bb175_crit_edge
  %chip_name.0.ph = phi ptr [ @.str.7, %sw.bb8 ], [ @.str.9, %sw.bb10 ], [ @.str.10, %sw.bb11 ], [ @.str.6, %entry.sw.bb175_crit_edge ]
  %call176 = tail call i32 @psp_init_sos_microcode(ptr noundef %psp, ptr noundef nonnull %chip_name.0.ph) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.end179, label %sw.bb175.cleanup_crit_edge

sw.bb175.cleanup_crit_edge:                       ; preds = %sw.bb175
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end179:                                        ; preds = %sw.bb175
  %call180 = tail call i32 @psp_init_ta_microcode(ptr noundef %psp, ptr noundef nonnull %chip_name.0.ph) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.end179.sw.epilog200_crit_edge, label %if.end179.cleanup_crit_edge

if.end179.cleanup_crit_edge:                      ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end179.sw.epilog200_crit_edge:                 ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog200

sw.bb184:                                         ; preds = %entry
  %call185 = tail call i32 @psp_init_asd_microcode(ptr noundef %psp, ptr noundef nonnull @.str.8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.end188, label %sw.bb184.cleanup_crit_edge

sw.bb184.cleanup_crit_edge:                       ; preds = %sw.bb184
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end188:                                        ; preds = %sw.bb184
  %call189 = tail call i32 @psp_init_toc_microcode(ptr noundef %psp, ptr noundef nonnull @.str.8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.end188.sw.epilog200_crit_edge, label %if.end188.cleanup_crit_edge

if.end188.cleanup_crit_edge:                      ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end188.sw.epilog200_crit_edge:                 ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog200

sw.epilog200:                                     ; preds = %if.end188.sw.epilog200_crit_edge, %if.end179.sw.epilog200_crit_edge, %if.end121, %if.then105, %if.end93.sw.epilog200_crit_edge, %if.end43, %if.then28
  br label %cleanup

out2:                                             ; preds = %if.else115.out2_crit_edge, %if.else.out2_crit_edge
  %err.0 = phi i32 [ %call118, %if.else115.out2_crit_edge ], [ %call40, %if.else.out2_crit_edge ]
  %ta_fw202 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 30
  %86 = ptrtoint ptr %ta_fw202 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ta_fw202, align 4
  call void @release_firmware(ptr noundef %87) #8
  %88 = ptrtoint ptr %ta_fw202 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %ta_fw202, align 4
  br label %cleanup

cleanup:                                          ; preds = %out2, %sw.epilog200, %if.end188.cleanup_crit_edge, %sw.bb184.cleanup_crit_edge, %if.end179.cleanup_crit_edge, %sw.bb175.cleanup_crit_edge, %if.end89.cleanup_crit_edge, %sw.bb85.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb18.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog200 ], [ %err.0, %out2 ], [ %call, %sw.bb18.cleanup_crit_edge ], [ %call19, %if.end.cleanup_crit_edge ], [ %call86, %sw.bb85.cleanup_crit_edge ], [ %call90, %if.end89.cleanup_crit_edge ], [ %call176, %sw.bb175.cleanup_crit_edge ], [ %call180, %if.end179.cleanup_crit_edge ], [ %call185, %sw.bb184.cleanup_crit_edge ], [ %call189, %if.end188.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fw_name) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_v11_0_bootloader_load_kdb(ptr noundef %psp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %kdb = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 11
  %call = tail call fastcc i32 @psp_v11_0_bootloader_load_component(ptr noundef %psp, ptr noundef %kdb, i32 noundef 524288)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_v11_0_bootloader_load_spl(ptr noundef %psp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spl = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 12
  %call = tail call fastcc i32 @psp_v11_0_bootloader_load_component(ptr noundef %psp, ptr noundef %spl, i32 noundef 268435456)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_v11_0_bootloader_load_sysdrv(ptr noundef %psp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sys = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 8
  %call = tail call fastcc i32 @psp_v11_0_bootloader_load_component(ptr noundef %psp, ptr noundef %sys, i32 noundef 65536)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_v11_0_bootloader_load_sos(ptr noundef %psp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cond.false.i_crit_edge, label %land.lhs.true.i

entry.cond.false.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %entry
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool7.not.i = icmp eq ptr %7, null
  br i1 %tobool7.not.i, label %land.lhs.true3.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true3.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add.i = add i32 %11, 145
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef %add.i, i32 noundef 0, i32 noundef 14) #8
  br label %psp_v11_0_is_sos_alive.exit

cond.false.i:                                     ; preds = %land.lhs.true3.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %entry.cond.false.i_crit_edge
  %arrayidx15.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %12 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx15.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add18.i = add i32 %15, 145
  %call19.i = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add18.i, i32 noundef 0) #8
  br label %psp_v11_0_is_sos_alive.exit

psp_v11_0_is_sos_alive.exit:                      ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %call19.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp.i.not = icmp eq i32 %cond.i, 0
  br i1 %cmp.i.not, label %if.end, label %psp_v11_0_is_sos_alive.exit.cleanup_crit_edge

psp_v11_0_is_sos_alive.exit.cleanup_crit_edge:    ; preds = %psp_v11_0_is_sos_alive.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %psp_v11_0_is_sos_alive.exit
  %call2 = tail call fastcc i32 @psp_v11_0_wait_for_bootloader(ptr noundef %psp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %start_addr = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 9, i32 3
  %16 = ptrtoint ptr %start_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %start_addr, align 4
  %size_bytes = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 9, i32 2
  %18 = ptrtoint ptr %size_bytes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size_bytes, align 8
  tail call void @psp_copy_fw(ptr noundef %psp, ptr noundef %17, i32 noundef %19) #8
  %20 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %virt.i, align 8
  %and = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end4.cond.false_crit_edge, label %land.lhs.true

if.end4.cond.false_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true:                                    ; preds = %if.end4
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %22 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %funcs, align 4
  %tobool7.not = icmp eq ptr %23, null
  br i1 %tobool7.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true8

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true8:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sriov_wreg, align 4
  %tobool12.not = icmp eq ptr %25, null
  br i1 %tobool12.not, label %land.lhs.true8.cond.false_crit_edge, label %cond.true

land.lhs.true8.cond.false_crit_edge:              ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add = add i32 %29, 100
  %fw_pri_mc_addr = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 5
  %30 = ptrtoint ptr %fw_pri_mc_addr to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %fw_pri_mc_addr, align 8
  %shr = lshr i64 %31, 20
  %conv = trunc i64 %shr to i32
  tail call void %25(ptr noundef %1, i32 noundef %add, i32 noundef %conv, i32 noundef 0, i32 noundef 14) #8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true8.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.end4.cond.false_crit_edge
  %arrayidx20 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %32 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx20, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %add23 = add i32 %35, 100
  %fw_pri_mc_addr24 = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 5
  %36 = ptrtoint ptr %fw_pri_mc_addr24 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %fw_pri_mc_addr24, align 8
  %shr25 = lshr i64 %37, 20
  %conv26 = trunc i64 %shr25 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add23, i32 noundef %conv26, i32 noundef 0) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %38 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %virt.i, align 8
  %and29 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %cond.end.cond.false52_crit_edge, label %land.lhs.true31

cond.end.cond.false52_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false52

land.lhs.true31:                                  ; preds = %cond.end
  %funcs34 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %40 = ptrtoint ptr %funcs34 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %funcs34, align 4
  %tobool35.not = icmp eq ptr %41, null
  br i1 %tobool35.not, label %land.lhs.true31.cond.false52_crit_edge, label %land.lhs.true36

land.lhs.true31.cond.false52_crit_edge:           ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false52

land.lhs.true36:                                  ; preds = %land.lhs.true31
  %sriov_wreg40 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %41, i32 0, i32 12
  %42 = ptrtoint ptr %sriov_wreg40 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sriov_wreg40, align 4
  %tobool41.not = icmp eq ptr %43, null
  br i1 %tobool41.not, label %land.lhs.true36.cond.false52_crit_edge, label %cond.true42

land.lhs.true36.cond.false52_crit_edge:           ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false52

cond.true42:                                      ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx48 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %44 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx48, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %add51 = add i32 %47, 99
  tail call void %43(ptr noundef %1, i32 noundef %add51, i32 noundef 131072, i32 noundef 0, i32 noundef 14) #8
  br label %cond.end58

cond.false52:                                     ; preds = %land.lhs.true36.cond.false52_crit_edge, %land.lhs.true31.cond.false52_crit_edge, %cond.end.cond.false52_crit_edge
  %arrayidx54 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %48 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx54, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %add57 = add i32 %51, 99
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add57, i32 noundef 131072, i32 noundef 0) #8
  br label %cond.end58

cond.end58:                                       ; preds = %cond.false52, %cond.true42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748000) #8
  %arrayidx61 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %72 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx61, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  %add64 = add i32 %75, 145
  %76 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %virt.i, align 8
  %and67 = and i32 %77, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %cond.end58.cond.false90_crit_edge, label %land.lhs.true69

cond.end58.cond.false90_crit_edge:                ; preds = %cond.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false90

land.lhs.true69:                                  ; preds = %cond.end58
  %funcs72 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %78 = ptrtoint ptr %funcs72 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %funcs72, align 4
  %tobool73.not = icmp eq ptr %79, null
  br i1 %tobool73.not, label %land.lhs.true69.cond.false90_crit_edge, label %land.lhs.true74

land.lhs.true69.cond.false90_crit_edge:           ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false90

land.lhs.true74:                                  ; preds = %land.lhs.true69
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %79, i32 0, i32 13
  %80 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sriov_rreg, align 4
  %tobool78.not = icmp eq ptr %81, null
  br i1 %tobool78.not, label %land.lhs.true74.cond.false90_crit_edge, label %cond.true79

land.lhs.true74.cond.false90_crit_edge:           ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false90

cond.true79:                                      ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #10
  %call89 = tail call i32 %81(ptr noundef %1, i32 noundef %add64, i32 noundef 0, i32 noundef 14) #8
  br label %cond.end97

cond.false90:                                     ; preds = %land.lhs.true74.cond.false90_crit_edge, %land.lhs.true69.cond.false90_crit_edge, %cond.end58.cond.false90_crit_edge
  %call96 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add64, i32 noundef 0) #8
  br label %cond.end97

cond.end97:                                       ; preds = %cond.false90, %cond.true79
  %cond = phi i32 [ %call89, %cond.true79 ], [ %call96, %cond.false90 ]
  %call98 = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add64, i32 noundef %cond, i32 noundef 0, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end97, %if.end.cleanup_crit_edge, %psp_v11_0_is_sos_alive.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call98, %cond.end97 ], [ 0, %psp_v11_0_is_sos_alive.exit.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_v11_0_ring_init(ptr noundef %psp, i32 noundef %ring_type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %km_ring = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 1
  %2 = ptrtoint ptr %km_ring to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %ring_type, ptr %km_ring, align 8
  %ring_size = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %ring_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4096, ptr %ring_size, align 4
  %rbuf = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 112, i32 6
  %ring_mem_mc_addr = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 1, i32 2
  %ring_mem = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 1, i32 1
  %call = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %1, i32 noundef 4096, i32 noundef 4096, i32 noundef 4, ptr noundef %rbuf, ptr noundef %ring_mem_mc_addr, ptr noundef %ring_mem) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %ring_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ring_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_v11_0_ring_create(ptr noundef %psp, i32 noundef %ring_type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %ring_wptr = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %ring_wptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ring_wptr, align 8
  %call = tail call i32 @psp_v11_0_ring_stop(ptr noundef %psp, i32 noundef %ring_type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %ring_mem_mc_addr = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %ring_mem_mc_addr to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ring_mem_mc_addr, align 8
  %conv = trunc i64 %6 to i32
  %7 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %virt, align 8
  %and7 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.cond.false_crit_edge, label %land.lhs.true

if.end.cond.false_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true:                                    ; preds = %if.end
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %9 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %funcs, align 4
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true10

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true10:                                  ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sriov_wreg, align 4
  %tobool14.not = icmp eq ptr %12, null
  br i1 %tobool14.not, label %land.lhs.true10.cond.false_crit_edge, label %cond.true

land.lhs.true10.cond.false_crit_edge:             ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add = add i32 %16, 166
  tail call void %12(ptr noundef %1, i32 noundef %add, i32 noundef %conv, i32 noundef 0, i32 noundef 14) #8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true10.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.end.cond.false_crit_edge
  %arrayidx22 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %17 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx22, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add25 = add i32 %20, 166
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add25, i32 noundef %conv, i32 noundef 0) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %21 = ptrtoint ptr %ring_mem_mc_addr to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %ring_mem_mc_addr, align 8
  %shr = lshr i64 %22, 32
  %conv28 = trunc i64 %shr to i32
  %23 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %virt, align 8
  %and31 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %cond.end.cond.false54_crit_edge, label %land.lhs.true33

cond.end.cond.false54_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false54

land.lhs.true33:                                  ; preds = %cond.end
  %funcs36 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %25 = ptrtoint ptr %funcs36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %funcs36, align 4
  %tobool37.not = icmp eq ptr %26, null
  br i1 %tobool37.not, label %land.lhs.true33.cond.false54_crit_edge, label %land.lhs.true38

land.lhs.true33.cond.false54_crit_edge:           ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false54

land.lhs.true38:                                  ; preds = %land.lhs.true33
  %sriov_wreg42 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %sriov_wreg42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sriov_wreg42, align 4
  %tobool43.not = icmp eq ptr %28, null
  br i1 %tobool43.not, label %land.lhs.true38.cond.false54_crit_edge, label %cond.true44

land.lhs.true38.cond.false54_crit_edge:           ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false54

cond.true44:                                      ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx50 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %29 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx50, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add53 = add i32 %32, 167
  tail call void %28(ptr noundef %1, i32 noundef %add53, i32 noundef %conv28, i32 noundef 0, i32 noundef 14) #8
  br label %cond.end60

cond.false54:                                     ; preds = %land.lhs.true38.cond.false54_crit_edge, %land.lhs.true33.cond.false54_crit_edge, %cond.end.cond.false54_crit_edge
  %arrayidx56 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %33 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx56, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %add59 = add i32 %36, 167
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add59, i32 noundef %conv28, i32 noundef 0) #8
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false54, %cond.true44
  %37 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %virt, align 8
  %and63 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %cond.end60.cond.false86_crit_edge, label %land.lhs.true65

cond.end60.cond.false86_crit_edge:                ; preds = %cond.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false86

land.lhs.true65:                                  ; preds = %cond.end60
  %funcs68 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %39 = ptrtoint ptr %funcs68 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %funcs68, align 4
  %tobool69.not = icmp eq ptr %40, null
  br i1 %tobool69.not, label %land.lhs.true65.cond.false86_crit_edge, label %land.lhs.true70

land.lhs.true65.cond.false86_crit_edge:           ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false86

land.lhs.true70:                                  ; preds = %land.lhs.true65
  %sriov_wreg74 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %40, i32 0, i32 12
  %41 = ptrtoint ptr %sriov_wreg74 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sriov_wreg74, align 4
  %tobool75.not = icmp eq ptr %42, null
  br i1 %tobool75.not, label %land.lhs.true70.cond.false86_crit_edge, label %cond.true76

land.lhs.true70.cond.false86_crit_edge:           ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false86

cond.true76:                                      ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx82 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %43 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx82, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %add85 = add i32 %46, 165
  tail call void %42(ptr noundef %1, i32 noundef %add85, i32 noundef 131072, i32 noundef 0, i32 noundef 14) #8
  br label %cond.end92

cond.false86:                                     ; preds = %land.lhs.true70.cond.false86_crit_edge, %land.lhs.true65.cond.false86_crit_edge, %cond.end60.cond.false86_crit_edge
  %arrayidx88 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %47 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx88, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %add91 = add i32 %50, 165
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add91, i32 noundef 131072, i32 noundef 0) #8
  br label %cond.end92

cond.end92:                                       ; preds = %cond.false86, %cond.true76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #8
  %arrayidx95 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %71 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx95, align 8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %add98 = add i32 %74, 165
  %call99 = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add98, i32 noundef -2147483648, i32 noundef -2147418113, i1 noundef zeroext false) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  %arrayidx101 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %75 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx101, align 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  %add104 = add i32 %78, 128
  %call105 = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add104, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end108, label %if.then107

if.then107:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20) #8
  br label %cleanup

if.end108:                                        ; preds = %if.else
  %ring_mem_mc_addr109 = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 1, i32 2
  %79 = ptrtoint ptr %ring_mem_mc_addr109 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %ring_mem_mc_addr109, align 8
  %conv111 = trunc i64 %80 to i32
  %81 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %virt, align 8
  %and114 = and i32 %82, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.end108.cond.false137_crit_edge, label %land.lhs.true116

if.end108.cond.false137_crit_edge:                ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false137

land.lhs.true116:                                 ; preds = %if.end108
  %funcs119 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %83 = ptrtoint ptr %funcs119 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %funcs119, align 4
  %tobool120.not = icmp eq ptr %84, null
  br i1 %tobool120.not, label %land.lhs.true116.cond.false137_crit_edge, label %land.lhs.true121

land.lhs.true116.cond.false137_crit_edge:         ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false137

land.lhs.true121:                                 ; preds = %land.lhs.true116
  %sriov_wreg125 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %84, i32 0, i32 12
  %85 = ptrtoint ptr %sriov_wreg125 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sriov_wreg125, align 4
  %tobool126.not = icmp eq ptr %86, null
  br i1 %tobool126.not, label %land.lhs.true121.cond.false137_crit_edge, label %cond.true127

land.lhs.true121.cond.false137_crit_edge:         ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false137

cond.true127:                                     ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx101, align 8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 4
  %add136 = add i32 %90, 133
  tail call void %86(ptr noundef %1, i32 noundef %add136, i32 noundef %conv111, i32 noundef 0, i32 noundef 14) #8
  br label %cond.end143

cond.false137:                                    ; preds = %land.lhs.true121.cond.false137_crit_edge, %land.lhs.true116.cond.false137_crit_edge, %if.end108.cond.false137_crit_edge
  %91 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx101, align 8
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %92, align 4
  %add142 = add i32 %94, 133
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add142, i32 noundef %conv111, i32 noundef 0) #8
  br label %cond.end143

cond.end143:                                      ; preds = %cond.false137, %cond.true127
  %95 = ptrtoint ptr %ring_mem_mc_addr109 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %ring_mem_mc_addr109, align 8
  %shr145 = lshr i64 %96, 32
  %conv147 = trunc i64 %shr145 to i32
  %97 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %virt, align 8
  %and150 = and i32 %98, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %cond.end143.cond.false173_crit_edge, label %land.lhs.true152

cond.end143.cond.false173_crit_edge:              ; preds = %cond.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false173

land.lhs.true152:                                 ; preds = %cond.end143
  %funcs155 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %99 = ptrtoint ptr %funcs155 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %funcs155, align 4
  %tobool156.not = icmp eq ptr %100, null
  br i1 %tobool156.not, label %land.lhs.true152.cond.false173_crit_edge, label %land.lhs.true157

land.lhs.true152.cond.false173_crit_edge:         ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false173

land.lhs.true157:                                 ; preds = %land.lhs.true152
  %sriov_wreg161 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %100, i32 0, i32 12
  %101 = ptrtoint ptr %sriov_wreg161 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sriov_wreg161, align 4
  %tobool162.not = icmp eq ptr %102, null
  br i1 %tobool162.not, label %land.lhs.true157.cond.false173_crit_edge, label %cond.true163

land.lhs.true157.cond.false173_crit_edge:         ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false173

cond.true163:                                     ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx101, align 8
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %104, align 4
  %add172 = add i32 %106, 134
  tail call void %102(ptr noundef %1, i32 noundef %add172, i32 noundef %conv147, i32 noundef 0, i32 noundef 14) #8
  br label %cond.end179

cond.false173:                                    ; preds = %land.lhs.true157.cond.false173_crit_edge, %land.lhs.true152.cond.false173_crit_edge, %cond.end143.cond.false173_crit_edge
  %107 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx101, align 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %108, align 4
  %add178 = add i32 %110, 134
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add178, i32 noundef %conv147, i32 noundef 0) #8
  br label %cond.end179

cond.end179:                                      ; preds = %cond.false173, %cond.true163
  %ring_size = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 1, i32 4
  %111 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %ring_size, align 4
  %113 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %virt, align 8
  %and182 = and i32 %114, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %cond.end179.cond.false205_crit_edge, label %land.lhs.true184

cond.end179.cond.false205_crit_edge:              ; preds = %cond.end179
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false205

land.lhs.true184:                                 ; preds = %cond.end179
  %funcs187 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %115 = ptrtoint ptr %funcs187 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %funcs187, align 4
  %tobool188.not = icmp eq ptr %116, null
  br i1 %tobool188.not, label %land.lhs.true184.cond.false205_crit_edge, label %land.lhs.true189

land.lhs.true184.cond.false205_crit_edge:         ; preds = %land.lhs.true184
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false205

land.lhs.true189:                                 ; preds = %land.lhs.true184
  %sriov_wreg193 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %116, i32 0, i32 12
  %117 = ptrtoint ptr %sriov_wreg193 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %sriov_wreg193, align 4
  %tobool194.not = icmp eq ptr %118, null
  br i1 %tobool194.not, label %land.lhs.true189.cond.false205_crit_edge, label %cond.true195

land.lhs.true189.cond.false205_crit_edge:         ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false205

cond.true195:                                     ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx101, align 8
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 4
  %add204 = add i32 %122, 135
  tail call void %118(ptr noundef %1, i32 noundef %add204, i32 noundef %112, i32 noundef 0, i32 noundef 14) #8
  br label %cond.end211

cond.false205:                                    ; preds = %land.lhs.true189.cond.false205_crit_edge, %land.lhs.true184.cond.false205_crit_edge, %cond.end179.cond.false205_crit_edge
  %123 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx101, align 8
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %124, align 4
  %add210 = add i32 %126, 135
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add210, i32 noundef %112, i32 noundef 0) #8
  br label %cond.end211

cond.end211:                                      ; preds = %cond.false205, %cond.true195
  %shl = shl i32 %ring_type, 16
  %127 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %virt, align 8
  %and214 = and i32 %128, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214)
  %tobool215.not = icmp eq i32 %and214, 0
  br i1 %tobool215.not, label %cond.end211.cond.false237_crit_edge, label %land.lhs.true216

cond.end211.cond.false237_crit_edge:              ; preds = %cond.end211
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false237

land.lhs.true216:                                 ; preds = %cond.end211
  %funcs219 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %129 = ptrtoint ptr %funcs219 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %funcs219, align 4
  %tobool220.not = icmp eq ptr %130, null
  br i1 %tobool220.not, label %land.lhs.true216.cond.false237_crit_edge, label %land.lhs.true221

land.lhs.true216.cond.false237_crit_edge:         ; preds = %land.lhs.true216
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false237

land.lhs.true221:                                 ; preds = %land.lhs.true216
  %sriov_wreg225 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %130, i32 0, i32 12
  %131 = ptrtoint ptr %sriov_wreg225 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %sriov_wreg225, align 4
  %tobool226.not = icmp eq ptr %132, null
  br i1 %tobool226.not, label %land.lhs.true221.cond.false237_crit_edge, label %cond.true227

land.lhs.true221.cond.false237_crit_edge:         ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false237

cond.true227:                                     ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #10
  %133 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx101, align 8
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %134, align 4
  %add236 = add i32 %136, 128
  tail call void %132(ptr noundef %1, i32 noundef %add236, i32 noundef %shl, i32 noundef 0, i32 noundef 14) #8
  br label %cond.end243

cond.false237:                                    ; preds = %land.lhs.true221.cond.false237_crit_edge, %land.lhs.true216.cond.false237_crit_edge, %cond.end211.cond.false237_crit_edge
  %137 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx101, align 8
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %138, align 4
  %add242 = add i32 %140, 128
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add242, i32 noundef %shl, i32 noundef 0) #8
  br label %cond.end243

cond.end243:                                      ; preds = %cond.false237, %cond.true227
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %141 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %141(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %142(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %143(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %144 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %144(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %145(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %146(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %147(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %148 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %148(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %149(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %150 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %150(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %151 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %151(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %152 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %152(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %153(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %154(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %155 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %155(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %156 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %156(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %157 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %157(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %158 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %158(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %159 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %159(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %160 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %160(i32 noundef 214748000) #8
  %161 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx101, align 8
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %162, align 4
  %add254 = add i32 %164, 128
  %call255 = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add254, i32 noundef -2147483648, i32 noundef -2147418113, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end243, %if.then107, %cond.end92, %if.then3
  %retval.0 = phi i32 [ %call, %if.then3 ], [ %call105, %if.then107 ], [ %call99, %cond.end92 ], [ %call255, %cond.end243 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_v11_0_ring_stop(ptr noundef %psp, i32 noundef %ring_type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false48, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true7

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true7:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_wreg, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %land.lhs.true7.cond.false_crit_edge, label %cond.true

land.lhs.true7.cond.false_crit_edge:              ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 165
  tail call void %7(ptr noundef %1, i32 noundef %add, i32 noundef 786432, i32 noundef 0, i32 noundef 14) #8
  br label %if.end

cond.false:                                       ; preds = %land.lhs.true7.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge
  %arrayidx19 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx19, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add22 = add i32 %15, 165
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add22, i32 noundef 786432, i32 noundef 0) #8
  br label %if.end

cond.false48:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx50 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %16 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx50, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add53 = add i32 %19, 128
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add53, i32 noundef 196608, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %cond.false48, %cond.false, %cond.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #8
  %40 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %virt, align 8
  %and58 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  %arrayidx68 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %42 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx68, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %. = select i1 %tobool59.not, i32 128, i32 165
  %add71 = add i32 %45, %.
  %call72 = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add71, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #8
  ret i32 %call72
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_v11_0_ring_destroy(ptr noundef %psp, i32 noundef %ring_type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %call = tail call i32 @psp_v11_0_ring_stop(ptr noundef %psp, i32 noundef %ring_type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rbuf = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 112, i32 6
  %ring_mem_mc_addr = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 1, i32 2
  %ring_mem = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 1, i32 1
  tail call void @amdgpu_bo_free_kernel(ptr noundef %rbuf, ptr noundef %ring_mem_mc_addr, ptr noundef %ring_mem) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_v11_0_mode1_reset(ptr noundef %psp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add = add i32 %5, 128
  %call = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add, i32 noundef -2147483648, i32 noundef -2147418113, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add, i32 noundef 458752, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 500) #8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add9 = add i32 %9, 97
  %call10 = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add9, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %.str.28..str.25 = select i1 %tobool11.not, ptr @.str.28, ptr @.str.25
  %. = select i1 %tobool11.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %.str.28.sink = phi ptr [ @.str.22, %entry.cleanup_crit_edge ], [ %.str.28..str.25, %if.end ]
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %., %if.end ]
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.28.sink) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_v11_0_memory_training(ptr noundef %psp, i32 noundef %ops) #1 align 64 {
entry:
  %p2c_header = alloca [4 x i32], align 4
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_train_ctx = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 40
  %sys_cache = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 40, i32 1
  %0 = ptrtoint ptr %sys_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sys_cache, align 8
  %2 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %psp, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p2c_header) #8
  %4 = getelementptr inbounds [4 x i32], ptr %p2c_header, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i32], ptr %p2c_header, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i32], ptr %p2c_header, i32 0, i32 3
  %7 = call ptr @memset(ptr %p2c_header, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #8
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %idx, align 4, !annotation !150
  %init = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 40, i32 5
  %9 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %init, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %10, label %if.then4 [
    i32 0, label %if.then
    i32 8, label %if.end5
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.30) #8
  br label %cleanup

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.31) #8
  br label %cleanup

if.end5:                                          ; preds = %entry
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 132
  %12 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end5.cond.false.i_crit_edge, label %land.lhs.true.i

if.end5.cond.false.i_crit_edge:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.end5
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 2, i32 15
  %14 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %funcs.i, align 4
  %tobool2.not.i = icmp eq ptr %15, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool7.not.i = icmp eq ptr %17, null
  br i1 %tobool7.not.i, label %land.lhs.true3.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true3.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %3, i32 0, i32 130, i32 14
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add.i = add i32 %21, 145
  %call.i = tail call i32 %17(ptr noundef %3, i32 noundef %add.i, i32 noundef 0, i32 noundef 14) #8
  br label %psp_v11_0_is_sos_alive.exit

cond.false.i:                                     ; preds = %land.lhs.true3.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %if.end5.cond.false.i_crit_edge
  %arrayidx15.i = getelementptr %struct.amdgpu_device, ptr %3, i32 0, i32 130, i32 14
  %22 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx15.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add18.i = add i32 %25, 145
  %call19.i = tail call i32 @amdgpu_device_rreg(ptr noundef %3, i32 noundef %add18.i, i32 noundef 0) #8
  br label %psp_v11_0_is_sos_alive.exit

psp_v11_0_is_sos_alive.exit:                      ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %call19.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp.i.not = icmp eq i32 %cond.i, 0
  br i1 %cmp.i.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %psp_v11_0_is_sos_alive.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.32) #8
  br label %cleanup

if.end7:                                          ; preds = %psp_v11_0_is_sos_alive.exit
  %p2c_train_data_offset = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 40, i32 2
  %26 = ptrtoint ptr %p2c_train_data_offset to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %p2c_train_data_offset, align 8
  call void @amdgpu_device_vram_access(ptr noundef %3, i64 noundef %27, ptr noundef nonnull %p2c_header, i32 noundef 16, i1 noundef zeroext false) #8
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 4
  %arrayidx8 = getelementptr i32, ptr %1, i32 1
  %30 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx8, align 4
  %arrayidx9 = getelementptr i32, ptr %1, i32 2
  %32 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx9, align 4
  %arrayidx10 = getelementptr i32, ptr %1, i32 3
  %34 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx10, align 4
  %36 = ptrtoint ptr %p2c_header to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %p2c_header, align 4
  %38 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %4, align 4
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %5, align 4
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %6, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.33, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43) #8
  %and = and i32 %ops, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7.if.end16_crit_edge, label %if.then15

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then15:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.34) #8
  %or = or i32 %ops, 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end7.if.end16_crit_edge
  %ops.addr.0 = phi i32 [ %or, %if.then15 ], [ %ops, %if.end7.if.end16_crit_edge ]
  %and17 = and i32 %ops.addr.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end23_crit_edge, label %land.lhs.true

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end16
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1414744386, i32 %45)
  %cmp20.not = icmp eq i32 %45, 1414744386
  br i1 %cmp20.not, label %land.lhs.true.if.end23_crit_edge, label %if.then21

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.35) #8
  %or22 = or i32 %ops.addr.0, 2
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %land.lhs.true.if.end23_crit_edge, %if.end16.if.end23_crit_edge
  %ops.addr.1 = phi i32 [ %or22, %if.then21 ], [ %ops.addr.0, %land.lhs.true.if.end23_crit_edge ], [ %ops.addr.0, %if.end16.if.end23_crit_edge ]
  %46 = ptrtoint ptr %p2c_header to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %p2c_header, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1414744386, i32 %47)
  %cmp25 = icmp eq i32 %47, 1414744386
  br i1 %cmp25, label %land.lhs.true26, label %if.end23.if.end35_crit_edge

if.end23.if.end35_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.lhs.true26:                                  ; preds = %if.end23
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1414744386, i32 %49)
  %cmp28 = icmp eq i32 %49, 1414744386
  br i1 %cmp28, label %land.lhs.true29, label %land.lhs.true26.if.then33_crit_edge

land.lhs.true26.if.then33_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %50 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx10, align 4
  %52 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp32 = icmp eq i32 %51, %53
  br i1 %cmp32, label %land.lhs.true29.if.end35_crit_edge, label %land.lhs.true29.if.then33_crit_edge

land.lhs.true29.if.then33_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

land.lhs.true29.if.end35_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then33:                                        ; preds = %land.lhs.true29.if.then33_crit_edge, %land.lhs.true26.if.then33_crit_edge
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.36) #8
  %or34 = or i32 %ops.addr.1, 2
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %land.lhs.true29.if.end35_crit_edge, %if.end23.if.end35_crit_edge
  %ops.addr.2 = phi i32 [ %ops.addr.1, %land.lhs.true29.if.end35_crit_edge ], [ %or34, %if.then33 ], [ %ops.addr.1, %if.end23.if.end35_crit_edge ]
  %and36 = and i32 %ops.addr.2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end43_crit_edge, label %land.lhs.true38

if.end35.if.end43_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

land.lhs.true38:                                  ; preds = %if.end35
  %54 = ptrtoint ptr %p2c_header to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %p2c_header, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1414744386, i32 %55)
  %cmp40.not = icmp eq i32 %55, 1414744386
  br i1 %cmp40.not, label %land.lhs.true38.if.end43_crit_edge, label %if.then41

land.lhs.true38.if.end43_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then41:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.37) #8
  %or42 = or i32 %ops.addr.2, 1
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %land.lhs.true38.if.end43_crit_edge, %if.end35.if.end43_crit_edge
  %ops.addr.3 = phi i32 [ %or42, %if.then41 ], [ %ops.addr.2, %land.lhs.true38.if.end43_crit_edge ], [ %ops.addr.2, %if.end35.if.end43_crit_edge ]
  %and44 = and i32 %ops.addr.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %and47 = and i32 %ops.addr.3, -11
  %or48 = or i32 %and47, 2
  %ops.addr.4 = select i1 %tobool45.not, i32 %ops.addr.3, i32 %or48
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.38, i32 noundef %ops.addr.4) #8
  %and50 = and i32 %ops.addr.4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end43.if.end79_crit_edge, label %if.then52

if.end43.if.end79_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then52:                                        ; preds = %if.end43
  %visible_vram_size = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 62, i32 3
  %56 = ptrtoint ptr %visible_vram_size to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %visible_vram_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 33554432, i64 %57)
  %cmp53 = icmp ult i64 %57, 33554432
  br i1 %cmp53, label %if.then52.if.then56_crit_edge, label %lor.lhs.false

if.then52.if.then56_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then56

lor.lhs.false:                                    ; preds = %if.then52
  %aper_base_kaddr = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 68, i32 2
  %58 = ptrtoint ptr %aper_base_kaddr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %aper_base_kaddr, align 4
  %tobool55.not = icmp eq ptr %59, null
  br i1 %tobool55.not, label %lor.lhs.false.if.then56_crit_edge, label %if.end61

lor.lhs.false.if.then56_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then56

if.then56:                                        ; preds = %lor.lhs.false.if.then56_crit_edge, %if.then52.if.then56_crit_edge
  %aper_base_kaddr60 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 68, i32 2
  %60 = ptrtoint ptr %aper_base_kaddr60 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %aper_base_kaddr60, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.39, i64 noundef %57, ptr noundef %61) #8
  br label %cleanup

if.end61:                                         ; preds = %lor.lhs.false
  %call62 = call noalias ptr @vmalloc(i32 noundef 33554432) #12
  %tobool63.not = icmp eq ptr %call62, null
  br i1 %tobool63.not, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.40) #8
  br label %cleanup

if.end65:                                         ; preds = %if.end61
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 2
  %call67 = call zeroext i1 @drm_dev_enter(ptr noundef %ddev.i, ptr noundef nonnull %idx) #8
  br i1 %call67, label %if.then68, label %if.else77

if.then68:                                        ; preds = %if.end65
  %62 = ptrtoint ptr %aper_base_kaddr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %aper_base_kaddr, align 4
  call void @mmiocpy(ptr noundef nonnull %call62, ptr noundef %63, i32 noundef 33554432) #8
  %call71 = call fastcc i32 @psp_v11_0_memory_training_send_msg(ptr noundef %psp, i32 noundef 1048576)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.then73

if.then73:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.41) #8
  call void @vfree(ptr noundef nonnull %call62) #8
  %64 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %65) #8
  br label %cleanup

if.end74:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %aper_base_kaddr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %aper_base_kaddr, align 4
  call void @mmiocpy(ptr noundef %67, ptr noundef nonnull %call62, i32 noundef 33554432) #8
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 102, i32 1
  %68 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %funcs, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  call void %71(ptr noundef %3, ptr noundef null) #8
  call void @vfree(ptr noundef nonnull %call62) #8
  %72 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %73) #8
  br label %if.end79

if.else77:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  call void @vfree(ptr noundef nonnull %call62) #8
  br label %cleanup

if.end79:                                         ; preds = %if.end74, %if.end43.if.end79_crit_edge
  %and80 = and i32 %ops.addr.4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end79.if.end87_crit_edge, label %if.then82

if.end79.if.end87_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %psp, align 8
  %76 = ptrtoint ptr %p2c_train_data_offset to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %p2c_train_data_offset, align 8
  %78 = ptrtoint ptr %sys_cache to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sys_cache, align 8
  %80 = ptrtoint ptr %mem_train_ctx to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %mem_train_ctx, align 8
  %conv86 = trunc i64 %81 to i32
  call void @amdgpu_device_vram_access(ptr noundef %75, i64 noundef %77, ptr noundef %79, i32 noundef %conv86, i1 noundef zeroext false) #8
  br label %if.end87

if.end87:                                         ; preds = %if.then82, %if.end79.if.end87_crit_edge
  %and88 = and i32 %ops.addr.4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end87.if.end95_crit_edge, label %if.then90

if.end87.if.end95_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %psp, align 8
  %c2p_train_data_offset = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 40, i32 3
  %84 = ptrtoint ptr %c2p_train_data_offset to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %c2p_train_data_offset, align 8
  %86 = ptrtoint ptr %sys_cache to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sys_cache, align 8
  %88 = ptrtoint ptr %mem_train_ctx to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %mem_train_ctx, align 8
  %conv94 = trunc i64 %89 to i32
  call void @amdgpu_device_vram_access(ptr noundef %83, i64 noundef %85, ptr noundef %87, i32 noundef %conv94, i1 noundef zeroext true) #8
  br label %if.end95

if.end95:                                         ; preds = %if.then90, %if.end87.if.end95_crit_edge
  %and96 = and i32 %ops.addr.4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end95.if.end105_crit_edge, label %if.then98

if.end95.if.end105_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.then98:                                        ; preds = %if.end95
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_force_long_training to i32))
  %90 = load i32, ptr @amdgpu_force_long_training, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp99.not = icmp eq i32 %90, 0
  %cond = select i1 %cmp99.not, i32 2097152, i32 1048576
  %call101 = call fastcc i32 @psp_v11_0_memory_training_send_msg(ptr noundef %psp, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.then98.if.end105_crit_edge, label %if.then103

if.then98.if.end105_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.then103:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.42) #8
  br label %cleanup

if.end105:                                        ; preds = %if.then98.if.end105_crit_edge, %if.end95.if.end105_crit_edge
  %training_cnt = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 40, i32 6
  %91 = ptrtoint ptr %training_cnt to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %training_cnt, align 8
  %inc = add i32 %92, 1
  store i32 %inc, ptr %training_cnt, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end105, %if.then103, %if.else77, %if.then73, %if.then64, %if.then56, %if.then6, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %if.then4 ], [ 0, %if.then6 ], [ -22, %if.then56 ], [ %call71, %if.then73 ], [ %call101, %if.then103 ], [ 0, %if.end105 ], [ -19, %if.else77 ], [ -12, %if.then64 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p2c_header) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_v11_0_ring_get_wptr(ptr nocapture noundef readonly %psp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ring_wptr = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %ring_wptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ring_wptr, align 8
  br label %if.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx19 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %6 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx19, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add22 = add i32 %9, 131
  %call23 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add22, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %cond.false, %if.then
  %data.0 = phi i32 [ %5, %if.then ], [ %call23, %cond.false ]
  ret i32 %data.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @psp_v11_0_ring_set_wptr(ptr nocapture noundef %psp, i32 noundef %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false80, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true7

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true7:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_wreg, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %land.lhs.true7.cond.false_crit_edge, label %cond.true

land.lhs.true7.cond.false_crit_edge:              ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 166
  tail call void %7(ptr noundef %1, i32 noundef %add, i32 noundef %value, i32 noundef 0, i32 noundef 14) #8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true7.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge
  %arrayidx19 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx19, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add22 = add i32 %15, 166
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add22, i32 noundef %value, i32 noundef 0) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %16 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %virt, align 8
  %and25 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %cond.end.cond.false48_crit_edge, label %land.lhs.true27

cond.end.cond.false48_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false48

land.lhs.true27:                                  ; preds = %cond.end
  %18 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs, align 4
  %tobool31.not = icmp eq ptr %19, null
  br i1 %tobool31.not, label %land.lhs.true27.cond.false48_crit_edge, label %land.lhs.true32

land.lhs.true27.cond.false48_crit_edge:           ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false48

land.lhs.true32:                                  ; preds = %land.lhs.true27
  %sriov_wreg36 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %sriov_wreg36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sriov_wreg36, align 4
  %tobool37.not = icmp eq ptr %21, null
  br i1 %tobool37.not, label %land.lhs.true32.cond.false48_crit_edge, label %cond.true38

land.lhs.true32.cond.false48_crit_edge:           ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false48

cond.true38:                                      ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx44 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %22 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx44, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add47 = add i32 %25, 165
  tail call void %21(ptr noundef %1, i32 noundef %add47, i32 noundef 589824, i32 noundef 0, i32 noundef 14) #8
  br label %cond.end54

cond.false48:                                     ; preds = %land.lhs.true32.cond.false48_crit_edge, %land.lhs.true27.cond.false48_crit_edge, %cond.end.cond.false48_crit_edge
  %arrayidx50 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %26 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx50, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add53 = add i32 %29, 165
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add53, i32 noundef 589824, i32 noundef 0) #8
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false48, %cond.true38
  %ring_wptr = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 1, i32 5
  %30 = ptrtoint ptr %ring_wptr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %value, ptr %ring_wptr, align 8
  br label %if.end

cond.false80:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx82 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %31 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx82, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add85 = add i32 %34, 131
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add85, i32 noundef %value, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %cond.false80, %cond.end54
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_v11_0_load_usbc_pd_fw(ptr noundef %psp, i64 noundef %fw_pri_mc_addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_wreg, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 100
  %shr = lshr i64 %fw_pri_mc_addr, 20
  %conv = trunc i64 %shr to i32
  tail call void %7(ptr noundef %1, i32 noundef %add, i32 noundef %conv, i32 noundef 0, i32 noundef 14) #8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx15, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add18 = add i32 %15, 100
  %shr19 = lshr i64 %fw_pri_mc_addr, 20
  %conv20 = trunc i64 %shr19 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add18, i32 noundef %conv20, i32 noundef 0) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %arrayidx22 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %16 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx22, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add25 = add i32 %19, 99
  %call = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add25, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool26.not = icmp eq i32 %call, 0
  br i1 %tobool26.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %20 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %virt, align 8
  %and29 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end.cond.false52_crit_edge, label %land.lhs.true31

if.end.cond.false52_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false52

land.lhs.true31:                                  ; preds = %if.end
  %funcs34 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %22 = ptrtoint ptr %funcs34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %funcs34, align 4
  %tobool35.not = icmp eq ptr %23, null
  br i1 %tobool35.not, label %land.lhs.true31.cond.false52_crit_edge, label %land.lhs.true36

land.lhs.true31.cond.false52_crit_edge:           ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false52

land.lhs.true36:                                  ; preds = %land.lhs.true31
  %sriov_wreg40 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %sriov_wreg40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sriov_wreg40, align 4
  %tobool41.not = icmp eq ptr %25, null
  br i1 %tobool41.not, label %land.lhs.true36.cond.false52_crit_edge, label %cond.true42

land.lhs.true36.cond.false52_crit_edge:           ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false52

cond.true42:                                      ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx22, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add51 = add i32 %29, 99
  tail call void %25(ptr noundef %1, i32 noundef %add51, i32 noundef 75497472, i32 noundef 0, i32 noundef 14) #8
  br label %cond.end58

cond.false52:                                     ; preds = %land.lhs.true36.cond.false52_crit_edge, %land.lhs.true31.cond.false52_crit_edge, %if.end.cond.false52_crit_edge
  %30 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx22, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add57 = add i32 %33, 99
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add57, i32 noundef 75497472, i32 noundef 0) #8
  br label %cond.end58

cond.end58:                                       ; preds = %cond.false52, %cond.true42
  %funcs66 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %cond.end58
  %i.0 = phi i32 [ 0, %cond.end58 ], [ %inc, %do.cond.do.body_crit_edge ]
  tail call void @msleep(i32 noundef 1000) #8
  %34 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %virt, align 8
  %and61 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.body.cond.false84_crit_edge, label %land.lhs.true63

do.body.cond.false84_crit_edge:                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false84

land.lhs.true63:                                  ; preds = %do.body
  %36 = ptrtoint ptr %funcs66 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %funcs66, align 4
  %tobool67.not = icmp eq ptr %37, null
  br i1 %tobool67.not, label %land.lhs.true63.cond.false84_crit_edge, label %land.lhs.true68

land.lhs.true63.cond.false84_crit_edge:           ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false84

land.lhs.true68:                                  ; preds = %land.lhs.true63
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %37, i32 0, i32 13
  %38 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sriov_rreg, align 4
  %tobool72.not = icmp eq ptr %39, null
  br i1 %tobool72.not, label %land.lhs.true68.cond.false84_crit_edge, label %cond.true73

land.lhs.true68.cond.false84_crit_edge:           ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false84

cond.true73:                                      ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx22, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %add82 = add i32 %43, 99
  %call83 = tail call i32 %39(ptr noundef %1, i32 noundef %add82, i32 noundef 0, i32 noundef 14) #8
  br label %cond.end91

cond.false84:                                     ; preds = %land.lhs.true68.cond.false84_crit_edge, %land.lhs.true63.cond.false84_crit_edge, %do.body.cond.false84_crit_edge
  %44 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx22, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %add89 = add i32 %47, 99
  %call90 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add89, i32 noundef 0) #8
  br label %cond.end91

cond.end91:                                       ; preds = %cond.false84, %cond.true73
  %cond = phi i32 [ %call83, %cond.true73 ], [ %call90, %cond.false84 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond)
  %tobool93.not = icmp sgt i32 %cond, -1
  br i1 %tobool93.not, label %do.cond, label %done

do.cond:                                          ; preds = %cond.end91
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond.not = icmp eq i32 %inc, 240
  br i1 %exitcond.not, label %do.cond.cleanup_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

done:                                             ; preds = %cond.end91
  %and97 = and i32 %cond, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %cmp98.not = icmp eq i32 %and97, 0
  br i1 %cmp98.not, label %done.cleanup_crit_edge, label %if.then100

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then100:                                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.48, i32 noundef %and97) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then100, %done.cleanup_crit_edge, %do.cond.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then100 ], [ %call, %cond.end.cleanup_crit_edge ], [ 0, %done.cleanup_crit_edge ], [ -62, %do.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_v11_0_read_usbc_pd_fw(ptr noundef %psp, ptr nocapture noundef writeonly %fw_ver) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_wreg, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 99
  tail call void %7(ptr noundef %1, i32 noundef %add, i32 noundef 33554432, i32 noundef 0, i32 noundef 14) #8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx15, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add18 = add i32 %15, 99
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add18, i32 noundef 33554432, i32 noundef 0) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %arrayidx20 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx20, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add23 = add i32 %19, 99
  %call = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add23, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool24.not = icmp eq i32 %call, 0
  br i1 %tobool24.not, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %cond.end
  %20 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %virt, align 8
  %and27 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.then.cond.false50_crit_edge, label %land.lhs.true29

if.then.cond.false50_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false50

land.lhs.true29:                                  ; preds = %if.then
  %funcs32 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %22 = ptrtoint ptr %funcs32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %funcs32, align 4
  %tobool33.not = icmp eq ptr %23, null
  br i1 %tobool33.not, label %land.lhs.true29.cond.false50_crit_edge, label %land.lhs.true34

land.lhs.true29.cond.false50_crit_edge:           ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false50

land.lhs.true34:                                  ; preds = %land.lhs.true29
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sriov_rreg, align 4
  %tobool38.not = icmp eq ptr %25, null
  br i1 %tobool38.not, label %land.lhs.true34.cond.false50_crit_edge, label %cond.true39

land.lhs.true34.cond.false50_crit_edge:           ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false50

cond.true39:                                      ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx20, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add48 = add i32 %29, 100
  %call49 = tail call i32 %25(ptr noundef %1, i32 noundef %add48, i32 noundef 0, i32 noundef 14) #8
  br label %cond.end57

cond.false50:                                     ; preds = %land.lhs.true34.cond.false50_crit_edge, %land.lhs.true29.cond.false50_crit_edge, %if.then.cond.false50_crit_edge
  %30 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx20, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add55 = add i32 %33, 100
  %call56 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add55, i32 noundef 0) #8
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false50, %cond.true39
  %cond = phi i32 [ %call49, %cond.true39 ], [ %call56, %cond.false50 ]
  %34 = ptrtoint ptr %fw_ver to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %cond, ptr %fw_ver, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end57, %cond.end.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psp_init_sos_microcode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psp_init_asd_microcode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ucode_validate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psp_init_ta_microcode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psp_init_toc_microcode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psp_v11_0_bootloader_load_component(ptr noundef %psp, ptr nocapture noundef readonly %bin_desc, i32 noundef %bl_cmd) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cond.false.i_crit_edge, label %land.lhs.true.i

entry.cond.false.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %entry
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool7.not.i = icmp eq ptr %7, null
  br i1 %tobool7.not.i, label %land.lhs.true3.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true3.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add.i = add i32 %11, 145
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef %add.i, i32 noundef 0, i32 noundef 14) #8
  br label %psp_v11_0_is_sos_alive.exit

cond.false.i:                                     ; preds = %land.lhs.true3.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %entry.cond.false.i_crit_edge
  %arrayidx15.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %12 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx15.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add18.i = add i32 %15, 145
  %call19.i = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add18.i, i32 noundef 0) #8
  br label %psp_v11_0_is_sos_alive.exit

psp_v11_0_is_sos_alive.exit:                      ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %call19.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp.i.not = icmp eq i32 %cond.i, 0
  br i1 %cmp.i.not, label %if.end, label %psp_v11_0_is_sos_alive.exit.cleanup_crit_edge

psp_v11_0_is_sos_alive.exit.cleanup_crit_edge:    ; preds = %psp_v11_0_is_sos_alive.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %psp_v11_0_is_sos_alive.exit
  %call2 = tail call fastcc i32 @psp_v11_0_wait_for_bootloader(ptr noundef %psp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %start_addr = getelementptr inbounds %struct.psp_bin_desc, ptr %bin_desc, i32 0, i32 3
  %16 = ptrtoint ptr %start_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %start_addr, align 4
  %size_bytes = getelementptr inbounds %struct.psp_bin_desc, ptr %bin_desc, i32 0, i32 2
  %18 = ptrtoint ptr %size_bytes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size_bytes, align 4
  tail call void @psp_copy_fw(ptr noundef %psp, ptr noundef %17, i32 noundef %19) #8
  %20 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %virt.i, align 8
  %and = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end4.cond.false_crit_edge, label %land.lhs.true

if.end4.cond.false_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true:                                    ; preds = %if.end4
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %22 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %funcs, align 4
  %tobool6.not = icmp eq ptr %23, null
  br i1 %tobool6.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true7

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true7:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sriov_wreg, align 4
  %tobool11.not = icmp eq ptr %25, null
  br i1 %tobool11.not, label %land.lhs.true7.cond.false_crit_edge, label %cond.true

land.lhs.true7.cond.false_crit_edge:              ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add = add i32 %29, 100
  %fw_pri_mc_addr = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 5
  %30 = ptrtoint ptr %fw_pri_mc_addr to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %fw_pri_mc_addr, align 8
  %shr = lshr i64 %31, 20
  %conv = trunc i64 %shr to i32
  tail call void %25(ptr noundef %1, i32 noundef %add, i32 noundef %conv, i32 noundef 0, i32 noundef 14) #8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true7.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.end4.cond.false_crit_edge
  %arrayidx19 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %32 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx19, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %add22 = add i32 %35, 100
  %fw_pri_mc_addr23 = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 5
  %36 = ptrtoint ptr %fw_pri_mc_addr23 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %fw_pri_mc_addr23, align 8
  %shr24 = lshr i64 %37, 20
  %conv25 = trunc i64 %shr24 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add22, i32 noundef %conv25, i32 noundef 0) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %38 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %virt.i, align 8
  %and28 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %cond.end.cond.false51_crit_edge, label %land.lhs.true30

cond.end.cond.false51_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false51

land.lhs.true30:                                  ; preds = %cond.end
  %funcs33 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %40 = ptrtoint ptr %funcs33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %funcs33, align 4
  %tobool34.not = icmp eq ptr %41, null
  br i1 %tobool34.not, label %land.lhs.true30.cond.false51_crit_edge, label %land.lhs.true35

land.lhs.true30.cond.false51_crit_edge:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false51

land.lhs.true35:                                  ; preds = %land.lhs.true30
  %sriov_wreg39 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %41, i32 0, i32 12
  %42 = ptrtoint ptr %sriov_wreg39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sriov_wreg39, align 4
  %tobool40.not = icmp eq ptr %43, null
  br i1 %tobool40.not, label %land.lhs.true35.cond.false51_crit_edge, label %cond.true41

land.lhs.true35.cond.false51_crit_edge:           ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false51

cond.true41:                                      ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx47 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %44 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx47, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %add50 = add i32 %47, 99
  tail call void %43(ptr noundef %1, i32 noundef %add50, i32 noundef %bl_cmd, i32 noundef 0, i32 noundef 14) #8
  br label %cond.end57

cond.false51:                                     ; preds = %land.lhs.true35.cond.false51_crit_edge, %land.lhs.true30.cond.false51_crit_edge, %cond.end.cond.false51_crit_edge
  %arrayidx53 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %48 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx53, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %add56 = add i32 %51, 99
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add56, i32 noundef %bl_cmd, i32 noundef 0) #8
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false51, %cond.true41
  %call58 = tail call fastcc i32 @psp_v11_0_wait_for_bootloader(ptr noundef %psp)
  br label %cleanup

cleanup:                                          ; preds = %cond.end57, %if.end.cleanup_crit_edge, %psp_v11_0_is_sos_alive.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call58, %cond.end57 ], [ 0, %psp_v11_0_is_sos_alive.exit.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psp_v11_0_wait_for_bootloader(ptr noundef %psp) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add = add i32 %5, 99
  %call = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %entry
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add.1 = add i32 %9, 99
  %call.1 = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add.1, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp4.1 = icmp eq i32 %call.1, 0
  br i1 %cmp4.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add.2 = add i32 %13, 99
  %call.2 = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add.2, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp4.2 = icmp eq i32 %call.2, 0
  br i1 %cmp4.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add.3 = add i32 %17, 99
  %call.3 = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add.3, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp4.3 = icmp eq i32 %call.3, 0
  br i1 %cmp4.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add.4 = add i32 %21, 99
  %call.4 = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add.4, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %cmp4.4 = icmp eq i32 %call.4, 0
  br i1 %cmp4.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add.5 = add i32 %25, 99
  %call.5 = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add.5, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %cmp4.5 = icmp eq i32 %call.5, 0
  br i1 %cmp4.5, label %for.cond.4.cleanup_crit_edge, label %for.cond.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add.6 = add i32 %29, 99
  %call.6 = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add.6, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %cmp4.6 = icmp eq i32 %call.6, 0
  br i1 %cmp4.6, label %for.cond.5.cleanup_crit_edge, label %for.cond.6

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add.7 = add i32 %33, 99
  %call.7 = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add.7, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %cmp4.7 = icmp eq i32 %call.7, 0
  br i1 %cmp4.7, label %for.cond.6.cleanup_crit_edge, label %for.cond.7

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %add.8 = add i32 %37, 99
  %call.8 = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add.8, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8)
  %cmp4.8 = icmp eq i32 %call.8, 0
  br i1 %cmp4.8, label %for.cond.7.cleanup_crit_edge, label %for.cond.8

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.8:                                       ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %add.9 = add i32 %41, 99
  %call.9 = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add.9, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %for.cond.8, %for.cond.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ 0, %for.cond.1.cleanup_crit_edge ], [ 0, %for.cond.2.cleanup_crit_edge ], [ 0, %for.cond.3.cleanup_crit_edge ], [ 0, %for.cond.4.cleanup_crit_edge ], [ 0, %for.cond.5.cleanup_crit_edge ], [ 0, %for.cond.6.cleanup_crit_edge ], [ 0, %for.cond.7.cleanup_crit_edge ], [ %call.9, %for.cond.8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @psp_copy_fw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psp_wait_for(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_kernel(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_free_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_vram_access(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psp_v11_0_memory_training_send_msg(ptr noundef %psp, i32 noundef %msg) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %c2p_train_data_offset = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 40, i32 3
  %2 = ptrtoint ptr %c2p_train_data_offset to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %c2p_train_data_offset, align 8
  %shr = lshr i64 %3, 20
  %conv = trunc i64 %shr to i32
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %4 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virt, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sriov_wreg, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add = add i32 %13, 100
  tail call void %9(ptr noundef %1, i32 noundef %add, i32 noundef %conv, i32 noundef 0, i32 noundef 14) #8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx15, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add18 = add i32 %17, 100
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add18, i32 noundef %conv, i32 noundef 0) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %18 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %virt, align 8
  %and21 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %cond.end.cond.false44_crit_edge, label %land.lhs.true23

cond.end.cond.false44_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false44

land.lhs.true23:                                  ; preds = %cond.end
  %funcs26 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %20 = ptrtoint ptr %funcs26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs26, align 4
  %tobool27.not = icmp eq ptr %21, null
  br i1 %tobool27.not, label %land.lhs.true23.cond.false44_crit_edge, label %land.lhs.true28

land.lhs.true23.cond.false44_crit_edge:           ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false44

land.lhs.true28:                                  ; preds = %land.lhs.true23
  %sriov_wreg32 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %sriov_wreg32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sriov_wreg32, align 4
  %tobool33.not = icmp eq ptr %23, null
  br i1 %tobool33.not, label %land.lhs.true28.cond.false44_crit_edge, label %cond.true34

land.lhs.true28.cond.false44_crit_edge:           ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false44

cond.true34:                                      ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx40 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %24 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx40, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add43 = add i32 %27, 99
  tail call void %23(ptr noundef %1, i32 noundef %add43, i32 noundef %msg, i32 noundef 0, i32 noundef 14) #8
  br label %cond.end50

cond.false44:                                     ; preds = %land.lhs.true28.cond.false44_crit_edge, %land.lhs.true23.cond.false44_crit_edge, %cond.end.cond.false44_crit_edge
  %arrayidx46 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %28 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx46, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add49 = add i32 %31, 99
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add49, i32 noundef %msg, i32 noundef 0) #8
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false44, %cond.true34
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 11
  %32 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %usec_timeout, align 8
  %div = sdiv i32 3000000, %33
  %arrayidx53 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div)
  %cmp102 = icmp sgt i32 %div, 0
  br i1 %cmp102, label %cond.end50.for.body_crit_edge, label %cond.end50.for.end_crit_edge

cond.end50.for.end_crit_edge:                     ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cond.end50.for.body_crit_edge:                    ; preds = %cond.end50
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %cond.end50.for.body_crit_edge
  %i.0103 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %cond.end50.for.body_crit_edge ]
  %34 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx53, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %add56 = add i32 %37, 99
  %call = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add56, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp57 = icmp eq i32 %call, 0
  br i1 %cmp57, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0103, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %cond.end50.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %cond.end50.for.end_crit_edge ], [ %i.0103, %for.body.for.end_crit_edge ], [ %div, %for.inc.for.end_crit_edge ]
  %. = phi i32 [ -62, %cond.end50.for.end_crit_edge ], [ 0, %for.body.for.end_crit_edge ], [ -62, %for.inc.for.end_crit_edge ]
  %.str.46..str.47 = phi ptr [ @.str.47, %cond.end50.for.end_crit_edge ], [ @.str.46, %for.body.for.end_crit_edge ], [ @.str.47, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %msg)
  %cmp63 = icmp eq i32 %msg, 2097152
  %cond = select i1 %cmp63, ptr @.str.44, ptr @.str.45
  %38 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %usec_timeout, align 8
  %div69 = sdiv i32 %39, 1000
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond, ptr noundef nonnull %.str.46..str.47, i32 noundef %i.0.lcssa, i32 noundef %div69) #8
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !79, !80, !81, !82, !83, !84, !86, !87, !89, !91, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !135, !136, !137, !138}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !{ptr @__UNIQUE_ID_firmware343, !1, !"__UNIQUE_ID_firmware343", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 44, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware344, !3, !"__UNIQUE_ID_firmware344", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 45, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware345, !5, !"__UNIQUE_ID_firmware345", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 46, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware346, !7, !"__UNIQUE_ID_firmware346", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 47, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware347, !9, !"__UNIQUE_ID_firmware347", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 48, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware348, !11, !"__UNIQUE_ID_firmware348", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 49, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware349, !13, !"__UNIQUE_ID_firmware349", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 50, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware350, !15, !"__UNIQUE_ID_firmware350", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 51, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware351, !17, !"__UNIQUE_ID_firmware351", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 52, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware352, !19, !"__UNIQUE_ID_firmware352", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 53, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware353, !21, !"__UNIQUE_ID_firmware353", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 54, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware354, !23, !"__UNIQUE_ID_firmware354", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 55, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware355, !25, !"__UNIQUE_ID_firmware355", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 56, i32 1}
!26 = !{ptr @__UNIQUE_ID_firmware356, !27, !"__UNIQUE_ID_firmware356", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 57, i32 1}
!28 = !{ptr @__UNIQUE_ID_firmware357, !29, !"__UNIQUE_ID_firmware357", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 58, i32 1}
!30 = !{ptr @__UNIQUE_ID_firmware358, !31, !"__UNIQUE_ID_firmware358", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 59, i32 1}
!32 = !{ptr @__UNIQUE_ID_firmware359, !33, !"__UNIQUE_ID_firmware359", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 60, i32 1}
!34 = !{ptr @__UNIQUE_ID_firmware360, !35, !"__UNIQUE_ID_firmware360", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 61, i32 1}
!36 = !{ptr @__UNIQUE_ID_firmware361, !37, !"__UNIQUE_ID_firmware361", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 62, i32 1}
!38 = !{ptr @__UNIQUE_ID_firmware362, !39, !"__UNIQUE_ID_firmware362", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 63, i32 1}
!40 = !{ptr @__UNIQUE_ID_firmware363, !41, !"__UNIQUE_ID_firmware363", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 64, i32 1}
!42 = !{ptr @__UNIQUE_ID_firmware364, !43, !"__UNIQUE_ID_firmware364", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 65, i32 1}
!44 = !{ptr @__UNIQUE_ID_firmware365, !45, !"__UNIQUE_ID_firmware365", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 66, i32 1}
!46 = !{ptr @__UNIQUE_ID_firmware366, !47, !"__UNIQUE_ID_firmware366", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 67, i32 1}
!48 = !{ptr @__UNIQUE_ID_firmware367, !49, !"__UNIQUE_ID_firmware367", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 68, i32 1}
!50 = !{ptr @psp_v11_0_funcs, !51, !"psp_v11_0_funcs", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 776, i32 31}
!52 = !{ptr @.str, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 94, i32 2}
!54 = !{ptr @.str.1, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 98, i32 15}
!56 = !{ptr @.str.2, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 101, i32 15}
!58 = !{ptr @.str.3, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 104, i32 15}
!60 = !{ptr @.str.4, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 107, i32 15}
!62 = !{ptr @.str.5, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 110, i32 15}
!64 = !{ptr @.str.6, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 113, i32 15}
!66 = !{ptr @.str.7, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 116, i32 15}
!68 = !{ptr @.str.8, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 119, i32 15}
!70 = !{ptr @.str.9, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 122, i32 15}
!72 = !{ptr @.str.10, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 125, i32 15}
!74 = !{ptr @.str.11, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 141, i32 38}
!76 = !{ptr @.str.12, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 146, i32 4}
!78 = !{ptr @.str.13, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.14, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.15, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.16, !77, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @psp_v11_0_init_microcode._entry, !77, !"_entry", i1 false, i1 false}
!83 = !{ptr @psp_v11_0_init_microcode._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @psp_v11_0_init_microcode._entry.17, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 187, i32 4}
!86 = !{ptr @psp_v11_0_init_microcode._entry_ptr.18, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.19, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 429, i32 4}
!89 = !{ptr @.str.20, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 456, i32 4}
!91 = !{ptr @.str.21, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 495, i32 3}
!93 = !{ptr @.str.22, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 515, i32 3}
!95 = !{ptr @.str.23, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @psp_v11_0_mode1_reset._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @psp_v11_0_mode1_reset._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.25, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 529, i32 3}
!100 = !{ptr @psp_v11_0_mode1_reset._entry.24, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @psp_v11_0_mode1_reset._entry_ptr.26, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.28, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 533, i32 2}
!104 = !{ptr @psp_v11_0_mode1_reset._entry.27, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @psp_v11_0_mode1_reset._entry_ptr.29, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.30, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 583, i32 3}
!108 = !{ptr @.str.31, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 586, i32 3}
!110 = !{ptr @.str.32, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 591, i32 3}
!112 = !{ptr @.str.33, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 596, i32 2}
!114 = !{ptr @.str.34, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 601, i32 3}
!116 = !{ptr @.str.35, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 607, i32 3}
!118 = !{ptr @.str.36, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 614, i32 3}
!120 = !{ptr @.str.37, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 620, i32 3}
!122 = !{ptr @.str.38, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 629, i32 2}
!124 = !{ptr @.str.39, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 641, i32 4}
!126 = !{ptr @.str.40, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 649, i32 4}
!128 = !{ptr @.str.41, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 657, i32 5}
!130 = !{ptr @.str.42, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 685, i32 4}
!132 = !{ptr @.str.43, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 562, i32 2}
!134 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.45, !133, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.46, !133, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.47, !133, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.48, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v11_0.c", i32 753, i32 3}
!140 = !{i32 1, !"wchar_size", i32 2}
!141 = !{i32 1, !"min_enum_size", i32 4}
!142 = !{i32 8, !"branch-target-enforcement", i32 0}
!143 = !{i32 8, !"sign-return-address", i32 0}
!144 = !{i32 8, !"sign-return-address-all", i32 0}
!145 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!146 = !{i32 7, !"uwtable", i32 1}
!147 = !{i32 7, !"frame-pointer", i32 2}
!148 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!149 = !{i64 2160333964, i64 2160334467, i64 2160334001, i64 2160334057, i64 2160334091, i64 2160334115, i64 2160334156, i64 2160334177, i64 2160334205, i64 2160334239}
!150 = !{!"auto-init"}
