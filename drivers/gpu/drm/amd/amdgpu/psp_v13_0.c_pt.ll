; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/psp_v13_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/psp_v13_0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.psp_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.106, i32, i32, i32, i32 }
%union.anon.106 = type { %struct.anon.108 }
%struct.anon.108 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_firmware343 = internal constant [41 x i8] c"amdgpu.firmware=amdgpu/aldebaran_sos.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware344 = internal constant [40 x i8] c"amdgpu.firmware=amdgpu/aldebaran_ta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware345 = internal constant [43 x i8] c"amdgpu.firmware=amdgpu/yellow_carp_asd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware346 = internal constant [43 x i8] c"amdgpu.firmware=amdgpu/yellow_carp_toc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware347 = internal constant [42 x i8] c"amdgpu.firmware=amdgpu/yellow_carp_ta.bin\00", section ".modinfo", align 1
@psp_v13_0_funcs = internal constant { %struct.psp_funcs, [52 x i8] } { %struct.psp_funcs { ptr @psp_v13_0_init_microcode, ptr @psp_v13_0_bootloader_load_kdb, ptr null, ptr @psp_v13_0_bootloader_load_sysdrv, ptr @psp_v13_0_bootloader_load_soc_drv, ptr @psp_v13_0_bootloader_load_intf_drv, ptr @psp_v13_0_bootloader_load_dbg_drv, ptr @psp_v13_0_bootloader_load_sos, ptr @psp_v13_0_ring_init, ptr @psp_v13_0_ring_create, ptr @psp_v13_0_ring_stop, ptr @psp_v13_0_ring_destroy, ptr null, ptr null, ptr null, ptr @psp_v13_0_ring_get_wptr, ptr @psp_v13_0_ring_set_wptr, ptr @psp_v13_0_load_usbc_pd_fw, ptr @psp_v13_0_read_usbc_pd_fw }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aldebaran\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"yellow_carp\00", [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"psp_v13_0_ring_stop_sriov failed!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Failed to wait for trust OS ready for ring creation\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Fail to stop psp ring\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Address load failed - MP0_SMN_C2PMSG_35.Bits [15:0] = %04x\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 851969, i64 851970, i64 851971]
@___asan_gen_.6 = private unnamed_addr constant [16 x i8] c"psp_v13_0_funcs\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 442, i32 31 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 52, i32 15 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 56, i32 15 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 285, i32 4 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 312, i32 4 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 350, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [42 x i8] c"../drivers/gpu/drm/amd/amdgpu/psp_v13_0.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 419, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_firmware343, ptr @__UNIQUE_ID_firmware344, ptr @__UNIQUE_ID_firmware345, ptr @__UNIQUE_ID_firmware346, ptr @__UNIQUE_ID_firmware347, ptr @psp_v13_0_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_v13_0_funcs to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @psp_v13_0_set_psp_funcs(ptr nocapture noundef writeonly %psp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 3
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @psp_v13_0_funcs, ptr %funcs, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_v13_0_init_microcode(ptr noundef %psp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 172, i32 14
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.body [
    i32 851970, label %sw.bb10
    i32 851969, label %entry.sw.bb16_crit_edge
    i32 851971, label %entry.sw.bb16_crit_edge60
  ]

entry.sw.bb16_crit_edge60:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb16

entry.sw.bb16_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb16

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/psp_v13_0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 59, 0\0A.popsection", ""() #3, !srcloc !33
  unreachable

sw.bb10:                                          ; preds = %entry
  %call = tail call i32 @psp_init_sos_microcode(ptr noundef %psp, ptr noundef nonnull @.str) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %sw.bb10.cleanup_crit_edge

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %sw.bb10
  %psp11 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113
  %call12 = tail call i32 @psp_init_ta_microcode(ptr noundef %psp11, ptr noundef nonnull @.str) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end.sw.epilog36_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.sw.epilog36_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog36

sw.bb16:                                          ; preds = %entry.sw.bb16_crit_edge, %entry.sw.bb16_crit_edge60
  %call17 = tail call i32 @psp_init_asd_microcode(ptr noundef %psp, ptr noundef nonnull @.str.1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %sw.bb16.cleanup_crit_edge

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end20:                                         ; preds = %sw.bb16
  %call21 = tail call i32 @psp_init_toc_microcode(ptr noundef %psp, ptr noundef nonnull @.str.1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %call25 = tail call i32 @psp_init_ta_microcode(ptr noundef %psp, ptr noundef nonnull @.str.1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end24.sw.epilog36_crit_edge, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end24.sw.epilog36_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog36

sw.epilog36:                                      ; preds = %if.end24.sw.epilog36_crit_edge, %if.end.sw.epilog36_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog36, %if.end24.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %sw.bb16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog36 ], [ %call, %sw.bb10.cleanup_crit_edge ], [ %call12, %if.end.cleanup_crit_edge ], [ %call17, %sw.bb16.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_v13_0_bootloader_load_kdb(ptr noundef %psp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %kdb = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 11
  %call = tail call fastcc i32 @psp_v13_0_bootloader_load_component(ptr noundef %psp, ptr noundef %kdb, i32 noundef 524288)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_v13_0_bootloader_load_sysdrv(ptr noundef %psp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %sys = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 8
  %call = tail call fastcc i32 @psp_v13_0_bootloader_load_component(ptr noundef %psp, ptr noundef %sys, i32 noundef 65536)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_v13_0_bootloader_load_soc_drv(ptr noundef %psp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %soc_drv = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 14
  %call = tail call fastcc i32 @psp_v13_0_bootloader_load_component(ptr noundef %psp, ptr noundef %soc_drv, i32 noundef 720896)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_v13_0_bootloader_load_intf_drv(ptr noundef %psp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %intf_drv = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 15
  %call = tail call fastcc i32 @psp_v13_0_bootloader_load_component(ptr noundef %psp, ptr noundef %intf_drv, i32 noundef 786432)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_v13_0_bootloader_load_dbg_drv(ptr noundef %psp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg_drv = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 16
  %call = tail call fastcc i32 @psp_v13_0_bootloader_load_component(ptr noundef %psp, ptr noundef %dbg_drv, i32 noundef 851968)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_v13_0_bootloader_load_sos(ptr noundef %psp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %entry
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool7.not.i = icmp eq ptr %7, null
  br i1 %tobool7.not.i, label %land.lhs.true3.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true3.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add.i = add i32 %11, 145
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef %add.i, i32 noundef 0, i32 noundef 14) #3
  br label %psp_v13_0_is_sos_alive.exit

cond.false.i:                                     ; preds = %land.lhs.true3.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %entry.cond.false.i_crit_edge
  %arrayidx15.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %12 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx15.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add18.i = add i32 %15, 145
  %call19.i = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add18.i, i32 noundef 0) #3
  br label %psp_v13_0_is_sos_alive.exit

psp_v13_0_is_sos_alive.exit:                      ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %call19.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp.i.not = icmp eq i32 %cond.i, 0
  br i1 %cmp.i.not, label %if.end, label %psp_v13_0_is_sos_alive.exit.cleanup_crit_edge

psp_v13_0_is_sos_alive.exit.cleanup_crit_edge:    ; preds = %psp_v13_0_is_sos_alive.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %psp_v13_0_is_sos_alive.exit
  %call2 = tail call fastcc i32 @psp_v13_0_wait_for_bootloader(ptr noundef %psp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %fw_pri_buf = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 6
  %16 = ptrtoint ptr %fw_pri_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw_pri_buf, align 8
  %18 = call ptr @memset(ptr %17, i32 0, i32 1048576)
  %19 = load ptr, ptr %fw_pri_buf, align 8
  %start_addr = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 9, i32 3
  %20 = ptrtoint ptr %start_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %start_addr, align 4
  %size_bytes = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 9, i32 2
  %22 = ptrtoint ptr %size_bytes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size_bytes, align 8
  %24 = call ptr @memcpy(ptr %19, ptr %21, i32 %23)
  %25 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %virt.i, align 8
  %and = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end4.cond.false_crit_edge, label %land.lhs.true

if.end4.cond.false_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true:                                    ; preds = %if.end4
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %27 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %funcs, align 4
  %tobool8.not = icmp eq ptr %28, null
  br i1 %tobool8.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true9

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true9:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sriov_wreg, align 4
  %tobool13.not = icmp eq ptr %30, null
  br i1 %tobool13.not, label %land.lhs.true9.cond.false_crit_edge, label %cond.true

land.lhs.true9.cond.false_crit_edge:              ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add = add i32 %34, 100
  %fw_pri_mc_addr = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 5
  %35 = ptrtoint ptr %fw_pri_mc_addr to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %fw_pri_mc_addr, align 8
  %shr = lshr i64 %36, 20
  %conv = trunc i64 %shr to i32
  tail call void %30(ptr noundef %1, i32 noundef %add, i32 noundef %conv, i32 noundef 0, i32 noundef 14) #3
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true9.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.end4.cond.false_crit_edge
  %arrayidx21 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %37 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx21, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %add24 = add i32 %40, 100
  %fw_pri_mc_addr25 = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 5
  %41 = ptrtoint ptr %fw_pri_mc_addr25 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %fw_pri_mc_addr25, align 8
  %shr26 = lshr i64 %42, 20
  %conv27 = trunc i64 %shr26 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add24, i32 noundef %conv27, i32 noundef 0) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %43 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %virt.i, align 8
  %and30 = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %cond.end.cond.false53_crit_edge, label %land.lhs.true32

cond.end.cond.false53_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false53

land.lhs.true32:                                  ; preds = %cond.end
  %funcs35 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %45 = ptrtoint ptr %funcs35 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %funcs35, align 4
  %tobool36.not = icmp eq ptr %46, null
  br i1 %tobool36.not, label %land.lhs.true32.cond.false53_crit_edge, label %land.lhs.true37

land.lhs.true32.cond.false53_crit_edge:           ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false53

land.lhs.true37:                                  ; preds = %land.lhs.true32
  %sriov_wreg41 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %46, i32 0, i32 12
  %47 = ptrtoint ptr %sriov_wreg41 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sriov_wreg41, align 4
  %tobool42.not = icmp eq ptr %48, null
  br i1 %tobool42.not, label %land.lhs.true37.cond.false53_crit_edge, label %cond.true43

land.lhs.true37.cond.false53_crit_edge:           ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false53

cond.true43:                                      ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx49 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %49 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx49, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %add52 = add i32 %52, 99
  tail call void %48(ptr noundef %1, i32 noundef %add52, i32 noundef 131072, i32 noundef 0, i32 noundef 14) #3
  br label %cond.end59

cond.false53:                                     ; preds = %land.lhs.true37.cond.false53_crit_edge, %land.lhs.true32.cond.false53_crit_edge, %cond.end.cond.false53_crit_edge
  %arrayidx55 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %53 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx55, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %add58 = add i32 %56, 99
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add58, i32 noundef 131072, i32 noundef 0) #3
  br label %cond.end59

cond.end59:                                       ; preds = %cond.false53, %cond.true43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748000) #3
  %arrayidx62 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %77 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx62, align 8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  %add65 = add i32 %80, 145
  %81 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %virt.i, align 8
  %and68 = and i32 %82, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %cond.end59.cond.false91_crit_edge, label %land.lhs.true70

cond.end59.cond.false91_crit_edge:                ; preds = %cond.end59
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false91

land.lhs.true70:                                  ; preds = %cond.end59
  %funcs73 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %83 = ptrtoint ptr %funcs73 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %funcs73, align 4
  %tobool74.not = icmp eq ptr %84, null
  br i1 %tobool74.not, label %land.lhs.true70.cond.false91_crit_edge, label %land.lhs.true75

land.lhs.true70.cond.false91_crit_edge:           ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false91

land.lhs.true75:                                  ; preds = %land.lhs.true70
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %84, i32 0, i32 13
  %85 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sriov_rreg, align 4
  %tobool79.not = icmp eq ptr %86, null
  br i1 %tobool79.not, label %land.lhs.true75.cond.false91_crit_edge, label %cond.true80

land.lhs.true75.cond.false91_crit_edge:           ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false91

cond.true80:                                      ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #5
  %call90 = tail call i32 %86(ptr noundef %1, i32 noundef %add65, i32 noundef 0, i32 noundef 14) #3
  br label %cond.end98

cond.false91:                                     ; preds = %land.lhs.true75.cond.false91_crit_edge, %land.lhs.true70.cond.false91_crit_edge, %cond.end59.cond.false91_crit_edge
  %call97 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add65, i32 noundef 0) #3
  br label %cond.end98

cond.end98:                                       ; preds = %cond.false91, %cond.true80
  %cond = phi i32 [ %call90, %cond.true80 ], [ %call97, %cond.false91 ]
  %call99 = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add65, i32 noundef %cond, i32 noundef 0, i1 noundef zeroext true) #3
  br label %cleanup

cleanup:                                          ; preds = %cond.end98, %if.end.cleanup_crit_edge, %psp_v13_0_is_sos_alive.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call99, %cond.end98 ], [ 0, %psp_v13_0_is_sos_alive.exit.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_v13_0_ring_init(ptr noundef %psp, i32 noundef %ring_type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  %call = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %1, i32 noundef 4096, i32 noundef 4096, i32 noundef 4, ptr noundef %rbuf, ptr noundef %ring_mem_mc_addr, ptr noundef %ring_mem) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %ring_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ring_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_v13_0_ring_create(ptr noundef %psp, i32 noundef %ring_type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  %call = tail call i32 @psp_v13_0_ring_stop(ptr noundef %psp, i32 noundef %ring_type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #3
  br label %cleanup

if.end:                                           ; preds = %if.then
  %ring_mem_mc_addr = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %ring_mem_mc_addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ring_mem_mc_addr, align 8
  %conv = trunc i64 %5 to i32
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %virt, align 8
  %and7 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.cond.false_crit_edge, label %land.lhs.true

if.end.cond.false_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true:                                    ; preds = %if.end
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %8 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true10

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true10:                                  ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sriov_wreg, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %land.lhs.true10.cond.false_crit_edge, label %cond.true

land.lhs.true10.cond.false_crit_edge:             ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add = add i32 %15, 166
  tail call void %11(ptr noundef %1, i32 noundef %add, i32 noundef %conv, i32 noundef 0, i32 noundef 14) #3
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true10.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.end.cond.false_crit_edge
  %arrayidx22 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %16 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx22, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add25 = add i32 %19, 166
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add25, i32 noundef %conv, i32 noundef 0) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %20 = ptrtoint ptr %ring_mem_mc_addr to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ring_mem_mc_addr, align 8
  %shr = lshr i64 %21, 32
  %conv28 = trunc i64 %shr to i32
  %22 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %virt, align 8
  %and31 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %cond.end.cond.false54_crit_edge, label %land.lhs.true33

cond.end.cond.false54_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false54

land.lhs.true33:                                  ; preds = %cond.end
  %funcs36 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %24 = ptrtoint ptr %funcs36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %funcs36, align 4
  %tobool37.not = icmp eq ptr %25, null
  br i1 %tobool37.not, label %land.lhs.true33.cond.false54_crit_edge, label %land.lhs.true38

land.lhs.true33.cond.false54_crit_edge:           ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false54

land.lhs.true38:                                  ; preds = %land.lhs.true33
  %sriov_wreg42 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %sriov_wreg42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sriov_wreg42, align 4
  %tobool43.not = icmp eq ptr %27, null
  br i1 %tobool43.not, label %land.lhs.true38.cond.false54_crit_edge, label %cond.true44

land.lhs.true38.cond.false54_crit_edge:           ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false54

cond.true44:                                      ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx50 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %28 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx50, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add53 = add i32 %31, 167
  tail call void %27(ptr noundef %1, i32 noundef %add53, i32 noundef %conv28, i32 noundef 0, i32 noundef 14) #3
  br label %cond.end60

cond.false54:                                     ; preds = %land.lhs.true38.cond.false54_crit_edge, %land.lhs.true33.cond.false54_crit_edge, %cond.end.cond.false54_crit_edge
  %arrayidx56 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %32 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx56, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %add59 = add i32 %35, 167
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add59, i32 noundef %conv28, i32 noundef 0) #3
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false54, %cond.true44
  %36 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %virt, align 8
  %and63 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %cond.end60.cond.false86_crit_edge, label %land.lhs.true65

cond.end60.cond.false86_crit_edge:                ; preds = %cond.end60
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false86

land.lhs.true65:                                  ; preds = %cond.end60
  %funcs68 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %38 = ptrtoint ptr %funcs68 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %funcs68, align 4
  %tobool69.not = icmp eq ptr %39, null
  br i1 %tobool69.not, label %land.lhs.true65.cond.false86_crit_edge, label %land.lhs.true70

land.lhs.true65.cond.false86_crit_edge:           ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false86

land.lhs.true70:                                  ; preds = %land.lhs.true65
  %sriov_wreg74 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %sriov_wreg74 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sriov_wreg74, align 4
  %tobool75.not = icmp eq ptr %41, null
  br i1 %tobool75.not, label %land.lhs.true70.cond.false86_crit_edge, label %cond.true76

land.lhs.true70.cond.false86_crit_edge:           ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false86

cond.true76:                                      ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx82 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %42 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx82, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %add85 = add i32 %45, 165
  tail call void %41(ptr noundef %1, i32 noundef %add85, i32 noundef 131072, i32 noundef 0, i32 noundef 14) #3
  br label %cond.end92

cond.false86:                                     ; preds = %land.lhs.true70.cond.false86_crit_edge, %land.lhs.true65.cond.false86_crit_edge, %cond.end60.cond.false86_crit_edge
  %arrayidx88 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %46 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx88, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %add91 = add i32 %49, 165
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add91, i32 noundef 131072, i32 noundef 0) #3
  br label %cond.end92

cond.end92:                                       ; preds = %cond.false86, %cond.true76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748000) #3
  %arrayidx95 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %70 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx95, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %add98 = add i32 %73, 165
  %call99 = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add98, i32 noundef -2147483648, i32 noundef -2147418113, i1 noundef zeroext false) #3
  br label %cleanup

if.else:                                          ; preds = %entry
  %arrayidx101 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %74 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx101, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 4
  %add104 = add i32 %77, 128
  %call105 = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add104, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end108, label %if.then107

if.then107:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #3
  br label %cleanup

if.end108:                                        ; preds = %if.else
  %ring_mem_mc_addr109 = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 1, i32 2
  %78 = ptrtoint ptr %ring_mem_mc_addr109 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %ring_mem_mc_addr109, align 8
  %conv111 = trunc i64 %79 to i32
  %80 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %virt, align 8
  %and114 = and i32 %81, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.end108.cond.false137_crit_edge, label %land.lhs.true116

if.end108.cond.false137_crit_edge:                ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false137

land.lhs.true116:                                 ; preds = %if.end108
  %funcs119 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %82 = ptrtoint ptr %funcs119 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %funcs119, align 4
  %tobool120.not = icmp eq ptr %83, null
  br i1 %tobool120.not, label %land.lhs.true116.cond.false137_crit_edge, label %land.lhs.true121

land.lhs.true116.cond.false137_crit_edge:         ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false137

land.lhs.true121:                                 ; preds = %land.lhs.true116
  %sriov_wreg125 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %83, i32 0, i32 12
  %84 = ptrtoint ptr %sriov_wreg125 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sriov_wreg125, align 4
  %tobool126.not = icmp eq ptr %85, null
  br i1 %tobool126.not, label %land.lhs.true121.cond.false137_crit_edge, label %cond.true127

land.lhs.true121.cond.false137_crit_edge:         ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false137

cond.true127:                                     ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #5
  %86 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx101, align 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %add136 = add i32 %89, 133
  tail call void %85(ptr noundef %1, i32 noundef %add136, i32 noundef %conv111, i32 noundef 0, i32 noundef 14) #3
  br label %cond.end143

cond.false137:                                    ; preds = %land.lhs.true121.cond.false137_crit_edge, %land.lhs.true116.cond.false137_crit_edge, %if.end108.cond.false137_crit_edge
  %90 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx101, align 8
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 4
  %add142 = add i32 %93, 133
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add142, i32 noundef %conv111, i32 noundef 0) #3
  br label %cond.end143

cond.end143:                                      ; preds = %cond.false137, %cond.true127
  %94 = ptrtoint ptr %ring_mem_mc_addr109 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %ring_mem_mc_addr109, align 8
  %shr145 = lshr i64 %95, 32
  %conv147 = trunc i64 %shr145 to i32
  %96 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %virt, align 8
  %and150 = and i32 %97, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %cond.end143.cond.false173_crit_edge, label %land.lhs.true152

cond.end143.cond.false173_crit_edge:              ; preds = %cond.end143
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false173

land.lhs.true152:                                 ; preds = %cond.end143
  %funcs155 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %98 = ptrtoint ptr %funcs155 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %funcs155, align 4
  %tobool156.not = icmp eq ptr %99, null
  br i1 %tobool156.not, label %land.lhs.true152.cond.false173_crit_edge, label %land.lhs.true157

land.lhs.true152.cond.false173_crit_edge:         ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false173

land.lhs.true157:                                 ; preds = %land.lhs.true152
  %sriov_wreg161 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %99, i32 0, i32 12
  %100 = ptrtoint ptr %sriov_wreg161 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %sriov_wreg161, align 4
  %tobool162.not = icmp eq ptr %101, null
  br i1 %tobool162.not, label %land.lhs.true157.cond.false173_crit_edge, label %cond.true163

land.lhs.true157.cond.false173_crit_edge:         ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false173

cond.true163:                                     ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #5
  %102 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx101, align 8
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %103, align 4
  %add172 = add i32 %105, 134
  tail call void %101(ptr noundef %1, i32 noundef %add172, i32 noundef %conv147, i32 noundef 0, i32 noundef 14) #3
  br label %cond.end179

cond.false173:                                    ; preds = %land.lhs.true157.cond.false173_crit_edge, %land.lhs.true152.cond.false173_crit_edge, %cond.end143.cond.false173_crit_edge
  %106 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx101, align 8
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 4
  %add178 = add i32 %109, 134
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add178, i32 noundef %conv147, i32 noundef 0) #3
  br label %cond.end179

cond.end179:                                      ; preds = %cond.false173, %cond.true163
  %ring_size = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 1, i32 4
  %110 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ring_size, align 4
  %112 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %virt, align 8
  %and182 = and i32 %113, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %cond.end179.cond.false205_crit_edge, label %land.lhs.true184

cond.end179.cond.false205_crit_edge:              ; preds = %cond.end179
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false205

land.lhs.true184:                                 ; preds = %cond.end179
  %funcs187 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %114 = ptrtoint ptr %funcs187 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %funcs187, align 4
  %tobool188.not = icmp eq ptr %115, null
  br i1 %tobool188.not, label %land.lhs.true184.cond.false205_crit_edge, label %land.lhs.true189

land.lhs.true184.cond.false205_crit_edge:         ; preds = %land.lhs.true184
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false205

land.lhs.true189:                                 ; preds = %land.lhs.true184
  %sriov_wreg193 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %115, i32 0, i32 12
  %116 = ptrtoint ptr %sriov_wreg193 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %sriov_wreg193, align 4
  %tobool194.not = icmp eq ptr %117, null
  br i1 %tobool194.not, label %land.lhs.true189.cond.false205_crit_edge, label %cond.true195

land.lhs.true189.cond.false205_crit_edge:         ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false205

cond.true195:                                     ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #5
  %118 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx101, align 8
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %119, align 4
  %add204 = add i32 %121, 135
  tail call void %117(ptr noundef %1, i32 noundef %add204, i32 noundef %111, i32 noundef 0, i32 noundef 14) #3
  br label %cond.end211

cond.false205:                                    ; preds = %land.lhs.true189.cond.false205_crit_edge, %land.lhs.true184.cond.false205_crit_edge, %cond.end179.cond.false205_crit_edge
  %122 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx101, align 8
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %123, align 4
  %add210 = add i32 %125, 135
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add210, i32 noundef %111, i32 noundef 0) #3
  br label %cond.end211

cond.end211:                                      ; preds = %cond.false205, %cond.true195
  %shl = shl i32 %ring_type, 16
  %126 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %virt, align 8
  %and214 = and i32 %127, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214)
  %tobool215.not = icmp eq i32 %and214, 0
  br i1 %tobool215.not, label %cond.end211.cond.false237_crit_edge, label %land.lhs.true216

cond.end211.cond.false237_crit_edge:              ; preds = %cond.end211
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false237

land.lhs.true216:                                 ; preds = %cond.end211
  %funcs219 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %128 = ptrtoint ptr %funcs219 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %funcs219, align 4
  %tobool220.not = icmp eq ptr %129, null
  br i1 %tobool220.not, label %land.lhs.true216.cond.false237_crit_edge, label %land.lhs.true221

land.lhs.true216.cond.false237_crit_edge:         ; preds = %land.lhs.true216
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false237

land.lhs.true221:                                 ; preds = %land.lhs.true216
  %sriov_wreg225 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %129, i32 0, i32 12
  %130 = ptrtoint ptr %sriov_wreg225 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %sriov_wreg225, align 4
  %tobool226.not = icmp eq ptr %131, null
  br i1 %tobool226.not, label %land.lhs.true221.cond.false237_crit_edge, label %cond.true227

land.lhs.true221.cond.false237_crit_edge:         ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false237

cond.true227:                                     ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #5
  %132 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx101, align 8
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %133, align 4
  %add236 = add i32 %135, 128
  tail call void %131(ptr noundef %1, i32 noundef %add236, i32 noundef %shl, i32 noundef 0, i32 noundef 14) #3
  br label %cond.end243

cond.false237:                                    ; preds = %land.lhs.true221.cond.false237_crit_edge, %land.lhs.true216.cond.false237_crit_edge, %cond.end211.cond.false237_crit_edge
  %136 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx101, align 8
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %137, align 4
  %add242 = add i32 %139, 128
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add242, i32 noundef %shl, i32 noundef 0) #3
  br label %cond.end243

cond.end243:                                      ; preds = %cond.false237, %cond.true227
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %140 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %140(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %141 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %141(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %142(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %143(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %144 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %144(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %145(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %146(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %147(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %148 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %148(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %149(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %150 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %150(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %151 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %151(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %152 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %152(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %153(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %154(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %155 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %155(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %156 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %156(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %157 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %157(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %158 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %158(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %159 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %159(i32 noundef 214748000) #3
  %160 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx101, align 8
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %161, align 4
  %add254 = add i32 %163, 128
  %call255 = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add254, i32 noundef -2147483648, i32 noundef -2147418113, i1 noundef zeroext false) #3
  br label %cleanup

cleanup:                                          ; preds = %cond.end243, %if.then107, %cond.end92, %if.then3
  %retval.0 = phi i32 [ %call, %if.then3 ], [ %call105, %if.then107 ], [ %call99, %cond.end92 ], [ %call255, %cond.end243 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_v13_0_ring_stop(ptr noundef %psp, i32 noundef %ring_type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  br i1 %tobool.not, label %cond.false54, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true7

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true7:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_wreg, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %land.lhs.true7.cond.false_crit_edge, label %cond.true

land.lhs.true7.cond.false_crit_edge:              ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 165
  tail call void %7(ptr noundef %1, i32 noundef %add, i32 noundef 786432, i32 noundef 0, i32 noundef 14) #3
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true7.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge
  %arrayidx19 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx19, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add22 = add i32 %15, 165
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add22, i32 noundef 786432, i32 noundef 0) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #3
  %arrayidx25 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  br label %if.end

cond.false54:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx56 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %36 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx56, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %add59 = add i32 %39, 128
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add59, i32 noundef 196608, i32 noundef 0) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #3
  br label %if.end

if.end:                                           ; preds = %cond.false54, %cond.end
  %arrayidx56.sink = phi ptr [ %arrayidx56, %cond.false54 ], [ %arrayidx25, %cond.end ]
  %.sink98 = phi i32 [ 128, %cond.false54 ], [ 165, %cond.end ]
  %60 = ptrtoint ptr %arrayidx56.sink to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx56.sink, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %add71 = add i32 %63, %.sink98
  %call72 = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add71, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #3
  ret i32 %call72
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_v13_0_ring_destroy(ptr noundef %psp, i32 noundef %ring_type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %call = tail call i32 @psp_v13_0_ring_stop(ptr noundef %psp, i32 noundef %ring_type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rbuf = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 112, i32 6
  %ring_mem_mc_addr = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 1, i32 2
  %ring_mem = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 1, i32 1
  tail call void @amdgpu_bo_free_kernel(ptr noundef %rbuf, ptr noundef %ring_mem_mc_addr, ptr noundef %ring_mem) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_v13_0_ring_get_wptr(ptr nocapture noundef readonly %psp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  br i1 %tobool.not, label %cond.false50, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true7

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true7:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %land.lhs.true7.cond.false_crit_edge, label %cond.true

land.lhs.true7.cond.false_crit_edge:              ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 166
  %call = tail call i32 %7(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 14) #3
  br label %if.end

cond.false:                                       ; preds = %land.lhs.true7.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge
  %arrayidx19 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx19, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add22 = add i32 %15, 166
  %call23 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add22, i32 noundef 0) #3
  br label %if.end

cond.false50:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx52 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %16 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx52, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add55 = add i32 %19, 131
  %call56 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add55, i32 noundef 0) #3
  br label %if.end

if.end:                                           ; preds = %cond.false50, %cond.false, %cond.true
  %data.0 = phi i32 [ %call56, %cond.false50 ], [ %call, %cond.true ], [ %call23, %cond.false ]
  ret i32 %data.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @psp_v13_0_ring_set_wptr(ptr nocapture noundef readonly %psp, i32 noundef %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true7:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_wreg, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %land.lhs.true7.cond.false_crit_edge, label %cond.true

land.lhs.true7.cond.false_crit_edge:              ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 166
  tail call void %7(ptr noundef %1, i32 noundef %add, i32 noundef %value, i32 noundef 0, i32 noundef 14) #3
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
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add22, i32 noundef %value, i32 noundef 0) #3
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false48

land.lhs.true27:                                  ; preds = %cond.end
  %18 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs, align 4
  %tobool31.not = icmp eq ptr %19, null
  br i1 %tobool31.not, label %land.lhs.true27.cond.false48_crit_edge, label %land.lhs.true32

land.lhs.true27.cond.false48_crit_edge:           ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false48

land.lhs.true32:                                  ; preds = %land.lhs.true27
  %sriov_wreg36 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %sriov_wreg36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sriov_wreg36, align 4
  %tobool37.not = icmp eq ptr %21, null
  br i1 %tobool37.not, label %land.lhs.true32.cond.false48_crit_edge, label %cond.true38

land.lhs.true32.cond.false48_crit_edge:           ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false48

cond.true38:                                      ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx44 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %22 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx44, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add47 = add i32 %25, 165
  tail call void %21(ptr noundef %1, i32 noundef %add47, i32 noundef 589824, i32 noundef 0, i32 noundef 14) #3
  br label %if.end

cond.false48:                                     ; preds = %land.lhs.true32.cond.false48_crit_edge, %land.lhs.true27.cond.false48_crit_edge, %cond.end.cond.false48_crit_edge
  %arrayidx50 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %26 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx50, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add53 = add i32 %29, 165
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add53, i32 noundef 589824, i32 noundef 0) #3
  br label %if.end

cond.false80:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx82 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %30 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx82, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add85 = add i32 %33, 131
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add85, i32 noundef %value, i32 noundef 0) #3
  br label %if.end

if.end:                                           ; preds = %cond.false80, %cond.false48, %cond.true38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_v13_0_load_usbc_pd_fw(ptr noundef %psp, i64 noundef %fw_pri_mc_addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_wreg, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #5
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
  tail call void %7(ptr noundef %1, i32 noundef %add, i32 noundef %conv, i32 noundef 0, i32 noundef 14) #3
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
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add18, i32 noundef %conv20, i32 noundef 0) #3
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
  %call = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add25, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool26.not = icmp eq i32 %call, 0
  br i1 %tobool26.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false52

land.lhs.true31:                                  ; preds = %if.end
  %funcs34 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %22 = ptrtoint ptr %funcs34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %funcs34, align 4
  %tobool35.not = icmp eq ptr %23, null
  br i1 %tobool35.not, label %land.lhs.true31.cond.false52_crit_edge, label %land.lhs.true36

land.lhs.true31.cond.false52_crit_edge:           ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false52

land.lhs.true36:                                  ; preds = %land.lhs.true31
  %sriov_wreg40 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %sriov_wreg40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sriov_wreg40, align 4
  %tobool41.not = icmp eq ptr %25, null
  br i1 %tobool41.not, label %land.lhs.true36.cond.false52_crit_edge, label %cond.true42

land.lhs.true36.cond.false52_crit_edge:           ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false52

cond.true42:                                      ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #5
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx22, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add51 = add i32 %29, 99
  tail call void %25(ptr noundef %1, i32 noundef %add51, i32 noundef 75497472, i32 noundef 0, i32 noundef 14) #3
  br label %cond.end58

cond.false52:                                     ; preds = %land.lhs.true36.cond.false52_crit_edge, %land.lhs.true31.cond.false52_crit_edge, %if.end.cond.false52_crit_edge
  %30 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx22, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add57 = add i32 %33, 99
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add57, i32 noundef 75497472, i32 noundef 0) #3
  br label %cond.end58

cond.end58:                                       ; preds = %cond.false52, %cond.true42
  %funcs66 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %cond.end58
  %i.0 = phi i32 [ 0, %cond.end58 ], [ %inc, %do.cond.do.body_crit_edge ]
  tail call void @msleep(i32 noundef 1000) #3
  %34 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %virt, align 8
  %and61 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.body.cond.false84_crit_edge, label %land.lhs.true63

do.body.cond.false84_crit_edge:                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false84

land.lhs.true63:                                  ; preds = %do.body
  %36 = ptrtoint ptr %funcs66 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %funcs66, align 4
  %tobool67.not = icmp eq ptr %37, null
  br i1 %tobool67.not, label %land.lhs.true63.cond.false84_crit_edge, label %land.lhs.true68

land.lhs.true63.cond.false84_crit_edge:           ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false84

land.lhs.true68:                                  ; preds = %land.lhs.true63
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %37, i32 0, i32 13
  %38 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sriov_rreg, align 4
  %tobool72.not = icmp eq ptr %39, null
  br i1 %tobool72.not, label %land.lhs.true68.cond.false84_crit_edge, label %cond.true73

land.lhs.true68.cond.false84_crit_edge:           ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false84

cond.true73:                                      ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #5
  %40 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx22, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %add82 = add i32 %43, 99
  %call83 = tail call i32 %39(ptr noundef %1, i32 noundef %add82, i32 noundef 0, i32 noundef 14) #3
  br label %cond.end91

cond.false84:                                     ; preds = %land.lhs.true68.cond.false84_crit_edge, %land.lhs.true63.cond.false84_crit_edge, %do.body.cond.false84_crit_edge
  %44 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx22, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %add89 = add i32 %47, 99
  %call90 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add89, i32 noundef 0) #3
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

done:                                             ; preds = %cond.end91
  %and97 = and i32 %cond, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %cmp98.not = icmp eq i32 %and97, 0
  br i1 %cmp98.not, label %done.cleanup_crit_edge, label %if.then100

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then100:                                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, i32 noundef %and97) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then100, %done.cleanup_crit_edge, %do.cond.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then100 ], [ %call, %cond.end.cleanup_crit_edge ], [ 0, %done.cleanup_crit_edge ], [ -62, %do.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_v13_0_read_usbc_pd_fw(ptr noundef %psp, ptr nocapture noundef writeonly %fw_ver) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_wreg, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 99
  tail call void %7(ptr noundef %1, i32 noundef %add, i32 noundef 33554432, i32 noundef 0, i32 noundef 14) #3
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
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add18, i32 noundef 33554432, i32 noundef 0) #3
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
  %call = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add23, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool24.not = icmp eq i32 %call, 0
  br i1 %tobool24.not, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false50

land.lhs.true29:                                  ; preds = %if.then
  %funcs32 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %22 = ptrtoint ptr %funcs32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %funcs32, align 4
  %tobool33.not = icmp eq ptr %23, null
  br i1 %tobool33.not, label %land.lhs.true29.cond.false50_crit_edge, label %land.lhs.true34

land.lhs.true29.cond.false50_crit_edge:           ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false50

land.lhs.true34:                                  ; preds = %land.lhs.true29
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sriov_rreg, align 4
  %tobool38.not = icmp eq ptr %25, null
  br i1 %tobool38.not, label %land.lhs.true34.cond.false50_crit_edge, label %cond.true39

land.lhs.true34.cond.false50_crit_edge:           ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false50

cond.true39:                                      ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #5
  %26 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx20, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add48 = add i32 %29, 100
  %call49 = tail call i32 %25(ptr noundef %1, i32 noundef %add48, i32 noundef 0, i32 noundef 14) #3
  br label %cond.end57

cond.false50:                                     ; preds = %land.lhs.true34.cond.false50_crit_edge, %land.lhs.true29.cond.false50_crit_edge, %if.then.cond.false50_crit_edge
  %30 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx20, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add55 = add i32 %33, 100
  %call56 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add55, i32 noundef 0) #3
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psp_init_sos_microcode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psp_init_ta_microcode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psp_init_asd_microcode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psp_init_toc_microcode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psp_v13_0_bootloader_load_component(ptr noundef %psp, ptr nocapture noundef readonly %bin_desc, i32 noundef %bl_cmd) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %entry
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool7.not.i = icmp eq ptr %7, null
  br i1 %tobool7.not.i, label %land.lhs.true3.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true3.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add.i = add i32 %11, 145
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef %add.i, i32 noundef 0, i32 noundef 14) #3
  br label %psp_v13_0_is_sos_alive.exit

cond.false.i:                                     ; preds = %land.lhs.true3.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %entry.cond.false.i_crit_edge
  %arrayidx15.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %12 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx15.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add18.i = add i32 %15, 145
  %call19.i = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add18.i, i32 noundef 0) #3
  br label %psp_v13_0_is_sos_alive.exit

psp_v13_0_is_sos_alive.exit:                      ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %call19.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp.i.not = icmp eq i32 %cond.i, 0
  br i1 %cmp.i.not, label %if.end, label %psp_v13_0_is_sos_alive.exit.cleanup_crit_edge

psp_v13_0_is_sos_alive.exit.cleanup_crit_edge:    ; preds = %psp_v13_0_is_sos_alive.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %psp_v13_0_is_sos_alive.exit
  %call2 = tail call fastcc i32 @psp_v13_0_wait_for_bootloader(ptr noundef %psp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %fw_pri_buf = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 6
  %16 = ptrtoint ptr %fw_pri_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw_pri_buf, align 8
  %18 = call ptr @memset(ptr %17, i32 0, i32 1048576)
  %19 = load ptr, ptr %fw_pri_buf, align 8
  %start_addr = getelementptr inbounds %struct.psp_bin_desc, ptr %bin_desc, i32 0, i32 3
  %20 = ptrtoint ptr %start_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %start_addr, align 4
  %size_bytes = getelementptr inbounds %struct.psp_bin_desc, ptr %bin_desc, i32 0, i32 2
  %22 = ptrtoint ptr %size_bytes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size_bytes, align 4
  %24 = call ptr @memcpy(ptr %19, ptr %21, i32 %23)
  %25 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %virt.i, align 8
  %and = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end4.cond.false_crit_edge, label %land.lhs.true

if.end4.cond.false_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true:                                    ; preds = %if.end4
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %27 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %funcs, align 4
  %tobool7.not = icmp eq ptr %28, null
  br i1 %tobool7.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true8

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true8:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sriov_wreg, align 4
  %tobool12.not = icmp eq ptr %30, null
  br i1 %tobool12.not, label %land.lhs.true8.cond.false_crit_edge, label %cond.true

land.lhs.true8.cond.false_crit_edge:              ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add = add i32 %34, 100
  %fw_pri_mc_addr = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 5
  %35 = ptrtoint ptr %fw_pri_mc_addr to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %fw_pri_mc_addr, align 8
  %shr = lshr i64 %36, 20
  %conv = trunc i64 %shr to i32
  tail call void %30(ptr noundef %1, i32 noundef %add, i32 noundef %conv, i32 noundef 0, i32 noundef 14) #3
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true8.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.end4.cond.false_crit_edge
  %arrayidx20 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %37 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx20, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %add23 = add i32 %40, 100
  %fw_pri_mc_addr24 = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 5
  %41 = ptrtoint ptr %fw_pri_mc_addr24 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %fw_pri_mc_addr24, align 8
  %shr25 = lshr i64 %42, 20
  %conv26 = trunc i64 %shr25 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add23, i32 noundef %conv26, i32 noundef 0) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %43 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %virt.i, align 8
  %and29 = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %cond.end.cond.false52_crit_edge, label %land.lhs.true31

cond.end.cond.false52_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false52

land.lhs.true31:                                  ; preds = %cond.end
  %funcs34 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %45 = ptrtoint ptr %funcs34 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %funcs34, align 4
  %tobool35.not = icmp eq ptr %46, null
  br i1 %tobool35.not, label %land.lhs.true31.cond.false52_crit_edge, label %land.lhs.true36

land.lhs.true31.cond.false52_crit_edge:           ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false52

land.lhs.true36:                                  ; preds = %land.lhs.true31
  %sriov_wreg40 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %46, i32 0, i32 12
  %47 = ptrtoint ptr %sriov_wreg40 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sriov_wreg40, align 4
  %tobool41.not = icmp eq ptr %48, null
  br i1 %tobool41.not, label %land.lhs.true36.cond.false52_crit_edge, label %cond.true42

land.lhs.true36.cond.false52_crit_edge:           ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false52

cond.true42:                                      ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx48 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %49 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx48, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %add51 = add i32 %52, 99
  tail call void %48(ptr noundef %1, i32 noundef %add51, i32 noundef %bl_cmd, i32 noundef 0, i32 noundef 14) #3
  br label %cond.end58

cond.false52:                                     ; preds = %land.lhs.true36.cond.false52_crit_edge, %land.lhs.true31.cond.false52_crit_edge, %cond.end.cond.false52_crit_edge
  %arrayidx54 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 14
  %53 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx54, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %add57 = add i32 %56, 99
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add57, i32 noundef %bl_cmd, i32 noundef 0) #3
  br label %cond.end58

cond.end58:                                       ; preds = %cond.false52, %cond.true42
  %call59 = tail call fastcc i32 @psp_v13_0_wait_for_bootloader(ptr noundef %psp)
  br label %cleanup

cleanup:                                          ; preds = %cond.end58, %if.end.cleanup_crit_edge, %psp_v13_0_is_sos_alive.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call59, %cond.end58 ], [ 0, %psp_v13_0_is_sos_alive.exit.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psp_v13_0_wait_for_bootloader(ptr noundef %psp) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  %call = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond:                                         ; preds = %entry
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add.1 = add i32 %9, 99
  %call.1 = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add.1, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp4.1 = icmp eq i32 %call.1, 0
  br i1 %cmp4.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add.2 = add i32 %13, 99
  %call.2 = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add.2, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp4.2 = icmp eq i32 %call.2, 0
  br i1 %cmp4.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add.3 = add i32 %17, 99
  %call.3 = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add.3, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp4.3 = icmp eq i32 %call.3, 0
  br i1 %cmp4.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add.4 = add i32 %21, 99
  %call.4 = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add.4, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %cmp4.4 = icmp eq i32 %call.4, 0
  br i1 %cmp4.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add.5 = add i32 %25, 99
  %call.5 = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add.5, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %cmp4.5 = icmp eq i32 %call.5, 0
  br i1 %cmp4.5, label %for.cond.4.cleanup_crit_edge, label %for.cond.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add.6 = add i32 %29, 99
  %call.6 = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add.6, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %cmp4.6 = icmp eq i32 %call.6, 0
  br i1 %cmp4.6, label %for.cond.5.cleanup_crit_edge, label %for.cond.6

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add.7 = add i32 %33, 99
  %call.7 = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add.7, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %cmp4.7 = icmp eq i32 %call.7, 0
  br i1 %cmp4.7, label %for.cond.6.cleanup_crit_edge, label %for.cond.7

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %add.8 = add i32 %37, 99
  %call.8 = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add.8, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8)
  %cmp4.8 = icmp eq i32 %call.8, 0
  br i1 %cmp4.8, label %for.cond.7.cleanup_crit_edge, label %for.cond.8

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.8:                                       ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #5
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %add.9 = add i32 %41, 99
  %call.9 = tail call i32 @psp_wait_for(ptr noundef %psp, i32 noundef %add.9, i32 noundef -2147483648, i32 noundef -2147483648, i1 noundef zeroext false) #3
  br label %cleanup

cleanup:                                          ; preds = %for.cond.8, %for.cond.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ 0, %for.cond.1.cleanup_crit_edge ], [ 0, %for.cond.2.cleanup_crit_edge ], [ 0, %for.cond.3.cleanup_crit_edge ], [ 0, %for.cond.4.cleanup_crit_edge ], [ 0, %for.cond.5.cleanup_crit_edge ], [ 0, %for.cond.6.cleanup_crit_edge ], [ 0, %for.cond.7.cleanup_crit_edge ], [ %call.9, %for.cond.8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psp_wait_for(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_kernel(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_free_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__UNIQUE_ID_firmware343, !1, !"__UNIQUE_ID_firmware343", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v13_0.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware344, !3, !"__UNIQUE_ID_firmware344", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v13_0.c", i32 33, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware345, !5, !"__UNIQUE_ID_firmware345", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v13_0.c", i32 34, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware346, !7, !"__UNIQUE_ID_firmware346", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v13_0.c", i32 35, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware347, !9, !"__UNIQUE_ID_firmware347", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v13_0.c", i32 36, i32 1}
!10 = !{ptr @psp_v13_0_funcs, !11, !"psp_v13_0_funcs", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v13_0.c", i32 442, i32 31}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v13_0.c", i32 52, i32 15}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v13_0.c", i32 56, i32 15}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v13_0.c", i32 285, i32 4}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v13_0.c", i32 312, i32 4}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v13_0.c", i32 350, i32 3}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/psp_v13_0.c", i32 419, i32 3}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2158801425, i64 2158801927, i64 2158801462, i64 2158801518, i64 2158801552, i64 2158801576, i64 2158801617, i64 2158801638, i64 2158801666, i64 2158801700}
