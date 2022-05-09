; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/swsmu/smu13/yellow_carp_ppt.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pptable_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cmn2asic_mapping = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cmn2asic_msg_mapping = type { i32, i32, i32 }
%struct.smu_context = type { ptr, %struct.amdgpu_irq_src, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, i64, %struct.smu_table_context, %struct.smu_dpm_context, %struct.smu_power_context, %struct.smu_feature, ptr, %struct.smu_baco_context, %struct.smu_temperature_range, ptr, %struct.smu_umd_pstate_table, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i8, i8, i32, i32, i8, i32, [7 x i32], [7 x i32], i32, i32, i8, i8, i32, i32, i32, i8, i8, %struct.work_struct, %struct.atomic64_t, %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, %struct.smu_user_dpm_profile, %struct.stb_context }
%struct.amdgpu_irq_src = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.DpmClocks_t = type { [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [4 x %struct.DfPstateTable_t], i8, i8, i8, i8, i8, [3 x i8], i32, i32 }
%struct.DfPstateTable_t = type { i32, i32, i32, i8, [3 x i8] }
%struct.SmuMetrics_t = type { i16, i16, i16, i16, i16, i16, i16, i16, [2 x i16], [2 x i16], [2 x i16], [8 x i16], [8 x i16], [8 x i16], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.pp_smu_wm_range_sets = type { i32, [4 x %struct.pp_smu_wm_set_range], i32, [4 x %struct.pp_smu_wm_set_range] }
%struct.pp_smu_wm_set_range = type { i16, i16, i16, i16, i8, i8 }
%struct.WatermarkRowGeneric_t = type { i16, i16, i16, i16, i8, i8, [2 x i8] }
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
%struct.gpu_metrics_v2_1 = type { %struct.metrics_table_header, i16, i16, [8 x i16], [2 x i16], i16, i16, i64, i16, i16, i16, i16, [8 x i16], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [8 x i16], [2 x i16], i32, i16, [3 x i16] }
%struct.metrics_table_header = type { i16, i8, i8 }

@yellow_carp_ppt_funcs = internal constant { %struct.pptable_funcs, [124 x i8] } { %struct.pptable_funcs { ptr null, ptr null, ptr null, ptr @yellow_carp_set_default_dpm_tables, ptr null, ptr null, ptr @yellow_carp_print_clk_levels, ptr @yellow_carp_force_clk_levels, ptr @yellow_carp_od_edit_dpm_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @yellow_carp_dpm_set_vcn_enable, ptr @yellow_carp_dpm_set_jpeg_enable, ptr @yellow_carp_read_sensor, ptr null, ptr null, ptr null, ptr null, ptr @yellow_carp_is_dpm_running, ptr null, ptr null, ptr @yellow_carp_set_watermarks_table, ptr null, ptr null, ptr null, ptr @yellow_carp_set_performance_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @yellow_carp_init_smc_tables, ptr @yellow_carp_fini_smc_tables, ptr null, ptr null, ptr @smu_v13_0_check_fw_status, ptr null, ptr null, ptr @smu_v13_0_get_vbios_bootup_values, ptr @smu_v13_0_check_fw_version, ptr null, ptr null, ptr null, ptr @smu_v13_0_set_driver_table_location, ptr null, ptr null, ptr @yellow_carp_system_features_control, ptr @smu_cmn_send_smc_msg_with_param, ptr @smu_cmn_send_smc_msg, ptr null, ptr null, ptr @smu_cmn_get_enabled_32_bits_mask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smu_v13_0_gfx_off_control, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @yellow_carp_mode2_reset, ptr @yellow_carp_get_dpm_ultimate_freq, ptr null, ptr null, ptr null, ptr @smu_cmn_get_pp_feature_mask, ptr null, ptr @yellow_carp_get_gpu_metrics, ptr null, ptr null, ptr null, ptr null, ptr @yellow_carp_post_smu_init, ptr null, ptr null, ptr null, ptr @yellow_carp_set_fine_grain_gfx_freq_parameters, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@yellow_carp_feature_mask_map = internal global { [95 x %struct.cmn2asic_mapping], [168 x i8] } { [95 x %struct.cmn2asic_mapping] [%struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 19 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 14 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 9 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 20 }, %struct.cmn2asic_mapping { i32 1, i32 21 }, %struct.cmn2asic_mapping { i32 1, i32 22 }, %struct.cmn2asic_mapping { i32 1, i32 3 }, %struct.cmn2asic_mapping { i32 1, i32 4 }, %struct.cmn2asic_mapping { i32 1, i32 5 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 13 }, %struct.cmn2asic_mapping { i32 1, i32 28 }, %struct.cmn2asic_mapping { i32 1, i32 30 }, %struct.cmn2asic_mapping { i32 1, i32 31 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 55 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 0 }, %struct.cmn2asic_mapping { i32 1, i32 1 }, %struct.cmn2asic_mapping { i32 1, i32 11 }, %struct.cmn2asic_mapping { i32 1, i32 16 }, %struct.cmn2asic_mapping { i32 1, i32 17 }, %struct.cmn2asic_mapping { i32 1, i32 18 }, %struct.cmn2asic_mapping { i32 1, i32 23 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 34 }, %struct.cmn2asic_mapping { i32 1, i32 35 }, %struct.cmn2asic_mapping { i32 1, i32 36 }, %struct.cmn2asic_mapping { i32 1, i32 37 }, %struct.cmn2asic_mapping { i32 1, i32 38 }, %struct.cmn2asic_mapping { i32 1, i32 39 }, %struct.cmn2asic_mapping { i32 1, i32 52 }, %struct.cmn2asic_mapping { i32 1, i32 41 }, %struct.cmn2asic_mapping { i32 1, i32 42 }, %struct.cmn2asic_mapping { i32 1, i32 43 }, %struct.cmn2asic_mapping { i32 1, i32 44 }, %struct.cmn2asic_mapping { i32 1, i32 45 }, %struct.cmn2asic_mapping { i32 1, i32 46 }, %struct.cmn2asic_mapping { i32 1, i32 47 }, %struct.cmn2asic_mapping { i32 1, i32 48 }, %struct.cmn2asic_mapping { i32 1, i32 49 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 53 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer], [168 x i8] zeroinitializer }, align 32
@yellow_carp_table_map = internal global { [15 x %struct.cmn2asic_mapping], [40 x i8] } { [15 x %struct.cmn2asic_mapping] [%struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 1 }, %struct.cmn2asic_mapping { i32 1, i32 2 }, %struct.cmn2asic_mapping { i32 1, i32 4 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 7 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s:\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OD_SCLK\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"0: %10uMhz\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"1: %10uMhz\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OD_RANGE\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SCLK: %7uMhz %10uMhz\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%d: %uMhz %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"0: %uMhz %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"1: %uMhz %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"2: %uMhz %s\0A\00", [19 x i8] zeroinitializer }, align 32
@yellow_carp_od_edit_dpm_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 605, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"amdgpu: Input parameter number not correct\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"yellow_carp_od_edit_dpm_table\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@yellow_carp_od_edit_dpm_table._entry_ptr = internal global ptr @yellow_carp_od_edit_dpm_table._entry, section ".printk_index", align 4
@yellow_carp_od_edit_dpm_table._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.14, i32 613, ptr @.str.19, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"amdgpu: Fine grain setting minimum sclk (%ld) MHz is less than the minimum allowed (%d) MHz\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@yellow_carp_od_edit_dpm_table._entry_ptr.20 = internal global ptr @yellow_carp_od_edit_dpm_table._entry.17, section ".printk_index", align 4
@yellow_carp_od_edit_dpm_table._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.13, ptr @.str.14, i32 621, ptr @.str.19, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"amdgpu: Fine grain setting maximum sclk (%ld) MHz is greater than the maximum allowed (%d) MHz\0A\00", [32 x i8] zeroinitializer }, align 32
@yellow_carp_od_edit_dpm_table._entry_ptr.23 = internal global ptr @yellow_carp_od_edit_dpm_table._entry.21, section ".printk_index", align 4
@yellow_carp_od_edit_dpm_table._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 631, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@yellow_carp_od_edit_dpm_table._entry_ptr.25 = internal global ptr @yellow_carp_od_edit_dpm_table._entry.24, section ".printk_index", align 4
@yellow_carp_od_edit_dpm_table._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 640, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@yellow_carp_od_edit_dpm_table._entry_ptr.27 = internal global ptr @yellow_carp_od_edit_dpm_table._entry.26, section ".printk_index", align 4
@yellow_carp_od_edit_dpm_table._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.13, ptr @.str.14, i32 647, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"amdgpu: The setting minimum sclk (%d) MHz is greater than the setting maximum sclk (%d) MHz\0A\00", [35 x i8] zeroinitializer }, align 32
@yellow_carp_od_edit_dpm_table._entry_ptr.30 = internal global ptr @yellow_carp_od_edit_dpm_table._entry.28, section ".printk_index", align 4
@yellow_carp_od_edit_dpm_table._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.13, ptr @.str.14, i32 654, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: Set hard min sclk failed!\00", [62 x i8] zeroinitializer }, align 32
@yellow_carp_od_edit_dpm_table._entry_ptr.33 = internal global ptr @yellow_carp_od_edit_dpm_table._entry.31, section ".printk_index", align 4
@yellow_carp_od_edit_dpm_table._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.13, ptr @.str.14, i32 661, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: Set soft max sclk failed!\00", [62 x i8] zeroinitializer }, align 32
@yellow_carp_od_edit_dpm_table._entry_ptr.36 = internal global ptr @yellow_carp_od_edit_dpm_table._entry.34, section ".printk_index", align 4
@yellow_carp_set_watermarks_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.14, i32 523, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: Failed to update WMTABLE!\00", [62 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"yellow_carp_set_watermarks_table\00", [63 x i8] zeroinitializer }, align 32
@yellow_carp_set_watermarks_table._entry_ptr = internal global ptr @yellow_carp_set_watermarks_table._entry, section ".printk_index", align 4
@yellow_carp_set_performance_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.14, i32 1115, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: Invalid performance level %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"yellow_carp_set_performance_level\00", [62 x i8] zeroinitializer }, align 32
@yellow_carp_set_performance_level._entry_ptr = internal global ptr @yellow_carp_set_performance_level._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@yellow_carp_mode_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.14, i32 289, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"amdgpu: Failed to mode reset!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"yellow_carp_mode_reset\00", [41 x i8] zeroinitializer }, align 32
@yellow_carp_mode_reset._entry_ptr = internal global ptr @yellow_carp_mode_reset._entry, section ".printk_index", align 4
@yellow_carp_post_smu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.14, i32 279, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: Failed to Enable GfxOff!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"yellow_carp_post_smu_init\00", [38 x i8] zeroinitializer }, align 32
@yellow_carp_post_smu_init._entry_ptr = internal global ptr @yellow_carp_post_smu_init._entry, section ".printk_index", align 4
@yellow_carp_message_map = internal global { <{ [166 x %struct.cmn2asic_msg_mapping], [41 x %struct.cmn2asic_msg_mapping] }>, [620 x i8] } { <{ [166 x %struct.cmn2asic_msg_mapping], [41 x %struct.cmn2asic_msg_mapping] }> <{ [166 x %struct.cmn2asic_msg_mapping] [%struct.cmn2asic_msg_mapping { i32 1, i32 1, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 2, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 3, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 18, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 13, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 14, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 15, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 16, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 17, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 12, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 25, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 26, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 7, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 6, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 34, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 33, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 8, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 19, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 21, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 23, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 24, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 27, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 28, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 29, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 30, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 31, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 32, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 35, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 36, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 4, i32 1 }], [41 x %struct.cmn2asic_msg_mapping] zeroinitializer }>, [620 x i8] zeroinitializer }, align 32
@switch.table.yellow_carp_get_dpm_ultimate_freq = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 1, i32 62, i32 62, i32 31, i32 31, i32 31, i32 3, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 1, i32 31], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 6, i64 12, i64 13, i64 14, i64 18, i64 21]
@__sancov_gen_cov_switch_values.46 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 6, i64 12, i64 14]
@__sancov_gen_cov_switch_values.47 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 6, i64 7, i64 12, i64 14]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 6, i64 12]
@__sancov_gen_cov_switch_values.49 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 6, i64 7, i64 12]
@__sancov_gen_cov_switch_values.50 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 6, i64 12]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 5]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.53 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 2, i64 3, i64 7, i64 9, i64 10, i64 11, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.54 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.55 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 6, i64 7, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.56 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 6, i64 7, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 13]
@__sancov_gen_cov_switch_values.58 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 6, i64 7, i64 12, i64 14]
@__sancov_gen_cov_switch_values.59 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 6, i64 7, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 13]
@__sancov_gen_cov_switch_values.61 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 6, i64 7, i64 12, i64 14]
@__sancov_gen_cov_switch_values.62 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 6, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 32, i64 11, i64 13, i64 14, i64 15]
@___asan_gen_.64 = private unnamed_addr constant [22 x i8] c"yellow_carp_ppt_funcs\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1164, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant [29 x i8] c"yellow_carp_feature_mask_map\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 90, i32 32 }
@___asan_gen_.70 = private unnamed_addr constant [22 x i8] c"yellow_carp_table_map\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 131, i32 32 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 976, i32 36 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 976, i32 45 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 977, i32 36 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 979, i32 36 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 983, i32 45 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 984, i32 36 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1005, i32 37 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1006, i32 27 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1006, i32 33 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1022, i32 36 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1024, i32 36 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1027, i32 36 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 605, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 611, i32 5 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 619, i32 5 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 631, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 640, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 644, i32 5 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 654, i32 5 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 661, i32 5 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 523, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1115, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 289, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 279, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [24 x i8] c"yellow_carp_message_map\00", align 1
@___asan_gen_.203 = private constant [66 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 57, i32 36 }
@___asan_gen_.205 = private unnamed_addr constant [47 x i8] c"switch.table.yellow_carp_get_dpm_ultimate_freq\00", align 1
@llvm.compiler.used = appending global [60 x ptr] [ptr @yellow_carp_mode_reset._entry, ptr @yellow_carp_mode_reset._entry_ptr, ptr @yellow_carp_od_edit_dpm_table._entry, ptr @yellow_carp_od_edit_dpm_table._entry.17, ptr @yellow_carp_od_edit_dpm_table._entry.21, ptr @yellow_carp_od_edit_dpm_table._entry.24, ptr @yellow_carp_od_edit_dpm_table._entry.26, ptr @yellow_carp_od_edit_dpm_table._entry.28, ptr @yellow_carp_od_edit_dpm_table._entry.31, ptr @yellow_carp_od_edit_dpm_table._entry.34, ptr @yellow_carp_od_edit_dpm_table._entry_ptr, ptr @yellow_carp_od_edit_dpm_table._entry_ptr.20, ptr @yellow_carp_od_edit_dpm_table._entry_ptr.23, ptr @yellow_carp_od_edit_dpm_table._entry_ptr.25, ptr @yellow_carp_od_edit_dpm_table._entry_ptr.27, ptr @yellow_carp_od_edit_dpm_table._entry_ptr.30, ptr @yellow_carp_od_edit_dpm_table._entry_ptr.33, ptr @yellow_carp_od_edit_dpm_table._entry_ptr.36, ptr @yellow_carp_post_smu_init._entry, ptr @yellow_carp_post_smu_init._entry_ptr, ptr @yellow_carp_set_performance_level._entry, ptr @yellow_carp_set_performance_level._entry_ptr, ptr @yellow_carp_set_watermarks_table._entry, ptr @yellow_carp_set_watermarks_table._entry_ptr, ptr @yellow_carp_ppt_funcs, ptr @yellow_carp_feature_mask_map, ptr @yellow_carp_table_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @yellow_carp_message_map, ptr @switch.table.yellow_carp_get_dpm_ultimate_freq], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellow_carp_ppt_funcs to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellow_carp_feature_mask_map to i32), i32 760, i32 928, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellow_carp_table_map to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellow_carp_od_edit_dpm_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellow_carp_od_edit_dpm_table._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellow_carp_od_edit_dpm_table._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellow_carp_od_edit_dpm_table._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellow_carp_od_edit_dpm_table._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellow_carp_od_edit_dpm_table._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellow_carp_od_edit_dpm_table._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellow_carp_od_edit_dpm_table._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellow_carp_set_watermarks_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellow_carp_set_performance_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellow_carp_mode_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellow_carp_post_smu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellow_carp_message_map to i32), i32 2484, i32 3104, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.yellow_carp_get_dpm_ultimate_freq to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @yellow_carp_set_ppt_funcs(ptr nocapture noundef writeonly %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 2
  %0 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @yellow_carp_ppt_funcs, ptr %ppt_funcs, align 8
  %message_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 3
  %1 = ptrtoint ptr %message_map to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @yellow_carp_message_map, ptr %message_map, align 4
  %feature_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 5
  %2 = ptrtoint ptr %feature_map to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @yellow_carp_feature_mask_map, ptr %feature_map, align 4
  %table_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 6
  %3 = ptrtoint ptr %table_map to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @yellow_carp_table_map, ptr %table_map, align 8
  %is_apu = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 43
  %4 = ptrtoint ptr %is_apu to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %is_apu, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yellow_carp_set_default_dpm_tables(ptr noundef %smu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clocks_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %0 = ptrtoint ptr %clocks_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clocks_table, align 4
  %call = tail call i32 @smu_cmn_update_table(ptr noundef %smu, i32 noundef 3, i32 noundef 0, ptr noundef %1, i1 noundef zeroext false) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yellow_carp_print_clk_levels(ptr noundef %smu, i32 noundef %clk_type, ptr noundef %buf) #1 align 64 {
entry:
  %cur_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_value) #8
  %0 = ptrtoint ptr %cur_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cur_value, align 4
  %tobool.not.i = icmp eq ptr %buf, null
  %1 = ptrtoint ptr %buf to i32
  %and.i = and i32 %1, 4095
  %idx.neg.i = sub nsw i32 0, %and.i
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %idx.neg.i
  %buf.addr.0 = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %size.0 = select i1 %tobool.not.i, i32 0, i32 %and.i
  %2 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %clk_type, label %entry.print_clk_out_crit_edge [
    i32 18, label %sw.bb
    i32 21, label %sw.bb12
    i32 6, label %entry.sw.bb19_crit_edge
    i32 1, label %entry.sw.bb19_crit_edge163
    i32 2, label %entry.sw.bb19_crit_edge164
    i32 14, label %entry.sw.bb19_crit_edge165
    i32 12, label %entry.sw.bb19_crit_edge166
    i32 0, label %entry.sw.bb34_crit_edge
    i32 13, label %entry.sw.bb34_crit_edge167
  ]

entry.sw.bb34_crit_edge167:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb34

entry.sw.bb34_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb34

entry.sw.bb19_crit_edge166:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb19

entry.sw.bb19_crit_edge165:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb19

entry.sw.bb19_crit_edge164:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb19

entry.sw.bb19_crit_edge163:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb19

entry.sw.bb19_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb19

entry.print_clk_out_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %print_clk_out

sw.bb:                                            ; preds = %entry
  %call = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  %add = add i32 %call, %size.0
  %gfx_actual_hard_min_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %3 = ptrtoint ptr %gfx_actual_hard_min_freq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gfx_actual_hard_min_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %cond.false, label %sw.bb.cond.end_crit_edge

sw.bb.cond.end_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %gfx_default_hard_min_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 54
  %5 = ptrtoint ptr %gfx_default_hard_min_freq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gfx_default_hard_min_freq, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %sw.bb.cond.end_crit_edge
  %cond = phi i32 [ %6, %cond.false ], [ %4, %sw.bb.cond.end_crit_edge ]
  %call2 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add, ptr noundef nonnull @.str.2, i32 noundef %cond) #8
  %add3 = add i32 %call2, %add
  %gfx_actual_soft_max_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %7 = ptrtoint ptr %gfx_actual_soft_max_freq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gfx_actual_soft_max_freq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp4.not = icmp eq i32 %8, 0
  br i1 %cmp4.not, label %cond.false7, label %cond.end.cond.end8_crit_edge

cond.end.cond.end8_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end8

cond.false7:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %gfx_default_soft_max_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 55
  %9 = ptrtoint ptr %gfx_default_soft_max_freq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gfx_default_soft_max_freq, align 8
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false7, %cond.end.cond.end8_crit_edge
  %cond9 = phi i32 [ %10, %cond.false7 ], [ %8, %cond.end.cond.end8_crit_edge ]
  %call10 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add3, ptr noundef nonnull @.str.3, i32 noundef %cond9) #8
  %add11 = add i32 %call10, %add3
  br label %print_clk_out

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #8
  %add14 = add i32 %call13, %size.0
  %gfx_default_hard_min_freq15 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 54
  %11 = ptrtoint ptr %gfx_default_hard_min_freq15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gfx_default_hard_min_freq15, align 4
  %gfx_default_soft_max_freq16 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 55
  %13 = ptrtoint ptr %gfx_default_soft_max_freq16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gfx_default_soft_max_freq16, align 8
  %call17 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add14, ptr noundef nonnull @.str.5, i32 noundef %12, i32 noundef %14) #8
  %add18 = add i32 %call17, %add14
  br label %print_clk_out

sw.bb19:                                          ; preds = %entry.sw.bb19_crit_edge, %entry.sw.bb19_crit_edge163, %entry.sw.bb19_crit_edge164, %entry.sw.bb19_crit_edge165, %entry.sw.bb19_crit_edge166
  %call20 = call fastcc i32 @yellow_carp_get_current_clk_freq(ptr noundef %smu, i32 noundef %clk_type, ptr noundef nonnull %cur_value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %if.end, label %sw.bb19.print_clk_out_crit_edge

sw.bb19.print_clk_out_crit_edge:                  ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  br label %print_clk_out

if.end:                                           ; preds = %sw.bb19
  %clocks_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %15 = ptrtoint ptr %clocks_table.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clocks_table.i, align 4
  %17 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %clk_type, label %if.end.print_clk_out_crit_edge [
    i32 6, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb3.i
    i32 14, label %sw.bb6.i
    i32 12, label %sw.bb8.i
  ]

if.end.print_clk_out_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %print_clk_out

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %NumSocClkLevelsEnabled.i = getelementptr inbounds %struct.DpmClocks_t, ptr %16, i32 0, i32 10
  br label %yellow_carp_get_dpm_level_count.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %VcnClkLevelsEnabled.i = getelementptr inbounds %struct.DpmClocks_t, ptr %16, i32 0, i32 11
  br label %yellow_carp_get_dpm_level_count.exit

sw.bb3.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %VcnClkLevelsEnabled4.i = getelementptr inbounds %struct.DpmClocks_t, ptr %16, i32 0, i32 11
  br label %yellow_carp_get_dpm_level_count.exit

sw.bb6.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %NumDfPstatesEnabled.i = getelementptr inbounds %struct.DpmClocks_t, ptr %16, i32 0, i32 12
  br label %yellow_carp_get_dpm_level_count.exit

sw.bb8.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %NumDfPstatesEnabled9.i = getelementptr inbounds %struct.DpmClocks_t, ptr %16, i32 0, i32 12
  br label %yellow_carp_get_dpm_level_count.exit

yellow_carp_get_dpm_level_count.exit:             ; preds = %sw.bb8.i, %sw.bb6.i, %sw.bb3.i, %sw.bb1.i, %sw.bb.i
  %.sink.in.i = phi ptr [ %NumDfPstatesEnabled9.i, %sw.bb8.i ], [ %NumDfPstatesEnabled.i, %sw.bb6.i ], [ %VcnClkLevelsEnabled4.i, %sw.bb3.i ], [ %VcnClkLevelsEnabled.i, %sw.bb1.i ], [ %NumSocClkLevelsEnabled.i, %sw.bb.i ]
  %18 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %.sink.i = load i8, ptr %.sink.in.i, align 1
  %conv10.i = zext i8 %.sink.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.sink.i)
  %cmp25149.not = icmp eq i8 %.sink.i, 0
  br i1 %cmp25149.not, label %yellow_carp_get_dpm_level_count.exit.print_clk_out_crit_edge, label %yellow_carp_get_dpm_level_count.exit.for.body_crit_edge

yellow_carp_get_dpm_level_count.exit.for.body_crit_edge: ; preds = %yellow_carp_get_dpm_level_count.exit
  br label %for.body

yellow_carp_get_dpm_level_count.exit.print_clk_out_crit_edge: ; preds = %yellow_carp_get_dpm_level_count.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %print_clk_out

for.body:                                         ; preds = %if.end29.for.body_crit_edge, %yellow_carp_get_dpm_level_count.exit.for.body_crit_edge
  %i.0152 = phi i32 [ %inc, %if.end29.for.body_crit_edge ], [ 0, %yellow_carp_get_dpm_level_count.exit.for.body_crit_edge ]
  %size.1150 = phi i32 [ %add33, %if.end29.for.body_crit_edge ], [ %size.0, %yellow_carp_get_dpm_level_count.exit.for.body_crit_edge ]
  %19 = ptrtoint ptr %clocks_table.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clocks_table.i, align 4
  %tobool.not.i117 = icmp eq ptr %20, null
  br i1 %tobool.not.i117, label %for.body.print_clk_out_crit_edge, label %if.end.i118

for.body.print_clk_out_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %print_clk_out

if.end.i118:                                      ; preds = %for.body
  %21 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %clk_type, label %if.end.i118.print_clk_out_crit_edge [
    i32 6, label %sw.bb.i120
    i32 1, label %sw.bb5.i
    i32 2, label %sw.bb12.i
    i32 7, label %if.end.i118.sw.bb20.i_crit_edge
    i32 14, label %if.end.i118.sw.bb20.i_crit_edge168
    i32 12, label %sw.bb27.i
  ]

if.end.i118.sw.bb20.i_crit_edge168:               ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb20.i

if.end.i118.sw.bb20.i_crit_edge:                  ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb20.i

if.end.i118.print_clk_out_crit_edge:              ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #10
  br label %print_clk_out

sw.bb.i120:                                       ; preds = %if.end.i118
  %NumSocClkLevelsEnabled.i119 = getelementptr inbounds %struct.DpmClocks_t, ptr %20, i32 0, i32 10
  %22 = ptrtoint ptr %NumSocClkLevelsEnabled.i119 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %NumSocClkLevelsEnabled.i119, align 2
  %conv.i = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0152, i32 %conv.i)
  %cmp1.not.i = icmp ult i32 %i.0152, %conv.i
  br i1 %cmp1.not.i, label %if.end4.i, label %sw.bb.i120.print_clk_out_crit_edge

sw.bb.i120.print_clk_out_crit_edge:               ; preds = %sw.bb.i120
  call void @__sanitizer_cov_trace_pc() #10
  br label %print_clk_out

if.end4.i:                                        ; preds = %sw.bb.i120
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.DpmClocks_t, ptr %20, i32 0, i32 3, i32 %i.0152
  br label %if.end29

sw.bb5.i:                                         ; preds = %if.end.i118
  %VcnClkLevelsEnabled.i121 = getelementptr inbounds %struct.DpmClocks_t, ptr %20, i32 0, i32 11
  %24 = ptrtoint ptr %VcnClkLevelsEnabled.i121 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %VcnClkLevelsEnabled.i121, align 1
  %conv6.i = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0152, i32 %conv6.i)
  %cmp7.not.i = icmp ult i32 %i.0152, %conv6.i
  br i1 %cmp7.not.i, label %if.end10.i, label %sw.bb5.i.print_clk_out_crit_edge

sw.bb5.i.print_clk_out_crit_edge:                 ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %print_clk_out

if.end10.i:                                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx11.i = getelementptr %struct.DpmClocks_t, ptr %20, i32 0, i32 4, i32 %i.0152
  br label %if.end29

sw.bb12.i:                                        ; preds = %if.end.i118
  %VcnClkLevelsEnabled13.i = getelementptr inbounds %struct.DpmClocks_t, ptr %20, i32 0, i32 11
  %26 = ptrtoint ptr %VcnClkLevelsEnabled13.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %VcnClkLevelsEnabled13.i, align 1
  %conv14.i = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0152, i32 %conv14.i)
  %cmp15.not.i = icmp ult i32 %i.0152, %conv14.i
  br i1 %cmp15.not.i, label %if.end18.i, label %sw.bb12.i.print_clk_out_crit_edge

sw.bb12.i.print_clk_out_crit_edge:                ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %print_clk_out

if.end18.i:                                       ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx19.i = getelementptr %struct.DpmClocks_t, ptr %20, i32 0, i32 5, i32 %i.0152
  br label %if.end29

sw.bb20.i:                                        ; preds = %if.end.i118.sw.bb20.i_crit_edge, %if.end.i118.sw.bb20.i_crit_edge168
  %NumDfPstatesEnabled.i122 = getelementptr inbounds %struct.DpmClocks_t, ptr %20, i32 0, i32 12
  %28 = ptrtoint ptr %NumDfPstatesEnabled.i122 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %NumDfPstatesEnabled.i122, align 4
  %conv21.i = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0152, i32 %conv21.i)
  %cmp22.not.i = icmp ult i32 %i.0152, %conv21.i
  br i1 %cmp22.not.i, label %if.end25.i, label %sw.bb20.i.print_clk_out_crit_edge

sw.bb20.i.print_clk_out_crit_edge:                ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %print_clk_out

if.end25.i:                                       ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #10
  %MemClk.i = getelementptr %struct.DpmClocks_t, ptr %20, i32 0, i32 7, i32 %i.0152, i32 1
  br label %if.end29

sw.bb27.i:                                        ; preds = %if.end.i118
  %NumDfPstatesEnabled28.i = getelementptr inbounds %struct.DpmClocks_t, ptr %20, i32 0, i32 12
  %30 = ptrtoint ptr %NumDfPstatesEnabled28.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %NumDfPstatesEnabled28.i, align 4
  %conv29.i = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0152, i32 %conv29.i)
  %cmp30.not.i = icmp ult i32 %i.0152, %conv29.i
  br i1 %cmp30.not.i, label %if.end33.i, label %sw.bb27.i.print_clk_out_crit_edge

sw.bb27.i.print_clk_out_crit_edge:                ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %print_clk_out

if.end33.i:                                       ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx35.i = getelementptr %struct.DpmClocks_t, ptr %20, i32 0, i32 7, i32 %i.0152
  br label %if.end29

if.end29:                                         ; preds = %if.end33.i, %if.end25.i, %if.end18.i, %if.end10.i, %if.end4.i
  %arrayidx.sink.i = phi ptr [ %arrayidx.i, %if.end4.i ], [ %arrayidx11.i, %if.end10.i ], [ %arrayidx19.i, %if.end18.i ], [ %MemClk.i, %if.end25.i ], [ %arrayidx35.i, %if.end33.i ]
  %32 = ptrtoint ptr %arrayidx.sink.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.sink.i, align 4
  %34 = ptrtoint ptr %cur_value to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cur_value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %33)
  %cmp30 = icmp eq i32 %35, %33
  %cond31 = select i1 %cmp30, ptr @.str.7, ptr @.str.8
  %call32 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.1150, ptr noundef nonnull @.str.6, i32 noundef %i.0152, i32 noundef %33, ptr noundef nonnull %cond31) #8
  %add33 = add i32 %call32, %size.1150
  %inc = add nuw nsw i32 %i.0152, 1
  %exitcond.not = icmp eq i32 %inc, %conv10.i
  br i1 %exitcond.not, label %if.end29.print_clk_out_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end29.print_clk_out_crit_edge:                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %print_clk_out

sw.bb34:                                          ; preds = %entry.sw.bb34_crit_edge, %entry.sw.bb34_crit_edge167
  %call35 = call fastcc i32 @yellow_carp_get_current_clk_freq(ptr noundef %smu, i32 noundef %clk_type, ptr noundef nonnull %cur_value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %sw.bb34.print_clk_out_crit_edge

sw.bb34.print_clk_out_crit_edge:                  ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #10
  br label %print_clk_out

if.end38:                                         ; preds = %sw.bb34
  %gfx_actual_hard_min_freq39 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %36 = ptrtoint ptr %gfx_actual_hard_min_freq39 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %gfx_actual_hard_min_freq39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp40.not = icmp eq i32 %37, 0
  br i1 %cmp40.not, label %cond.false43, label %if.end38.cond.end45_crit_edge

if.end38.cond.end45_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end45

cond.false43:                                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %gfx_default_hard_min_freq44 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 54
  %38 = ptrtoint ptr %gfx_default_hard_min_freq44 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %gfx_default_hard_min_freq44, align 4
  br label %cond.end45

cond.end45:                                       ; preds = %cond.false43, %if.end38.cond.end45_crit_edge
  %cond46 = phi i32 [ %39, %cond.false43 ], [ %37, %if.end38.cond.end45_crit_edge ]
  %gfx_actual_soft_max_freq47 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %40 = ptrtoint ptr %gfx_actual_soft_max_freq47 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %gfx_actual_soft_max_freq47, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp48.not = icmp eq i32 %41, 0
  br i1 %cmp48.not, label %cond.false51, label %cond.end45.cond.end53_crit_edge

cond.end45.cond.end53_crit_edge:                  ; preds = %cond.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end53

cond.false51:                                     ; preds = %cond.end45
  call void @__sanitizer_cov_trace_pc() #10
  %gfx_default_soft_max_freq52 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 55
  %42 = ptrtoint ptr %gfx_default_soft_max_freq52 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %gfx_default_soft_max_freq52, align 8
  br label %cond.end53

cond.end53:                                       ; preds = %cond.false51, %cond.end45.cond.end53_crit_edge
  %cond54 = phi i32 [ %43, %cond.false51 ], [ %41, %cond.end45.cond.end53_crit_edge ]
  %44 = ptrtoint ptr %cur_value to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cur_value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %cond54)
  %cmp55 = icmp eq i32 %45, %cond54
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %cond46)
  %cmp57 = icmp eq i32 %45, %cond46
  %.str.7..str.8 = select i1 %cmp57, ptr @.str.7, ptr @.str.8
  %cmp62 = select i1 %cmp55, ptr @.str.8, ptr %.str.7..str.8
  %46 = select i1 %cmp55, i1 true, i1 %cmp57
  %call64 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.0, ptr noundef nonnull @.str.9, i32 noundef %cond46, ptr noundef nonnull %cmp62) #8
  %add65 = add i32 %call64, %size.0
  br i1 %46, label %cond.end53.cond.end69_crit_edge, label %cond.true67

cond.end53.cond.end69_crit_edge:                  ; preds = %cond.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end69

cond.true67:                                      ; preds = %cond.end53
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %cur_value to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cur_value, align 4
  br label %cond.end69

cond.end69:                                       ; preds = %cond.true67, %cond.end53.cond.end69_crit_edge
  %cond72 = phi ptr [ @.str.8, %cond.end53.cond.end69_crit_edge ], [ @.str.7, %cond.true67 ]
  %cond70 = phi i32 [ 1100, %cond.end53.cond.end69_crit_edge ], [ %48, %cond.true67 ]
  %call73 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add65, ptr noundef nonnull @.str.10, i32 noundef %cond70, ptr noundef nonnull %cond72) #8
  %add74 = add i32 %call73, %add65
  %cond76 = select i1 %cmp55, ptr @.str.7, ptr @.str.8
  %call77 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add74, ptr noundef nonnull @.str.11, i32 noundef %cond54, ptr noundef nonnull %cond76) #8
  %add78 = add i32 %add74, %call77
  br label %print_clk_out

print_clk_out:                                    ; preds = %cond.end69, %sw.bb34.print_clk_out_crit_edge, %if.end29.print_clk_out_crit_edge, %sw.bb27.i.print_clk_out_crit_edge, %sw.bb20.i.print_clk_out_crit_edge, %sw.bb12.i.print_clk_out_crit_edge, %sw.bb5.i.print_clk_out_crit_edge, %sw.bb.i120.print_clk_out_crit_edge, %if.end.i118.print_clk_out_crit_edge, %for.body.print_clk_out_crit_edge, %yellow_carp_get_dpm_level_count.exit.print_clk_out_crit_edge, %if.end.print_clk_out_crit_edge, %sw.bb19.print_clk_out_crit_edge, %sw.bb12, %cond.end8, %entry.print_clk_out_crit_edge
  %size.2 = phi i32 [ %size.0, %entry.print_clk_out_crit_edge ], [ %add78, %cond.end69 ], [ %size.0, %sw.bb34.print_clk_out_crit_edge ], [ %size.0, %sw.bb19.print_clk_out_crit_edge ], [ %add18, %sw.bb12 ], [ %add11, %cond.end8 ], [ %size.0, %yellow_carp_get_dpm_level_count.exit.print_clk_out_crit_edge ], [ %size.0, %if.end.print_clk_out_crit_edge ], [ %add33, %if.end29.print_clk_out_crit_edge ], [ %size.1150, %for.body.print_clk_out_crit_edge ], [ %size.1150, %sw.bb.i120.print_clk_out_crit_edge ], [ %size.1150, %sw.bb5.i.print_clk_out_crit_edge ], [ %size.1150, %sw.bb12.i.print_clk_out_crit_edge ], [ %size.1150, %sw.bb20.i.print_clk_out_crit_edge ], [ %size.1150, %sw.bb27.i.print_clk_out_crit_edge ], [ %size.0, %if.end.i118.print_clk_out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_value) #8
  ret i32 %size.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yellow_carp_force_clk_levels(ptr noundef %smu, i32 noundef %clk_type, i32 noundef %mask) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %tobool.not = icmp eq i32 %mask, 0
  %0 = tail call i32 @llvm.cttz.i32(i32 %mask, i1 true), !range !96
  %spec.select = select i1 %tobool.not, i32 0, i32 %0
  %1 = tail call i32 @llvm.ctlz.i32(i32 %mask, i1 false) #8, !range !96
  %sub3 = sub nsw i32 31, %1
  %cond6 = select i1 %tobool.not, i32 0, i32 %sub3
  %2 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %clk_type, label %entry.force_level_out_crit_edge [
    i32 6, label %entry.sw.bb_crit_edge
    i32 12, label %entry.sw.bb_crit_edge88
    i32 1, label %entry.sw.bb_crit_edge89
    i32 2, label %entry.sw.bb_crit_edge90
  ]

entry.sw.bb_crit_edge90:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge89:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge88:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.force_level_out_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %force_level_out

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge88, %entry.sw.bb_crit_edge89, %entry.sw.bb_crit_edge90
  %clocks_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %3 = ptrtoint ptr %clocks_table.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clocks_table.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %sw.bb.force_level_out_crit_edge, label %if.end.i

sw.bb.force_level_out_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %force_level_out

if.end.i:                                         ; preds = %sw.bb
  %5 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %clk_type, label %if.end.i.force_level_out_crit_edge [
    i32 6, label %sw.bb.i
    i32 1, label %sw.bb5.i
    i32 2, label %sw.bb12.i
    i32 7, label %sw.bb20.i
    i32 12, label %sw.bb27.i
  ]

if.end.i.force_level_out_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %force_level_out

sw.bb.i:                                          ; preds = %if.end.i
  %NumSocClkLevelsEnabled.i = getelementptr inbounds %struct.DpmClocks_t, ptr %4, i32 0, i32 10
  %6 = ptrtoint ptr %NumSocClkLevelsEnabled.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %NumSocClkLevelsEnabled.i, align 2
  %conv.i = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %conv.i)
  %cmp1.not.i = icmp ult i32 %spec.select, %conv.i
  br i1 %cmp1.not.i, label %if.end.i31.thread, label %sw.bb.i.force_level_out_crit_edge

sw.bb.i.force_level_out_crit_edge:                ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %force_level_out

if.end.i31.thread:                                ; preds = %sw.bb.i
  %8 = ptrtoint ptr %NumSocClkLevelsEnabled.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %NumSocClkLevelsEnabled.i, align 2
  %conv.i33 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond6, i32 %conv.i33)
  %cmp1.not.i34 = icmp ult i32 %cond6, %conv.i33
  br i1 %cmp1.not.i34, label %if.end12.thread85, label %if.end.i31.thread.force_level_out_crit_edge

if.end.i31.thread.force_level_out_crit_edge:      ; preds = %if.end.i31.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %force_level_out

sw.bb5.i:                                         ; preds = %if.end.i
  %VcnClkLevelsEnabled.i = getelementptr inbounds %struct.DpmClocks_t, ptr %4, i32 0, i32 11
  %10 = ptrtoint ptr %VcnClkLevelsEnabled.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %VcnClkLevelsEnabled.i, align 1
  %conv6.i = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %conv6.i)
  %cmp7.not.i = icmp ult i32 %spec.select, %conv6.i
  br i1 %cmp7.not.i, label %if.end.i31.thread73, label %sw.bb5.i.force_level_out_crit_edge

sw.bb5.i.force_level_out_crit_edge:               ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %force_level_out

if.end.i31.thread73:                              ; preds = %sw.bb5.i
  %12 = ptrtoint ptr %VcnClkLevelsEnabled.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %VcnClkLevelsEnabled.i, align 1
  %conv6.i39 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond6, i32 %conv6.i39)
  %cmp7.not.i40 = icmp ult i32 %cond6, %conv6.i39
  br i1 %cmp7.not.i40, label %if.end10.i43, label %if.end.i31.thread73.force_level_out_crit_edge

if.end.i31.thread73.force_level_out_crit_edge:    ; preds = %if.end.i31.thread73
  call void @__sanitizer_cov_trace_pc() #10
  br label %force_level_out

sw.bb12.i:                                        ; preds = %if.end.i
  %VcnClkLevelsEnabled13.i = getelementptr inbounds %struct.DpmClocks_t, ptr %4, i32 0, i32 11
  %14 = ptrtoint ptr %VcnClkLevelsEnabled13.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %VcnClkLevelsEnabled13.i, align 1
  %conv14.i = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %conv14.i)
  %cmp15.not.i = icmp ult i32 %spec.select, %conv14.i
  br i1 %cmp15.not.i, label %if.end.i31.thread75, label %sw.bb12.i.force_level_out_crit_edge

sw.bb12.i.force_level_out_crit_edge:              ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %force_level_out

if.end.i31.thread75:                              ; preds = %sw.bb12.i
  %16 = ptrtoint ptr %VcnClkLevelsEnabled13.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %VcnClkLevelsEnabled13.i, align 1
  %conv14.i45 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond6, i32 %conv14.i45)
  %cmp15.not.i46 = icmp ult i32 %cond6, %conv14.i45
  br i1 %cmp15.not.i46, label %if.end18.i49, label %if.end.i31.thread75.force_level_out_crit_edge

if.end.i31.thread75.force_level_out_crit_edge:    ; preds = %if.end.i31.thread75
  call void @__sanitizer_cov_trace_pc() #10
  br label %force_level_out

sw.bb20.i:                                        ; preds = %if.end.i
  %NumDfPstatesEnabled.i = getelementptr inbounds %struct.DpmClocks_t, ptr %4, i32 0, i32 12
  %18 = ptrtoint ptr %NumDfPstatesEnabled.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %NumDfPstatesEnabled.i, align 4
  %conv21.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %conv21.i)
  %cmp22.not.i = icmp ult i32 %spec.select, %conv21.i
  br i1 %cmp22.not.i, label %sw.bb20.i53, label %sw.bb20.i.force_level_out_crit_edge

sw.bb20.i.force_level_out_crit_edge:              ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %force_level_out

sw.bb27.i:                                        ; preds = %if.end.i
  %NumDfPstatesEnabled28.i = getelementptr inbounds %struct.DpmClocks_t, ptr %4, i32 0, i32 12
  %20 = ptrtoint ptr %NumDfPstatesEnabled28.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %NumDfPstatesEnabled28.i, align 4
  %conv29.i = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %conv29.i)
  %cmp30.not.i = icmp ult i32 %spec.select, %conv29.i
  br i1 %cmp30.not.i, label %sw.bb27.i59, label %sw.bb27.i.force_level_out_crit_edge

sw.bb27.i.force_level_out_crit_edge:              ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %force_level_out

if.end12.thread85:                                ; preds = %if.end.i31.thread
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.DpmClocks_t, ptr %4, i32 0, i32 3, i32 %spec.select
  %arrayidx.i36 = getelementptr %struct.DpmClocks_t, ptr %4, i32 0, i32 3, i32 %cond6
  br label %yellow_carp_clk_dpm_is_enabled.exit.i

if.end10.i43:                                     ; preds = %if.end.i31.thread73
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx11.i = getelementptr %struct.DpmClocks_t, ptr %4, i32 0, i32 4, i32 %spec.select
  %arrayidx11.i42 = getelementptr %struct.DpmClocks_t, ptr %4, i32 0, i32 4, i32 %cond6
  br label %yellow_carp_clk_dpm_is_enabled.exit.i

if.end18.i49:                                     ; preds = %if.end.i31.thread75
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx19.i = getelementptr %struct.DpmClocks_t, ptr %4, i32 0, i32 5, i32 %spec.select
  %arrayidx19.i48 = getelementptr %struct.DpmClocks_t, ptr %4, i32 0, i32 5, i32 %cond6
  br label %yellow_carp_clk_dpm_is_enabled.exit.i

sw.bb20.i53:                                      ; preds = %sw.bb20.i
  %22 = ptrtoint ptr %NumDfPstatesEnabled.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %NumDfPstatesEnabled.i, align 4
  %conv21.i51 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond6, i32 %conv21.i51)
  %cmp22.not.i52 = icmp ult i32 %cond6, %conv21.i51
  br i1 %cmp22.not.i52, label %if.end12, label %sw.bb20.i53.force_level_out_crit_edge

sw.bb20.i53.force_level_out_crit_edge:            ; preds = %sw.bb20.i53
  call void @__sanitizer_cov_trace_pc() #10
  br label %force_level_out

sw.bb27.i59:                                      ; preds = %sw.bb27.i
  %NumDfPstatesEnabled28.i56 = getelementptr inbounds %struct.DpmClocks_t, ptr %4, i32 0, i32 12
  %24 = ptrtoint ptr %NumDfPstatesEnabled28.i56 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %NumDfPstatesEnabled28.i56, align 4
  %conv29.i57 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond6, i32 %conv29.i57)
  %cmp30.not.i58 = icmp ult i32 %cond6, %conv29.i57
  br i1 %cmp30.not.i58, label %if.end12.thread83, label %sw.bb27.i59.force_level_out_crit_edge

sw.bb27.i59.force_level_out_crit_edge:            ; preds = %sw.bb27.i59
  call void @__sanitizer_cov_trace_pc() #10
  br label %force_level_out

if.end12.thread83:                                ; preds = %sw.bb27.i59
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx35.i = getelementptr %struct.DpmClocks_t, ptr %4, i32 0, i32 7, i32 %spec.select
  %arrayidx35.i60 = getelementptr %struct.DpmClocks_t, ptr %4, i32 0, i32 7, i32 %cond6
  br label %yellow_carp_clk_dpm_is_enabled.exit.i

if.end12:                                         ; preds = %sw.bb20.i53
  call void @__sanitizer_cov_trace_pc() #10
  %MemClk.i = getelementptr %struct.DpmClocks_t, ptr %4, i32 0, i32 7, i32 %spec.select, i32 1
  %MemClk.i54 = getelementptr %struct.DpmClocks_t, ptr %4, i32 0, i32 7, i32 %cond6, i32 1
  br label %yellow_carp_clk_dpm_is_enabled.exit.i

yellow_carp_clk_dpm_is_enabled.exit.i:            ; preds = %if.end12, %if.end12.thread83, %if.end18.i49, %if.end10.i43, %if.end12.thread85
  %.in = phi ptr [ %arrayidx.i36, %if.end12.thread85 ], [ %MemClk.i54, %if.end12 ], [ %arrayidx35.i60, %if.end12.thread83 ], [ %arrayidx19.i48, %if.end18.i49 ], [ %arrayidx11.i42, %if.end10.i43 ]
  %.in87 = phi ptr [ %arrayidx.i, %if.end12.thread85 ], [ %MemClk.i, %if.end12 ], [ %arrayidx35.i, %if.end12.thread83 ], [ %arrayidx19.i, %if.end18.i49 ], [ %arrayidx11.i, %if.end10.i43 ]
  %feature_id.0.i.i = phi i32 [ 3, %if.end12.thread85 ], [ 31, %if.end12 ], [ 31, %if.end12.thread83 ], [ 62, %if.end18.i49 ], [ 62, %if.end10.i43 ]
  %26 = ptrtoint ptr %.in87 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %.in87, align 4
  %28 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %.in, align 4
  %call.i.i = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef %feature_id.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.not.i, label %yellow_carp_clk_dpm_is_enabled.exit.i.force_level_out_crit_edge, label %if.end.i66

yellow_carp_clk_dpm_is_enabled.exit.i.force_level_out_crit_edge: ; preds = %yellow_carp_clk_dpm_is_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %force_level_out

if.end.i66:                                       ; preds = %yellow_carp_clk_dpm_is_enabled.exit.i
  %30 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %clk_type, label %if.end.i66.force_level_out_crit_edge [
    i32 2, label %if.end.i66.sw.bb3.i_crit_edge
    i32 1, label %if.end.i66.sw.bb3.i_crit_edge91
    i32 12, label %if.end.i66.sw.epilog.i_crit_edge
    i32 6, label %sw.bb2.i
  ]

if.end.i66.sw.epilog.i_crit_edge:                 ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end.i66.sw.bb3.i_crit_edge91:                  ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3.i

if.end.i66.sw.bb3.i_crit_edge:                    ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3.i

if.end.i66.force_level_out_crit_edge:             ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #10
  br label %force_level_out

sw.bb2.i:                                         ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end.i66.sw.bb3.i_crit_edge, %if.end.i66.sw.bb3.i_crit_edge91
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb2.i, %if.end.i66.sw.epilog.i_crit_edge
  %msg_set_min.0.i = phi i32 [ 108, %sw.bb3.i ], [ 116, %sw.bb2.i ], [ 143, %if.end.i66.sw.epilog.i_crit_edge ]
  %msg_set_max.0.i = phi i32 [ 134, %sw.bb3.i ], [ 132, %sw.bb2.i ], [ 133, %if.end.i66.sw.epilog.i_crit_edge ]
  %call4.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef %msg_set_min.0.i, i32 noundef %27, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i67 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i67, label %if.end6.i, label %sw.epilog.i.force_level_out_crit_edge

sw.epilog.i.force_level_out_crit_edge:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %force_level_out

if.end6.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef %msg_set_max.0.i, i32 noundef %29, ptr noundef null) #8
  br label %force_level_out

force_level_out:                                  ; preds = %if.end6.i, %sw.epilog.i.force_level_out_crit_edge, %if.end.i66.force_level_out_crit_edge, %yellow_carp_clk_dpm_is_enabled.exit.i.force_level_out_crit_edge, %sw.bb27.i59.force_level_out_crit_edge, %sw.bb20.i53.force_level_out_crit_edge, %sw.bb27.i.force_level_out_crit_edge, %sw.bb20.i.force_level_out_crit_edge, %if.end.i31.thread75.force_level_out_crit_edge, %sw.bb12.i.force_level_out_crit_edge, %if.end.i31.thread73.force_level_out_crit_edge, %sw.bb5.i.force_level_out_crit_edge, %if.end.i31.thread.force_level_out_crit_edge, %sw.bb.i.force_level_out_crit_edge, %if.end.i.force_level_out_crit_edge, %sw.bb.force_level_out_crit_edge, %entry.force_level_out_crit_edge
  %ret.0 = phi i32 [ -22, %entry.force_level_out_crit_edge ], [ -22, %yellow_carp_clk_dpm_is_enabled.exit.i.force_level_out_crit_edge ], [ -22, %if.end.i66.force_level_out_crit_edge ], [ %call4.i, %sw.epilog.i.force_level_out_crit_edge ], [ %call7.i, %if.end6.i ], [ -22, %sw.bb.force_level_out_crit_edge ], [ -22, %sw.bb.i.force_level_out_crit_edge ], [ -22, %sw.bb5.i.force_level_out_crit_edge ], [ -22, %sw.bb12.i.force_level_out_crit_edge ], [ -22, %sw.bb20.i.force_level_out_crit_edge ], [ -22, %sw.bb27.i.force_level_out_crit_edge ], [ -22, %if.end.i.force_level_out_crit_edge ], [ -22, %if.end.i31.thread.force_level_out_crit_edge ], [ -22, %if.end.i31.thread73.force_level_out_crit_edge ], [ -22, %if.end.i31.thread75.force_level_out_crit_edge ], [ -22, %sw.bb20.i53.force_level_out_crit_edge ], [ -22, %sw.bb27.i59.force_level_out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yellow_carp_od_edit_dpm_table(ptr noundef %smu, i32 noundef %type, ptr nocapture noundef readonly %input, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dpm_level = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 4
  %0 = ptrtoint ptr %dpm_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dpm_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 4, label %sw.bb37
    i32 5, label %sw.bb51
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size)
  %cmp2.not = icmp eq i32 %size, 2
  br i1 %cmp2.not, label %if.end4, label %do.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %smu, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.12) #11
  br label %cleanup

if.end4:                                          ; preds = %sw.bb
  %7 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %input, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %8, label %if.end4.cleanup_crit_edge [
    i32 0, label %if.then6
    i32 1, label %if.then21
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  %arrayidx7 = getelementptr i32, ptr %input, i32 1
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx7, align 4
  %gfx_default_hard_min_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 54
  %12 = ptrtoint ptr %gfx_default_hard_min_freq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gfx_default_hard_min_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp8 = icmp ult i32 %11, %13
  br i1 %cmp8, label %do.end12, label %if.end17

do.end12:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %smu, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.18, i32 noundef %11, i32 noundef %13) #11
  br label %cleanup

if.end17:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %gfx_actual_hard_min_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %18 = ptrtoint ptr %gfx_actual_hard_min_freq to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %11, ptr %gfx_actual_hard_min_freq, align 4
  br label %cleanup

if.then21:                                        ; preds = %if.end4
  %arrayidx22 = getelementptr i32, ptr %input, i32 1
  %19 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx22, align 4
  %gfx_default_soft_max_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 55
  %21 = ptrtoint ptr %gfx_default_soft_max_freq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gfx_default_soft_max_freq, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp23 = icmp ugt i32 %20, %22
  br i1 %cmp23, label %do.end27, label %if.end32

do.end27:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %smu, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.22, i32 noundef %20, i32 noundef %22) #11
  br label %cleanup

if.end32:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %gfx_actual_soft_max_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %27 = ptrtoint ptr %gfx_actual_soft_max_freq to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %20, ptr %gfx_actual_soft_max_freq, align 8
  br label %cleanup

sw.bb37:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp38.not = icmp eq i32 %size, 0
  br i1 %cmp38.not, label %if.else45, label %do.end42

do.end42:                                         ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %smu, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.12) #11
  br label %cleanup

if.else45:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #10
  %gfx_default_hard_min_freq46 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 54
  %32 = ptrtoint ptr %gfx_default_hard_min_freq46 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %gfx_default_hard_min_freq46, align 4
  %gfx_actual_hard_min_freq47 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %34 = ptrtoint ptr %gfx_actual_hard_min_freq47 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %gfx_actual_hard_min_freq47, align 4
  %gfx_default_soft_max_freq48 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 55
  %35 = ptrtoint ptr %gfx_default_soft_max_freq48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %gfx_default_soft_max_freq48, align 8
  %gfx_actual_soft_max_freq49 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %37 = ptrtoint ptr %gfx_actual_soft_max_freq49 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %gfx_actual_soft_max_freq49, align 8
  br label %cleanup

sw.bb51:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp52.not = icmp eq i32 %size, 0
  br i1 %cmp52.not, label %if.else59, label %do.end56

do.end56:                                         ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %smu, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.12) #11
  br label %cleanup

if.else59:                                        ; preds = %sw.bb51
  %gfx_actual_hard_min_freq60 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %42 = ptrtoint ptr %gfx_actual_hard_min_freq60 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %gfx_actual_hard_min_freq60, align 4
  %gfx_actual_soft_max_freq61 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %44 = ptrtoint ptr %gfx_actual_soft_max_freq61 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %gfx_actual_soft_max_freq61, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp62 = icmp ugt i32 %43, %45
  br i1 %cmp62, label %do.end66, label %if.end71

do.end66:                                         ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %smu, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.29, i32 noundef %43, i32 noundef %45) #11
  br label %cleanup

if.end71:                                         ; preds = %if.else59
  %call = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 131, i32 noundef %43, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end79, label %do.end76

do.end76:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %smu, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.32) #11
  br label %cleanup

if.end79:                                         ; preds = %if.end71
  %54 = ptrtoint ptr %gfx_actual_soft_max_freq61 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %gfx_actual_soft_max_freq61, align 8
  %call81 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 130, i32 noundef %55, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end79.cleanup_crit_edge, label %do.end86

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end86:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %smu, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.35) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end86, %if.end79.cleanup_crit_edge, %do.end76, %do.end66, %do.end56, %if.else45, %do.end42, %if.end32, %do.end27, %if.end17, %do.end12, %if.end4.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end56 ], [ -22, %do.end66 ], [ %call, %do.end76 ], [ %call81, %do.end86 ], [ -22, %do.end42 ], [ -22, %do.end ], [ -22, %do.end12 ], [ -22, %do.end27 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -38, %if.end.cleanup_crit_edge ], [ 0, %if.end79.cleanup_crit_edge ], [ 0, %if.end17 ], [ 0, %if.end32 ], [ 0, %if.else45 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yellow_carp_dpm_set_vcn_enable(ptr noundef %smu, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %. = select i1 %enable, i32 85, i32 86
  %call1 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef %., i32 noundef 0, ptr noundef null) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yellow_carp_dpm_set_jpeg_enable(ptr noundef %smu, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %. = select i1 %enable, i32 87, i32 88
  %call1 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef %., i32 noundef 0, ptr noundef null) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yellow_carp_read_sensor(ptr noundef %smu, i32 noundef %sensor, ptr noundef %data, ptr noundef writeonly %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  %tobool1.not = icmp eq ptr %size, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sensor_lock = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %sensor_lock, i32 noundef 0) #8
  %0 = zext i32 %sensor to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %sensor, label %if.end.sw.epilog_crit_edge [
    i32 7, label %sw.bb
    i32 15, label %sw.bb2
    i32 10, label %sw.bb4
    i32 11, label %sw.bb6
    i32 9, label %sw.bb8
    i32 0, label %sw.bb10
    i32 3, label %sw.bb13
    i32 2, label %sw.bb15
    i32 16, label %sw.bb17
    i32 17, label %sw.bb19
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %metrics_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %1 = ptrtoint ptr %metrics_table.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %metrics_table.i, align 8
  %metrics_lock.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i, i32 noundef 0) #8
  %call.i = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.yellow_carp_get_smu_metrics_data.exit_crit_edge

sw.bb.yellow_carp_get_smu_metrics_data.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %yellow_carp_get_smu_metrics_data.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %GfxActivity.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %GfxActivity.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %GfxActivity.i, align 4
  %5 = udiv i16 %4, 100
  %div.i = zext i16 %5 to i32
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div.i, ptr %data, align 4
  br label %yellow_carp_get_smu_metrics_data.exit

yellow_carp_get_smu_metrics_data.exit:            ; preds = %if.end.i, %sw.bb.yellow_carp_get_smu_metrics_data.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i) #8
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %if.end
  %metrics_table.i55 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %7 = ptrtoint ptr %metrics_table.i55 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %metrics_table.i55, align 8
  %metrics_lock.i56 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i56, i32 noundef 0) #8
  %call.i57 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool.not.i58 = icmp eq i32 %call.i57, 0
  br i1 %tobool.not.i58, label %if.end.i59, label %sw.bb2.yellow_carp_get_smu_metrics_data.exit60_crit_edge

sw.bb2.yellow_carp_get_smu_metrics_data.exit60_crit_edge: ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %yellow_carp_get_smu_metrics_data.exit60

if.end.i59:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  %CurrentSocketPower.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %CurrentSocketPower.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %CurrentSocketPower.i, align 2
  %conv16.i = zext i16 %10 to i32
  %shl.i = shl nuw nsw i32 %conv16.i, 8
  %div17.i = udiv i32 %shl.i, 1000
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div17.i, ptr %data, align 4
  br label %yellow_carp_get_smu_metrics_data.exit60

yellow_carp_get_smu_metrics_data.exit60:          ; preds = %if.end.i59, %sw.bb2.yellow_carp_get_smu_metrics_data.exit60_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i56) #8
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %if.end
  %metrics_table.i61 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %12 = ptrtoint ptr %metrics_table.i61 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %metrics_table.i61, align 8
  %metrics_lock.i62 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i62, i32 noundef 0) #8
  %call.i63 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool.not.i64 = icmp eq i32 %call.i63, 0
  br i1 %tobool.not.i64, label %if.end.i65, label %sw.bb4.yellow_carp_get_smu_metrics_data.exit66_crit_edge

sw.bb4.yellow_carp_get_smu_metrics_data.exit66_crit_edge: ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %yellow_carp_get_smu_metrics_data.exit66

if.end.i65:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %GfxTemperature.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %GfxTemperature.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %GfxTemperature.i, align 4
  %16 = udiv i16 %15, 100
  %div20.i = zext i16 %16 to i32
  %mul.i = mul nuw nsw i32 %div20.i, 1000
  %17 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul.i, ptr %data, align 4
  br label %yellow_carp_get_smu_metrics_data.exit66

yellow_carp_get_smu_metrics_data.exit66:          ; preds = %if.end.i65, %sw.bb4.yellow_carp_get_smu_metrics_data.exit66_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i62) #8
  br label %sw.epilog.sink.split

sw.bb6:                                           ; preds = %if.end
  %metrics_table.i67 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %18 = ptrtoint ptr %metrics_table.i67 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %metrics_table.i67, align 8
  %metrics_lock.i68 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i68, i32 noundef 0) #8
  %call.i69 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool.not.i70 = icmp eq i32 %call.i69, 0
  br i1 %tobool.not.i70, label %if.end.i71, label %sw.bb6.yellow_carp_get_smu_metrics_data.exit72_crit_edge

sw.bb6.yellow_carp_get_smu_metrics_data.exit72_crit_edge: ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %yellow_carp_get_smu_metrics_data.exit72

if.end.i71:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  %SocTemperature.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %19, i32 0, i32 17
  %20 = ptrtoint ptr %SocTemperature.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %SocTemperature.i, align 2
  %22 = udiv i16 %21, 100
  %div23.i = zext i16 %22 to i32
  %mul24.i = mul nuw nsw i32 %div23.i, 1000
  %23 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul24.i, ptr %data, align 4
  br label %yellow_carp_get_smu_metrics_data.exit72

yellow_carp_get_smu_metrics_data.exit72:          ; preds = %if.end.i71, %sw.bb6.yellow_carp_get_smu_metrics_data.exit72_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i68) #8
  br label %sw.epilog.sink.split

sw.bb8:                                           ; preds = %if.end
  %metrics_table.i73 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %24 = ptrtoint ptr %metrics_table.i73 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %metrics_table.i73, align 8
  %metrics_lock.i74 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i74, i32 noundef 0) #8
  %call.i75 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool.not.i76 = icmp eq i32 %call.i75, 0
  br i1 %tobool.not.i76, label %if.end.i77, label %sw.bb8.yellow_carp_get_smu_metrics_data.exit78_crit_edge

sw.bb8.yellow_carp_get_smu_metrics_data.exit78_crit_edge: ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %yellow_carp_get_smu_metrics_data.exit78

if.end.i77:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %MemclkFrequency.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %MemclkFrequency.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %MemclkFrequency.i, align 4
  %conv10.i = zext i16 %27 to i32
  %28 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv10.i, ptr %data, align 4
  br label %yellow_carp_get_smu_metrics_data.exit78

yellow_carp_get_smu_metrics_data.exit78:          ; preds = %if.end.i77, %sw.bb8.yellow_carp_get_smu_metrics_data.exit78_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i74) #8
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data, align 4
  %mul = mul i32 %30, 100
  store i32 %mul, ptr %data, align 4
  br label %sw.epilog.sink.split

sw.bb10:                                          ; preds = %if.end
  %metrics_table.i79 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %31 = ptrtoint ptr %metrics_table.i79 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %metrics_table.i79, align 8
  %metrics_lock.i80 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i80, i32 noundef 0) #8
  %call.i81 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool.not.i82 = icmp eq i32 %call.i81, 0
  br i1 %tobool.not.i82, label %if.end.i83, label %sw.bb10.yellow_carp_get_smu_metrics_data.exit84_crit_edge

sw.bb10.yellow_carp_get_smu_metrics_data.exit84_crit_edge: ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %yellow_carp_get_smu_metrics_data.exit84

if.end.i83:                                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %32, align 4
  %conv.i = zext i16 %34 to i32
  %35 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv.i, ptr %data, align 4
  br label %yellow_carp_get_smu_metrics_data.exit84

yellow_carp_get_smu_metrics_data.exit84:          ; preds = %if.end.i83, %sw.bb10.yellow_carp_get_smu_metrics_data.exit84_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i80) #8
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data, align 4
  %mul12 = mul i32 %37, 100
  store i32 %mul12, ptr %data, align 4
  br label %sw.epilog.sink.split

sw.bb13:                                          ; preds = %if.end
  %metrics_table.i85 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %38 = ptrtoint ptr %metrics_table.i85 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %metrics_table.i85, align 8
  %metrics_lock.i86 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i86, i32 noundef 0) #8
  %call.i87 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool.not.i88 = icmp eq i32 %call.i87, 0
  br i1 %tobool.not.i88, label %if.end.i89, label %sw.bb13.yellow_carp_get_smu_metrics_data.exit90_crit_edge

sw.bb13.yellow_carp_get_smu_metrics_data.exit90_crit_edge: ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %yellow_carp_get_smu_metrics_data.exit90

if.end.i89:                                       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  %Voltage.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %Voltage.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %Voltage.i, align 4
  %conv28.i = zext i16 %41 to i32
  %42 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv28.i, ptr %data, align 4
  br label %yellow_carp_get_smu_metrics_data.exit90

yellow_carp_get_smu_metrics_data.exit90:          ; preds = %if.end.i89, %sw.bb13.yellow_carp_get_smu_metrics_data.exit90_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i86) #8
  br label %sw.epilog.sink.split

sw.bb15:                                          ; preds = %if.end
  %metrics_table.i91 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %43 = ptrtoint ptr %metrics_table.i91 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %metrics_table.i91, align 8
  %metrics_lock.i92 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i92, i32 noundef 0) #8
  %call.i93 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool.not.i94 = icmp eq i32 %call.i93, 0
  br i1 %tobool.not.i94, label %if.end.i95, label %sw.bb15.yellow_carp_get_smu_metrics_data.exit96_crit_edge

sw.bb15.yellow_carp_get_smu_metrics_data.exit96_crit_edge: ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  br label %yellow_carp_get_smu_metrics_data.exit96

if.end.i95:                                       ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx31.i = getelementptr %struct.SmuMetrics_t, ptr %44, i32 0, i32 8, i32 1
  %45 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx31.i, align 2
  %conv32.i = zext i16 %46 to i32
  %47 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv32.i, ptr %data, align 4
  br label %yellow_carp_get_smu_metrics_data.exit96

yellow_carp_get_smu_metrics_data.exit96:          ; preds = %if.end.i95, %sw.bb15.yellow_carp_get_smu_metrics_data.exit96_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i92) #8
  br label %sw.epilog.sink.split

sw.bb17:                                          ; preds = %if.end
  %metrics_table.i97 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %48 = ptrtoint ptr %metrics_table.i97 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %metrics_table.i97, align 8
  %metrics_lock.i98 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i98, i32 noundef 0) #8
  %call.i99 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool.not.i100 = icmp eq i32 %call.i99, 0
  br i1 %tobool.not.i100, label %if.end.i101, label %sw.bb17.yellow_carp_get_smu_metrics_data.exit102_crit_edge

sw.bb17.yellow_carp_get_smu_metrics_data.exit102_crit_edge: ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  br label %yellow_carp_get_smu_metrics_data.exit102

if.end.i101:                                      ; preds = %sw.bb17
  %StapmOpnLimit.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %49, i32 0, i32 20
  %50 = ptrtoint ptr %StapmOpnLimit.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %StapmOpnLimit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %cmp.not.i = icmp eq i16 %51, 0
  br i1 %cmp.not.i, label %if.end.i101.sw.epilog.i_crit_edge, label %if.then36.i

if.end.i101.sw.epilog.i_crit_edge:                ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then36.i:                                      ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #10
  %conv34.i = zext i16 %51 to i32
  %ApuPower.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %49, i32 0, i32 22
  %52 = ptrtoint ptr %ApuPower.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ApuPower.i, align 4
  %mul37.i = mul i32 %53, 100
  %div40.i = udiv i32 %mul37.i, %conv34.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then36.i, %if.end.i101.sw.epilog.i_crit_edge
  %div57.sink.i = phi i32 [ %div40.i, %if.then36.i ], [ 0, %if.end.i101.sw.epilog.i_crit_edge ]
  %54 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %div57.sink.i, ptr %data, align 4
  br label %yellow_carp_get_smu_metrics_data.exit102

yellow_carp_get_smu_metrics_data.exit102:         ; preds = %sw.epilog.i, %sw.bb17.yellow_carp_get_smu_metrics_data.exit102_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i98) #8
  br label %sw.epilog.sink.split

sw.bb19:                                          ; preds = %if.end
  %metrics_table.i103 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %55 = ptrtoint ptr %metrics_table.i103 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %metrics_table.i103, align 8
  %metrics_lock.i104 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i104, i32 noundef 0) #8
  %call.i105 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %tobool.not.i106 = icmp eq i32 %call.i105, 0
  br i1 %tobool.not.i106, label %if.end.i107, label %sw.bb19.yellow_carp_get_smu_metrics_data.exit110_crit_edge

sw.bb19.yellow_carp_get_smu_metrics_data.exit110_crit_edge: ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  br label %yellow_carp_get_smu_metrics_data.exit110

if.end.i107:                                      ; preds = %sw.bb19
  %dGpuPower.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %56, i32 0, i32 23
  %57 = ptrtoint ptr %dGpuPower.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dGpuPower.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp43.not.i = icmp eq i32 %58, 0
  br i1 %cmp43.not.i, label %if.end.i107.sw.epilog.i109_crit_edge, label %land.lhs.true.i

if.end.i107.sw.epilog.i109_crit_edge:             ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i109

land.lhs.true.i:                                  ; preds = %if.end.i107
  %StapmCurrentLimit.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %56, i32 0, i32 21
  %59 = ptrtoint ptr %StapmCurrentLimit.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %StapmCurrentLimit.i, align 2
  %StapmOpnLimit46.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %56, i32 0, i32 20
  %61 = ptrtoint ptr %StapmOpnLimit46.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %StapmOpnLimit46.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %60, i16 %62)
  %cmp48.i = icmp ugt i16 %60, %62
  br i1 %cmp48.i, label %if.then50.i, label %land.lhs.true.i.sw.epilog.i109_crit_edge

land.lhs.true.i.sw.epilog.i109_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i109

if.then50.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv47.i = zext i16 %62 to i32
  %conv45.i = zext i16 %60 to i32
  %mul52.i = mul i32 %58, 100
  %sub.i = sub nsw i32 %conv45.i, %conv47.i
  %div57.i = udiv i32 %mul52.i, %sub.i
  br label %sw.epilog.i109

sw.epilog.i109:                                   ; preds = %if.then50.i, %land.lhs.true.i.sw.epilog.i109_crit_edge, %if.end.i107.sw.epilog.i109_crit_edge
  %div57.sink.i108 = phi i32 [ %div57.i, %if.then50.i ], [ 0, %land.lhs.true.i.sw.epilog.i109_crit_edge ], [ 0, %if.end.i107.sw.epilog.i109_crit_edge ]
  %63 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %div57.sink.i108, ptr %data, align 4
  br label %yellow_carp_get_smu_metrics_data.exit110

yellow_carp_get_smu_metrics_data.exit110:         ; preds = %sw.epilog.i109, %sw.bb19.yellow_carp_get_smu_metrics_data.exit110_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i104) #8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %yellow_carp_get_smu_metrics_data.exit110, %yellow_carp_get_smu_metrics_data.exit102, %yellow_carp_get_smu_metrics_data.exit96, %yellow_carp_get_smu_metrics_data.exit90, %yellow_carp_get_smu_metrics_data.exit84, %yellow_carp_get_smu_metrics_data.exit78, %yellow_carp_get_smu_metrics_data.exit72, %yellow_carp_get_smu_metrics_data.exit66, %yellow_carp_get_smu_metrics_data.exit60, %yellow_carp_get_smu_metrics_data.exit
  %ret.0.ph = phi i32 [ %call.i, %yellow_carp_get_smu_metrics_data.exit ], [ %call.i57, %yellow_carp_get_smu_metrics_data.exit60 ], [ %call.i63, %yellow_carp_get_smu_metrics_data.exit66 ], [ %call.i69, %yellow_carp_get_smu_metrics_data.exit72 ], [ %call.i75, %yellow_carp_get_smu_metrics_data.exit78 ], [ %call.i81, %yellow_carp_get_smu_metrics_data.exit84 ], [ %call.i87, %yellow_carp_get_smu_metrics_data.exit90 ], [ %call.i93, %yellow_carp_get_smu_metrics_data.exit96 ], [ %call.i99, %yellow_carp_get_smu_metrics_data.exit102 ], [ %call.i105, %yellow_carp_get_smu_metrics_data.exit110 ]
  %64 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 4, ptr %size, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %if.end.sw.epilog_crit_edge ], [ %ret.0.ph, %sw.epilog.sink.split ]
  tail call void @mutex_unlock(ptr noundef %sensor_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @yellow_carp_is_dpm_running(ptr noundef %smu) #1 align 64 {
entry:
  %feature_mask = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %feature_mask) #8
  %0 = ptrtoint ptr %feature_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %feature_mask, align 4, !annotation !97
  %1 = getelementptr inbounds [2 x i32], ptr %feature_mask, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !97
  %call = call i32 @smu_cmn_get_enabled_32_bits_mask(ptr noundef %smu, ptr noundef nonnull %feature_mask, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %feature_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %feature_mask, align 4
  %5 = and i32 %4, 1042433
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3 = icmp ne i32 %5, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool3, %if.end ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %feature_mask) #8
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yellow_carp_set_watermarks_table(ptr noundef %smu, ptr noundef readonly %clock_ranges) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %watermarks_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 6
  %0 = ptrtoint ptr %watermarks_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %watermarks_table, align 8
  %tobool.not = icmp eq ptr %1, null
  %tobool1.not = icmp eq ptr %clock_ranges, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.then3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %entry
  %2 = ptrtoint ptr %clock_ranges to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clock_ranges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %if.then3.cleanup_crit_edge, label %lor.lhs.false4

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false4:                                   ; preds = %if.then3
  %num_writer_wm_sets = getelementptr inbounds %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 2
  %4 = ptrtoint ptr %num_writer_wm_sets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_writer_wm_sets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp5 = icmp ugt i32 %5, 4
  br i1 %cmp5, label %lor.lhs.false4.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false4
  %6 = ptrtoint ptr %clock_ranges to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clock_ranges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp9144.not = icmp eq i32 %7, 0
  br i1 %cmp9144.not, label %for.cond.preheader.for.cond32.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.cond32.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond32.preheader

for.cond32.preheaderthread-pre-split:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %num_writer_wm_sets to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %num_writer_wm_sets, align 4
  br label %for.cond32.preheader

for.cond32.preheader:                             ; preds = %for.cond32.preheaderthread-pre-split, %for.cond.preheader.for.cond32.preheader_crit_edge
  %9 = phi i32 [ %.pr, %for.cond32.preheaderthread-pre-split ], [ %5, %for.cond.preheader.for.cond32.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp34146.not = icmp eq i32 %9, 0
  br i1 %cmp34146.not, label %for.cond32.preheader.for.end72_crit_edge, label %for.cond32.preheader.for.body35_crit_edge

for.cond32.preheader.for.body35_crit_edge:        ; preds = %for.cond32.preheader
  br label %for.body35

for.cond32.preheader.for.end72_crit_edge:         ; preds = %for.cond32.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end72

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0145 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 1, i32 %i.0145
  %min_drain_clk_mhz = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 1, i32 %i.0145, i32 2
  %10 = ptrtoint ptr %min_drain_clk_mhz to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %min_drain_clk_mhz, align 2
  %arrayidx11 = getelementptr [2 x [4 x %struct.WatermarkRowGeneric_t]], ptr %1, i32 0, i32 1, i32 %i.0145
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %arrayidx11, align 4
  %max_drain_clk_mhz = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 1, i32 %i.0145, i32 3
  %13 = ptrtoint ptr %max_drain_clk_mhz to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %max_drain_clk_mhz, align 2
  %MaxClock = getelementptr [2 x [4 x %struct.WatermarkRowGeneric_t]], ptr %1, i32 0, i32 1, i32 %i.0145, i32 1
  %15 = ptrtoint ptr %MaxClock to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %MaxClock, align 2
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx, align 2
  %MinMclk = getelementptr [2 x [4 x %struct.WatermarkRowGeneric_t]], ptr %1, i32 0, i32 1, i32 %i.0145, i32 2
  %18 = ptrtoint ptr %MinMclk to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %MinMclk, align 4
  %max_fill_clk_mhz = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 1, i32 %i.0145, i32 1
  %19 = ptrtoint ptr %max_fill_clk_mhz to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %max_fill_clk_mhz, align 2
  %MaxMclk = getelementptr [2 x [4 x %struct.WatermarkRowGeneric_t]], ptr %1, i32 0, i32 1, i32 %i.0145, i32 3
  %21 = ptrtoint ptr %MaxMclk to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %MaxMclk, align 2
  %wm_inst = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 1, i32 %i.0145, i32 4
  %22 = ptrtoint ptr %wm_inst to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %wm_inst, align 2
  %WmSetting = getelementptr [2 x [4 x %struct.WatermarkRowGeneric_t]], ptr %1, i32 0, i32 1, i32 %i.0145, i32 4
  %24 = ptrtoint ptr %WmSetting to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %WmSetting, align 4
  %inc = add nuw i32 %i.0145, 1
  %25 = ptrtoint ptr %clock_ranges to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %clock_ranges, align 4
  %cmp9 = icmp ult i32 %inc, %26
  br i1 %cmp9, label %for.body.for.body_crit_edge, label %for.cond32.preheaderthread-pre-split

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %for.cond32.preheader.for.body35_crit_edge
  %i.1147 = phi i32 [ %inc71, %for.body35.for.body35_crit_edge ], [ 0, %for.cond32.preheader.for.body35_crit_edge ]
  %arrayidx36 = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 3, i32 %i.1147
  %27 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx36, align 2
  %arrayidx40 = getelementptr [4 x %struct.WatermarkRowGeneric_t], ptr %1, i32 0, i32 %i.1147
  %29 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %arrayidx40, align 4
  %max_fill_clk_mhz44 = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 3, i32 %i.1147, i32 1
  %30 = ptrtoint ptr %max_fill_clk_mhz44 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %max_fill_clk_mhz44, align 2
  %MaxClock48 = getelementptr [4 x %struct.WatermarkRowGeneric_t], ptr %1, i32 0, i32 %i.1147, i32 1
  %32 = ptrtoint ptr %MaxClock48 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %MaxClock48, align 2
  %min_drain_clk_mhz51 = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 3, i32 %i.1147, i32 2
  %33 = ptrtoint ptr %min_drain_clk_mhz51 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %min_drain_clk_mhz51, align 2
  %MinMclk55 = getelementptr [4 x %struct.WatermarkRowGeneric_t], ptr %1, i32 0, i32 %i.1147, i32 2
  %35 = ptrtoint ptr %MinMclk55 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %MinMclk55, align 4
  %max_drain_clk_mhz58 = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 3, i32 %i.1147, i32 3
  %36 = ptrtoint ptr %max_drain_clk_mhz58 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %max_drain_clk_mhz58, align 2
  %MaxMclk62 = getelementptr [4 x %struct.WatermarkRowGeneric_t], ptr %1, i32 0, i32 %i.1147, i32 3
  %38 = ptrtoint ptr %MaxMclk62 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %MaxMclk62, align 2
  %wm_inst65 = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 3, i32 %i.1147, i32 4
  %39 = ptrtoint ptr %wm_inst65 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %wm_inst65, align 2
  %WmSetting69 = getelementptr [4 x %struct.WatermarkRowGeneric_t], ptr %1, i32 0, i32 %i.1147, i32 4
  %41 = ptrtoint ptr %WmSetting69 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %WmSetting69, align 4
  %inc71 = add nuw i32 %i.1147, 1
  %42 = ptrtoint ptr %num_writer_wm_sets to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_writer_wm_sets, align 4
  %cmp34 = icmp ult i32 %inc71, %43
  br i1 %cmp34, label %for.body35.for.body35_crit_edge, label %for.body35.for.end72_crit_edge

for.body35.for.end72_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end72

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body35

for.end72:                                        ; preds = %for.body35.for.end72_crit_edge, %for.cond32.preheader.for.end72_crit_edge
  %watermarks_bitmap = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 34
  %44 = ptrtoint ptr %watermarks_bitmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %watermarks_bitmap, align 4
  %or = or i32 %45, 1
  store i32 %or, ptr %watermarks_bitmap, align 4
  %and77 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.then79, label %for.end72.cleanup_crit_edge

for.end72.cleanup_crit_edge:                      ; preds = %for.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then79:                                        ; preds = %for.end72
  %call = tail call i32 @smu_cmn_write_watermarks_table(ptr noundef %smu) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool80.not = icmp eq i32 %call, 0
  br i1 %tobool80.not, label %if.end82, label %do.end

do.end:                                           ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %smu, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.37) #11
  br label %cleanup

if.end82:                                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %watermarks_bitmap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %watermarks_bitmap, align 4
  %or84 = or i32 %51, 2
  store i32 %or84, ptr %watermarks_bitmap, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %do.end, %for.end72.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %if.then3.cleanup_crit_edge ], [ 0, %if.end82 ], [ 0, %for.end72.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yellow_carp_set_performance_level(ptr noundef %smu, i32 noundef %level) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %level, label %do.end [
    i32 8, label %sw.bb
    i32 4, label %sw.bb4
    i32 1, label %sw.bb8
    i32 16, label %entry.if.end36_crit_edge
    i32 32, label %entry.if.end36_crit_edge243
    i32 64, label %entry.if.end36_crit_edge244
    i32 128, label %entry.if.end36_crit_edge245
    i32 2, label %entry.cleanup_crit_edge
    i32 256, label %entry.cleanup_crit_edge246
  ]

entry.cleanup_crit_edge246:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.if.end36_crit_edge245:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

entry.if.end36_crit_edge244:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

entry.if.end36_crit_edge243:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

sw.bb:                                            ; preds = %entry
  %clocks_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %1 = ptrtoint ptr %clocks_table.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clocks_table.i, align 4
  %call.i.i = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %if.end22.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %gfxclk.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 1
  %3 = ptrtoint ptr %gfxclk.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gfxclk.i, align 4
  %div20.i = udiv i32 %4, 100
  br label %yellow_carp_get_dpm_ultimate_freq.exit

if.end22.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %MaxGfxClk.i = getelementptr inbounds %struct.DpmClocks_t, ptr %2, i32 0, i32 15
  %5 = ptrtoint ptr %MaxGfxClk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %MaxGfxClk.i, align 4
  br label %yellow_carp_get_dpm_ultimate_freq.exit

yellow_carp_get_dpm_ultimate_freq.exit:           ; preds = %if.end22.i, %if.then.i
  %sclk_max.0 = phi i32 [ %div20.i, %if.then.i ], [ %6, %if.end22.i ]
  %call.i.i71 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i71)
  %tobool.i.not.i72 = icmp eq i32 %call.i.i71, 0
  br i1 %tobool.i.not.i72, label %if.then.i73, label %if.end22.i75

if.then.i73:                                      ; preds = %yellow_carp_get_dpm_ultimate_freq.exit
  call void @__sanitizer_cov_trace_pc() #10
  %fclk.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 16
  %7 = ptrtoint ptr %fclk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fclk.i, align 8
  %div20.i74 = udiv i32 %8, 100
  br label %yellow_carp_get_dpm_ultimate_freq.exit76

if.end22.i75:                                     ; preds = %yellow_carp_get_dpm_ultimate_freq.exit
  %9 = ptrtoint ptr %clocks_table.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clocks_table.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end22.i75.yellow_carp_get_dpm_ultimate_freq.exit76_crit_edge, label %if.end.i.i

if.end22.i75.yellow_carp_get_dpm_ultimate_freq.exit76_crit_edge: ; preds = %if.end22.i75
  call void @__sanitizer_cov_trace_pc() #10
  br label %yellow_carp_get_dpm_ultimate_freq.exit76

if.end.i.i:                                       ; preds = %if.end22.i75
  %NumDfPstatesEnabled28.i.i = getelementptr inbounds %struct.DpmClocks_t, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %NumDfPstatesEnabled28.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %NumDfPstatesEnabled28.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp30.not.i.i.not = icmp eq i8 %12, 0
  br i1 %cmp30.not.i.i.not, label %if.end.i.i.yellow_carp_get_dpm_ultimate_freq.exit76_crit_edge, label %if.end33.i.i

if.end.i.i.yellow_carp_get_dpm_ultimate_freq.exit76_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %yellow_carp_get_dpm_ultimate_freq.exit76

if.end33.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx35.i.i = getelementptr %struct.DpmClocks_t, ptr %10, i32 0, i32 7, i32 0
  %13 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx35.i.i, align 4
  br label %yellow_carp_get_dpm_ultimate_freq.exit76

yellow_carp_get_dpm_ultimate_freq.exit76:         ; preds = %if.end33.i.i, %if.end.i.i.yellow_carp_get_dpm_ultimate_freq.exit76_crit_edge, %if.end22.i75.yellow_carp_get_dpm_ultimate_freq.exit76_crit_edge, %if.then.i73
  %fclk_max.0 = phi i32 [ %div20.i74, %if.then.i73 ], [ 0, %if.end22.i75.yellow_carp_get_dpm_ultimate_freq.exit76_crit_edge ], [ %14, %if.end33.i.i ], [ 0, %if.end.i.i.yellow_carp_get_dpm_ultimate_freq.exit76_crit_edge ]
  %15 = ptrtoint ptr %clocks_table.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clocks_table.i, align 4
  %call.i.i78 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i78)
  %tobool.i.not.i79 = icmp eq i32 %call.i.i78, 0
  br i1 %tobool.i.not.i79, label %if.then.i80, label %if.end22.i82

if.then.i80:                                      ; preds = %yellow_carp_get_dpm_ultimate_freq.exit76
  call void @__sanitizer_cov_trace_pc() #10
  %socclk.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 3
  %17 = ptrtoint ptr %socclk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %socclk.i, align 4
  %div20.i81 = udiv i32 %18, 100
  br label %sw.epilog

if.end22.i82:                                     ; preds = %yellow_carp_get_dpm_ultimate_freq.exit76
  %NumSocClkLevelsEnabled.i = getelementptr inbounds %struct.DpmClocks_t, ptr %16, i32 0, i32 10
  %19 = ptrtoint ptr %NumSocClkLevelsEnabled.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %NumSocClkLevelsEnabled.i, align 2
  %conv.i = zext i8 %20 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %21 = ptrtoint ptr %clocks_table.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clocks_table.i, align 4
  %tobool.not.i.i83 = icmp eq ptr %22, null
  br i1 %tobool.not.i.i83, label %if.end22.i82.sw.epilog_crit_edge, label %if.end.i.i84

if.end22.i82.sw.epilog_crit_edge:                 ; preds = %if.end22.i82
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i.i84:                                     ; preds = %if.end22.i82
  %NumSocClkLevelsEnabled.i.i = getelementptr inbounds %struct.DpmClocks_t, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %NumSocClkLevelsEnabled.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %NumSocClkLevelsEnabled.i.i, align 2
  %conv.i.i = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv.i.i)
  %cmp1.not.i.i = icmp ult i32 %sub.i, %conv.i.i
  br i1 %cmp1.not.i.i, label %if.end4.i.i, label %if.end.i.i84.sw.epilog_crit_edge

if.end.i.i84.sw.epilog_crit_edge:                 ; preds = %if.end.i.i84
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end4.i.i:                                      ; preds = %if.end.i.i84
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr %struct.DpmClocks_t, ptr %22, i32 0, i32 3, i32 %sub.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %clocks_table.i87 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %27 = ptrtoint ptr %clocks_table.i87 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clocks_table.i87, align 4
  %call.i.i88 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i88)
  %tobool.i.not.i89 = icmp eq i32 %call.i.i88, 0
  br i1 %tobool.i.not.i89, label %if.then.i90, label %if.end22.i92

if.then.i90:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %gfxclk.i91 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 1
  %29 = ptrtoint ptr %gfxclk.i91 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %gfxclk.i91, align 4
  %div.i = udiv i32 %30, 100
  br label %yellow_carp_get_dpm_ultimate_freq.exit94

if.end22.i92:                                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %MinGfxClk.i = getelementptr inbounds %struct.DpmClocks_t, ptr %28, i32 0, i32 14
  %31 = ptrtoint ptr %MinGfxClk.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %MinGfxClk.i, align 4
  br label %yellow_carp_get_dpm_ultimate_freq.exit94

yellow_carp_get_dpm_ultimate_freq.exit94:         ; preds = %if.end22.i92, %if.then.i90
  %sclk_min.0 = phi i32 [ %div.i, %if.then.i90 ], [ %32, %if.end22.i92 ]
  %33 = ptrtoint ptr %clocks_table.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clocks_table.i87, align 4
  %call.i.i96 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i96)
  %tobool.i.not.i97 = icmp eq i32 %call.i.i96, 0
  br i1 %tobool.i.not.i97, label %if.then.i98, label %if.end22.i101

if.then.i98:                                      ; preds = %yellow_carp_get_dpm_ultimate_freq.exit94
  call void @__sanitizer_cov_trace_pc() #10
  %fclk.i99 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 16
  %35 = ptrtoint ptr %fclk.i99 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fclk.i99, align 8
  %div.i100 = udiv i32 %36, 100
  br label %yellow_carp_get_dpm_ultimate_freq.exit103

if.end22.i101:                                    ; preds = %yellow_carp_get_dpm_ultimate_freq.exit94
  %NumDfPstatesEnabled.i = getelementptr inbounds %struct.DpmClocks_t, ptr %34, i32 0, i32 12
  %37 = ptrtoint ptr %NumDfPstatesEnabled.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %NumDfPstatesEnabled.i, align 4
  %conv47.i = zext i8 %38 to i32
  %sub48.i = add nsw i32 %conv47.i, -1
  %39 = ptrtoint ptr %clocks_table.i87 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clocks_table.i87, align 4
  %tobool.not.i103.i = icmp eq ptr %40, null
  br i1 %tobool.not.i103.i, label %if.end22.i101.yellow_carp_get_dpm_ultimate_freq.exit103_crit_edge, label %if.end.i106.i

if.end22.i101.yellow_carp_get_dpm_ultimate_freq.exit103_crit_edge: ; preds = %if.end22.i101
  call void @__sanitizer_cov_trace_pc() #10
  br label %yellow_carp_get_dpm_ultimate_freq.exit103

if.end.i106.i:                                    ; preds = %if.end22.i101
  %NumDfPstatesEnabled28.i131.i = getelementptr inbounds %struct.DpmClocks_t, ptr %40, i32 0, i32 12
  %41 = ptrtoint ptr %NumDfPstatesEnabled28.i131.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %NumDfPstatesEnabled28.i131.i, align 4
  %conv29.i132.i = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub48.i, i32 %conv29.i132.i)
  %cmp30.not.i133.i = icmp ult i32 %sub48.i, %conv29.i132.i
  br i1 %cmp30.not.i133.i, label %if.end33.i136.i, label %if.end.i106.i.yellow_carp_get_dpm_ultimate_freq.exit103_crit_edge

if.end.i106.i.yellow_carp_get_dpm_ultimate_freq.exit103_crit_edge: ; preds = %if.end.i106.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %yellow_carp_get_dpm_ultimate_freq.exit103

if.end33.i136.i:                                  ; preds = %if.end.i106.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx35.i135.i = getelementptr %struct.DpmClocks_t, ptr %40, i32 0, i32 7, i32 %sub48.i
  %43 = ptrtoint ptr %arrayidx35.i135.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx35.i135.i, align 4
  br label %yellow_carp_get_dpm_ultimate_freq.exit103

yellow_carp_get_dpm_ultimate_freq.exit103:        ; preds = %if.end33.i136.i, %if.end.i106.i.yellow_carp_get_dpm_ultimate_freq.exit103_crit_edge, %if.end22.i101.yellow_carp_get_dpm_ultimate_freq.exit103_crit_edge, %if.then.i98
  %fclk_min.0 = phi i32 [ %div.i100, %if.then.i98 ], [ 0, %if.end22.i101.yellow_carp_get_dpm_ultimate_freq.exit103_crit_edge ], [ %44, %if.end33.i136.i ], [ 0, %if.end.i106.i.yellow_carp_get_dpm_ultimate_freq.exit103_crit_edge ]
  %call.i.i105 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i105)
  %tobool.i.not.i106 = icmp eq i32 %call.i.i105, 0
  br i1 %tobool.i.not.i106, label %if.then.i107, label %if.end22.i110

if.then.i107:                                     ; preds = %yellow_carp_get_dpm_ultimate_freq.exit103
  call void @__sanitizer_cov_trace_pc() #10
  %socclk.i108 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 3
  %45 = ptrtoint ptr %socclk.i108 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %socclk.i108, align 4
  %div.i109 = udiv i32 %46, 100
  br label %sw.epilog

if.end22.i110:                                    ; preds = %yellow_carp_get_dpm_ultimate_freq.exit103
  %47 = ptrtoint ptr %clocks_table.i87 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %clocks_table.i87, align 4
  %tobool.not.i103.i111 = icmp eq ptr %48, null
  br i1 %tobool.not.i103.i111, label %if.end22.i110.sw.epilog_crit_edge, label %if.end.i106.i112

if.end22.i110.sw.epilog_crit_edge:                ; preds = %if.end22.i110
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i106.i112:                                 ; preds = %if.end22.i110
  %NumSocClkLevelsEnabled.i107.i = getelementptr inbounds %struct.DpmClocks_t, ptr %48, i32 0, i32 10
  %49 = ptrtoint ptr %NumSocClkLevelsEnabled.i107.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %NumSocClkLevelsEnabled.i107.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp1.not.i109.i.not = icmp eq i8 %50, 0
  br i1 %cmp1.not.i109.i.not, label %if.end.i106.i112.sw.epilog_crit_edge, label %if.end4.i112.i

if.end.i106.i112.sw.epilog_crit_edge:             ; preds = %if.end.i106.i112
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end4.i112.i:                                   ; preds = %if.end.i106.i112
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i111.i = getelementptr %struct.DpmClocks_t, ptr %48, i32 0, i32 3, i32 0
  %51 = ptrtoint ptr %arrayidx.i111.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i111.i, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %clocks_table.i115 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %53 = ptrtoint ptr %clocks_table.i115 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %clocks_table.i115, align 4
  %call.i.i116 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i116)
  %tobool.i.not.i117 = icmp eq i32 %call.i.i116, 0
  br i1 %tobool.i.not.i117, label %if.then.i118, label %if.end22.i122

if.then.i118:                                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %gfxclk.i119 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 1
  %55 = ptrtoint ptr %gfxclk.i119 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %gfxclk.i119, align 4
  %div.i120 = udiv i32 %56, 100
  br label %yellow_carp_get_dpm_ultimate_freq.exit126

if.end22.i122:                                    ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %MaxGfxClk.i123 = getelementptr inbounds %struct.DpmClocks_t, ptr %54, i32 0, i32 15
  %57 = ptrtoint ptr %MaxGfxClk.i123 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %MaxGfxClk.i123, align 4
  %MinGfxClk.i124 = getelementptr inbounds %struct.DpmClocks_t, ptr %54, i32 0, i32 14
  %59 = ptrtoint ptr %MinGfxClk.i124 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %MinGfxClk.i124, align 4
  br label %yellow_carp_get_dpm_ultimate_freq.exit126

yellow_carp_get_dpm_ultimate_freq.exit126:        ; preds = %if.end22.i122, %if.then.i118
  %sclk_min.1 = phi i32 [ %div.i120, %if.then.i118 ], [ %60, %if.end22.i122 ]
  %sclk_max.1 = phi i32 [ %div.i120, %if.then.i118 ], [ %58, %if.end22.i122 ]
  %61 = ptrtoint ptr %clocks_table.i115 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %clocks_table.i115, align 4
  %call.i.i128 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i128)
  %tobool.i.not.i129 = icmp eq i32 %call.i.i128, 0
  br i1 %tobool.i.not.i129, label %if.then.i130, label %if.end22.i134

if.then.i130:                                     ; preds = %yellow_carp_get_dpm_ultimate_freq.exit126
  call void @__sanitizer_cov_trace_pc() #10
  %fclk.i131 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 16
  %63 = ptrtoint ptr %fclk.i131 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fclk.i131, align 8
  %div.i132 = udiv i32 %64, 100
  br label %yellow_carp_get_dpm_ultimate_freq.exit153

if.end22.i134:                                    ; preds = %yellow_carp_get_dpm_ultimate_freq.exit126
  %65 = ptrtoint ptr %clocks_table.i115 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %clocks_table.i115, align 4
  %tobool.not.i.i135 = icmp eq ptr %66, null
  br i1 %tobool.not.i.i135, label %if.end22.i134.yellow_carp_get_dpm_ultimate_freq.exit153_crit_edge, label %if.end.i.i136

if.end22.i134.yellow_carp_get_dpm_ultimate_freq.exit153_crit_edge: ; preds = %if.end22.i134
  call void @__sanitizer_cov_trace_pc() #10
  br label %yellow_carp_get_dpm_ultimate_freq.exit153

if.end.i.i136:                                    ; preds = %if.end22.i134
  %NumDfPstatesEnabled28.i.i137 = getelementptr inbounds %struct.DpmClocks_t, ptr %66, i32 0, i32 12
  %67 = ptrtoint ptr %NumDfPstatesEnabled28.i.i137 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %NumDfPstatesEnabled28.i.i137, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp30.not.i.i139.not = icmp eq i8 %68, 0
  br i1 %cmp30.not.i.i139.not, label %if.end.i.i136.yellow_carp_get_dpm_ultimate_freq.exit153_crit_edge, label %if.end.i106.i146

if.end.i.i136.yellow_carp_get_dpm_ultimate_freq.exit153_crit_edge: ; preds = %if.end.i.i136
  call void @__sanitizer_cov_trace_pc() #10
  br label %yellow_carp_get_dpm_ultimate_freq.exit153

if.end.i106.i146:                                 ; preds = %if.end.i.i136
  %conv29.i.i138 = zext i8 %68 to i32
  %arrayidx35.i.i140 = getelementptr %struct.DpmClocks_t, ptr %66, i32 0, i32 7, i32 0
  %69 = ptrtoint ptr %arrayidx35.i.i140 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx35.i.i140, align 4
  %NumDfPstatesEnabled.i142 = getelementptr inbounds %struct.DpmClocks_t, ptr %62, i32 0, i32 12
  %71 = ptrtoint ptr %NumDfPstatesEnabled.i142 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %NumDfPstatesEnabled.i142, align 4
  %conv47.i143 = zext i8 %72 to i32
  %sub48.i144 = add nsw i32 %conv47.i143, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub48.i144, i32 %conv29.i.i138)
  %cmp30.not.i133.i149 = icmp ult i32 %sub48.i144, %conv29.i.i138
  br i1 %cmp30.not.i133.i149, label %if.end33.i136.i151, label %if.end.i106.i146.yellow_carp_get_dpm_ultimate_freq.exit153_crit_edge

if.end.i106.i146.yellow_carp_get_dpm_ultimate_freq.exit153_crit_edge: ; preds = %if.end.i106.i146
  call void @__sanitizer_cov_trace_pc() #10
  br label %yellow_carp_get_dpm_ultimate_freq.exit153

if.end33.i136.i151:                               ; preds = %if.end.i106.i146
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx35.i135.i150 = getelementptr %struct.DpmClocks_t, ptr %66, i32 0, i32 7, i32 %sub48.i144
  %73 = ptrtoint ptr %arrayidx35.i135.i150 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx35.i135.i150, align 4
  br label %yellow_carp_get_dpm_ultimate_freq.exit153

yellow_carp_get_dpm_ultimate_freq.exit153:        ; preds = %if.end33.i136.i151, %if.end.i106.i146.yellow_carp_get_dpm_ultimate_freq.exit153_crit_edge, %if.end.i.i136.yellow_carp_get_dpm_ultimate_freq.exit153_crit_edge, %if.end22.i134.yellow_carp_get_dpm_ultimate_freq.exit153_crit_edge, %if.then.i130
  %fclk_min.1 = phi i32 [ %div.i132, %if.then.i130 ], [ 0, %if.end22.i134.yellow_carp_get_dpm_ultimate_freq.exit153_crit_edge ], [ %74, %if.end33.i136.i151 ], [ 0, %if.end.i106.i146.yellow_carp_get_dpm_ultimate_freq.exit153_crit_edge ], [ 0, %if.end.i.i136.yellow_carp_get_dpm_ultimate_freq.exit153_crit_edge ]
  %fclk_max.1 = phi i32 [ %div.i132, %if.then.i130 ], [ 0, %if.end22.i134.yellow_carp_get_dpm_ultimate_freq.exit153_crit_edge ], [ %70, %if.end33.i136.i151 ], [ %70, %if.end.i106.i146.yellow_carp_get_dpm_ultimate_freq.exit153_crit_edge ], [ 0, %if.end.i.i136.yellow_carp_get_dpm_ultimate_freq.exit153_crit_edge ]
  %75 = ptrtoint ptr %clocks_table.i115 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %clocks_table.i115, align 4
  %call.i.i155 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i155)
  %tobool.i.not.i156 = icmp eq i32 %call.i.i155, 0
  br i1 %tobool.i.not.i156, label %if.then.i157, label %if.end22.i161

if.then.i157:                                     ; preds = %yellow_carp_get_dpm_ultimate_freq.exit153
  call void @__sanitizer_cov_trace_pc() #10
  %socclk.i158 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 3
  %77 = ptrtoint ptr %socclk.i158 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %socclk.i158, align 4
  %div.i159 = udiv i32 %78, 100
  br label %sw.epilog

if.end22.i161:                                    ; preds = %yellow_carp_get_dpm_ultimate_freq.exit153
  %NumSocClkLevelsEnabled.i162 = getelementptr inbounds %struct.DpmClocks_t, ptr %76, i32 0, i32 10
  %79 = ptrtoint ptr %NumSocClkLevelsEnabled.i162 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %NumSocClkLevelsEnabled.i162, align 2
  %conv.i163 = zext i8 %80 to i32
  %sub.i164 = add nsw i32 %conv.i163, -1
  %81 = ptrtoint ptr %clocks_table.i115 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %clocks_table.i115, align 4
  %tobool.not.i.i165 = icmp eq ptr %82, null
  br i1 %tobool.not.i.i165, label %if.end22.i161.sw.epilog_crit_edge, label %if.end.i.i166

if.end22.i161.sw.epilog_crit_edge:                ; preds = %if.end22.i161
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i.i166:                                    ; preds = %if.end22.i161
  %NumSocClkLevelsEnabled.i.i167 = getelementptr inbounds %struct.DpmClocks_t, ptr %82, i32 0, i32 10
  %83 = ptrtoint ptr %NumSocClkLevelsEnabled.i.i167 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %NumSocClkLevelsEnabled.i.i167, align 2
  %conv.i.i168 = zext i8 %84 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i164, i32 %conv.i.i168)
  %cmp1.not.i.i169 = icmp ult i32 %sub.i164, %conv.i.i168
  br i1 %cmp1.not.i.i169, label %if.end4.i112.i178, label %if.end.i.i166.sw.epilog_crit_edge

if.end.i.i166.sw.epilog_crit_edge:                ; preds = %if.end.i.i166
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end4.i112.i178:                                ; preds = %if.end.i.i166
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i170 = getelementptr %struct.DpmClocks_t, ptr %82, i32 0, i32 3, i32 %sub.i164
  %85 = ptrtoint ptr %arrayidx.i.i170 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.i.i170, align 4
  %arrayidx.i111.i177 = getelementptr %struct.DpmClocks_t, ptr %82, i32 0, i32 3, i32 0
  %87 = ptrtoint ptr %arrayidx.i111.i177 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.i111.i177, align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %smu, align 8
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.39, i32 noundef %level) #11
  br label %cleanup

sw.epilog:                                        ; preds = %if.end4.i112.i178, %if.end.i.i166.sw.epilog_crit_edge, %if.end22.i161.sw.epilog_crit_edge, %if.then.i157, %if.end4.i112.i, %if.end.i106.i112.sw.epilog_crit_edge, %if.end22.i110.sw.epilog_crit_edge, %if.then.i107, %if.end4.i.i, %if.end.i.i84.sw.epilog_crit_edge, %if.end22.i82.sw.epilog_crit_edge, %if.then.i80
  %sclk_min.2 = phi i32 [ %sclk_max.0, %if.then.i80 ], [ %sclk_max.0, %if.end22.i82.sw.epilog_crit_edge ], [ %sclk_max.0, %if.end.i.i84.sw.epilog_crit_edge ], [ %sclk_max.0, %if.end4.i.i ], [ %sclk_min.0, %if.then.i107 ], [ %sclk_min.0, %if.end22.i110.sw.epilog_crit_edge ], [ %sclk_min.0, %if.end.i106.i112.sw.epilog_crit_edge ], [ %sclk_min.0, %if.end4.i112.i ], [ %sclk_min.1, %if.then.i157 ], [ %sclk_min.1, %if.end22.i161.sw.epilog_crit_edge ], [ %sclk_min.1, %if.end.i.i166.sw.epilog_crit_edge ], [ %sclk_min.1, %if.end4.i112.i178 ]
  %sclk_max.2 = phi i32 [ %sclk_max.0, %if.then.i80 ], [ %sclk_max.0, %if.end22.i82.sw.epilog_crit_edge ], [ %sclk_max.0, %if.end.i.i84.sw.epilog_crit_edge ], [ %sclk_max.0, %if.end4.i.i ], [ %sclk_min.0, %if.then.i107 ], [ %sclk_min.0, %if.end22.i110.sw.epilog_crit_edge ], [ %sclk_min.0, %if.end.i106.i112.sw.epilog_crit_edge ], [ %sclk_min.0, %if.end4.i112.i ], [ %sclk_max.1, %if.then.i157 ], [ %sclk_max.1, %if.end22.i161.sw.epilog_crit_edge ], [ %sclk_max.1, %if.end.i.i166.sw.epilog_crit_edge ], [ %sclk_max.1, %if.end4.i112.i178 ]
  %fclk_min.2 = phi i32 [ %fclk_max.0, %if.then.i80 ], [ %fclk_max.0, %if.end22.i82.sw.epilog_crit_edge ], [ %fclk_max.0, %if.end.i.i84.sw.epilog_crit_edge ], [ %fclk_max.0, %if.end4.i.i ], [ %fclk_min.0, %if.then.i107 ], [ %fclk_min.0, %if.end22.i110.sw.epilog_crit_edge ], [ %fclk_min.0, %if.end.i106.i112.sw.epilog_crit_edge ], [ %fclk_min.0, %if.end4.i112.i ], [ %fclk_min.1, %if.then.i157 ], [ %fclk_min.1, %if.end22.i161.sw.epilog_crit_edge ], [ %fclk_min.1, %if.end.i.i166.sw.epilog_crit_edge ], [ %fclk_min.1, %if.end4.i112.i178 ]
  %fclk_max.2 = phi i32 [ %fclk_max.0, %if.then.i80 ], [ %fclk_max.0, %if.end22.i82.sw.epilog_crit_edge ], [ %fclk_max.0, %if.end.i.i84.sw.epilog_crit_edge ], [ %fclk_max.0, %if.end4.i.i ], [ %fclk_min.0, %if.then.i107 ], [ %fclk_min.0, %if.end22.i110.sw.epilog_crit_edge ], [ %fclk_min.0, %if.end.i106.i112.sw.epilog_crit_edge ], [ %fclk_min.0, %if.end4.i112.i ], [ %fclk_max.1, %if.then.i157 ], [ %fclk_max.1, %if.end22.i161.sw.epilog_crit_edge ], [ %fclk_max.1, %if.end.i.i166.sw.epilog_crit_edge ], [ %fclk_max.1, %if.end4.i112.i178 ]
  %socclk_min.2 = phi i32 [ %div20.i81, %if.then.i80 ], [ 0, %if.end22.i82.sw.epilog_crit_edge ], [ 0, %if.end.i.i84.sw.epilog_crit_edge ], [ %26, %if.end4.i.i ], [ %div.i109, %if.then.i107 ], [ 0, %if.end22.i110.sw.epilog_crit_edge ], [ 0, %if.end.i106.i112.sw.epilog_crit_edge ], [ %52, %if.end4.i112.i ], [ %div.i159, %if.then.i157 ], [ 0, %if.end22.i161.sw.epilog_crit_edge ], [ 0, %if.end.i.i166.sw.epilog_crit_edge ], [ %88, %if.end4.i112.i178 ]
  %socclk_max.2 = phi i32 [ %div20.i81, %if.then.i80 ], [ 0, %if.end22.i82.sw.epilog_crit_edge ], [ 0, %if.end.i.i84.sw.epilog_crit_edge ], [ %26, %if.end4.i.i ], [ %div.i109, %if.then.i107 ], [ 0, %if.end22.i110.sw.epilog_crit_edge ], [ 0, %if.end.i106.i112.sw.epilog_crit_edge ], [ %52, %if.end4.i112.i ], [ %div.i159, %if.then.i157 ], [ 0, %if.end22.i161.sw.epilog_crit_edge ], [ 0, %if.end.i.i166.sw.epilog_crit_edge ], [ %86, %if.end4.i112.i178 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sclk_min.2)
  %tobool.not = icmp eq i32 %sclk_min.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sclk_max.2)
  %tobool14.not = icmp eq i32 %sclk_max.2, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool14.not
  br i1 %or.cond, label %sw.epilog.if.end18_crit_edge, label %if.then

sw.epilog.if.end18_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then:                                          ; preds = %sw.epilog
  %call.i.i181 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i181)
  %tobool.i.not.i182 = icmp eq i32 %call.i.i181, 0
  br i1 %tobool.i.not.i182, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %call4.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 131, i32 noundef %sclk_min.2, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %yellow_carp_set_soft_freq_limited_range.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

yellow_carp_set_soft_freq_limited_range.exit:     ; preds = %if.end.i
  %call7.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 130, i32 noundef %sclk_max.2, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool16.not = icmp eq i32 %call7.i, 0
  br i1 %tobool16.not, label %if.end, label %yellow_carp_set_soft_freq_limited_range.exit.cleanup_crit_edge

yellow_carp_set_soft_freq_limited_range.exit.cleanup_crit_edge: ; preds = %yellow_carp_set_soft_freq_limited_range.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %yellow_carp_set_soft_freq_limited_range.exit
  call void @__sanitizer_cov_trace_pc() #10
  %gfx_actual_hard_min_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %93 = ptrtoint ptr %gfx_actual_hard_min_freq to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %sclk_min.2, ptr %gfx_actual_hard_min_freq, align 4
  %gfx_actual_soft_max_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %94 = ptrtoint ptr %gfx_actual_soft_max_freq to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %sclk_max.2, ptr %gfx_actual_soft_max_freq, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end, %sw.epilog.if.end18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fclk_min.2)
  %tobool19.not = icmp eq i32 %fclk_min.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fclk_max.2)
  %tobool21.not = icmp eq i32 %fclk_max.2, 0
  %or.cond241 = select i1 %tobool19.not, i1 true, i1 %tobool21.not
  br i1 %or.cond241, label %if.end18.if.end27_crit_edge, label %if.then22

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then22:                                        ; preds = %if.end18
  %call.i.i184 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i184)
  %tobool.i.not.i185 = icmp eq i32 %call.i.i184, 0
  br i1 %tobool.i.not.i185, label %if.then22.cleanup_crit_edge, label %if.end.i186

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i186:                                      ; preds = %if.then22
  %call4.i187 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 143, i32 noundef %fclk_min.2, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i187)
  %tobool.not.i188 = icmp eq i32 %call4.i187, 0
  br i1 %tobool.not.i188, label %yellow_carp_set_soft_freq_limited_range.exit192, label %if.end.i186.cleanup_crit_edge

if.end.i186.cleanup_crit_edge:                    ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

yellow_carp_set_soft_freq_limited_range.exit192:  ; preds = %if.end.i186
  %call7.i189 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 133, i32 noundef %fclk_max.2, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i189)
  %tobool24.not = icmp eq i32 %call7.i189, 0
  br i1 %tobool24.not, label %yellow_carp_set_soft_freq_limited_range.exit192.if.end27_crit_edge, label %yellow_carp_set_soft_freq_limited_range.exit192.cleanup_crit_edge

yellow_carp_set_soft_freq_limited_range.exit192.cleanup_crit_edge: ; preds = %yellow_carp_set_soft_freq_limited_range.exit192
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

yellow_carp_set_soft_freq_limited_range.exit192.if.end27_crit_edge: ; preds = %yellow_carp_set_soft_freq_limited_range.exit192
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end27:                                         ; preds = %yellow_carp_set_soft_freq_limited_range.exit192.if.end27_crit_edge, %if.end18.if.end27_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %socclk_min.2)
  %tobool28.not = icmp eq i32 %socclk_min.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %socclk_max.2)
  %tobool30.not = icmp eq i32 %socclk_max.2, 0
  %or.cond242 = select i1 %tobool28.not, i1 true, i1 %tobool30.not
  br i1 %or.cond242, label %if.end27.if.end36_crit_edge, label %if.then31

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then31:                                        ; preds = %if.end27
  %call.i.i193 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i193)
  %tobool.i.not.i194 = icmp eq i32 %call.i.i193, 0
  br i1 %tobool.i.not.i194, label %if.then31.cleanup_crit_edge, label %if.end.i195

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i195:                                      ; preds = %if.then31
  %call4.i196 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 116, i32 noundef %socclk_min.2, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i196)
  %tobool.not.i197 = icmp eq i32 %call4.i196, 0
  br i1 %tobool.not.i197, label %yellow_carp_set_soft_freq_limited_range.exit201, label %if.end.i195.cleanup_crit_edge

if.end.i195.cleanup_crit_edge:                    ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

yellow_carp_set_soft_freq_limited_range.exit201:  ; preds = %if.end.i195
  %call7.i198 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 132, i32 noundef %socclk_max.2, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i198)
  %tobool33.not = icmp eq i32 %call7.i198, 0
  br i1 %tobool33.not, label %yellow_carp_set_soft_freq_limited_range.exit201.if.end36_crit_edge, label %yellow_carp_set_soft_freq_limited_range.exit201.cleanup_crit_edge

yellow_carp_set_soft_freq_limited_range.exit201.cleanup_crit_edge: ; preds = %yellow_carp_set_soft_freq_limited_range.exit201
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

yellow_carp_set_soft_freq_limited_range.exit201.if.end36_crit_edge: ; preds = %yellow_carp_set_soft_freq_limited_range.exit201
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.end36:                                         ; preds = %yellow_carp_set_soft_freq_limited_range.exit201.if.end36_crit_edge, %if.end27.if.end36_crit_edge, %entry.if.end36_crit_edge, %entry.if.end36_crit_edge243, %entry.if.end36_crit_edge244, %entry.if.end36_crit_edge245
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %yellow_carp_set_soft_freq_limited_range.exit201.cleanup_crit_edge, %if.end.i195.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %yellow_carp_set_soft_freq_limited_range.exit192.cleanup_crit_edge, %if.end.i186.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %yellow_carp_set_soft_freq_limited_range.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge246
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end36 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge246 ], [ %call7.i, %yellow_carp_set_soft_freq_limited_range.exit.cleanup_crit_edge ], [ %call7.i189, %yellow_carp_set_soft_freq_limited_range.exit192.cleanup_crit_edge ], [ %call7.i198, %yellow_carp_set_soft_freq_limited_range.exit201.cleanup_crit_edge ], [ %call4.i, %if.end.i.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ %call4.i187, %if.end.i186.cleanup_crit_edge ], [ -22, %if.then22.cleanup_crit_edge ], [ %call4.i196, %if.end.i195.cleanup_crit_edge ], [ -22, %if.then31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yellow_carp_init_smc_tables(ptr nocapture noundef %smu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  store i64 304, ptr %arrayidx6, align 8
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
  store i64 116, ptr %arrayidx15, align 8
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
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 304) #12
  %clocks_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %10 = ptrtoint ptr %clocks_table to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %clocks_table, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i66 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 116) #12
  %metrics_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %12 = ptrtoint ptr %metrics_table to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i66, ptr %metrics_table, align 8
  %tobool26.not = icmp eq ptr %call7.i.i66, null
  br i1 %tobool26.not, label %if.end.err1_out_crit_edge, label %if.end28

if.end.err1_out_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err1_out

if.end28:                                         ; preds = %if.end
  %metrics_time = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 3
  %13 = ptrtoint ptr %metrics_time to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %metrics_time, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i67 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 124) #12
  %watermarks_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 6
  %15 = ptrtoint ptr %watermarks_table to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i67, ptr %watermarks_table, align 8
  %tobool31.not = icmp eq ptr %call7.i.i67, null
  br i1 %tobool31.not, label %if.end28.err2_out_crit_edge, label %if.end33

if.end28.err2_out_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %err2_out

if.end33:                                         ; preds = %if.end28
  %gpu_metrics_table_size = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 19
  %16 = ptrtoint ptr %gpu_metrics_table_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 120, ptr %gpu_metrics_table_size, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i68 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 120) #12
  %gpu_metrics_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 20
  %18 = ptrtoint ptr %gpu_metrics_table to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i68, ptr %gpu_metrics_table, align 4
  %tobool37.not = icmp eq ptr %call7.i.i68, null
  br i1 %tobool37.not, label %err3_out, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err3_out:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %watermarks_table to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %watermarks_table, align 8
  tail call void @kfree(ptr noundef %20) #8
  br label %err2_out

err2_out:                                         ; preds = %err3_out, %if.end28.err2_out_crit_edge
  %21 = ptrtoint ptr %metrics_table to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %metrics_table, align 8
  tail call void @kfree(ptr noundef %22) #8
  br label %err1_out

err1_out:                                         ; preds = %err2_out, %if.end.err1_out_crit_edge
  %23 = ptrtoint ptr %clocks_table to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clocks_table, align 4
  tail call void @kfree(ptr noundef %24) #8
  br label %cleanup

cleanup:                                          ; preds = %err1_out, %if.end33.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -12, %err1_out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yellow_carp_fini_smc_tables(ptr nocapture noundef %smu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clocks_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %0 = ptrtoint ptr %clocks_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clocks_table, align 4
  tail call void @kfree(ptr noundef %1) #8
  %2 = ptrtoint ptr %clocks_table to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %clocks_table, align 4
  %metrics_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %3 = ptrtoint ptr %metrics_table to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %metrics_table, align 8
  tail call void @kfree(ptr noundef %4) #8
  %5 = ptrtoint ptr %metrics_table to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %metrics_table, align 8
  %watermarks_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 6
  %6 = ptrtoint ptr %watermarks_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %watermarks_table, align 8
  tail call void @kfree(ptr noundef %7) #8
  %8 = ptrtoint ptr %watermarks_table to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %watermarks_table, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_check_fw_status(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_get_vbios_bootup_values(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_check_fw_version(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_set_driver_table_location(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yellow_carp_system_features_control(ptr noundef %smu, i1 noundef zeroext %en) #1 align 64 {
entry:
  %feature_mask = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_feature = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %feature_mask) #8
  %2 = ptrtoint ptr %feature_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %feature_mask, align 4, !annotation !97
  %3 = getelementptr inbounds [2 x i32], ptr %feature_mask, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !97
  br i1 %en, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %in_s0ix = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 140
  %5 = ptrtoint ptr %in_s0ix to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %in_s0ix, align 8, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef 58, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 0, %land.lhs.true.if.end_crit_edge ], [ %call, %if.then ]
  %enabled = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 3
  %7 = ptrtoint ptr %smu_feature to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %smu_feature, align 4
  %sub.i = add i32 %8, 31
  %9 = lshr i32 %sub.i, 3
  %mul.i = and i32 %9, 536870908
  %10 = call ptr @memset(ptr %enabled, i32 0, i32 %mul.i)
  %supported = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 1
  %11 = call ptr @memset(ptr %supported, i32 0, i32 %mul.i)
  br i1 %en, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = call i32 @smu_cmn_get_enabled_32_bits_mask(ptr noundef %smu, ptr noundef nonnull %feature_mask, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %smu_feature to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %smu_feature, align 4
  %sub.i37 = add i32 %13, 31
  %14 = lshr i32 %sub.i37, 3
  %mul.i38 = and i32 %14, 536870908
  %15 = call ptr @memcpy(ptr %enabled, ptr %feature_mask, i32 %mul.i38)
  %16 = call ptr @memcpy(ptr %supported, ptr %feature_mask, i32 %mul.i38)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ %ret.0, %if.end.cleanup_crit_edge ], [ %call9, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %feature_mask) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_send_smc_msg_with_param(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_send_smc_msg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_enabled_32_bits_mask(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_gfx_off_control(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yellow_carp_mode2_reset(ptr noundef %smu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 53, i32 noundef 2, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.yellow_carp_mode_reset.exit_crit_edge, label %do.end.i

entry.yellow_carp_mode_reset.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %yellow_carp_mode_reset.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.41) #11
  br label %yellow_carp_mode_reset.exit

yellow_carp_mode_reset.exit:                      ; preds = %do.end.i, %entry.yellow_carp_mode_reset.exit_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yellow_carp_get_dpm_ultimate_freq(ptr noundef %smu, i32 noundef %clk_type, ptr noundef writeonly %min, ptr noundef writeonly %max) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clocks_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %0 = ptrtoint ptr %clocks_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clocks_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %clk_type)
  %2 = icmp ult i32 %clk_type, 15
  br i1 %2, label %switch.hole_check, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %clk_type to i16
  %switch.shifted = lshr i16 28871, %switch.maskindex
  %3 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %switch.lobit.not = icmp eq i16 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end22_crit_edge, label %switch.lookup

switch.hole_check.if.end22_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [15 x i32], ptr @switch.table.yellow_carp_get_dpm_ultimate_freq, i32 0, i32 %clk_type
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call.i = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef %switch.load) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.i.not, label %if.then, label %switch.lookup.if.end22_crit_edge

switch.lookup.if.end22_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then:                                          ; preds = %switch.lookup
  %5 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %clk_type, label %if.then.sw.epilog_crit_edge [
    i32 14, label %if.then.sw.bb_crit_edge
    i32 7, label %if.then.sw.bb_crit_edge146
    i32 12, label %sw.bb2
    i32 0, label %if.then.sw.bb5_crit_edge
    i32 13, label %if.then.sw.bb5_crit_edge147
    i32 6, label %sw.bb8
    i32 1, label %sw.bb11
    i32 2, label %sw.bb14
  ]

if.then.sw.bb5_crit_edge147:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

if.then.sw.bb5_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

if.then.sw.bb_crit_edge146:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge146
  %uclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 2
  %6 = ptrtoint ptr %uclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %uclk, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %fclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 16
  %8 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fclk, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.then.sw.bb5_crit_edge, %if.then.sw.bb5_crit_edge147
  %gfxclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 1
  %10 = ptrtoint ptr %gfxclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gfxclk, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %socclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 3
  %12 = ptrtoint ptr %socclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %socclk, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %vclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 6
  %14 = ptrtoint ptr %vclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vclk, align 8
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 7
  %16 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dclk, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb11, %sw.bb8, %sw.bb5, %sw.bb2, %sw.bb, %if.then.sw.epilog_crit_edge
  %clock_limit.0 = phi i32 [ %17, %sw.bb14 ], [ %15, %sw.bb11 ], [ %13, %sw.bb8 ], [ %11, %sw.bb5 ], [ %9, %sw.bb2 ], [ %7, %sw.bb ], [ 0, %if.then.sw.epilog_crit_edge ]
  %tobool.not = icmp eq ptr %min, null
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then17

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then17:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %div = udiv i32 %clock_limit.0, 100
  %18 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div, ptr %min, align 4
  br label %if.end

if.end:                                           ; preds = %if.then17, %sw.epilog.if.end_crit_edge
  %tobool18.not = icmp eq ptr %max, null
  br i1 %tobool18.not, label %if.end.cleanup_crit_edge, label %if.then19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %div20 = udiv i32 %clock_limit.0, 100
  %19 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div20, ptr %max, align 4
  br label %cleanup

if.end22:                                         ; preds = %switch.lookup.if.end22_crit_edge, %switch.hole_check.if.end22_crit_edge, %entry.if.end22_crit_edge
  %tobool23.not = icmp eq ptr %max, null
  br i1 %tobool23.not, label %if.end22.if.end42_crit_edge, label %if.then24

if.end22.if.end42_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then24:                                        ; preds = %if.end22
  %20 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %clk_type, label %if.then24.cleanup_crit_edge [
    i32 0, label %if.then24.sw.bb25_crit_edge
    i32 13, label %if.then24.sw.bb25_crit_edge148
    i32 14, label %if.then24.sw.epilog32_crit_edge
    i32 7, label %if.then24.sw.epilog32_crit_edge149
    i32 12, label %if.then24.sw.epilog32_crit_edge150
    i32 6, label %sw.epilog32.thread
    i32 1, label %if.then24.sw.bb28_crit_edge
    i32 2, label %if.then24.sw.bb28_crit_edge151
  ]

if.then24.sw.bb28_crit_edge151:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28

if.then24.sw.bb28_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28

if.then24.sw.epilog32_crit_edge150:               ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog32

if.then24.sw.epilog32_crit_edge149:               ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog32

if.then24.sw.epilog32_crit_edge:                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog32

if.then24.sw.bb25_crit_edge148:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb25

if.then24.sw.bb25_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb25

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb25:                                          ; preds = %if.then24.sw.bb25_crit_edge, %if.then24.sw.bb25_crit_edge148
  %MaxGfxClk = getelementptr inbounds %struct.DpmClocks_t, ptr %1, i32 0, i32 15
  %21 = ptrtoint ptr %MaxGfxClk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %MaxGfxClk, align 4
  %23 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %max, align 4
  br label %sw.epilog32

sw.epilog32.thread:                               ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %NumSocClkLevelsEnabled = getelementptr inbounds %struct.DpmClocks_t, ptr %1, i32 0, i32 10
  %24 = ptrtoint ptr %NumSocClkLevelsEnabled to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %NumSocClkLevelsEnabled, align 2
  %conv = zext i8 %25 to i32
  %sub = add nsw i32 %conv, -1
  br label %if.then36

sw.bb28:                                          ; preds = %if.then24.sw.bb28_crit_edge, %if.then24.sw.bb28_crit_edge151
  %VcnClkLevelsEnabled = getelementptr inbounds %struct.DpmClocks_t, ptr %1, i32 0, i32 11
  %26 = ptrtoint ptr %VcnClkLevelsEnabled to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %VcnClkLevelsEnabled, align 1
  %conv29 = zext i8 %27 to i32
  %sub30 = add nsw i32 %conv29, -1
  br label %sw.epilog32

sw.epilog32:                                      ; preds = %sw.bb28, %sw.bb25, %if.then24.sw.epilog32_crit_edge, %if.then24.sw.epilog32_crit_edge149, %if.then24.sw.epilog32_crit_edge150
  %max_dpm_level.0 = phi i32 [ %sub30, %sw.bb28 ], [ -1, %sw.bb25 ], [ 0, %if.then24.sw.epilog32_crit_edge ], [ 0, %if.then24.sw.epilog32_crit_edge149 ], [ 0, %if.then24.sw.epilog32_crit_edge150 ]
  %28 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %clk_type, label %sw.epilog32.if.then36_crit_edge [
    i32 0, label %sw.epilog32.if.end42_crit_edge
    i32 13, label %sw.epilog32.if.end42_crit_edge152
  ]

sw.epilog32.if.end42_crit_edge152:                ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

sw.epilog32.if.end42_crit_edge:                   ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

sw.epilog32.if.then36_crit_edge:                  ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36

if.then36:                                        ; preds = %sw.epilog32.if.then36_crit_edge, %sw.epilog32.thread
  %max_dpm_level.0143 = phi i32 [ %sub, %sw.epilog32.thread ], [ %max_dpm_level.0, %sw.epilog32.if.then36_crit_edge ]
  %29 = ptrtoint ptr %clocks_table to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clocks_table, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.then36.cleanup_crit_edge, label %if.end.i

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then36
  %31 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %clk_type, label %if.end.i.cleanup_crit_edge [
    i32 6, label %sw.bb.i
    i32 1, label %sw.bb5.i
    i32 2, label %sw.bb12.i
    i32 7, label %if.end.i.sw.bb20.i_crit_edge
    i32 14, label %if.end.i.sw.bb20.i_crit_edge153
    i32 12, label %sw.bb27.i
  ]

if.end.i.sw.bb20.i_crit_edge153:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb20.i

if.end.i.sw.bb20.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb20.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.i
  %NumSocClkLevelsEnabled.i = getelementptr inbounds %struct.DpmClocks_t, ptr %30, i32 0, i32 10
  %32 = ptrtoint ptr %NumSocClkLevelsEnabled.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %NumSocClkLevelsEnabled.i, align 2
  %conv.i = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_dpm_level.0143, i32 %conv.i)
  %cmp1.not.i = icmp ult i32 %max_dpm_level.0143, %conv.i
  br i1 %cmp1.not.i, label %if.end4.i, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.DpmClocks_t, ptr %30, i32 0, i32 3, i32 %max_dpm_level.0143
  br label %yellow_carp_get_dpm_freq_by_index.exit

sw.bb5.i:                                         ; preds = %if.end.i
  %VcnClkLevelsEnabled.i = getelementptr inbounds %struct.DpmClocks_t, ptr %30, i32 0, i32 11
  %34 = ptrtoint ptr %VcnClkLevelsEnabled.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %VcnClkLevelsEnabled.i, align 1
  %conv6.i = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_dpm_level.0143, i32 %conv6.i)
  %cmp7.not.i = icmp ult i32 %max_dpm_level.0143, %conv6.i
  br i1 %cmp7.not.i, label %if.end10.i, label %sw.bb5.i.cleanup_crit_edge

sw.bb5.i.cleanup_crit_edge:                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10.i:                                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx11.i = getelementptr %struct.DpmClocks_t, ptr %30, i32 0, i32 4, i32 %max_dpm_level.0143
  br label %yellow_carp_get_dpm_freq_by_index.exit

sw.bb12.i:                                        ; preds = %if.end.i
  %VcnClkLevelsEnabled13.i = getelementptr inbounds %struct.DpmClocks_t, ptr %30, i32 0, i32 11
  %36 = ptrtoint ptr %VcnClkLevelsEnabled13.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %VcnClkLevelsEnabled13.i, align 1
  %conv14.i = zext i8 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_dpm_level.0143, i32 %conv14.i)
  %cmp15.not.i = icmp ult i32 %max_dpm_level.0143, %conv14.i
  br i1 %cmp15.not.i, label %if.end18.i, label %sw.bb12.i.cleanup_crit_edge

sw.bb12.i.cleanup_crit_edge:                      ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18.i:                                       ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx19.i = getelementptr %struct.DpmClocks_t, ptr %30, i32 0, i32 5, i32 %max_dpm_level.0143
  br label %yellow_carp_get_dpm_freq_by_index.exit

sw.bb20.i:                                        ; preds = %if.end.i.sw.bb20.i_crit_edge, %if.end.i.sw.bb20.i_crit_edge153
  %NumDfPstatesEnabled.i = getelementptr inbounds %struct.DpmClocks_t, ptr %30, i32 0, i32 12
  %38 = ptrtoint ptr %NumDfPstatesEnabled.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %NumDfPstatesEnabled.i, align 4
  %conv21.i = zext i8 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_dpm_level.0143, i32 %conv21.i)
  %cmp22.not.i = icmp ult i32 %max_dpm_level.0143, %conv21.i
  br i1 %cmp22.not.i, label %if.end25.i, label %sw.bb20.i.cleanup_crit_edge

sw.bb20.i.cleanup_crit_edge:                      ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25.i:                                       ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #10
  %MemClk.i = getelementptr %struct.DpmClocks_t, ptr %30, i32 0, i32 7, i32 %max_dpm_level.0143, i32 1
  br label %yellow_carp_get_dpm_freq_by_index.exit

sw.bb27.i:                                        ; preds = %if.end.i
  %NumDfPstatesEnabled28.i = getelementptr inbounds %struct.DpmClocks_t, ptr %30, i32 0, i32 12
  %40 = ptrtoint ptr %NumDfPstatesEnabled28.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %NumDfPstatesEnabled28.i, align 4
  %conv29.i = zext i8 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_dpm_level.0143, i32 %conv29.i)
  %cmp30.not.i = icmp ult i32 %max_dpm_level.0143, %conv29.i
  br i1 %cmp30.not.i, label %if.end33.i, label %sw.bb27.i.cleanup_crit_edge

sw.bb27.i.cleanup_crit_edge:                      ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33.i:                                       ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx35.i = getelementptr %struct.DpmClocks_t, ptr %30, i32 0, i32 7, i32 %max_dpm_level.0143
  br label %yellow_carp_get_dpm_freq_by_index.exit

yellow_carp_get_dpm_freq_by_index.exit:           ; preds = %if.end33.i, %if.end25.i, %if.end18.i, %if.end10.i, %if.end4.i
  %arrayidx.sink.i = phi ptr [ %arrayidx.i, %if.end4.i ], [ %arrayidx11.i, %if.end10.i ], [ %arrayidx19.i, %if.end18.i ], [ %MemClk.i, %if.end25.i ], [ %arrayidx35.i, %if.end33.i ]
  %42 = ptrtoint ptr %arrayidx.sink.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.sink.i, align 4
  %44 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %max, align 4
  br label %if.end42

if.end42:                                         ; preds = %yellow_carp_get_dpm_freq_by_index.exit, %sw.epilog32.if.end42_crit_edge, %sw.epilog32.if.end42_crit_edge152, %if.end22.if.end42_crit_edge
  %tobool43.not = icmp eq ptr %min, null
  br i1 %tobool43.not, label %if.end42.cleanup_crit_edge, label %if.then44

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then44:                                        ; preds = %if.end42
  %45 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %clk_type, label %if.then44.cleanup_crit_edge [
    i32 0, label %if.then44.sw.bb45_crit_edge
    i32 13, label %if.then44.sw.bb45_crit_edge154
    i32 14, label %if.then44.sw.bb46_crit_edge
    i32 7, label %if.then44.sw.bb46_crit_edge155
    i32 12, label %if.then44.sw.bb46_crit_edge156
    i32 6, label %if.then44.sw.epilog52_crit_edge
    i32 1, label %if.then44.sw.epilog52_crit_edge157
    i32 2, label %if.then44.sw.epilog52_crit_edge158
  ]

if.then44.sw.epilog52_crit_edge158:               ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog52

if.then44.sw.epilog52_crit_edge157:               ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog52

if.then44.sw.epilog52_crit_edge:                  ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog52

if.then44.sw.bb46_crit_edge156:                   ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46

if.then44.sw.bb46_crit_edge155:                   ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46

if.then44.sw.bb46_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46

if.then44.sw.bb45_crit_edge154:                   ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb45

if.then44.sw.bb45_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb45

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb45:                                          ; preds = %if.then44.sw.bb45_crit_edge, %if.then44.sw.bb45_crit_edge154
  %MinGfxClk = getelementptr inbounds %struct.DpmClocks_t, ptr %1, i32 0, i32 14
  %46 = ptrtoint ptr %MinGfxClk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %MinGfxClk, align 4
  %48 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %min, align 4
  br label %sw.epilog52

sw.bb46:                                          ; preds = %if.then44.sw.bb46_crit_edge, %if.then44.sw.bb46_crit_edge155, %if.then44.sw.bb46_crit_edge156
  %NumDfPstatesEnabled = getelementptr inbounds %struct.DpmClocks_t, ptr %1, i32 0, i32 12
  %49 = ptrtoint ptr %NumDfPstatesEnabled to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %NumDfPstatesEnabled, align 4
  %conv47 = zext i8 %50 to i32
  %sub48 = add nsw i32 %conv47, -1
  br label %sw.epilog52

sw.epilog52:                                      ; preds = %sw.bb46, %sw.bb45, %if.then44.sw.epilog52_crit_edge, %if.then44.sw.epilog52_crit_edge157, %if.then44.sw.epilog52_crit_edge158
  %min_dpm_level.0 = phi i32 [ %sub48, %sw.bb46 ], [ -1, %sw.bb45 ], [ 0, %if.then44.sw.epilog52_crit_edge ], [ 0, %if.then44.sw.epilog52_crit_edge157 ], [ 0, %if.then44.sw.epilog52_crit_edge158 ]
  %51 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %clk_type, label %if.then58 [
    i32 0, label %sw.epilog52.cleanup_crit_edge
    i32 13, label %sw.epilog52.cleanup_crit_edge159
  ]

sw.epilog52.cleanup_crit_edge159:                 ; preds = %sw.epilog52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog52.cleanup_crit_edge:                    ; preds = %sw.epilog52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then58:                                        ; preds = %sw.epilog52
  %52 = ptrtoint ptr %clocks_table to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %clocks_table, align 4
  %tobool.not.i103 = icmp eq ptr %53, null
  br i1 %tobool.not.i103, label %if.then58.cleanup_crit_edge, label %if.end.i106

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i106:                                      ; preds = %if.then58
  %54 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %clk_type, label %if.end.i106.cleanup_crit_edge [
    i32 6, label %sw.bb.i110
    i32 1, label %sw.bb5.i116
    i32 2, label %sw.bb12.i122
    i32 7, label %if.end.i106.sw.bb20.i128_crit_edge
    i32 14, label %if.end.i106.sw.bb20.i128_crit_edge160
    i32 12, label %sw.bb27.i134
  ]

if.end.i106.sw.bb20.i128_crit_edge160:            ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb20.i128

if.end.i106.sw.bb20.i128_crit_edge:               ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb20.i128

if.end.i106.cleanup_crit_edge:                    ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i110:                                       ; preds = %if.end.i106
  %NumSocClkLevelsEnabled.i107 = getelementptr inbounds %struct.DpmClocks_t, ptr %53, i32 0, i32 10
  %55 = ptrtoint ptr %NumSocClkLevelsEnabled.i107 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %NumSocClkLevelsEnabled.i107, align 2
  %conv.i108 = zext i8 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %min_dpm_level.0, i32 %conv.i108)
  %cmp1.not.i109 = icmp ult i32 %min_dpm_level.0, %conv.i108
  br i1 %cmp1.not.i109, label %if.end4.i112, label %sw.bb.i110.cleanup_crit_edge

sw.bb.i110.cleanup_crit_edge:                     ; preds = %sw.bb.i110
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i112:                                     ; preds = %sw.bb.i110
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i111 = getelementptr %struct.DpmClocks_t, ptr %53, i32 0, i32 3, i32 %min_dpm_level.0
  br label %cleanup.sink.split.i138

sw.bb5.i116:                                      ; preds = %if.end.i106
  %VcnClkLevelsEnabled.i113 = getelementptr inbounds %struct.DpmClocks_t, ptr %53, i32 0, i32 11
  %57 = ptrtoint ptr %VcnClkLevelsEnabled.i113 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %VcnClkLevelsEnabled.i113, align 1
  %conv6.i114 = zext i8 %58 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %min_dpm_level.0, i32 %conv6.i114)
  %cmp7.not.i115 = icmp ult i32 %min_dpm_level.0, %conv6.i114
  br i1 %cmp7.not.i115, label %if.end10.i118, label %sw.bb5.i116.cleanup_crit_edge

sw.bb5.i116.cleanup_crit_edge:                    ; preds = %sw.bb5.i116
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10.i118:                                    ; preds = %sw.bb5.i116
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx11.i117 = getelementptr %struct.DpmClocks_t, ptr %53, i32 0, i32 4, i32 %min_dpm_level.0
  br label %cleanup.sink.split.i138

sw.bb12.i122:                                     ; preds = %if.end.i106
  %VcnClkLevelsEnabled13.i119 = getelementptr inbounds %struct.DpmClocks_t, ptr %53, i32 0, i32 11
  %59 = ptrtoint ptr %VcnClkLevelsEnabled13.i119 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %VcnClkLevelsEnabled13.i119, align 1
  %conv14.i120 = zext i8 %60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %min_dpm_level.0, i32 %conv14.i120)
  %cmp15.not.i121 = icmp ult i32 %min_dpm_level.0, %conv14.i120
  br i1 %cmp15.not.i121, label %if.end18.i124, label %sw.bb12.i122.cleanup_crit_edge

sw.bb12.i122.cleanup_crit_edge:                   ; preds = %sw.bb12.i122
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18.i124:                                    ; preds = %sw.bb12.i122
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx19.i123 = getelementptr %struct.DpmClocks_t, ptr %53, i32 0, i32 5, i32 %min_dpm_level.0
  br label %cleanup.sink.split.i138

sw.bb20.i128:                                     ; preds = %if.end.i106.sw.bb20.i128_crit_edge, %if.end.i106.sw.bb20.i128_crit_edge160
  %NumDfPstatesEnabled.i125 = getelementptr inbounds %struct.DpmClocks_t, ptr %53, i32 0, i32 12
  %61 = ptrtoint ptr %NumDfPstatesEnabled.i125 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %NumDfPstatesEnabled.i125, align 4
  %conv21.i126 = zext i8 %62 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %min_dpm_level.0, i32 %conv21.i126)
  %cmp22.not.i127 = icmp ult i32 %min_dpm_level.0, %conv21.i126
  br i1 %cmp22.not.i127, label %if.end25.i130, label %sw.bb20.i128.cleanup_crit_edge

sw.bb20.i128.cleanup_crit_edge:                   ; preds = %sw.bb20.i128
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25.i130:                                    ; preds = %sw.bb20.i128
  call void @__sanitizer_cov_trace_pc() #10
  %MemClk.i129 = getelementptr %struct.DpmClocks_t, ptr %53, i32 0, i32 7, i32 %min_dpm_level.0, i32 1
  br label %cleanup.sink.split.i138

sw.bb27.i134:                                     ; preds = %if.end.i106
  %NumDfPstatesEnabled28.i131 = getelementptr inbounds %struct.DpmClocks_t, ptr %53, i32 0, i32 12
  %63 = ptrtoint ptr %NumDfPstatesEnabled28.i131 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %NumDfPstatesEnabled28.i131, align 4
  %conv29.i132 = zext i8 %64 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %min_dpm_level.0, i32 %conv29.i132)
  %cmp30.not.i133 = icmp ult i32 %min_dpm_level.0, %conv29.i132
  br i1 %cmp30.not.i133, label %if.end33.i136, label %sw.bb27.i134.cleanup_crit_edge

sw.bb27.i134.cleanup_crit_edge:                   ; preds = %sw.bb27.i134
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33.i136:                                    ; preds = %sw.bb27.i134
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx35.i135 = getelementptr %struct.DpmClocks_t, ptr %53, i32 0, i32 7, i32 %min_dpm_level.0
  br label %cleanup.sink.split.i138

cleanup.sink.split.i138:                          ; preds = %if.end33.i136, %if.end25.i130, %if.end18.i124, %if.end10.i118, %if.end4.i112
  %arrayidx.sink.i137 = phi ptr [ %arrayidx.i111, %if.end4.i112 ], [ %arrayidx11.i117, %if.end10.i118 ], [ %arrayidx19.i123, %if.end18.i124 ], [ %MemClk.i129, %if.end25.i130 ], [ %arrayidx35.i135, %if.end33.i136 ]
  %65 = ptrtoint ptr %arrayidx.sink.i137 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.sink.i137, align 4
  %67 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %min, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i138, %sw.bb27.i134.cleanup_crit_edge, %sw.bb20.i128.cleanup_crit_edge, %sw.bb12.i122.cleanup_crit_edge, %sw.bb5.i116.cleanup_crit_edge, %sw.bb.i110.cleanup_crit_edge, %if.end.i106.cleanup_crit_edge, %if.then58.cleanup_crit_edge, %sw.epilog52.cleanup_crit_edge, %sw.epilog52.cleanup_crit_edge159, %if.then44.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %sw.bb27.i.cleanup_crit_edge, %sw.bb20.i.cleanup_crit_edge, %sw.bb12.i.cleanup_crit_edge, %sw.bb5.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then36.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %if.then19, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then19 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %sw.epilog52.cleanup_crit_edge ], [ 0, %if.end42.cleanup_crit_edge ], [ -22, %if.then24.cleanup_crit_edge ], [ -22, %if.then44.cleanup_crit_edge ], [ 0, %sw.epilog52.cleanup_crit_edge159 ], [ -22, %if.then58.cleanup_crit_edge ], [ -22, %sw.bb.i110.cleanup_crit_edge ], [ -22, %sw.bb5.i116.cleanup_crit_edge ], [ -22, %sw.bb12.i122.cleanup_crit_edge ], [ -22, %sw.bb20.i128.cleanup_crit_edge ], [ -22, %sw.bb27.i134.cleanup_crit_edge ], [ -22, %if.end.i106.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i138 ], [ -22, %if.then36.cleanup_crit_edge ], [ -22, %sw.bb.i.cleanup_crit_edge ], [ -22, %sw.bb5.i.cleanup_crit_edge ], [ -22, %sw.bb12.i.cleanup_crit_edge ], [ -22, %sw.bb20.i.cleanup_crit_edge ], [ -22, %sw.bb27.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_pp_feature_mask(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yellow_carp_get_gpu_metrics(ptr noundef %smu, ptr nocapture noundef writeonly %table) #1 align 64 {
entry:
  %metrics = alloca %struct.SmuMetrics_t, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gpu_metrics_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 20
  %0 = ptrtoint ptr %gpu_metrics_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpu_metrics_table, align 4
  call void @llvm.lifetime.start.p0(i64 116, ptr nonnull %metrics) #8
  %2 = call ptr @memset(ptr %metrics, i32 255, i32 116)
  %call = call i32 @smu_cmn_get_metrics_table(ptr noundef %smu, ptr noundef nonnull %metrics, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @smu_cmn_init_soft_gpu_metrics(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 1) #8
  %GfxTemperature = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 16
  %3 = ptrtoint ptr %GfxTemperature to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %GfxTemperature, align 4
  %temperature_gfx = getelementptr inbounds %struct.gpu_metrics_v2_1, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %temperature_gfx to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %temperature_gfx, align 4
  %SocTemperature = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 17
  %6 = ptrtoint ptr %SocTemperature to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %SocTemperature, align 2
  %temperature_soc = getelementptr inbounds %struct.gpu_metrics_v2_1, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %temperature_soc to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %temperature_soc, align 2
  %temperature_core = getelementptr inbounds %struct.gpu_metrics_v2_1, ptr %1, i32 0, i32 3
  %CoreTemperature = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 13
  %9 = call ptr @memcpy(ptr %temperature_core, ptr %CoreTemperature, i32 16)
  %L3Temperature = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 15
  %10 = ptrtoint ptr %L3Temperature to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %L3Temperature, align 2
  %temperature_l3 = getelementptr inbounds %struct.gpu_metrics_v2_1, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %temperature_l3 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %temperature_l3, align 8
  %GfxActivity = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 6
  %13 = ptrtoint ptr %GfxActivity to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %GfxActivity, align 4
  %average_gfx_activity = getelementptr inbounds %struct.gpu_metrics_v2_1, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %average_gfx_activity to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %average_gfx_activity, align 4
  %UvdActivity = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 7
  %16 = ptrtoint ptr %UvdActivity to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %UvdActivity, align 2
  %average_mm_activity = getelementptr inbounds %struct.gpu_metrics_v2_1, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %average_mm_activity to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %average_mm_activity, align 2
  %CurrentSocketPower = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 19
  %19 = ptrtoint ptr %CurrentSocketPower to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %CurrentSocketPower, align 2
  %average_socket_power = getelementptr inbounds %struct.gpu_metrics_v2_1, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %average_socket_power to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %average_socket_power, align 8
  %Power = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 10
  %22 = ptrtoint ptr %Power to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %Power, align 4
  %average_gfx_power = getelementptr inbounds %struct.gpu_metrics_v2_1, ptr %1, i32 0, i32 11
  %24 = ptrtoint ptr %average_gfx_power to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %average_gfx_power, align 2
  %arrayidx6 = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx6, align 2
  %average_soc_power = getelementptr inbounds %struct.gpu_metrics_v2_1, ptr %1, i32 0, i32 10
  %27 = ptrtoint ptr %average_soc_power to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %average_soc_power, align 4
  %average_core_power = getelementptr inbounds %struct.gpu_metrics_v2_1, ptr %1, i32 0, i32 12
  %CorePower = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 12
  %28 = call ptr @memcpy(ptr %average_core_power, ptr %CorePower, i32 16)
  %29 = ptrtoint ptr %metrics to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %metrics, align 4
  %average_gfxclk_frequency = getelementptr inbounds %struct.gpu_metrics_v2_1, ptr %1, i32 0, i32 13
  %31 = ptrtoint ptr %average_gfxclk_frequency to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %average_gfxclk_frequency, align 8
  %SocclkFrequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 1
  %32 = ptrtoint ptr %SocclkFrequency to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %SocclkFrequency, align 2
  %average_socclk_frequency = getelementptr inbounds %struct.gpu_metrics_v2_1, ptr %1, i32 0, i32 14
  %34 = ptrtoint ptr %average_socclk_frequency to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %average_socclk_frequency, align 2
  %MemclkFrequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 4
  %35 = ptrtoint ptr %MemclkFrequency to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %MemclkFrequency, align 4
  %average_uclk_frequency = getelementptr inbounds %struct.gpu_metrics_v2_1, ptr %1, i32 0, i32 15
  %37 = ptrtoint ptr %average_uclk_frequency to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %average_uclk_frequency, align 4
  %average_fclk_frequency = getelementptr inbounds %struct.gpu_metrics_v2_1, ptr %1, i32 0, i32 16
  %38 = ptrtoint ptr %average_fclk_frequency to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %36, ptr %average_fclk_frequency, align 2
  %VclkFrequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 2
  %39 = ptrtoint ptr %VclkFrequency to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %VclkFrequency, align 4
  %average_vclk_frequency = getelementptr inbounds %struct.gpu_metrics_v2_1, ptr %1, i32 0, i32 17
  %41 = ptrtoint ptr %average_vclk_frequency to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %average_vclk_frequency, align 8
  %DclkFrequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 3
  %42 = ptrtoint ptr %DclkFrequency to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %DclkFrequency, align 2
  %average_dclk_frequency = getelementptr inbounds %struct.gpu_metrics_v2_1, ptr %1, i32 0, i32 18
  %44 = ptrtoint ptr %average_dclk_frequency to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %average_dclk_frequency, align 2
  %current_coreclk = getelementptr inbounds %struct.gpu_metrics_v2_1, ptr %1, i32 0, i32 25
  %CoreFrequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 11
  %45 = call ptr @memcpy(ptr %current_coreclk, ptr %CoreFrequency, i32 16)
  %L3Frequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 14
  %46 = ptrtoint ptr %L3Frequency to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %L3Frequency, align 4
  %current_l3clk = getelementptr inbounds %struct.gpu_metrics_v2_1, ptr %1, i32 0, i32 26
  %48 = ptrtoint ptr %current_l3clk to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %current_l3clk, align 8
  %ThrottlerStatus = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 18
  %49 = ptrtoint ptr %ThrottlerStatus to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %ThrottlerStatus, align 4
  %conv = zext i16 %50 to i32
  %throttle_status = getelementptr inbounds %struct.gpu_metrics_v2_1, ptr %1, i32 0, i32 27
  %51 = ptrtoint ptr %throttle_status to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv, ptr %throttle_status, align 4
  %call.i.i = call i64 @ktime_get_with_offset(i32 noundef 1) #8
  %system_clock_counter = getelementptr inbounds %struct.gpu_metrics_v2_1, ptr %1, i32 0, i32 7
  %52 = ptrtoint ptr %system_clock_counter to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %call.i.i, ptr %system_clock_counter, align 8
  %53 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %1, ptr %table, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 120, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 116, ptr nonnull %metrics) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yellow_carp_post_smu_init(ptr noundef %smu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %call = tail call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef 165, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.43) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @yellow_carp_set_fine_grain_gfx_freq_parameters(ptr nocapture noundef %smu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clocks_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %0 = ptrtoint ptr %clocks_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clocks_table, align 4
  %MinGfxClk = getelementptr inbounds %struct.DpmClocks_t, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %MinGfxClk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %MinGfxClk, align 4
  %gfx_default_hard_min_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 54
  %4 = ptrtoint ptr %gfx_default_hard_min_freq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %gfx_default_hard_min_freq, align 4
  %MaxGfxClk = getelementptr inbounds %struct.DpmClocks_t, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %MaxGfxClk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %MaxGfxClk, align 4
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
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_update_table(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @yellow_carp_get_current_clk_freq(ptr noundef %smu, i32 noundef %clk_type, ptr noundef %value) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %clk_type, label %entry.cleanup_crit_edge [
    i32 6, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 14, label %sw.bb3
    i32 12, label %sw.bb4
    i32 0, label %entry.sw.bb5_crit_edge
    i32 13, label %entry.sw.bb5_crit_edge12
  ]

entry.sw.bb5_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 126, i32 noundef 0, ptr noundef %value) #8
  br label %cleanup

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge12
  %call6 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 125, i32 noundef 0, ptr noundef %value) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %member_type.0 = phi i32 [ 13, %sw.bb3 ], [ 15, %sw.bb2 ], [ 14, %sw.bb1 ], [ 11, %entry.sw.epilog_crit_edge ]
  %metrics_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %1 = ptrtoint ptr %metrics_table.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %metrics_table.i, align 8
  %metrics_lock.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i, i32 noundef 0) #8
  %call.i = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.epilog.yellow_carp_get_smu_metrics_data.exit_crit_edge

sw.epilog.yellow_carp_get_smu_metrics_data.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %yellow_carp_get_smu_metrics_data.exit

if.end.i:                                         ; preds = %sw.epilog
  %3 = zext i32 %member_type.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %member_type.0, label %if.end.i.sw.epilog.i_crit_edge [
    i32 13, label %sw.bb9.i
    i32 11, label %sw.bb3.i
    i32 14, label %sw.bb5.i
    i32 15, label %sw.bb7.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %SocclkFrequency.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %SocclkFrequency.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %SocclkFrequency.i, align 2
  %conv4.i = zext i16 %5 to i32
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %VclkFrequency.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %2, i32 0, i32 2
  %6 = ptrtoint ptr %VclkFrequency.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %VclkFrequency.i, align 4
  %conv6.i = zext i16 %7 to i32
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %DclkFrequency.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %2, i32 0, i32 3
  %8 = ptrtoint ptr %DclkFrequency.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %DclkFrequency.i, align 2
  %conv8.i = zext i16 %9 to i32
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %MemclkFrequency.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %2, i32 0, i32 4
  %10 = ptrtoint ptr %MemclkFrequency.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %MemclkFrequency.i, align 4
  %conv10.i = zext i16 %11 to i32
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb9.i, %sw.bb7.i, %sw.bb5.i, %sw.bb3.i, %if.end.i.sw.epilog.i_crit_edge
  %div57.sink.i = phi i32 [ %conv10.i, %sw.bb9.i ], [ %conv8.i, %sw.bb7.i ], [ %conv6.i, %sw.bb5.i ], [ %conv4.i, %sw.bb3.i ], [ -1, %if.end.i.sw.epilog.i_crit_edge ]
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div57.sink.i, ptr %value, align 4
  br label %yellow_carp_get_smu_metrics_data.exit

yellow_carp_get_smu_metrics_data.exit:            ; preds = %sw.epilog.i, %sw.epilog.yellow_carp_get_smu_metrics_data.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i) #8
  br label %cleanup

cleanup:                                          ; preds = %yellow_carp_get_smu_metrics_data.exit, %sw.bb5, %sw.bb4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %sw.bb5 ], [ %call, %sw.bb4 ], [ %call.i, %yellow_carp_get_smu_metrics_data.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_metrics_table_locked(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_feature_is_enabled(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_write_watermarks_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_metrics_table(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smu_cmn_init_soft_gpu_metrics(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @yellow_carp_ppt_funcs, !1, !"yellow_carp_ppt_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c", i32 1164, i32 35}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c", i32 976, i32 36}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c", i32 976, i32 45}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c", i32 977, i32 36}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c", i32 979, i32 36}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c", i32 983, i32 45}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c", i32 984, i32 36}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c", i32 1005, i32 37}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c", i32 1006, i32 27}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c", i32 1006, i32 33}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c", i32 1022, i32 36}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c", i32 1024, i32 36}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c", i32 1027, i32 36}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c", i32 605, i32 4}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @yellow_carp_od_edit_dpm_table._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @yellow_carp_od_edit_dpm_table._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c", i32 611, i32 5}
!36 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @yellow_carp_od_edit_dpm_table._entry.17, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @yellow_carp_od_edit_dpm_table._entry_ptr.20, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c", i32 619, i32 5}
!41 = !{ptr @yellow_carp_od_edit_dpm_table._entry.21, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @yellow_carp_od_edit_dpm_table._entry_ptr.23, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @yellow_carp_od_edit_dpm_table._entry.24, !44, !"_entry", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c", i32 631, i32 4}
!45 = !{ptr @yellow_carp_od_edit_dpm_table._entry_ptr.25, !44, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @yellow_carp_od_edit_dpm_table._entry.26, !47, !"_entry", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c", i32 640, i32 4}
!48 = !{ptr @yellow_carp_od_edit_dpm_table._entry_ptr.27, !47, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c", i32 644, i32 5}
!51 = !{ptr @yellow_carp_od_edit_dpm_table._entry.28, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @yellow_carp_od_edit_dpm_table._entry_ptr.30, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.32, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c", i32 654, i32 5}
!55 = !{ptr @yellow_carp_od_edit_dpm_table._entry.31, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @yellow_carp_od_edit_dpm_table._entry_ptr.33, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c", i32 661, i32 5}
!59 = !{ptr @yellow_carp_od_edit_dpm_table._entry.34, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @yellow_carp_od_edit_dpm_table._entry_ptr.36, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.37, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c", i32 523, i32 4}
!63 = !{ptr @.str.38, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @yellow_carp_set_watermarks_table._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @yellow_carp_set_watermarks_table._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.39, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c", i32 1115, i32 3}
!68 = !{ptr @.str.40, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @yellow_carp_set_performance_level._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @yellow_carp_set_performance_level._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.41, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c", i32 289, i32 3}
!73 = !{ptr @.str.42, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @yellow_carp_mode_reset._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @yellow_carp_mode_reset._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c", i32 279, i32 3}
!78 = !{ptr @.str.44, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @yellow_carp_post_smu_init._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @yellow_carp_post_smu_init._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @yellow_carp_message_map, !82, !"yellow_carp_message_map", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c", i32 57, i32 36}
!83 = !{ptr @yellow_carp_feature_mask_map, !84, !"yellow_carp_feature_mask_map", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c", i32 90, i32 32}
!85 = !{ptr @yellow_carp_table_map, !86, !"yellow_carp_table_map", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/yellow_carp_ppt.c", i32 131, i32 32}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{i32 0, i32 33}
!97 = !{!"auto-init"}
!98 = !{i8 0, i8 2}
