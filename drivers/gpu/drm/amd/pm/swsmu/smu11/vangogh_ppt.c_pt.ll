; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/swsmu/smu11/vangogh_ppt.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pptable_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cmn2asic_mapping = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.SmuMetrics_t = type { %struct.SmuMetricsTable_t, %struct.SmuMetricsTable_t, i32, i32 }
%struct.SmuMetricsTable_t = type { i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], [3 x i16], [3 x i16], [3 x i16], i16, [4 x i16], [4 x i16], [4 x i16], [1 x i16], [1 x i16], i16, i16, i16, i16 }
%struct.SmuMetrics_legacy_t = type { i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], [3 x i16], [3 x i16], i16, [8 x i16], [8 x i16], [8 x i16], [2 x i16], [2 x i16], i16, i16, i16, i16 }
%struct.DpmClocks_t = type { [7 x i32], [7 x i32], [7 x i32], [7 x i32], [7 x i32], [7 x i32], [5 x %struct.vcn_clk_t], [8 x i32], [4 x %struct.df_pstate_t], i32, i32, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.vcn_clk_t = type { i32, i32 }
%struct.df_pstate_t = type { i32, i32, i32 }
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
%struct.smu_11_5_power_context = type { i32, i8, i32, i32, i32, i32 }
%struct.dpm_clocks = type { [8 x %struct.dpm_clock], [8 x %struct.dpm_clock], [4 x %struct.dpm_clock], [4 x %struct.dpm_clock], [8 x %struct.dpm_clock], [8 x %struct.dpm_clock] }
%struct.dpm_clock = type { i32, i32 }
%struct.gpu_metrics_v2_2 = type { %struct.metrics_table_header, i16, i16, [8 x i16], [2 x i16], i16, i16, i64, i16, i16, i16, i16, [8 x i16], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [8 x i16], [2 x i16], i32, i16, [3 x i16], i64 }
%struct.metrics_table_header = type { i16, i8, i8 }

@vangogh_ppt_funcs = internal constant { %struct.pptable_funcs, [124 x i8] } { %struct.pptable_funcs { ptr null, ptr null, ptr null, ptr @vangogh_set_default_dpm_tables, ptr null, ptr null, ptr @vangogh_common_print_clk_levels, ptr @vangogh_force_clk_levels, ptr @vangogh_od_edit_dpm_table, ptr null, ptr null, ptr null, ptr @vangogh_get_power_profile_mode, ptr @vangogh_set_power_profile_mode, ptr @vangogh_dpm_set_vcn_enable, ptr @vangogh_dpm_set_jpeg_enable, ptr @vangogh_read_sensor, ptr null, ptr null, ptr null, ptr null, ptr @vangogh_is_dpm_running, ptr null, ptr null, ptr @vangogh_set_watermarks_table, ptr null, ptr null, ptr null, ptr @vangogh_set_performance_level, ptr null, ptr null, ptr @vangogh_get_power_limit, ptr @vangogh_get_ppt_limit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vangogh_get_dpm_clock_table, ptr null, ptr null, ptr null, ptr @vangogh_init_smc_tables, ptr @smu_v11_0_fini_smc_tables, ptr @smu_v11_0_init_power, ptr @smu_v11_0_fini_power, ptr @smu_v11_0_check_fw_status, ptr null, ptr null, ptr @smu_v11_0_get_vbios_bootup_values, ptr @smu_v11_0_check_fw_version, ptr null, ptr null, ptr null, ptr @smu_v11_0_set_driver_table_location, ptr null, ptr @smu_v11_0_notify_memory_pool_location, ptr @vangogh_system_features_control, ptr @smu_cmn_send_smc_msg_with_param, ptr @smu_cmn_send_smc_msg, ptr null, ptr null, ptr @smu_cmn_get_enabled_32_bits_mask, ptr @smu_cmn_feature_is_enabled, ptr null, ptr null, ptr @vangogh_set_power_limit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smu_v11_0_gfx_off_control, ptr null, ptr @smu_v11_0_register_irq_handler, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vangogh_mode2_reset, ptr null, ptr null, ptr null, ptr null, ptr @smu_cmn_get_pp_feature_mask, ptr null, ptr @vangogh_common_get_gpu_metrics, ptr null, ptr null, ptr null, ptr null, ptr @vangogh_post_smu_init, ptr @smu_v11_0_interrupt_work, ptr null, ptr null, ptr @vangogh_set_fine_grain_gfx_freq_parameters, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@vangogh_feature_mask_map = internal global { [95 x %struct.cmn2asic_mapping], [168 x i8] } { [95 x %struct.cmn2asic_mapping] [%struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 19 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 14 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 9 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 20 }, %struct.cmn2asic_mapping { i32 1, i32 21 }, %struct.cmn2asic_mapping { i32 1, i32 22 }, %struct.cmn2asic_mapping { i32 1, i32 3 }, %struct.cmn2asic_mapping { i32 1, i32 4 }, %struct.cmn2asic_mapping { i32 1, i32 5 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 13 }, %struct.cmn2asic_mapping { i32 1, i32 28 }, %struct.cmn2asic_mapping { i32 1, i32 30 }, %struct.cmn2asic_mapping { i32 1, i32 31 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 56 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 0 }, %struct.cmn2asic_mapping { i32 1, i32 1 }, %struct.cmn2asic_mapping { i32 1, i32 11 }, %struct.cmn2asic_mapping { i32 1, i32 16 }, %struct.cmn2asic_mapping { i32 1, i32 17 }, %struct.cmn2asic_mapping { i32 1, i32 18 }, %struct.cmn2asic_mapping { i32 1, i32 23 }, %struct.cmn2asic_mapping { i32 1, i32 26 }, %struct.cmn2asic_mapping { i32 1, i32 32 }, %struct.cmn2asic_mapping { i32 1, i32 34 }, %struct.cmn2asic_mapping { i32 1, i32 35 }, %struct.cmn2asic_mapping { i32 1, i32 36 }, %struct.cmn2asic_mapping { i32 1, i32 37 }, %struct.cmn2asic_mapping { i32 1, i32 38 }, %struct.cmn2asic_mapping { i32 1, i32 39 }, %struct.cmn2asic_mapping { i32 1, i32 40 }, %struct.cmn2asic_mapping { i32 1, i32 41 }, %struct.cmn2asic_mapping { i32 1, i32 42 }, %struct.cmn2asic_mapping { i32 1, i32 43 }, %struct.cmn2asic_mapping { i32 1, i32 44 }, %struct.cmn2asic_mapping { i32 1, i32 45 }, %struct.cmn2asic_mapping { i32 1, i32 46 }, %struct.cmn2asic_mapping { i32 1, i32 47 }, %struct.cmn2asic_mapping { i32 1, i32 48 }, %struct.cmn2asic_mapping { i32 1, i32 49 }, %struct.cmn2asic_mapping { i32 1, i32 50 }, %struct.cmn2asic_mapping { i32 1, i32 51 }, %struct.cmn2asic_mapping { i32 1, i32 52 }, %struct.cmn2asic_mapping { i32 1, i32 53 }, %struct.cmn2asic_mapping { i32 1, i32 54 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer], [168 x i8] zeroinitializer }, align 32
@vangogh_table_map = internal global { [15 x %struct.cmn2asic_mapping], [40 x i8] } { [15 x %struct.cmn2asic_mapping] [%struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 1 }, %struct.cmn2asic_mapping { i32 1, i32 2 }, %struct.cmn2asic_mapping { i32 1, i32 4 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 7 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer], [40 x i8] zeroinitializer }, align 32
@vangogh_workload_map = internal global { [7 x %struct.cmn2asic_mapping], [40 x i8] } { [7 x %struct.cmn2asic_mapping] [%struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 0 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 2 }, %struct.cmn2asic_mapping { i32 1, i32 3 }, %struct.cmn2asic_mapping { i32 1, i32 4 }, %struct.cmn2asic_mapping { i32 1, i32 5 }], [40 x i8] zeroinitializer }, align 32
@vangogh_common_print_clk_levels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 813, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: Failed to get smu if version!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"vangogh_common_print_clk_levels\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vangogh_common_print_clk_levels._entry_ptr = internal global ptr @vangogh_common_print_clk_levels._entry, section ".printk_index", align 4
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s:\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OD_SCLK\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"0: %10uMhz\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"1: %10uMhz\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CCLK_RANGE in Core%d:\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OD_RANGE\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SCLK: %7uMhz %10uMhz\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CCLK: %7uMhz %10uMhz\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%d: %uMhz %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"   %uMhz *\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"0: %uMhz %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"1: %uMhz %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"2: %uMhz %s\0A\00", [19 x i8] zeroinitializer }, align 32
@vangogh_od_edit_dpm_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 1786, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"amdgpu: pp_od_clk_voltage is not accessible if power_dpm_force_performance_level is not in manual mode!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vangogh_od_edit_dpm_table\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@vangogh_od_edit_dpm_table._entry_ptr = internal global ptr @vangogh_od_edit_dpm_table._entry, section ".printk_index", align 4
@vangogh_od_edit_dpm_table._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.21, ptr @.str.2, i32 1793, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"amdgpu: Input parameter number not correct (should be 4 for processor)\0A\00", [56 x i8] zeroinitializer }, align 32
@vangogh_od_edit_dpm_table._entry_ptr.25 = internal global ptr @vangogh_od_edit_dpm_table._entry.23, section ".printk_index", align 4
@vangogh_od_edit_dpm_table._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.21, ptr @.str.2, i32 1798, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"amdgpu: core index is overflow, should be less than %d\0A\00", [40 x i8] zeroinitializer }, align 32
@vangogh_od_edit_dpm_table._entry_ptr.28 = internal global ptr @vangogh_od_edit_dpm_table._entry.26, section ".printk_index", align 4
@vangogh_od_edit_dpm_table._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.21, ptr @.str.2, i32 1804, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"amdgpu: Fine grain setting minimum cclk (%ld) MHz is less than the minimum allowed (%d) MHz\0A\00", [35 x i8] zeroinitializer }, align 32
@vangogh_od_edit_dpm_table._entry_ptr.31 = internal global ptr @vangogh_od_edit_dpm_table._entry.29, section ".printk_index", align 4
@vangogh_od_edit_dpm_table._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.21, ptr @.str.2, i32 1811, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"amdgpu: Fine grain setting maximum cclk (%ld) MHz is greater than the maximum allowed (%d) MHz\0A\00", [32 x i8] zeroinitializer }, align 32
@vangogh_od_edit_dpm_table._entry_ptr.34 = internal global ptr @vangogh_od_edit_dpm_table._entry.32, section ".printk_index", align 4
@vangogh_od_edit_dpm_table._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.21, ptr @.str.2, i32 1821, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"amdgpu: Input parameter number not correct\0A\00", [52 x i8] zeroinitializer }, align 32
@vangogh_od_edit_dpm_table._entry_ptr.37 = internal global ptr @vangogh_od_edit_dpm_table._entry.35, section ".printk_index", align 4
@vangogh_od_edit_dpm_table._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.21, ptr @.str.2, i32 1829, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"amdgpu: Fine grain setting minimum sclk (%ld) MHz is less than the minimum allowed (%d) MHz\0A\00", [35 x i8] zeroinitializer }, align 32
@vangogh_od_edit_dpm_table._entry_ptr.40 = internal global ptr @vangogh_od_edit_dpm_table._entry.38, section ".printk_index", align 4
@vangogh_od_edit_dpm_table._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.21, ptr @.str.2, i32 1837, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"amdgpu: Fine grain setting maximum sclk (%ld) MHz is greater than the maximum allowed (%d) MHz\0A\00", [32 x i8] zeroinitializer }, align 32
@vangogh_od_edit_dpm_table._entry_ptr.43 = internal global ptr @vangogh_od_edit_dpm_table._entry.41, section ".printk_index", align 4
@vangogh_od_edit_dpm_table._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.21, ptr @.str.2, i32 1847, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@vangogh_od_edit_dpm_table._entry_ptr.45 = internal global ptr @vangogh_od_edit_dpm_table._entry.44, section ".printk_index", align 4
@vangogh_od_edit_dpm_table._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.21, ptr @.str.2, i32 1858, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@vangogh_od_edit_dpm_table._entry_ptr.47 = internal global ptr @vangogh_od_edit_dpm_table._entry.46, section ".printk_index", align 4
@vangogh_od_edit_dpm_table._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.21, ptr @.str.2, i32 1865, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"amdgpu: The setting minimum sclk (%d) MHz is greater than the setting maximum sclk (%d) MHz\0A\00", [35 x i8] zeroinitializer }, align 32
@vangogh_od_edit_dpm_table._entry_ptr.50 = internal global ptr @vangogh_od_edit_dpm_table._entry.48, section ".printk_index", align 4
@vangogh_od_edit_dpm_table._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.21, ptr @.str.2, i32 1872, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: Set hard min sclk failed!\00", [62 x i8] zeroinitializer }, align 32
@vangogh_od_edit_dpm_table._entry_ptr.53 = internal global ptr @vangogh_od_edit_dpm_table._entry.51, section ".printk_index", align 4
@vangogh_od_edit_dpm_table._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.21, ptr @.str.2, i32 1879, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: Set soft max sclk failed!\00", [62 x i8] zeroinitializer }, align 32
@vangogh_od_edit_dpm_table._entry_ptr.56 = internal global ptr @vangogh_od_edit_dpm_table._entry.54, section ".printk_index", align 4
@vangogh_od_edit_dpm_table._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.21, ptr @.str.2, i32 1884, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"amdgpu: CPUSoftMax/CPUSoftMin are not supported, please update SBIOS!\0A\00", [57 x i8] zeroinitializer }, align 32
@vangogh_od_edit_dpm_table._entry_ptr.59 = internal global ptr @vangogh_od_edit_dpm_table._entry.57, section ".printk_index", align 4
@vangogh_od_edit_dpm_table._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.21, ptr @.str.2, i32 1893, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: Set hard min cclk failed!\00", [62 x i8] zeroinitializer }, align 32
@vangogh_od_edit_dpm_table._entry_ptr.62 = internal global ptr @vangogh_od_edit_dpm_table._entry.60, section ".printk_index", align 4
@vangogh_od_edit_dpm_table._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.21, ptr @.str.2, i32 1902, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: Set soft max cclk failed!\00", [62 x i8] zeroinitializer }, align 32
@vangogh_od_edit_dpm_table._entry_ptr.65 = internal global ptr @vangogh_od_edit_dpm_table._entry.63, section ".printk_index", align 4
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%2d %14s%s\0A\00", [20 x i8] zeroinitializer }, align 32
@amdgpu_pp_profile_name = external dso_local local_unnamed_addr constant [7 x ptr], align 4
@.str.67 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@vangogh_set_power_profile_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 1073, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: Invalid power profile mode %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"vangogh_set_power_profile_mode\00", [33 x i8] zeroinitializer }, align 32
@vangogh_set_power_profile_mode._entry_ptr = internal global ptr @vangogh_set_power_profile_mode._entry, section ".printk_index", align 4
@vangogh_set_power_profile_mode.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.70, ptr @.str.69, ptr @.str.2, ptr @.str.71, i8 1, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"amdgpu: Unsupported power profile mode %d on VANGOGH\0A\00", [42 x i8] zeroinitializer }, align 32
@vangogh_set_power_profile_mode.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@vangogh_set_power_profile_mode._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.69, ptr @.str.2, i32 1096, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: Fail to set workload type %d\0A\00", [58 x i8] zeroinitializer }, align 32
@vangogh_set_power_profile_mode._entry_ptr.74 = internal global ptr @vangogh_set_power_profile_mode._entry.72, section ".printk_index", align 4
@vangogh_common_get_smu_metrics_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.75, ptr @.str.2, i32 428, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"vangogh_common_get_smu_metrics_data\00", [60 x i8] zeroinitializer }, align 32
@vangogh_common_get_smu_metrics_data._entry_ptr = internal global ptr @vangogh_common_get_smu_metrics_data._entry, section ".printk_index", align 4
@vangogh_set_watermarks_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 1627, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: Failed to update WMTABLE!\00", [62 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"vangogh_set_watermarks_table\00", [35 x i8] zeroinitializer }, align 32
@vangogh_set_watermarks_table._entry_ptr = internal global ptr @vangogh_set_watermarks_table._entry, section ".printk_index", align 4
@vangogh_get_power_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 2080, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: Get slow PPT limit failed!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vangogh_get_power_limit\00", [40 x i8] zeroinitializer }, align 32
@vangogh_get_power_limit._entry_ptr = internal global ptr @vangogh_get_power_limit._entry, section ".printk_index", align 4
@vangogh_get_power_limit._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.2, i32 2093, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: Get fast PPT limit failed!\0A\00", [60 x i8] zeroinitializer }, align 32
@vangogh_get_power_limit._entry_ptr.82 = internal global ptr @vangogh_get_power_limit._entry.80, section ".printk_index", align 4
@vangogh_tables_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.83, ptr @.str.2, i32 217, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vangogh_tables_init\00", [44 x i8] zeroinitializer }, align 32
@vangogh_tables_init._entry_ptr = internal global ptr @vangogh_tables_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vangogh_set_power_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 2143, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"amdgpu: Setting new power limit is not supported!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vangogh_set_power_limit\00", [40 x i8] zeroinitializer }, align 32
@vangogh_set_power_limit._entry_ptr = internal global ptr @vangogh_set_power_limit._entry, section ".printk_index", align 4
@vangogh_set_power_limit._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.2, i32 2163, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"amdgpu: New power limit (%d) is over the max allowed %d\0A\00", [39 x i8] zeroinitializer }, align 32
@vangogh_set_power_limit._entry_ptr.88 = internal global ptr @vangogh_set_power_limit._entry.86, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@vangogh_common_get_gpu_metrics._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.89, ptr @.str.2, i32 1766, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"vangogh_common_get_gpu_metrics\00", [33 x i8] zeroinitializer }, align 32
@vangogh_common_get_gpu_metrics._entry_ptr = internal global ptr @vangogh_common_get_gpu_metrics._entry, section ".printk_index", align 4
@vangogh_throttler_map = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\04\05\06\07! %\13\11\10\14", [21 x i8] zeroinitializer }, align 32
@vangogh_post_smu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 2010, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: Failed to Enable GfxOff!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vangogh_post_smu_init\00", [42 x i8] zeroinitializer }, align 32
@vangogh_post_smu_init._entry_ptr = internal global ptr @vangogh_post_smu_init._entry, section ".printk_index", align 4
@vangogh_post_smu_init._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.2, i32 2015, ptr @.str.94, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"amdgpu: If GFX DPM or power gate disabled, disable GFXOFF\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@vangogh_post_smu_init._entry_ptr.95 = internal global ptr @vangogh_post_smu_init._entry.92, section ".printk_index", align 4
@vangogh_post_smu_init._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.91, ptr @.str.2, i32 2033, ptr @.str.94, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"amdgpu: Number of always on WGPs greater than active WGPs: WGP power save not requested.\0A\00", [38 x i8] zeroinitializer }, align 32
@vangogh_post_smu_init._entry_ptr.98 = internal global ptr @vangogh_post_smu_init._entry.96, section ".printk_index", align 4
@vangogh_message_map = internal global { <{ [197 x %struct.cmn2asic_msg_mapping], [10 x %struct.cmn2asic_msg_mapping] }>, [620 x i8] } { <{ [197 x %struct.cmn2asic_msg_mapping], [10 x %struct.cmn2asic_msg_mapping] }> <{ [197 x %struct.cmn2asic_msg_mapping] [%struct.cmn2asic_msg_mapping { i32 1, i32 1, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 2, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 3, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 21, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 16, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 17, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 18, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 19, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 20, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 29, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 30, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 44, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 9, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 8, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 39, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 38, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 6, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 7, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 11, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 13, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 23, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 25, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 26, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 27, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 28, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 31, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 32, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 33, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 34, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 35, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 37, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 40, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 10, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 14, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 15, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 41, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 42, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 43, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 4, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 12, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 24, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 45, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 46, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 47, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 48, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 49, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 50, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 51, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 52, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 53, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 54, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 55, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 56, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 57, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 58, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 59, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 60, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 61, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 62, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 63, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 64, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 65, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 71, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 73, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 74, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 75, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 76, i32 0 }], [10 x %struct.cmn2asic_msg_mapping] zeroinitializer }>, [620 x i8] zeroinitializer }, align 32
@switch.table.vangogh_get_dpm_ultimate_freq = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 1, i32 62, i32 62, i32 31, i32 31, i32 31, i32 3, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 1, i32 31], [36 x i8] zeroinitializer }, align 32
@switch.table.vangogh_set_soft_freq_limited_range = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 1, i32 62, i32 62, i32 31, i32 31, i32 31, i32 3, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 1, i32 31], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 6, i64 12, i64 14, i64 17, i64 18, i64 21]
@__sancov_gen_cov_switch_values.100 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 6, i64 7, i64 12, i64 14]
@__sancov_gen_cov_switch_values.101 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 6, i64 12, i64 13, i64 14, i64 17, i64 18, i64 21]
@__sancov_gen_cov_switch_values.102 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 6, i64 12, i64 13]
@__sancov_gen_cov_switch_values.103 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 6, i64 7, i64 12, i64 14]
@__sancov_gen_cov_switch_values.104 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 6, i64 12]
@__sancov_gen_cov_switch_values.105 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.109 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 7, i64 9, i64 10, i64 11, i64 15]
@__sancov_gen_cov_switch_values.110 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.111 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.113 = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 2, i64 9, i64 11, i64 14, i64 15, i64 16, i64 18, i64 19, i64 20, i64 21, i64 26, i64 28, i64 29]
@__sancov_gen_cov_switch_values.114 = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 2, i64 9, i64 11, i64 14, i64 15, i64 16, i64 18, i64 19, i64 20, i64 21, i64 26, i64 28, i64 29]
@__sancov_gen_cov_switch_values.115 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 6, i64 7, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.116 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 6, i64 7, i64 12, i64 14]
@__sancov_gen_cov_switch_values.117 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 12, i64 14]
@__sancov_gen_cov_switch_values.118 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 6, i64 7, i64 12, i64 14]
@__sancov_gen_cov_switch_values.119 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 12, i64 14]
@__sancov_gen_cov_switch_values.120 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 6, i64 12, i64 13]
@___asan_gen_.121 = private unnamed_addr constant [18 x i8] c"vangogh_ppt_funcs\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 2183, i32 35 }
@___asan_gen_.124 = private unnamed_addr constant [25 x i8] c"vangogh_feature_mask_map\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 131, i32 32 }
@___asan_gen_.127 = private unnamed_addr constant [18 x i8] c"vangogh_table_map\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 178, i32 32 }
@___asan_gen_.130 = private unnamed_addr constant [21 x i8] c"vangogh_workload_map\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 185, i32 32 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 813, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 597, i32 37 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 597, i32 46 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 598, i32 37 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 600, i32 37 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 606, i32 37 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 615, i32 46 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 616, i32 37 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 618, i32 37 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 661, i32 37 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 662, i32 27 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 662, i32 33 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 668, i32 37 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 789, i32 36 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 791, i32 36 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 794, i32 36 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 1785, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 1793, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 1797, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 1803, i32 5 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 1810, i32 5 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 1821, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 1827, i32 5 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 1835, i32 5 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 1847, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 1858, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 1862, i32 5 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 1872, i32 5 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 1879, i32 5 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 1884, i32 5 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 1893, i32 5 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 1902, i32 5 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 1060, i32 36 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 1061, i32 73 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 1073, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 1086, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 1095, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 428, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 1627, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 2080, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 2093, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 217, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 2143, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 2161, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 1766, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant [22 x i8] c"vangogh_throttler_map\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 193, i32 22 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 2010, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 2015, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.400 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 2033, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant [20 x i8] c"vangogh_message_map\00", align 1
@___asan_gen_.404 = private constant [62 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 61, i32 36 }
@___asan_gen_.406 = private unnamed_addr constant [43 x i8] c"switch.table.vangogh_get_dpm_ultimate_freq\00", align 1
@___asan_gen_.407 = private unnamed_addr constant [49 x i8] c"switch.table.vangogh_set_soft_freq_limited_range\00", align 1
@llvm.compiler.used = appending global [127 x ptr] [ptr @vangogh_common_get_gpu_metrics._entry, ptr @vangogh_common_get_gpu_metrics._entry_ptr, ptr @vangogh_common_get_smu_metrics_data._entry, ptr @vangogh_common_get_smu_metrics_data._entry_ptr, ptr @vangogh_common_print_clk_levels._entry, ptr @vangogh_common_print_clk_levels._entry_ptr, ptr @vangogh_get_power_limit._entry, ptr @vangogh_get_power_limit._entry.80, ptr @vangogh_get_power_limit._entry_ptr, ptr @vangogh_get_power_limit._entry_ptr.82, ptr @vangogh_od_edit_dpm_table._entry, ptr @vangogh_od_edit_dpm_table._entry.23, ptr @vangogh_od_edit_dpm_table._entry.26, ptr @vangogh_od_edit_dpm_table._entry.29, ptr @vangogh_od_edit_dpm_table._entry.32, ptr @vangogh_od_edit_dpm_table._entry.35, ptr @vangogh_od_edit_dpm_table._entry.38, ptr @vangogh_od_edit_dpm_table._entry.41, ptr @vangogh_od_edit_dpm_table._entry.44, ptr @vangogh_od_edit_dpm_table._entry.46, ptr @vangogh_od_edit_dpm_table._entry.48, ptr @vangogh_od_edit_dpm_table._entry.51, ptr @vangogh_od_edit_dpm_table._entry.54, ptr @vangogh_od_edit_dpm_table._entry.57, ptr @vangogh_od_edit_dpm_table._entry.60, ptr @vangogh_od_edit_dpm_table._entry.63, ptr @vangogh_od_edit_dpm_table._entry_ptr, ptr @vangogh_od_edit_dpm_table._entry_ptr.25, ptr @vangogh_od_edit_dpm_table._entry_ptr.28, ptr @vangogh_od_edit_dpm_table._entry_ptr.31, ptr @vangogh_od_edit_dpm_table._entry_ptr.34, ptr @vangogh_od_edit_dpm_table._entry_ptr.37, ptr @vangogh_od_edit_dpm_table._entry_ptr.40, ptr @vangogh_od_edit_dpm_table._entry_ptr.43, ptr @vangogh_od_edit_dpm_table._entry_ptr.45, ptr @vangogh_od_edit_dpm_table._entry_ptr.47, ptr @vangogh_od_edit_dpm_table._entry_ptr.50, ptr @vangogh_od_edit_dpm_table._entry_ptr.53, ptr @vangogh_od_edit_dpm_table._entry_ptr.56, ptr @vangogh_od_edit_dpm_table._entry_ptr.59, ptr @vangogh_od_edit_dpm_table._entry_ptr.62, ptr @vangogh_od_edit_dpm_table._entry_ptr.65, ptr @vangogh_post_smu_init._entry, ptr @vangogh_post_smu_init._entry.92, ptr @vangogh_post_smu_init._entry.96, ptr @vangogh_post_smu_init._entry_ptr, ptr @vangogh_post_smu_init._entry_ptr.95, ptr @vangogh_post_smu_init._entry_ptr.98, ptr @vangogh_set_power_limit._entry, ptr @vangogh_set_power_limit._entry.86, ptr @vangogh_set_power_limit._entry_ptr, ptr @vangogh_set_power_limit._entry_ptr.88, ptr @vangogh_set_power_profile_mode._entry, ptr @vangogh_set_power_profile_mode._entry.72, ptr @vangogh_set_power_profile_mode._entry_ptr, ptr @vangogh_set_power_profile_mode._entry_ptr.74, ptr @vangogh_set_watermarks_table._entry, ptr @vangogh_set_watermarks_table._entry_ptr, ptr @vangogh_tables_init._entry, ptr @vangogh_tables_init._entry_ptr, ptr @vangogh_ppt_funcs, ptr @vangogh_feature_mask_map, ptr @vangogh_table_map, ptr @vangogh_workload_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @vangogh_throttler_map, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.97, ptr @vangogh_message_map, ptr @switch.table.vangogh_get_dpm_ultimate_freq, ptr @switch.table.vangogh_set_soft_freq_limited_range], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_ppt_funcs to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_feature_mask_map to i32), i32 760, i32 928, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_table_map to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_workload_map to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_common_print_clk_levels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_od_edit_dpm_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_od_edit_dpm_table._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_od_edit_dpm_table._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_od_edit_dpm_table._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_od_edit_dpm_table._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_od_edit_dpm_table._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_od_edit_dpm_table._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_od_edit_dpm_table._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_od_edit_dpm_table._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_od_edit_dpm_table._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_od_edit_dpm_table._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_od_edit_dpm_table._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_od_edit_dpm_table._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_od_edit_dpm_table._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_od_edit_dpm_table._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_od_edit_dpm_table._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_set_power_profile_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_set_power_profile_mode._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_common_get_smu_metrics_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_set_watermarks_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_get_power_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_get_power_limit._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_tables_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_set_power_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_set_power_limit._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_common_get_gpu_metrics._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_throttler_map to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_post_smu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_post_smu_init._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_post_smu_init._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vangogh_message_map to i32), i32 2484, i32 3104, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vangogh_get_dpm_ultimate_freq to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vangogh_set_soft_freq_limited_range to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @vangogh_set_ppt_funcs(ptr nocapture noundef writeonly %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 2
  %0 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @vangogh_ppt_funcs, ptr %ppt_funcs, align 8
  %message_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 3
  %1 = ptrtoint ptr %message_map to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @vangogh_message_map, ptr %message_map, align 4
  %feature_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 5
  %2 = ptrtoint ptr %feature_map to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @vangogh_feature_mask_map, ptr %feature_map, align 4
  %table_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 6
  %3 = ptrtoint ptr %table_map to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @vangogh_table_map, ptr %table_map, align 8
  %workload_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 8
  %4 = ptrtoint ptr %workload_map to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @vangogh_workload_map, ptr %workload_map, align 8
  %is_apu = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 43
  %5 = ptrtoint ptr %is_apu to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %is_apu, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vangogh_set_default_dpm_tables(ptr noundef %smu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %clocks_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %0 = ptrtoint ptr %clocks_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clocks_table, align 4
  %call = tail call i32 @smu_cmn_update_table(ptr noundef %smu, i32 noundef 3, i32 noundef 0, ptr noundef %1, i1 noundef zeroext false) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vangogh_common_print_clk_levels(ptr noundef %smu, i32 noundef %clk_type, ptr noundef %buf) #1 align 64 {
entry:
  %metrics.i15 = alloca %struct.SmuMetrics_t, align 4
  %cur_value.i16 = alloca i32, align 4
  %metrics.i = alloca %struct.SmuMetrics_legacy_t, align 2
  %cur_value.i = alloca i32, align 4
  %if_version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %if_version) #9
  %2 = ptrtoint ptr %if_version to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %if_version, align 4, !annotation !190
  %call = call i32 @smu_cmn_get_smc_version(ptr noundef %smu, ptr noundef nonnull %if_version, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %if_version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %if_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp = icmp ult i32 %6, 3
  %clocks_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %7 = ptrtoint ptr %clocks_table.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clocks_table.i, align 4
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %metrics.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_value.i) #9
  %9 = ptrtoint ptr %cur_value.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cur_value.i, align 4
  %10 = call ptr @memset(ptr %metrics.i, i32 0, i32 100)
  %call.i = call i32 @smu_cmn_get_metrics_table(ptr noundef %smu, ptr noundef nonnull %metrics.i, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then2.vangogh_print_legacy_clk_levels.exit_crit_edge

if.then2.vangogh_print_legacy_clk_levels.exit_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_legacy_clk_levels.exit

if.end.i:                                         ; preds = %if.then2
  %tobool.not.i.i = icmp eq ptr %buf, null
  %11 = ptrtoint ptr %buf to i32
  %and.i.i = and i32 %11, 4095
  %idx.neg.i.i = sub nsw i32 0, %and.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %idx.neg.i.i
  %buf.addr.0.i = select i1 %tobool.not.i.i, ptr null, ptr %add.ptr.i.i
  %size.0.i = select i1 %tobool.not.i.i, i32 0, i32 %and.i.i
  %12 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %clk_type, label %if.end.i.vangogh_print_legacy_clk_levels.exit_crit_edge [
    i32 18, label %sw.bb.i
    i32 17, label %sw.bb16.i
    i32 21, label %sw.bb39.i
    i32 6, label %sw.bb54.i
    i32 1, label %sw.bb56.i
    i32 2, label %sw.bb59.i
    i32 14, label %sw.bb63.i
    i32 12, label %sw.bb66.i
  ]

if.end.i.vangogh_print_legacy_clk_levels.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_legacy_clk_levels.exit

sw.bb.i:                                          ; preds = %if.end.i
  %dpm_level.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 4
  %13 = ptrtoint ptr %dpm_level.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dpm_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.i = icmp eq i32 %14, 2
  br i1 %cmp.i, label %if.then1.i, label %sw.bb.i.vangogh_print_legacy_clk_levels.exit_crit_edge

sw.bb.i.vangogh_print_legacy_clk_levels.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_legacy_clk_levels.exit

if.then1.i:                                       ; preds = %sw.bb.i
  %call2.i = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0.i, i32 noundef %size.0.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #9
  %add.i = add i32 %call2.i, %size.0.i
  %gfx_actual_hard_min_freq.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %15 = ptrtoint ptr %gfx_actual_hard_min_freq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gfx_actual_hard_min_freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp3.not.i = icmp eq i32 %16, 0
  br i1 %cmp3.not.i, label %cond.false.i, label %if.then1.i.cond.end.i_crit_edge

if.then1.i.cond.end.i_crit_edge:                  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  %gfx_default_hard_min_freq.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 54
  %17 = ptrtoint ptr %gfx_default_hard_min_freq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gfx_default_hard_min_freq.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then1.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %18, %cond.false.i ], [ %16, %if.then1.i.cond.end.i_crit_edge ]
  %call5.i = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0.i, i32 noundef %add.i, ptr noundef nonnull @.str.7, i32 noundef %cond.i) #9
  %add6.i = add i32 %call5.i, %add.i
  %gfx_actual_soft_max_freq.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %19 = ptrtoint ptr %gfx_actual_soft_max_freq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gfx_actual_soft_max_freq.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp7.not.i = icmp eq i32 %20, 0
  br i1 %cmp7.not.i, label %cond.false10.i, label %cond.end.i.cond.end11.i_crit_edge

cond.end.i.cond.end11.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end11.i

cond.false10.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %gfx_default_soft_max_freq.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 55
  %21 = ptrtoint ptr %gfx_default_soft_max_freq.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gfx_default_soft_max_freq.i, align 8
  br label %cond.end11.i

cond.end11.i:                                     ; preds = %cond.false10.i, %cond.end.i.cond.end11.i_crit_edge
  %cond12.i = phi i32 [ %22, %cond.false10.i ], [ %20, %cond.end.i.cond.end11.i_crit_edge ]
  %call13.i = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0.i, i32 noundef %add6.i, ptr noundef nonnull @.str.8, i32 noundef %cond12.i) #9
  %add14.i = add i32 %call13.i, %add6.i
  br label %vangogh_print_legacy_clk_levels.exit

sw.bb16.i:                                        ; preds = %if.end.i
  %dpm_level17.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 4
  %23 = ptrtoint ptr %dpm_level17.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dpm_level17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp18.i = icmp eq i32 %24, 2
  br i1 %cmp18.i, label %if.then19.i, label %sw.bb16.i.vangogh_print_legacy_clk_levels.exit_crit_edge

sw.bb16.i.vangogh_print_legacy_clk_levels.exit_crit_edge: ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_legacy_clk_levels.exit

if.then19.i:                                      ; preds = %sw.bb16.i
  %cpu_core_id_select.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 62
  %25 = ptrtoint ptr %cpu_core_id_select.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu_core_id_select.i, align 4
  %call20.i = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0.i, i32 noundef %size.0.i, ptr noundef nonnull @.str.9, i32 noundef %26) #9
  %add21.i = add i32 %call20.i, %size.0.i
  %cpu_actual_soft_min_freq.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 60
  %27 = ptrtoint ptr %cpu_actual_soft_min_freq.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu_actual_soft_min_freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp22.not.i = icmp eq i32 %28, 0
  br i1 %cmp22.not.i, label %cond.false25.i, label %if.then19.i.cond.end26.i_crit_edge

if.then19.i.cond.end26.i_crit_edge:               ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end26.i

cond.false25.i:                                   ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  %cpu_default_soft_min_freq.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 58
  %29 = ptrtoint ptr %cpu_default_soft_min_freq.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu_default_soft_min_freq.i, align 4
  br label %cond.end26.i

cond.end26.i:                                     ; preds = %cond.false25.i, %if.then19.i.cond.end26.i_crit_edge
  %cond27.i = phi i32 [ %30, %cond.false25.i ], [ %28, %if.then19.i.cond.end26.i_crit_edge ]
  %call28.i = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0.i, i32 noundef %add21.i, ptr noundef nonnull @.str.7, i32 noundef %cond27.i) #9
  %add29.i = add i32 %call28.i, %add21.i
  %cpu_actual_soft_max_freq.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 61
  %31 = ptrtoint ptr %cpu_actual_soft_max_freq.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu_actual_soft_max_freq.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp30.not.i = icmp eq i32 %32, 0
  br i1 %cmp30.not.i, label %cond.false33.i, label %cond.end26.i.cond.end34.i_crit_edge

cond.end26.i.cond.end34.i_crit_edge:              ; preds = %cond.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end34.i

cond.false33.i:                                   ; preds = %cond.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %cpu_default_soft_max_freq.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 59
  %33 = ptrtoint ptr %cpu_default_soft_max_freq.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu_default_soft_max_freq.i, align 8
  br label %cond.end34.i

cond.end34.i:                                     ; preds = %cond.false33.i, %cond.end26.i.cond.end34.i_crit_edge
  %cond35.i = phi i32 [ %34, %cond.false33.i ], [ %32, %cond.end26.i.cond.end34.i_crit_edge ]
  %call36.i = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0.i, i32 noundef %add29.i, ptr noundef nonnull @.str.8, i32 noundef %cond35.i) #9
  %add37.i = add i32 %call36.i, %add29.i
  br label %vangogh_print_legacy_clk_levels.exit

sw.bb39.i:                                        ; preds = %if.end.i
  %dpm_level40.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 4
  %35 = ptrtoint ptr %dpm_level40.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dpm_level40.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp41.i = icmp eq i32 %36, 2
  br i1 %cmp41.i, label %if.then42.i, label %sw.bb39.i.vangogh_print_legacy_clk_levels.exit_crit_edge

sw.bb39.i.vangogh_print_legacy_clk_levels.exit_crit_edge: ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_legacy_clk_levels.exit

if.then42.i:                                      ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #11
  %call43.i = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0.i, i32 noundef %size.0.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.10) #9
  %add44.i = add i32 %call43.i, %size.0.i
  %gfx_default_hard_min_freq45.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 54
  %37 = ptrtoint ptr %gfx_default_hard_min_freq45.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %gfx_default_hard_min_freq45.i, align 4
  %gfx_default_soft_max_freq46.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 55
  %39 = ptrtoint ptr %gfx_default_soft_max_freq46.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %gfx_default_soft_max_freq46.i, align 8
  %call47.i = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0.i, i32 noundef %add44.i, ptr noundef nonnull @.str.11, i32 noundef %38, i32 noundef %40) #9
  %add48.i = add i32 %call47.i, %add44.i
  %cpu_default_soft_min_freq49.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 58
  %41 = ptrtoint ptr %cpu_default_soft_min_freq49.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu_default_soft_min_freq49.i, align 4
  %cpu_default_soft_max_freq50.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 59
  %43 = ptrtoint ptr %cpu_default_soft_max_freq50.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu_default_soft_max_freq50.i, align 8
  %call51.i = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0.i, i32 noundef %add48.i, ptr noundef nonnull @.str.12, i32 noundef %42, i32 noundef %44) #9
  %add52.i = add i32 %call51.i, %add48.i
  br label %vangogh_print_legacy_clk_levels.exit

sw.bb54.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %NumSocClkLevelsEnabled.i = getelementptr inbounds %struct.DpmClocks_t, ptr %8, i32 0, i32 14
  %45 = ptrtoint ptr %NumSocClkLevelsEnabled.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %NumSocClkLevelsEnabled.i, align 1
  %SocclkFrequency.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %metrics.i, i32 0, i32 1
  %47 = ptrtoint ptr %SocclkFrequency.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %SocclkFrequency.i, align 2
  %conv55.i = zext i16 %48 to i32
  %49 = ptrtoint ptr %cur_value.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv55.i, ptr %cur_value.i, align 4
  br label %sw.epilog.thread186.i

sw.bb56.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %VcnClkLevelsEnabled.i = getelementptr inbounds %struct.DpmClocks_t, ptr %8, i32 0, i32 16
  %50 = ptrtoint ptr %VcnClkLevelsEnabled.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %VcnClkLevelsEnabled.i, align 1
  %VclkFrequency.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %metrics.i, i32 0, i32 2
  %52 = ptrtoint ptr %VclkFrequency.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %VclkFrequency.i, align 2
  %conv58.i = zext i16 %53 to i32
  %54 = ptrtoint ptr %cur_value.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv58.i, ptr %cur_value.i, align 4
  br label %sw.epilog.thread186.i

sw.bb59.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %VcnClkLevelsEnabled60.i = getelementptr inbounds %struct.DpmClocks_t, ptr %8, i32 0, i32 16
  %55 = ptrtoint ptr %VcnClkLevelsEnabled60.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %VcnClkLevelsEnabled60.i, align 1
  %DclkFrequency.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %metrics.i, i32 0, i32 3
  %57 = ptrtoint ptr %DclkFrequency.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %DclkFrequency.i, align 2
  %conv62.i = zext i16 %58 to i32
  %59 = ptrtoint ptr %cur_value.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv62.i, ptr %cur_value.i, align 4
  br label %sw.epilog.thread186.i

sw.bb63.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %NumDfPstatesEnabled.i = getelementptr inbounds %struct.DpmClocks_t, ptr %8, i32 0, i32 11
  %60 = ptrtoint ptr %NumDfPstatesEnabled.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %NumDfPstatesEnabled.i, align 4
  %MemclkFrequency.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %metrics.i, i32 0, i32 4
  %62 = ptrtoint ptr %MemclkFrequency.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %MemclkFrequency.i, align 2
  %conv65.i = zext i16 %63 to i32
  %64 = ptrtoint ptr %cur_value.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv65.i, ptr %cur_value.i, align 4
  br label %sw.epilog.thread186.i

sw.bb66.i:                                        ; preds = %if.end.i
  %NumDfPstatesEnabled67.i = getelementptr inbounds %struct.DpmClocks_t, ptr %8, i32 0, i32 11
  %65 = ptrtoint ptr %NumDfPstatesEnabled67.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %NumDfPstatesEnabled67.i, align 4
  %call69.i = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 126, i32 noundef 0, ptr noundef nonnull %cur_value.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %sw.bb66.i.sw.epilog.thread186.i_crit_edge, label %sw.bb66.i.vangogh_print_legacy_clk_levels.exit_crit_edge

sw.bb66.i.vangogh_print_legacy_clk_levels.exit_crit_edge: ; preds = %sw.bb66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_legacy_clk_levels.exit

sw.bb66.i.sw.epilog.thread186.i_crit_edge:        ; preds = %sw.bb66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread186.i

sw.epilog.thread186.i:                            ; preds = %sw.bb66.i.sw.epilog.thread186.i_crit_edge, %sw.bb63.i, %sw.bb59.i, %sw.bb56.i, %sw.bb54.i
  %count.0.shrunk.ph.i = phi i8 [ %46, %sw.bb54.i ], [ %51, %sw.bb56.i ], [ %56, %sw.bb59.i ], [ %61, %sw.bb63.i ], [ %66, %sw.bb66.i.sw.epilog.thread186.i_crit_edge ]
  %count.0189.i = zext i8 %count.0.shrunk.ph.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %count.0.shrunk.ph.i)
  %cmp74198.not.i = icmp eq i8 %count.0.shrunk.ph.i, 0
  br i1 %cmp74198.not.i, label %sw.epilog.thread186.i.if.then93.i_crit_edge, label %sw.epilog.thread186.i.for.body.i_crit_edge

sw.epilog.thread186.i.for.body.i_crit_edge:       ; preds = %sw.epilog.thread186.i
  br label %for.body.i

sw.epilog.thread186.i.if.then93.i_crit_edge:      ; preds = %sw.epilog.thread186.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then93.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.epilog.thread186.i.for.body.i_crit_edge
  %cur_value_match_level.0.off0203.i = phi i1 [ %cur_value_match_level.1.off0.i, %for.inc.i.for.body.i_crit_edge ], [ false, %sw.epilog.thread186.i.for.body.i_crit_edge ]
  %i.0200.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %sw.epilog.thread186.i.for.body.i_crit_edge ]
  %size.2199.i = phi i32 [ %size.3.i, %for.inc.i.for.body.i_crit_edge ], [ %size.0.i, %sw.epilog.thread186.i.for.body.i_crit_edge ]
  %67 = ptrtoint ptr %clocks_table.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %clocks_table.i, align 4
  %tobool.not.i151.i = icmp eq ptr %68, null
  br i1 %tobool.not.i151.i, label %for.body.i.vangogh_print_legacy_clk_levels.exit_crit_edge, label %if.end.i152.i

for.body.i.vangogh_print_legacy_clk_levels.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_legacy_clk_levels.exit

if.end.i152.i:                                    ; preds = %for.body.i
  %69 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %clk_type, label %if.end.i152.i.vangogh_print_legacy_clk_levels.exit_crit_edge [
    i32 6, label %sw.bb.i.i
    i32 1, label %sw.bb5.i.i
    i32 2, label %sw.bb12.i.i
    i32 7, label %if.end.i152.i.sw.bb21.i.i_crit_edge
    i32 14, label %if.end.i152.i.sw.bb21.i.i_crit_edge139
    i32 12, label %sw.bb28.i.i
  ]

if.end.i152.i.sw.bb21.i.i_crit_edge139:           ; preds = %if.end.i152.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb21.i.i

if.end.i152.i.sw.bb21.i.i_crit_edge:              ; preds = %if.end.i152.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb21.i.i

if.end.i152.i.vangogh_print_legacy_clk_levels.exit_crit_edge: ; preds = %if.end.i152.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_legacy_clk_levels.exit

sw.bb.i.i:                                        ; preds = %if.end.i152.i
  %NumSocClkLevelsEnabled.i.i = getelementptr inbounds %struct.DpmClocks_t, ptr %68, i32 0, i32 14
  %70 = ptrtoint ptr %NumSocClkLevelsEnabled.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %NumSocClkLevelsEnabled.i.i, align 1
  %conv.i.i = zext i8 %71 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0200.i, i32 %conv.i.i)
  %cmp1.not.i.i = icmp ult i32 %i.0200.i, %conv.i.i
  br i1 %cmp1.not.i.i, label %if.end4.i.i, label %sw.bb.i.i.vangogh_print_legacy_clk_levels.exit_crit_edge

sw.bb.i.i.vangogh_print_legacy_clk_levels.exit_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_legacy_clk_levels.exit

if.end4.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr %struct.DpmClocks_t, ptr %68, i32 0, i32 3, i32 %i.0200.i
  br label %if.end79.i

sw.bb5.i.i:                                       ; preds = %if.end.i152.i
  %VcnClkLevelsEnabled.i.i = getelementptr inbounds %struct.DpmClocks_t, ptr %68, i32 0, i32 16
  %72 = ptrtoint ptr %VcnClkLevelsEnabled.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %VcnClkLevelsEnabled.i.i, align 1
  %conv6.i.i = zext i8 %73 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0200.i, i32 %conv6.i.i)
  %cmp7.not.i.i = icmp ult i32 %i.0200.i, %conv6.i.i
  br i1 %cmp7.not.i.i, label %if.end10.i.i, label %sw.bb5.i.i.vangogh_print_legacy_clk_levels.exit_crit_edge

sw.bb5.i.i.vangogh_print_legacy_clk_levels.exit_crit_edge: ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_legacy_clk_levels.exit

if.end10.i.i:                                     ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx11.i.i = getelementptr %struct.DpmClocks_t, ptr %68, i32 0, i32 6, i32 %i.0200.i
  br label %if.end79.i

sw.bb12.i.i:                                      ; preds = %if.end.i152.i
  %VcnClkLevelsEnabled13.i.i = getelementptr inbounds %struct.DpmClocks_t, ptr %68, i32 0, i32 16
  %74 = ptrtoint ptr %VcnClkLevelsEnabled13.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %VcnClkLevelsEnabled13.i.i, align 1
  %conv14.i.i = zext i8 %75 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0200.i, i32 %conv14.i.i)
  %cmp15.not.i.i = icmp ult i32 %i.0200.i, %conv14.i.i
  br i1 %cmp15.not.i.i, label %if.end18.i.i, label %sw.bb12.i.i.vangogh_print_legacy_clk_levels.exit_crit_edge

sw.bb12.i.i.vangogh_print_legacy_clk_levels.exit_crit_edge: ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_legacy_clk_levels.exit

if.end18.i.i:                                     ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dclk.i.i = getelementptr %struct.DpmClocks_t, ptr %68, i32 0, i32 6, i32 %i.0200.i, i32 1
  br label %if.end79.i

sw.bb21.i.i:                                      ; preds = %if.end.i152.i.sw.bb21.i.i_crit_edge, %if.end.i152.i.sw.bb21.i.i_crit_edge139
  %NumDfPstatesEnabled.i.i = getelementptr inbounds %struct.DpmClocks_t, ptr %68, i32 0, i32 11
  %76 = ptrtoint ptr %NumDfPstatesEnabled.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %NumDfPstatesEnabled.i.i, align 4
  %conv22.i.i = zext i8 %77 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0200.i, i32 %conv22.i.i)
  %cmp23.not.i.i = icmp ult i32 %i.0200.i, %conv22.i.i
  br i1 %cmp23.not.i.i, label %if.end26.i.i, label %sw.bb21.i.i.vangogh_print_legacy_clk_levels.exit_crit_edge

sw.bb21.i.i.vangogh_print_legacy_clk_levels.exit_crit_edge: ; preds = %sw.bb21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_legacy_clk_levels.exit

if.end26.i.i:                                     ; preds = %sw.bb21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %memclk.i.i = getelementptr %struct.DpmClocks_t, ptr %68, i32 0, i32 8, i32 %i.0200.i, i32 1
  br label %if.end79.i

sw.bb28.i.i:                                      ; preds = %if.end.i152.i
  %NumDfPstatesEnabled29.i.i = getelementptr inbounds %struct.DpmClocks_t, ptr %68, i32 0, i32 11
  %78 = ptrtoint ptr %NumDfPstatesEnabled29.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %NumDfPstatesEnabled29.i.i, align 4
  %conv30.i.i = zext i8 %79 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0200.i, i32 %conv30.i.i)
  %cmp31.not.i.i = icmp ult i32 %i.0200.i, %conv30.i.i
  br i1 %cmp31.not.i.i, label %if.end34.i.i, label %sw.bb28.i.i.vangogh_print_legacy_clk_levels.exit_crit_edge

sw.bb28.i.i.vangogh_print_legacy_clk_levels.exit_crit_edge: ; preds = %sw.bb28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_legacy_clk_levels.exit

if.end34.i.i:                                     ; preds = %sw.bb28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx36.i.i = getelementptr %struct.DpmClocks_t, ptr %68, i32 0, i32 8, i32 %i.0200.i
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.end34.i.i, %if.end26.i.i, %if.end18.i.i, %if.end10.i.i, %if.end4.i.i
  %arrayidx.sink.i.i = phi ptr [ %arrayidx.i.i, %if.end4.i.i ], [ %arrayidx11.i.i, %if.end10.i.i ], [ %dclk.i.i, %if.end18.i.i ], [ %memclk.i.i, %if.end26.i.i ], [ %arrayidx36.i.i, %if.end34.i.i ]
  %80 = ptrtoint ptr %arrayidx.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.sink.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool80.not.i = icmp eq i32 %81, 0
  br i1 %tobool80.not.i, label %if.end79.i.for.inc.i_crit_edge, label %if.end82.i

if.end79.i.for.inc.i_crit_edge:                   ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end82.i:                                       ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %cur_value.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cur_value.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %81)
  %cmp83.i = icmp eq i32 %83, %81
  %cond85.i = select i1 %cmp83.i, ptr @.str.14, ptr @.str.15
  %call86.i = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0.i, i32 noundef %size.2199.i, ptr noundef nonnull @.str.13, i32 noundef %i.0200.i, i32 noundef %81, ptr noundef nonnull %cond85.i) #9
  %add87.i = add i32 %call86.i, %size.2199.i
  %84 = ptrtoint ptr %cur_value.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cur_value.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %81)
  %cmp88.i = icmp eq i32 %85, %81
  %spec.select.i = select i1 %cmp88.i, i1 true, i1 %cur_value_match_level.0.off0203.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end82.i, %if.end79.i.for.inc.i_crit_edge
  %size.3.i = phi i32 [ %size.2199.i, %if.end79.i.for.inc.i_crit_edge ], [ %add87.i, %if.end82.i ]
  %cur_value_match_level.1.off0.i = phi i1 [ %cur_value_match_level.0.off0203.i, %if.end79.i.for.inc.i_crit_edge ], [ %spec.select.i, %if.end82.i ]
  %inc.i = add nuw nsw i32 %i.0200.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %count.0189.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  br i1 %cur_value_match_level.1.off0.i, label %for.end.i.vangogh_print_legacy_clk_levels.exit_crit_edge, label %for.end.i.if.then93.i_crit_edge

for.end.i.if.then93.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then93.i

for.end.i.vangogh_print_legacy_clk_levels.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_legacy_clk_levels.exit

if.then93.i:                                      ; preds = %for.end.i.if.then93.i_crit_edge, %sw.epilog.thread186.i.if.then93.i_crit_edge
  %size.2.lcssa207.i = phi i32 [ %size.3.i, %for.end.i.if.then93.i_crit_edge ], [ %size.0.i, %sw.epilog.thread186.i.if.then93.i_crit_edge ]
  %86 = ptrtoint ptr %cur_value.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cur_value.i, align 4
  %call94.i = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0.i, i32 noundef %size.2.lcssa207.i, ptr noundef nonnull @.str.16, i32 noundef %87) #9
  %add95.i = add i32 %call94.i, %size.2.lcssa207.i
  br label %vangogh_print_legacy_clk_levels.exit

vangogh_print_legacy_clk_levels.exit:             ; preds = %if.then93.i, %for.end.i.vangogh_print_legacy_clk_levels.exit_crit_edge, %sw.bb28.i.i.vangogh_print_legacy_clk_levels.exit_crit_edge, %sw.bb21.i.i.vangogh_print_legacy_clk_levels.exit_crit_edge, %sw.bb12.i.i.vangogh_print_legacy_clk_levels.exit_crit_edge, %sw.bb5.i.i.vangogh_print_legacy_clk_levels.exit_crit_edge, %sw.bb.i.i.vangogh_print_legacy_clk_levels.exit_crit_edge, %if.end.i152.i.vangogh_print_legacy_clk_levels.exit_crit_edge, %for.body.i.vangogh_print_legacy_clk_levels.exit_crit_edge, %sw.bb66.i.vangogh_print_legacy_clk_levels.exit_crit_edge, %if.then42.i, %sw.bb39.i.vangogh_print_legacy_clk_levels.exit_crit_edge, %cond.end34.i, %sw.bb16.i.vangogh_print_legacy_clk_levels.exit_crit_edge, %cond.end11.i, %sw.bb.i.vangogh_print_legacy_clk_levels.exit_crit_edge, %if.end.i.vangogh_print_legacy_clk_levels.exit_crit_edge, %if.then2.vangogh_print_legacy_clk_levels.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then2.vangogh_print_legacy_clk_levels.exit_crit_edge ], [ %call69.i, %sw.bb66.i.vangogh_print_legacy_clk_levels.exit_crit_edge ], [ %size.3.i, %for.end.i.vangogh_print_legacy_clk_levels.exit_crit_edge ], [ %add95.i, %if.then93.i ], [ %size.0.i, %sw.bb.i.vangogh_print_legacy_clk_levels.exit_crit_edge ], [ %add14.i, %cond.end11.i ], [ %size.0.i, %sw.bb16.i.vangogh_print_legacy_clk_levels.exit_crit_edge ], [ %add37.i, %cond.end34.i ], [ %size.0.i, %sw.bb39.i.vangogh_print_legacy_clk_levels.exit_crit_edge ], [ %add52.i, %if.then42.i ], [ %size.0.i, %if.end.i.vangogh_print_legacy_clk_levels.exit_crit_edge ], [ -22, %sw.bb28.i.i.vangogh_print_legacy_clk_levels.exit_crit_edge ], [ -22, %sw.bb21.i.i.vangogh_print_legacy_clk_levels.exit_crit_edge ], [ -22, %sw.bb12.i.i.vangogh_print_legacy_clk_levels.exit_crit_edge ], [ -22, %sw.bb5.i.i.vangogh_print_legacy_clk_levels.exit_crit_edge ], [ -22, %sw.bb.i.i.vangogh_print_legacy_clk_levels.exit_crit_edge ], [ -22, %if.end.i152.i.vangogh_print_legacy_clk_levels.exit_crit_edge ], [ -22, %for.body.i.vangogh_print_legacy_clk_levels.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_value.i) #9
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %metrics.i) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %metrics.i15) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_value.i16) #9
  %88 = ptrtoint ptr %cur_value.i16 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %cur_value.i16, align 4
  %89 = call ptr @memset(ptr %metrics.i15, i32 0, i32 168)
  %call.i18 = call i32 @smu_cmn_get_metrics_table(ptr noundef %smu, ptr noundef nonnull %metrics.i15, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool.not.i19 = icmp eq i32 %call.i18, 0
  br i1 %tobool.not.i19, label %if.end.i26, label %if.else.vangogh_print_clk_levels.exit_crit_edge

if.else.vangogh_print_clk_levels.exit_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_clk_levels.exit

if.end.i26:                                       ; preds = %if.else
  %tobool.not.i.i20 = icmp eq ptr %buf, null
  %90 = ptrtoint ptr %buf to i32
  %and.i.i21 = and i32 %90, 4095
  %idx.neg.i.i22 = sub nsw i32 0, %and.i.i21
  %add.ptr.i.i23 = getelementptr i8, ptr %buf, i32 %idx.neg.i.i22
  %buf.addr.0.i24 = select i1 %tobool.not.i.i20, ptr null, ptr %add.ptr.i.i23
  %size.0.i25 = select i1 %tobool.not.i.i20, i32 0, i32 %and.i.i21
  %91 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %clk_type, label %if.end.i26.vangogh_print_clk_levels.exit_crit_edge [
    i32 18, label %sw.bb.i29
    i32 17, label %sw.bb16.i51
    i32 21, label %sw.bb39.i74
    i32 6, label %sw.bb54.i89
    i32 1, label %sw.bb56.i92
    i32 2, label %sw.bb60.i
    i32 14, label %sw.bb65.i
    i32 12, label %sw.bb69.i
    i32 0, label %if.end.i26.sw.bb76.i_crit_edge
    i32 13, label %if.end.i26.sw.bb76.i_crit_edge140
  ]

if.end.i26.sw.bb76.i_crit_edge140:                ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb76.i

if.end.i26.sw.bb76.i_crit_edge:                   ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb76.i

if.end.i26.vangogh_print_clk_levels.exit_crit_edge: ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_clk_levels.exit

sw.bb.i29:                                        ; preds = %if.end.i26
  %dpm_level.i27 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 4
  %92 = ptrtoint ptr %dpm_level.i27 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dpm_level.i27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %93)
  %cmp.i28 = icmp eq i32 %93, 2
  br i1 %cmp.i28, label %if.then1.i34, label %sw.bb.i29.vangogh_print_clk_levels.exit_crit_edge

sw.bb.i29.vangogh_print_clk_levels.exit_crit_edge: ; preds = %sw.bb.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_clk_levels.exit

if.then1.i34:                                     ; preds = %sw.bb.i29
  %call2.i30 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0.i24, i32 noundef %size.0.i25, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #9
  %add.i31 = add i32 %call2.i30, %size.0.i25
  %gfx_actual_hard_min_freq.i32 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %94 = ptrtoint ptr %gfx_actual_hard_min_freq.i32 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %gfx_actual_hard_min_freq.i32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp3.not.i33 = icmp eq i32 %95, 0
  br i1 %cmp3.not.i33, label %cond.false.i36, label %if.then1.i34.cond.end.i42_crit_edge

if.then1.i34.cond.end.i42_crit_edge:              ; preds = %if.then1.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i42

cond.false.i36:                                   ; preds = %if.then1.i34
  call void @__sanitizer_cov_trace_pc() #11
  %gfx_default_hard_min_freq.i35 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 54
  %96 = ptrtoint ptr %gfx_default_hard_min_freq.i35 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %gfx_default_hard_min_freq.i35, align 4
  br label %cond.end.i42

cond.end.i42:                                     ; preds = %cond.false.i36, %if.then1.i34.cond.end.i42_crit_edge
  %cond.i37 = phi i32 [ %97, %cond.false.i36 ], [ %95, %if.then1.i34.cond.end.i42_crit_edge ]
  %call5.i38 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0.i24, i32 noundef %add.i31, ptr noundef nonnull @.str.7, i32 noundef %cond.i37) #9
  %add6.i39 = add i32 %call5.i38, %add.i31
  %gfx_actual_soft_max_freq.i40 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %98 = ptrtoint ptr %gfx_actual_soft_max_freq.i40 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %gfx_actual_soft_max_freq.i40, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp7.not.i41 = icmp eq i32 %99, 0
  br i1 %cmp7.not.i41, label %cond.false10.i44, label %cond.end.i42.cond.end11.i48_crit_edge

cond.end.i42.cond.end11.i48_crit_edge:            ; preds = %cond.end.i42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end11.i48

cond.false10.i44:                                 ; preds = %cond.end.i42
  call void @__sanitizer_cov_trace_pc() #11
  %gfx_default_soft_max_freq.i43 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 55
  %100 = ptrtoint ptr %gfx_default_soft_max_freq.i43 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %gfx_default_soft_max_freq.i43, align 8
  br label %cond.end11.i48

cond.end11.i48:                                   ; preds = %cond.false10.i44, %cond.end.i42.cond.end11.i48_crit_edge
  %cond12.i45 = phi i32 [ %101, %cond.false10.i44 ], [ %99, %cond.end.i42.cond.end11.i48_crit_edge ]
  %call13.i46 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0.i24, i32 noundef %add6.i39, ptr noundef nonnull @.str.8, i32 noundef %cond12.i45) #9
  %add14.i47 = add i32 %call13.i46, %add6.i39
  br label %vangogh_print_clk_levels.exit

sw.bb16.i51:                                      ; preds = %if.end.i26
  %dpm_level17.i49 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 4
  %102 = ptrtoint ptr %dpm_level17.i49 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %dpm_level17.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %103)
  %cmp18.i50 = icmp eq i32 %103, 2
  br i1 %cmp18.i50, label %if.then19.i57, label %sw.bb16.i51.vangogh_print_clk_levels.exit_crit_edge

sw.bb16.i51.vangogh_print_clk_levels.exit_crit_edge: ; preds = %sw.bb16.i51
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_clk_levels.exit

if.then19.i57:                                    ; preds = %sw.bb16.i51
  %cpu_core_id_select.i52 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 62
  %104 = ptrtoint ptr %cpu_core_id_select.i52 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %cpu_core_id_select.i52, align 4
  %call20.i53 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0.i24, i32 noundef %size.0.i25, ptr noundef nonnull @.str.9, i32 noundef %105) #9
  %add21.i54 = add i32 %call20.i53, %size.0.i25
  %cpu_actual_soft_min_freq.i55 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 60
  %106 = ptrtoint ptr %cpu_actual_soft_min_freq.i55 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cpu_actual_soft_min_freq.i55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp22.not.i56 = icmp eq i32 %107, 0
  br i1 %cmp22.not.i56, label %cond.false25.i59, label %if.then19.i57.cond.end26.i65_crit_edge

if.then19.i57.cond.end26.i65_crit_edge:           ; preds = %if.then19.i57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end26.i65

cond.false25.i59:                                 ; preds = %if.then19.i57
  call void @__sanitizer_cov_trace_pc() #11
  %cpu_default_soft_min_freq.i58 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 58
  %108 = ptrtoint ptr %cpu_default_soft_min_freq.i58 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %cpu_default_soft_min_freq.i58, align 4
  br label %cond.end26.i65

cond.end26.i65:                                   ; preds = %cond.false25.i59, %if.then19.i57.cond.end26.i65_crit_edge
  %cond27.i60 = phi i32 [ %109, %cond.false25.i59 ], [ %107, %if.then19.i57.cond.end26.i65_crit_edge ]
  %call28.i61 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0.i24, i32 noundef %add21.i54, ptr noundef nonnull @.str.7, i32 noundef %cond27.i60) #9
  %add29.i62 = add i32 %call28.i61, %add21.i54
  %cpu_actual_soft_max_freq.i63 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 61
  %110 = ptrtoint ptr %cpu_actual_soft_max_freq.i63 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cpu_actual_soft_max_freq.i63, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp30.not.i64 = icmp eq i32 %111, 0
  br i1 %cmp30.not.i64, label %cond.false33.i67, label %cond.end26.i65.cond.end34.i71_crit_edge

cond.end26.i65.cond.end34.i71_crit_edge:          ; preds = %cond.end26.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end34.i71

cond.false33.i67:                                 ; preds = %cond.end26.i65
  call void @__sanitizer_cov_trace_pc() #11
  %cpu_default_soft_max_freq.i66 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 59
  %112 = ptrtoint ptr %cpu_default_soft_max_freq.i66 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cpu_default_soft_max_freq.i66, align 8
  br label %cond.end34.i71

cond.end34.i71:                                   ; preds = %cond.false33.i67, %cond.end26.i65.cond.end34.i71_crit_edge
  %cond35.i68 = phi i32 [ %113, %cond.false33.i67 ], [ %111, %cond.end26.i65.cond.end34.i71_crit_edge ]
  %call36.i69 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0.i24, i32 noundef %add29.i62, ptr noundef nonnull @.str.8, i32 noundef %cond35.i68) #9
  %add37.i70 = add i32 %call36.i69, %add29.i62
  br label %vangogh_print_clk_levels.exit

sw.bb39.i74:                                      ; preds = %if.end.i26
  %dpm_level40.i72 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 4
  %114 = ptrtoint ptr %dpm_level40.i72 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %dpm_level40.i72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %115)
  %cmp41.i73 = icmp eq i32 %115, 2
  br i1 %cmp41.i73, label %if.then42.i85, label %sw.bb39.i74.vangogh_print_clk_levels.exit_crit_edge

sw.bb39.i74.vangogh_print_clk_levels.exit_crit_edge: ; preds = %sw.bb39.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_clk_levels.exit

if.then42.i85:                                    ; preds = %sw.bb39.i74
  call void @__sanitizer_cov_trace_pc() #11
  %call43.i75 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0.i24, i32 noundef %size.0.i25, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.10) #9
  %add44.i76 = add i32 %call43.i75, %size.0.i25
  %gfx_default_hard_min_freq45.i77 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 54
  %116 = ptrtoint ptr %gfx_default_hard_min_freq45.i77 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %gfx_default_hard_min_freq45.i77, align 4
  %gfx_default_soft_max_freq46.i78 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 55
  %118 = ptrtoint ptr %gfx_default_soft_max_freq46.i78 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %gfx_default_soft_max_freq46.i78, align 8
  %call47.i79 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0.i24, i32 noundef %add44.i76, ptr noundef nonnull @.str.11, i32 noundef %117, i32 noundef %119) #9
  %add48.i80 = add i32 %call47.i79, %add44.i76
  %cpu_default_soft_min_freq49.i81 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 58
  %120 = ptrtoint ptr %cpu_default_soft_min_freq49.i81 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %cpu_default_soft_min_freq49.i81, align 4
  %cpu_default_soft_max_freq50.i82 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 59
  %122 = ptrtoint ptr %cpu_default_soft_max_freq50.i82 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %cpu_default_soft_max_freq50.i82, align 8
  %call51.i83 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0.i24, i32 noundef %add48.i80, ptr noundef nonnull @.str.12, i32 noundef %121, i32 noundef %123) #9
  %add52.i84 = add i32 %call51.i83, %add48.i80
  br label %vangogh_print_clk_levels.exit

sw.bb54.i89:                                      ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #11
  %NumSocClkLevelsEnabled.i86 = getelementptr inbounds %struct.DpmClocks_t, ptr %8, i32 0, i32 14
  %124 = ptrtoint ptr %NumSocClkLevelsEnabled.i86 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %NumSocClkLevelsEnabled.i86, align 1
  %SocclkFrequency.i87 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics.i15, i32 0, i32 1
  %126 = ptrtoint ptr %SocclkFrequency.i87 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %SocclkFrequency.i87, align 2
  %conv55.i88 = zext i16 %127 to i32
  %128 = ptrtoint ptr %cur_value.i16 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %conv55.i88, ptr %cur_value.i16, align 4
  br label %sw.bb81.i

sw.bb56.i92:                                      ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #11
  %VcnClkLevelsEnabled.i90 = getelementptr inbounds %struct.DpmClocks_t, ptr %8, i32 0, i32 16
  %129 = ptrtoint ptr %VcnClkLevelsEnabled.i90 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %VcnClkLevelsEnabled.i90, align 1
  %VclkFrequency.i91 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics.i15, i32 0, i32 2
  %131 = ptrtoint ptr %VclkFrequency.i91 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %VclkFrequency.i91, align 4
  %conv59.i = zext i16 %132 to i32
  %133 = ptrtoint ptr %cur_value.i16 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %conv59.i, ptr %cur_value.i16, align 4
  br label %sw.bb81.i

sw.bb60.i:                                        ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #11
  %VcnClkLevelsEnabled61.i = getelementptr inbounds %struct.DpmClocks_t, ptr %8, i32 0, i32 16
  %134 = ptrtoint ptr %VcnClkLevelsEnabled61.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %VcnClkLevelsEnabled61.i, align 1
  %DclkFrequency.i93 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics.i15, i32 0, i32 3
  %136 = ptrtoint ptr %DclkFrequency.i93 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %DclkFrequency.i93, align 2
  %conv64.i = zext i16 %137 to i32
  %138 = ptrtoint ptr %cur_value.i16 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %conv64.i, ptr %cur_value.i16, align 4
  br label %sw.bb81.i

sw.bb65.i:                                        ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #11
  %NumDfPstatesEnabled.i94 = getelementptr inbounds %struct.DpmClocks_t, ptr %8, i32 0, i32 11
  %139 = ptrtoint ptr %NumDfPstatesEnabled.i94 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %NumDfPstatesEnabled.i94, align 4
  %MemclkFrequency.i95 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics.i15, i32 0, i32 4
  %141 = ptrtoint ptr %MemclkFrequency.i95 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %MemclkFrequency.i95, align 4
  %conv68.i = zext i16 %142 to i32
  %143 = ptrtoint ptr %cur_value.i16 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %conv68.i, ptr %cur_value.i16, align 4
  br label %sw.bb81.i

sw.bb69.i:                                        ; preds = %if.end.i26
  %NumDfPstatesEnabled70.i = getelementptr inbounds %struct.DpmClocks_t, ptr %8, i32 0, i32 11
  %144 = ptrtoint ptr %NumDfPstatesEnabled70.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %NumDfPstatesEnabled70.i, align 4
  %call72.i = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 126, i32 noundef 0, ptr noundef nonnull %cur_value.i16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %tobool73.not.i = icmp eq i32 %call72.i, 0
  br i1 %tobool73.not.i, label %sw.bb69.i.sw.bb81.i_crit_edge, label %sw.bb69.i.vangogh_print_clk_levels.exit_crit_edge

sw.bb69.i.vangogh_print_clk_levels.exit_crit_edge: ; preds = %sw.bb69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_clk_levels.exit

sw.bb69.i.sw.bb81.i_crit_edge:                    ; preds = %sw.bb69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81.i

sw.bb76.i:                                        ; preds = %if.end.i26.sw.bb76.i_crit_edge, %if.end.i26.sw.bb76.i_crit_edge140
  %call77.i = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 125, i32 noundef 0, ptr noundef nonnull %cur_value.i16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool78.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool78.not.i, label %sw.epilog.i, label %sw.bb76.i.vangogh_print_clk_levels.exit_crit_edge

sw.bb76.i.vangogh_print_clk_levels.exit_crit_edge: ; preds = %sw.bb76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_clk_levels.exit

sw.epilog.i:                                      ; preds = %sw.bb76.i
  %146 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %clk_type, label %sw.epilog.i.vangogh_print_clk_levels.exit_crit_edge [
    i32 6, label %sw.epilog.i.if.then101.i_crit_edge
    i32 1, label %sw.epilog.i.if.then101.i_crit_edge141
    i32 2, label %sw.epilog.i.if.then101.i_crit_edge142
    i32 13, label %sw.epilog.i.sw.bb105.i_crit_edge
    i32 12, label %sw.epilog.i.if.then101.i_crit_edge143
    i32 0, label %sw.epilog.i.sw.bb105.i_crit_edge144
  ]

sw.epilog.i.sw.bb105.i_crit_edge144:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb105.i

sw.epilog.i.if.then101.i_crit_edge143:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then101.i

sw.epilog.i.sw.bb105.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb105.i

sw.epilog.i.if.then101.i_crit_edge142:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then101.i

sw.epilog.i.if.then101.i_crit_edge141:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then101.i

sw.epilog.i.if.then101.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then101.i

sw.epilog.i.vangogh_print_clk_levels.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_clk_levels.exit

sw.bb81.i:                                        ; preds = %sw.bb69.i.sw.bb81.i_crit_edge, %sw.bb65.i, %sw.bb60.i, %sw.bb56.i92, %sw.bb54.i89
  %count.0.shrunk.ph.i96 = phi i8 [ %125, %sw.bb54.i89 ], [ %130, %sw.bb56.i92 ], [ %135, %sw.bb60.i ], [ %140, %sw.bb65.i ], [ %145, %sw.bb69.i.sw.bb81.i_crit_edge ]
  %count.0273.i = zext i8 %count.0.shrunk.ph.i96 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %count.0.shrunk.ph.i96)
  %cmp82282.not.i = icmp eq i8 %count.0.shrunk.ph.i96, 0
  br i1 %cmp82282.not.i, label %sw.bb81.i.if.then101.i_crit_edge, label %sw.bb81.i.for.body.i97_crit_edge

sw.bb81.i.for.body.i97_crit_edge:                 ; preds = %sw.bb81.i
  br label %for.body.i97

sw.bb81.i.if.then101.i_crit_edge:                 ; preds = %sw.bb81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then101.i

for.body.i97:                                     ; preds = %for.inc.i136.for.body.i97_crit_edge, %sw.bb81.i.for.body.i97_crit_edge
  %cur_value_match_level.0.off0287.i = phi i1 [ %cur_value_match_level.1.off0.i133, %for.inc.i136.for.body.i97_crit_edge ], [ false, %sw.bb81.i.for.body.i97_crit_edge ]
  %i.0284.i = phi i32 [ %inc.i134, %for.inc.i136.for.body.i97_crit_edge ], [ 0, %sw.bb81.i.for.body.i97_crit_edge ]
  %size.2283.i = phi i32 [ %size.3.i132, %for.inc.i136.for.body.i97_crit_edge ], [ %size.0.i25, %sw.bb81.i.for.body.i97_crit_edge ]
  %147 = ptrtoint ptr %clocks_table.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %clocks_table.i, align 4
  %tobool.not.i228.i = icmp eq ptr %148, null
  br i1 %tobool.not.i228.i, label %for.body.i97.vangogh_print_clk_levels.exit_crit_edge, label %if.end.i229.i

for.body.i97.vangogh_print_clk_levels.exit_crit_edge: ; preds = %for.body.i97
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_clk_levels.exit

if.end.i229.i:                                    ; preds = %for.body.i97
  %149 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %clk_type, label %if.end.i229.i.vangogh_print_clk_levels.exit_crit_edge [
    i32 6, label %sw.bb.i.i101
    i32 1, label %sw.bb5.i.i107
    i32 2, label %sw.bb12.i.i113
    i32 7, label %if.end.i229.i.sw.bb21.i.i119_crit_edge
    i32 14, label %if.end.i229.i.sw.bb21.i.i119_crit_edge145
    i32 12, label %sw.bb28.i.i125
  ]

if.end.i229.i.sw.bb21.i.i119_crit_edge145:        ; preds = %if.end.i229.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb21.i.i119

if.end.i229.i.sw.bb21.i.i119_crit_edge:           ; preds = %if.end.i229.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb21.i.i119

if.end.i229.i.vangogh_print_clk_levels.exit_crit_edge: ; preds = %if.end.i229.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_clk_levels.exit

sw.bb.i.i101:                                     ; preds = %if.end.i229.i
  %NumSocClkLevelsEnabled.i.i98 = getelementptr inbounds %struct.DpmClocks_t, ptr %148, i32 0, i32 14
  %150 = ptrtoint ptr %NumSocClkLevelsEnabled.i.i98 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %NumSocClkLevelsEnabled.i.i98, align 1
  %conv.i.i99 = zext i8 %151 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0284.i, i32 %conv.i.i99)
  %cmp1.not.i.i100 = icmp ult i32 %i.0284.i, %conv.i.i99
  br i1 %cmp1.not.i.i100, label %if.end4.i.i103, label %sw.bb.i.i101.vangogh_print_clk_levels.exit_crit_edge

sw.bb.i.i101.vangogh_print_clk_levels.exit_crit_edge: ; preds = %sw.bb.i.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_clk_levels.exit

if.end4.i.i103:                                   ; preds = %sw.bb.i.i101
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i102 = getelementptr %struct.DpmClocks_t, ptr %148, i32 0, i32 3, i32 %i.0284.i
  br label %if.end87.i

sw.bb5.i.i107:                                    ; preds = %if.end.i229.i
  %VcnClkLevelsEnabled.i.i104 = getelementptr inbounds %struct.DpmClocks_t, ptr %148, i32 0, i32 16
  %152 = ptrtoint ptr %VcnClkLevelsEnabled.i.i104 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %VcnClkLevelsEnabled.i.i104, align 1
  %conv6.i.i105 = zext i8 %153 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0284.i, i32 %conv6.i.i105)
  %cmp7.not.i.i106 = icmp ult i32 %i.0284.i, %conv6.i.i105
  br i1 %cmp7.not.i.i106, label %if.end10.i.i109, label %sw.bb5.i.i107.vangogh_print_clk_levels.exit_crit_edge

sw.bb5.i.i107.vangogh_print_clk_levels.exit_crit_edge: ; preds = %sw.bb5.i.i107
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_clk_levels.exit

if.end10.i.i109:                                  ; preds = %sw.bb5.i.i107
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx11.i.i108 = getelementptr %struct.DpmClocks_t, ptr %148, i32 0, i32 6, i32 %i.0284.i
  br label %if.end87.i

sw.bb12.i.i113:                                   ; preds = %if.end.i229.i
  %VcnClkLevelsEnabled13.i.i110 = getelementptr inbounds %struct.DpmClocks_t, ptr %148, i32 0, i32 16
  %154 = ptrtoint ptr %VcnClkLevelsEnabled13.i.i110 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %VcnClkLevelsEnabled13.i.i110, align 1
  %conv14.i.i111 = zext i8 %155 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0284.i, i32 %conv14.i.i111)
  %cmp15.not.i.i112 = icmp ult i32 %i.0284.i, %conv14.i.i111
  br i1 %cmp15.not.i.i112, label %if.end18.i.i115, label %sw.bb12.i.i113.vangogh_print_clk_levels.exit_crit_edge

sw.bb12.i.i113.vangogh_print_clk_levels.exit_crit_edge: ; preds = %sw.bb12.i.i113
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_clk_levels.exit

if.end18.i.i115:                                  ; preds = %sw.bb12.i.i113
  call void @__sanitizer_cov_trace_pc() #11
  %dclk.i.i114 = getelementptr %struct.DpmClocks_t, ptr %148, i32 0, i32 6, i32 %i.0284.i, i32 1
  br label %if.end87.i

sw.bb21.i.i119:                                   ; preds = %if.end.i229.i.sw.bb21.i.i119_crit_edge, %if.end.i229.i.sw.bb21.i.i119_crit_edge145
  %NumDfPstatesEnabled.i.i116 = getelementptr inbounds %struct.DpmClocks_t, ptr %148, i32 0, i32 11
  %156 = ptrtoint ptr %NumDfPstatesEnabled.i.i116 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %NumDfPstatesEnabled.i.i116, align 4
  %conv22.i.i117 = zext i8 %157 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0284.i, i32 %conv22.i.i117)
  %cmp23.not.i.i118 = icmp ult i32 %i.0284.i, %conv22.i.i117
  br i1 %cmp23.not.i.i118, label %if.end26.i.i121, label %sw.bb21.i.i119.vangogh_print_clk_levels.exit_crit_edge

sw.bb21.i.i119.vangogh_print_clk_levels.exit_crit_edge: ; preds = %sw.bb21.i.i119
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_clk_levels.exit

if.end26.i.i121:                                  ; preds = %sw.bb21.i.i119
  call void @__sanitizer_cov_trace_pc() #11
  %memclk.i.i120 = getelementptr %struct.DpmClocks_t, ptr %148, i32 0, i32 8, i32 %i.0284.i, i32 1
  br label %if.end87.i

sw.bb28.i.i125:                                   ; preds = %if.end.i229.i
  %NumDfPstatesEnabled29.i.i122 = getelementptr inbounds %struct.DpmClocks_t, ptr %148, i32 0, i32 11
  %158 = ptrtoint ptr %NumDfPstatesEnabled29.i.i122 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %NumDfPstatesEnabled29.i.i122, align 4
  %conv30.i.i123 = zext i8 %159 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0284.i, i32 %conv30.i.i123)
  %cmp31.not.i.i124 = icmp ult i32 %i.0284.i, %conv30.i.i123
  br i1 %cmp31.not.i.i124, label %if.end34.i.i127, label %sw.bb28.i.i125.vangogh_print_clk_levels.exit_crit_edge

sw.bb28.i.i125.vangogh_print_clk_levels.exit_crit_edge: ; preds = %sw.bb28.i.i125
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_clk_levels.exit

if.end34.i.i127:                                  ; preds = %sw.bb28.i.i125
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx36.i.i126 = getelementptr %struct.DpmClocks_t, ptr %148, i32 0, i32 8, i32 %i.0284.i
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.end34.i.i127, %if.end26.i.i121, %if.end18.i.i115, %if.end10.i.i109, %if.end4.i.i103
  %arrayidx.sink.i.i128 = phi ptr [ %arrayidx.i.i102, %if.end4.i.i103 ], [ %arrayidx11.i.i108, %if.end10.i.i109 ], [ %dclk.i.i114, %if.end18.i.i115 ], [ %memclk.i.i120, %if.end26.i.i121 ], [ %arrayidx36.i.i126, %if.end34.i.i127 ]
  %160 = ptrtoint ptr %arrayidx.sink.i.i128 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx.sink.i.i128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool88.not.i = icmp eq i32 %161, 0
  br i1 %tobool88.not.i, label %if.end87.i.for.inc.i136_crit_edge, label %if.end90.i

if.end87.i.for.inc.i136_crit_edge:                ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i136

if.end90.i:                                       ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #11
  %162 = ptrtoint ptr %cur_value.i16 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %cur_value.i16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %163, i32 %161)
  %cmp91.i = icmp eq i32 %163, %161
  %cond93.i = select i1 %cmp91.i, ptr @.str.14, ptr @.str.15
  %call94.i129 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0.i24, i32 noundef %size.2283.i, ptr noundef nonnull @.str.13, i32 noundef %i.0284.i, i32 noundef %161, ptr noundef nonnull %cond93.i) #9
  %add95.i130 = add i32 %call94.i129, %size.2283.i
  %164 = ptrtoint ptr %cur_value.i16 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %cur_value.i16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %165, i32 %161)
  %cmp96.i = icmp eq i32 %165, %161
  %spec.select.i131 = select i1 %cmp96.i, i1 true, i1 %cur_value_match_level.0.off0287.i
  br label %for.inc.i136

for.inc.i136:                                     ; preds = %if.end90.i, %if.end87.i.for.inc.i136_crit_edge
  %size.3.i132 = phi i32 [ %size.2283.i, %if.end87.i.for.inc.i136_crit_edge ], [ %add95.i130, %if.end90.i ]
  %cur_value_match_level.1.off0.i133 = phi i1 [ %cur_value_match_level.0.off0287.i, %if.end87.i.for.inc.i136_crit_edge ], [ %spec.select.i131, %if.end90.i ]
  %inc.i134 = add nuw nsw i32 %i.0284.i, 1
  %exitcond.not.i135 = icmp eq i32 %inc.i134, %count.0273.i
  br i1 %exitcond.not.i135, label %for.end.i137, label %for.inc.i136.for.body.i97_crit_edge

for.inc.i136.for.body.i97_crit_edge:              ; preds = %for.inc.i136
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i97

for.end.i137:                                     ; preds = %for.inc.i136
  br i1 %cur_value_match_level.1.off0.i133, label %for.end.i137.vangogh_print_clk_levels.exit_crit_edge, label %for.end.i137.if.then101.i_crit_edge

for.end.i137.if.then101.i_crit_edge:              ; preds = %for.end.i137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then101.i

for.end.i137.vangogh_print_clk_levels.exit_crit_edge: ; preds = %for.end.i137
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_print_clk_levels.exit

if.then101.i:                                     ; preds = %for.end.i137.if.then101.i_crit_edge, %sw.bb81.i.if.then101.i_crit_edge, %sw.epilog.i.if.then101.i_crit_edge, %sw.epilog.i.if.then101.i_crit_edge141, %sw.epilog.i.if.then101.i_crit_edge142, %sw.epilog.i.if.then101.i_crit_edge143
  %size.2.lcssa293.i = phi i32 [ %size.3.i132, %for.end.i137.if.then101.i_crit_edge ], [ %size.0.i25, %sw.bb81.i.if.then101.i_crit_edge ], [ %size.0.i25, %sw.epilog.i.if.then101.i_crit_edge ], [ %size.0.i25, %sw.epilog.i.if.then101.i_crit_edge141 ], [ %size.0.i25, %sw.epilog.i.if.then101.i_crit_edge142 ], [ %size.0.i25, %sw.epilog.i.if.then101.i_crit_edge143 ]
  %166 = ptrtoint ptr %cur_value.i16 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %cur_value.i16, align 4
  %call102.i = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0.i24, i32 noundef %size.2.lcssa293.i, ptr noundef nonnull @.str.16, i32 noundef %167) #9
  %add103.i = add i32 %call102.i, %size.2.lcssa293.i
  br label %vangogh_print_clk_levels.exit

sw.bb105.i:                                       ; preds = %sw.epilog.i.sw.bb105.i_crit_edge, %sw.epilog.i.sw.bb105.i_crit_edge144
  %gfx_actual_hard_min_freq106.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %168 = ptrtoint ptr %gfx_actual_hard_min_freq106.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %gfx_actual_hard_min_freq106.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %cmp107.not.i = icmp eq i32 %169, 0
  br i1 %cmp107.not.i, label %cond.false111.i, label %sw.bb105.i.cond.end113.i_crit_edge

sw.bb105.i.cond.end113.i_crit_edge:               ; preds = %sw.bb105.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end113.i

cond.false111.i:                                  ; preds = %sw.bb105.i
  call void @__sanitizer_cov_trace_pc() #11
  %gfx_default_hard_min_freq112.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 54
  %170 = ptrtoint ptr %gfx_default_hard_min_freq112.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %gfx_default_hard_min_freq112.i, align 4
  br label %cond.end113.i

cond.end113.i:                                    ; preds = %cond.false111.i, %sw.bb105.i.cond.end113.i_crit_edge
  %cond114.i = phi i32 [ %171, %cond.false111.i ], [ %169, %sw.bb105.i.cond.end113.i_crit_edge ]
  %gfx_actual_soft_max_freq115.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %172 = ptrtoint ptr %gfx_actual_soft_max_freq115.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %gfx_actual_soft_max_freq115.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp116.not.i = icmp eq i32 %173, 0
  br i1 %cmp116.not.i, label %cond.false120.i, label %cond.end113.i.cond.end122.i_crit_edge

cond.end113.i.cond.end122.i_crit_edge:            ; preds = %cond.end113.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end122.i

cond.false120.i:                                  ; preds = %cond.end113.i
  call void @__sanitizer_cov_trace_pc() #11
  %gfx_default_soft_max_freq121.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 55
  %174 = ptrtoint ptr %gfx_default_soft_max_freq121.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %gfx_default_soft_max_freq121.i, align 8
  br label %cond.end122.i

cond.end122.i:                                    ; preds = %cond.false120.i, %cond.end113.i.cond.end122.i_crit_edge
  %cond123.i = phi i32 [ %175, %cond.false120.i ], [ %173, %cond.end113.i.cond.end122.i_crit_edge ]
  %176 = ptrtoint ptr %cur_value.i16 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %cur_value.i16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %177, i32 %cond123.i)
  %cmp124.i = icmp eq i32 %177, %cond123.i
  call void @__sanitizer_cov_trace_cmp4(i32 %177, i32 %cond114.i)
  %cmp127.i = icmp eq i32 %177, %cond114.i
  %.str.14..str.15.i = select i1 %cmp127.i, ptr @.str.14, ptr @.str.15
  %cmp133.i = select i1 %cmp124.i, ptr @.str.15, ptr %.str.14..str.15.i
  %178 = select i1 %cmp124.i, i1 true, i1 %cmp127.i
  %call136.i = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0.i24, i32 noundef %size.0.i25, ptr noundef nonnull @.str.17, i32 noundef %cond114.i, ptr noundef nonnull %cmp133.i) #9
  %add137.i = add i32 %call136.i, %size.0.i25
  br i1 %178, label %cond.end122.i.cond.end142.i_crit_edge, label %cond.true140.i

cond.end122.i.cond.end142.i_crit_edge:            ; preds = %cond.end122.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end142.i

cond.true140.i:                                   ; preds = %cond.end122.i
  call void @__sanitizer_cov_trace_pc() #11
  %179 = ptrtoint ptr %cur_value.i16 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %cur_value.i16, align 4
  br label %cond.end142.i

cond.end142.i:                                    ; preds = %cond.true140.i, %cond.end122.i.cond.end142.i_crit_edge
  %cond146.i = phi ptr [ @.str.15, %cond.end122.i.cond.end142.i_crit_edge ], [ @.str.14, %cond.true140.i ]
  %cond143.i = phi i32 [ 1100, %cond.end122.i.cond.end142.i_crit_edge ], [ %180, %cond.true140.i ]
  %call147.i = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0.i24, i32 noundef %add137.i, ptr noundef nonnull @.str.18, i32 noundef %cond143.i, ptr noundef nonnull %cond146.i) #9
  %add148.i = add i32 %call147.i, %add137.i
  %cond151.i = select i1 %cmp124.i, ptr @.str.14, ptr @.str.15
  %call152.i = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0.i24, i32 noundef %add148.i, ptr noundef nonnull @.str.19, i32 noundef %cond123.i, ptr noundef nonnull %cond151.i) #9
  %add153.i = add i32 %add148.i, %call152.i
  br label %vangogh_print_clk_levels.exit

vangogh_print_clk_levels.exit:                    ; preds = %cond.end142.i, %if.then101.i, %for.end.i137.vangogh_print_clk_levels.exit_crit_edge, %sw.bb28.i.i125.vangogh_print_clk_levels.exit_crit_edge, %sw.bb21.i.i119.vangogh_print_clk_levels.exit_crit_edge, %sw.bb12.i.i113.vangogh_print_clk_levels.exit_crit_edge, %sw.bb5.i.i107.vangogh_print_clk_levels.exit_crit_edge, %sw.bb.i.i101.vangogh_print_clk_levels.exit_crit_edge, %if.end.i229.i.vangogh_print_clk_levels.exit_crit_edge, %for.body.i97.vangogh_print_clk_levels.exit_crit_edge, %sw.epilog.i.vangogh_print_clk_levels.exit_crit_edge, %sw.bb76.i.vangogh_print_clk_levels.exit_crit_edge, %sw.bb69.i.vangogh_print_clk_levels.exit_crit_edge, %if.then42.i85, %sw.bb39.i74.vangogh_print_clk_levels.exit_crit_edge, %cond.end34.i71, %sw.bb16.i51.vangogh_print_clk_levels.exit_crit_edge, %cond.end11.i48, %sw.bb.i29.vangogh_print_clk_levels.exit_crit_edge, %if.end.i26.vangogh_print_clk_levels.exit_crit_edge, %if.else.vangogh_print_clk_levels.exit_crit_edge
  %retval.0.i138 = phi i32 [ %call.i18, %if.else.vangogh_print_clk_levels.exit_crit_edge ], [ %call72.i, %sw.bb69.i.vangogh_print_clk_levels.exit_crit_edge ], [ %call77.i, %sw.bb76.i.vangogh_print_clk_levels.exit_crit_edge ], [ %size.0.i25, %sw.epilog.i.vangogh_print_clk_levels.exit_crit_edge ], [ %add153.i, %cond.end142.i ], [ %size.3.i132, %for.end.i137.vangogh_print_clk_levels.exit_crit_edge ], [ %add103.i, %if.then101.i ], [ %size.0.i25, %sw.bb.i29.vangogh_print_clk_levels.exit_crit_edge ], [ %add14.i47, %cond.end11.i48 ], [ %size.0.i25, %sw.bb16.i51.vangogh_print_clk_levels.exit_crit_edge ], [ %add37.i70, %cond.end34.i71 ], [ %size.0.i25, %sw.bb39.i74.vangogh_print_clk_levels.exit_crit_edge ], [ %add52.i84, %if.then42.i85 ], [ %size.0.i25, %if.end.i26.vangogh_print_clk_levels.exit_crit_edge ], [ -22, %sw.bb28.i.i125.vangogh_print_clk_levels.exit_crit_edge ], [ -22, %sw.bb21.i.i119.vangogh_print_clk_levels.exit_crit_edge ], [ -22, %sw.bb12.i.i113.vangogh_print_clk_levels.exit_crit_edge ], [ -22, %sw.bb5.i.i107.vangogh_print_clk_levels.exit_crit_edge ], [ -22, %sw.bb.i.i101.vangogh_print_clk_levels.exit_crit_edge ], [ -22, %if.end.i229.i.vangogh_print_clk_levels.exit_crit_edge ], [ -22, %for.body.i97.vangogh_print_clk_levels.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_value.i16) #9
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %metrics.i15) #9
  br label %cleanup

cleanup:                                          ; preds = %vangogh_print_clk_levels.exit, %vangogh_print_legacy_clk_levels.exit, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %retval.0.i, %vangogh_print_legacy_clk_levels.exit ], [ %retval.0.i138, %vangogh_print_clk_levels.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %if_version) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vangogh_force_clk_levels(ptr noundef %smu, i32 noundef %clk_type, i32 noundef %mask) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %tobool.not = icmp eq i32 %mask, 0
  %0 = tail call i32 @llvm.cttz.i32(i32 %mask, i1 true), !range !191
  %spec.select = select i1 %tobool.not, i32 0, i32 %0
  %1 = tail call i32 @llvm.ctlz.i32(i32 %mask, i1 false) #9, !range !191
  %sub3 = sub nsw i32 31, %1
  %cond6 = select i1 %tobool.not, i32 0, i32 %sub3
  %2 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %clk_type, label %entry.sw.epilog_crit_edge [
    i32 6, label %sw.bb
    i32 12, label %sw.bb21
    i32 1, label %sw.bb38
    i32 2, label %sw.bb56
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %clocks_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %3 = ptrtoint ptr %clocks_table.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clocks_table.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %NumSocClkLevelsEnabled.i = getelementptr inbounds %struct.DpmClocks_t, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %NumSocClkLevelsEnabled.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %NumSocClkLevelsEnabled.i, align 1
  %conv.i = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %conv.i)
  %cmp1.not.i = icmp ult i32 %spec.select, %conv.i
  br i1 %cmp1.not.i, label %if.end.i143, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i143:                                      ; preds = %if.end.i
  %arrayidx.i = getelementptr %struct.DpmClocks_t, ptr %4, i32 0, i32 3, i32 %spec.select
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %9 = ptrtoint ptr %NumSocClkLevelsEnabled.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %NumSocClkLevelsEnabled.i, align 1
  %conv.i145 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond6, i32 %conv.i145)
  %cmp1.not.i146 = icmp ult i32 %cond6, %conv.i145
  br i1 %cmp1.not.i146, label %if.end12, label %if.end.i143.cleanup_crit_edge

if.end.i143.cleanup_crit_edge:                    ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end.i143
  %arrayidx.i147 = getelementptr %struct.DpmClocks_t, ptr %4, i32 0, i32 3, i32 %cond6
  %11 = ptrtoint ptr %arrayidx.i147 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i147, align 4
  %call13 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 132, i32 noundef %12, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 116, i32 noundef %8, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end16.sw.epilog_crit_edge, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  %clocks_table.i151 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %13 = ptrtoint ptr %clocks_table.i151 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clocks_table.i151, align 4
  %tobool.not.i152 = icmp eq ptr %14, null
  br i1 %tobool.not.i152, label %sw.bb21.cleanup_crit_edge, label %if.end.i153

sw.bb21.cleanup_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i153:                                      ; preds = %sw.bb21
  %NumDfPstatesEnabled29.i = getelementptr inbounds %struct.DpmClocks_t, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %NumDfPstatesEnabled29.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %NumDfPstatesEnabled29.i, align 4
  %conv30.i = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %conv30.i)
  %cmp31.not.i = icmp ult i32 %spec.select, %conv30.i
  br i1 %cmp31.not.i, label %if.end.i158, label %if.end.i153.cleanup_crit_edge

if.end.i153.cleanup_crit_edge:                    ; preds = %if.end.i153
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i158:                                      ; preds = %if.end.i153
  %arrayidx36.i = getelementptr %struct.DpmClocks_t, ptr %14, i32 0, i32 8, i32 %spec.select
  %17 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx36.i, align 4
  %19 = ptrtoint ptr %NumDfPstatesEnabled29.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %NumDfPstatesEnabled29.i, align 4
  %conv30.i160 = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond6, i32 %conv30.i160)
  %cmp31.not.i161 = icmp ult i32 %cond6, %conv30.i160
  br i1 %cmp31.not.i161, label %if.end29, label %if.end.i158.cleanup_crit_edge

if.end.i158.cleanup_crit_edge:                    ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %if.end.i158
  %arrayidx36.i162 = getelementptr %struct.DpmClocks_t, ptr %14, i32 0, i32 8, i32 %cond6
  %21 = ptrtoint ptr %arrayidx36.i162 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx36.i162, align 4
  %call30 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 133, i32 noundef %22, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %call34 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 143, i32 noundef %18, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end33.sw.epilog_crit_edge, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33.sw.epilog_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry
  %clocks_table.i166 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %23 = ptrtoint ptr %clocks_table.i166 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clocks_table.i166, align 4
  %tobool.not.i167 = icmp eq ptr %24, null
  br i1 %tobool.not.i167, label %sw.bb38.cleanup_crit_edge, label %if.end.i168

sw.bb38.cleanup_crit_edge:                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i168:                                      ; preds = %sw.bb38
  %VcnClkLevelsEnabled.i = getelementptr inbounds %struct.DpmClocks_t, ptr %24, i32 0, i32 16
  %25 = ptrtoint ptr %VcnClkLevelsEnabled.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %VcnClkLevelsEnabled.i, align 1
  %conv6.i = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %conv6.i)
  %cmp7.not.i = icmp ult i32 %spec.select, %conv6.i
  br i1 %cmp7.not.i, label %if.end.i173, label %if.end.i168.cleanup_crit_edge

if.end.i168.cleanup_crit_edge:                    ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i173:                                      ; preds = %if.end.i168
  %27 = ptrtoint ptr %VcnClkLevelsEnabled.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %VcnClkLevelsEnabled.i, align 1
  %conv6.i175 = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond6, i32 %conv6.i175)
  %cmp7.not.i176 = icmp ult i32 %cond6, %conv6.i175
  br i1 %cmp7.not.i176, label %if.end46, label %if.end.i173.cleanup_crit_edge

if.end.i173.cleanup_crit_edge:                    ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end46:                                         ; preds = %if.end.i173
  %arrayidx11.i = getelementptr %struct.DpmClocks_t, ptr %24, i32 0, i32 6, i32 %spec.select
  %29 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx11.i, align 4
  %arrayidx11.i177 = getelementptr %struct.DpmClocks_t, ptr %24, i32 0, i32 6, i32 %cond6
  %31 = ptrtoint ptr %arrayidx11.i177 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx11.i177, align 4
  %shl = shl i32 %30, 16
  %call47 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 108, i32 noundef %shl, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end50:                                         ; preds = %if.end46
  %shl51 = shl i32 %32, 16
  %call52 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 134, i32 noundef %shl51, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end50.sw.epilog_crit_edge, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end50.sw.epilog_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb56:                                          ; preds = %entry
  %clocks_table.i181 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %33 = ptrtoint ptr %clocks_table.i181 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clocks_table.i181, align 4
  %tobool.not.i182 = icmp eq ptr %34, null
  br i1 %tobool.not.i182, label %sw.bb56.cleanup_crit_edge, label %if.end.i183

sw.bb56.cleanup_crit_edge:                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i183:                                      ; preds = %sw.bb56
  %VcnClkLevelsEnabled13.i = getelementptr inbounds %struct.DpmClocks_t, ptr %34, i32 0, i32 16
  %35 = ptrtoint ptr %VcnClkLevelsEnabled13.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %VcnClkLevelsEnabled13.i, align 1
  %conv14.i = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %conv14.i)
  %cmp15.not.i = icmp ult i32 %spec.select, %conv14.i
  br i1 %cmp15.not.i, label %if.end.i188, label %if.end.i183.cleanup_crit_edge

if.end.i183.cleanup_crit_edge:                    ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i188:                                      ; preds = %if.end.i183
  %37 = ptrtoint ptr %VcnClkLevelsEnabled13.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %VcnClkLevelsEnabled13.i, align 1
  %conv14.i190 = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond6, i32 %conv14.i190)
  %cmp15.not.i191 = icmp ult i32 %cond6, %conv14.i190
  br i1 %cmp15.not.i191, label %if.end64, label %if.end.i188.cleanup_crit_edge

if.end.i188.cleanup_crit_edge:                    ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end64:                                         ; preds = %if.end.i188
  %dclk.i = getelementptr %struct.DpmClocks_t, ptr %34, i32 0, i32 6, i32 %spec.select, i32 1
  %39 = ptrtoint ptr %dclk.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dclk.i, align 4
  %dclk.i192 = getelementptr %struct.DpmClocks_t, ptr %34, i32 0, i32 6, i32 %cond6, i32 1
  %41 = ptrtoint ptr %dclk.i192 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dclk.i192, align 4
  %call65 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 108, i32 noundef %40, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end68:                                         ; preds = %if.end64
  %call69 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 134, i32 noundef %42, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end68.sw.epilog_crit_edge, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end68.sw.epilog_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end68.sw.epilog_crit_edge, %if.end50.sw.epilog_crit_edge, %if.end33.sw.epilog_crit_edge, %if.end16.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end68.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %if.end.i188.cleanup_crit_edge, %if.end.i183.cleanup_crit_edge, %sw.bb56.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %if.end.i173.cleanup_crit_edge, %if.end.i168.cleanup_crit_edge, %sw.bb38.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end.i158.cleanup_crit_edge, %if.end.i153.cleanup_crit_edge, %sw.bb21.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.i143.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ], [ %call34, %if.end33.cleanup_crit_edge ], [ %call47, %if.end46.cleanup_crit_edge ], [ %call52, %if.end50.cleanup_crit_edge ], [ %call65, %if.end64.cleanup_crit_edge ], [ %call69, %if.end68.cleanup_crit_edge ], [ -22, %if.end.i143.cleanup_crit_edge ], [ -22, %if.end.i158.cleanup_crit_edge ], [ -22, %if.end.i173.cleanup_crit_edge ], [ -22, %if.end.i188.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %sw.bb21.cleanup_crit_edge ], [ -22, %if.end.i153.cleanup_crit_edge ], [ -22, %sw.bb38.cleanup_crit_edge ], [ -22, %if.end.i168.cleanup_crit_edge ], [ -22, %sw.bb56.cleanup_crit_edge ], [ -22, %if.end.i183.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vangogh_od_edit_dpm_table(ptr noundef %smu, i32 noundef %type, ptr nocapture noundef readonly %input, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dpm_level = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 4
  %0 = ptrtoint ptr %dpm_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dpm_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.20) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %sw.bb58
    i32 4, label %sw.bb106
    i32 5, label %sw.bb125
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size)
  %cmp1.not = icmp eq i32 %size, 3
  br i1 %cmp1.not, label %if.end8, label %do.end5

do.end5:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %smu, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.24) #12
  br label %cleanup

if.end8:                                          ; preds = %sw.bb
  %11 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %input, align 4
  %cpu_core_num = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 63
  %13 = ptrtoint ptr %cpu_core_num to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %cpu_core_num, align 8
  %conv = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv)
  %cmp9.not = icmp slt i32 %12, %conv
  br i1 %cmp9.not, label %if.end8.if.end19_crit_edge, label %do.end14

if.end8.if.end19_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %smu, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.27, i32 noundef %conv) #12
  br label %if.end19

if.end19:                                         ; preds = %do.end14, %if.end8.if.end19_crit_edge
  %19 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %input, align 4
  %cpu_core_id_select = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 62
  %21 = ptrtoint ptr %cpu_core_id_select to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %cpu_core_id_select, align 4
  %arrayidx21 = getelementptr i32, ptr %input, i32 1
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx21, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %23, label %if.end19.cleanup_crit_edge [
    i32 0, label %if.then24
    i32 1, label %if.then41
  ]

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then24:                                        ; preds = %if.end19
  %arrayidx25 = getelementptr i32, ptr %input, i32 2
  %25 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx25, align 4
  %cpu_default_soft_min_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 58
  %27 = ptrtoint ptr %cpu_default_soft_min_freq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu_default_soft_min_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp26 = icmp ult i32 %26, %28
  br i1 %cmp26, label %do.end31, label %if.end36

do.end31:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %smu, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.30, i32 noundef %26, i32 noundef %28) #12
  br label %cleanup

if.end36:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %cpu_actual_soft_min_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 60
  %33 = ptrtoint ptr %cpu_actual_soft_min_freq to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %26, ptr %cpu_actual_soft_min_freq, align 4
  br label %cleanup

if.then41:                                        ; preds = %if.end19
  %arrayidx42 = getelementptr i32, ptr %input, i32 2
  %34 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx42, align 4
  %cpu_default_soft_max_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 59
  %36 = ptrtoint ptr %cpu_default_soft_max_freq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu_default_soft_max_freq, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp43 = icmp ugt i32 %35, %37
  br i1 %cmp43, label %do.end48, label %if.end53

do.end48:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %smu, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.33, i32 noundef %35, i32 noundef %37) #12
  br label %cleanup

if.end53:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  %cpu_actual_soft_max_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 61
  %42 = ptrtoint ptr %cpu_actual_soft_max_freq to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %35, ptr %cpu_actual_soft_max_freq, align 8
  br label %cleanup

sw.bb58:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size)
  %cmp59.not = icmp eq i32 %size, 2
  br i1 %cmp59.not, label %if.end67, label %do.end64

do.end64:                                         ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %smu, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.36) #12
  br label %cleanup

if.end67:                                         ; preds = %sw.bb58
  %47 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %input, align 4
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %48, label %if.end67.cleanup_crit_edge [
    i32 0, label %if.then71
    i32 1, label %if.then89
  ]

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then71:                                        ; preds = %if.end67
  %arrayidx72 = getelementptr i32, ptr %input, i32 1
  %50 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx72, align 4
  %gfx_default_hard_min_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 54
  %52 = ptrtoint ptr %gfx_default_hard_min_freq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %gfx_default_hard_min_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp73 = icmp ult i32 %51, %53
  br i1 %cmp73, label %do.end78, label %if.end83

do.end78:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %smu, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %57, ptr noundef nonnull @.str.39, i32 noundef %51, i32 noundef %53) #12
  br label %cleanup

if.end83:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  %gfx_actual_hard_min_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %58 = ptrtoint ptr %gfx_actual_hard_min_freq to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %51, ptr %gfx_actual_hard_min_freq, align 4
  br label %cleanup

if.then89:                                        ; preds = %if.end67
  %arrayidx90 = getelementptr i32, ptr %input, i32 1
  %59 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx90, align 4
  %gfx_default_soft_max_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 55
  %61 = ptrtoint ptr %gfx_default_soft_max_freq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %gfx_default_soft_max_freq, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp91 = icmp ugt i32 %60, %62
  br i1 %cmp91, label %do.end96, label %if.end101

do.end96:                                         ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %smu, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %66, ptr noundef nonnull @.str.42, i32 noundef %60, i32 noundef %62) #12
  br label %cleanup

if.end101:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  %gfx_actual_soft_max_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %67 = ptrtoint ptr %gfx_actual_soft_max_freq to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %60, ptr %gfx_actual_soft_max_freq, align 8
  br label %cleanup

sw.bb106:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp107.not = icmp eq i32 %size, 0
  br i1 %cmp107.not, label %if.else115, label %do.end112

do.end112:                                        ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %smu, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.36) #12
  br label %cleanup

if.else115:                                       ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #11
  %gfx_default_hard_min_freq116 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 54
  %72 = ptrtoint ptr %gfx_default_hard_min_freq116 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %gfx_default_hard_min_freq116, align 4
  %gfx_actual_hard_min_freq117 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %74 = ptrtoint ptr %gfx_actual_hard_min_freq117 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %gfx_actual_hard_min_freq117, align 4
  %gfx_default_soft_max_freq118 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 55
  %75 = ptrtoint ptr %gfx_default_soft_max_freq118 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %gfx_default_soft_max_freq118, align 8
  %gfx_actual_soft_max_freq119 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %77 = ptrtoint ptr %gfx_actual_soft_max_freq119 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %gfx_actual_soft_max_freq119, align 8
  %cpu_default_soft_min_freq120 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 58
  %78 = ptrtoint ptr %cpu_default_soft_min_freq120 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cpu_default_soft_min_freq120, align 4
  %cpu_actual_soft_min_freq121 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 60
  %80 = ptrtoint ptr %cpu_actual_soft_min_freq121 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %cpu_actual_soft_min_freq121, align 4
  %cpu_default_soft_max_freq122 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 59
  %81 = ptrtoint ptr %cpu_default_soft_max_freq122 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cpu_default_soft_max_freq122, align 8
  %cpu_actual_soft_max_freq123 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 61
  %83 = ptrtoint ptr %cpu_actual_soft_max_freq123 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %cpu_actual_soft_max_freq123, align 8
  br label %cleanup

sw.bb125:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp126.not = icmp eq i32 %size, 0
  br i1 %cmp126.not, label %if.else134, label %do.end131

do.end131:                                        ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %smu, align 8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.36) #12
  br label %cleanup

if.else134:                                       ; preds = %sw.bb125
  %gfx_actual_hard_min_freq135 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %88 = ptrtoint ptr %gfx_actual_hard_min_freq135 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %gfx_actual_hard_min_freq135, align 4
  %gfx_actual_soft_max_freq136 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %90 = ptrtoint ptr %gfx_actual_soft_max_freq136 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %gfx_actual_soft_max_freq136, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %91)
  %cmp137 = icmp ugt i32 %89, %91
  br i1 %cmp137, label %do.end142, label %if.end147

do.end142:                                        ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %smu, align 8
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.49, i32 noundef %89, i32 noundef %91) #12
  br label %cleanup

if.end147:                                        ; preds = %if.else134
  %call = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 131, i32 noundef %89, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end155, label %do.end152

do.end152:                                        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %smu, align 8
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.52) #12
  br label %cleanup

if.end155:                                        ; preds = %if.end147
  %100 = ptrtoint ptr %gfx_actual_soft_max_freq136 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %gfx_actual_soft_max_freq136, align 8
  %call157 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 130, i32 noundef %101, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  %102 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %smu, align 8
  br i1 %tobool158.not, label %if.end165, label %do.end162

do.end162:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.55) #12
  br label %cleanup

if.end165:                                        ; preds = %if.end155
  %fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %103, i32 0, i32 98, i32 17
  %106 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %fw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 71244544, i32 %107)
  %cmp167 = icmp ult i32 %107, 71244544
  br i1 %cmp167, label %do.end172, label %if.end175

do.end172:                                        ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #11
  %108 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %103, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %109, ptr noundef nonnull @.str.58) #12
  br label %cleanup

if.end175:                                        ; preds = %if.end165
  %cpu_core_id_select176 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 62
  %110 = ptrtoint ptr %cpu_core_id_select176 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cpu_core_id_select176, align 4
  %shl = shl i32 %111, 20
  %cpu_actual_soft_min_freq177 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 60
  %112 = ptrtoint ptr %cpu_actual_soft_min_freq177 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cpu_actual_soft_min_freq177, align 4
  %or = or i32 %shl, %113
  %call178 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 187, i32 noundef %or, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %if.end186, label %do.end183

do.end183:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #11
  %114 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %smu, align 8
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.61) #12
  br label %cleanup

if.end186:                                        ; preds = %if.end175
  %118 = ptrtoint ptr %cpu_core_id_select176 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %cpu_core_id_select176, align 4
  %shl188 = shl i32 %119, 20
  %cpu_actual_soft_max_freq189 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 61
  %120 = ptrtoint ptr %cpu_actual_soft_max_freq189 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %cpu_actual_soft_max_freq189, align 8
  %or190 = or i32 %shl188, %121
  %call191 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 188, i32 noundef %or190, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %if.end186.cleanup_crit_edge, label %do.end196

if.end186.cleanup_crit_edge:                      ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end196:                                        ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %smu, align 8
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.64) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end196, %if.end186.cleanup_crit_edge, %do.end183, %do.end172, %do.end162, %do.end152, %do.end142, %do.end131, %if.else115, %do.end112, %if.end101, %do.end96, %if.end83, %do.end78, %if.end67.cleanup_crit_edge, %do.end64, %if.end53, %do.end48, %if.end36, %do.end31, %if.end19.cleanup_crit_edge, %do.end5, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end131 ], [ -22, %do.end142 ], [ %call, %do.end152 ], [ %call157, %do.end162 ], [ %call178, %do.end183 ], [ %call191, %do.end196 ], [ -22, %do.end112 ], [ -22, %do.end64 ], [ -22, %do.end78 ], [ -22, %do.end96 ], [ -22, %do.end5 ], [ -22, %do.end31 ], [ -22, %do.end48 ], [ -22, %do.end ], [ -22, %if.end19.cleanup_crit_edge ], [ -22, %if.end67.cleanup_crit_edge ], [ -38, %if.end.cleanup_crit_edge ], [ 0, %if.end186.cleanup_crit_edge ], [ 0, %if.end83 ], [ 0, %if.end101 ], [ 0, %if.end36 ], [ 0, %if.end53 ], [ 0, %do.end172 ], [ 0, %if.else115 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vangogh_get_power_profile_mode(ptr noundef %smu, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %power_profile_mode = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 40
  %call = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 5, i32 noundef 0) #9
  %sext.mask = and i32 %call, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask)
  %cmp2.not = icmp eq i32 %sext.mask, 0
  br i1 %cmp2.not, label %if.end5, label %for.cond.preheader.for.inc_crit_edge

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end5:                                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_pp_profile_name to i32))
  %0 = load ptr, ptr @amdgpu_pp_profile_name, align 4
  %1 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %power_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp6 = icmp eq i32 %2, 0
  %cond = select i1 %cmp6, ptr @.str.14, ptr @.str.67
  %call8 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull @.str.66, i32 noundef 0, ptr noundef %0, ptr noundef nonnull %cond) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end5, %for.cond.preheader.for.inc_crit_edge
  %size.1 = phi i32 [ 0, %for.cond.preheader.for.inc_crit_edge ], [ %call8, %if.end5 ]
  %call.1 = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 5, i32 noundef 1) #9
  %sext.mask.1 = and i32 %call.1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.1)
  %cmp2.not.1 = icmp eq i32 %sext.mask.1, 0
  br i1 %cmp2.not.1, label %if.end5.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.end5.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 1), align 4
  %4 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp6.1 = icmp eq i32 %5, 1
  %cond.1 = select i1 %cmp6.1, ptr @.str.14, ptr @.str.67
  %call8.1 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef nonnull %buf, i32 noundef %size.1, ptr noundef nonnull @.str.66, i32 noundef 1, ptr noundef %3, ptr noundef nonnull %cond.1) #9
  %add.1 = add i32 %call8.1, %size.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end5.1, %for.inc.for.inc.1_crit_edge
  %size.1.1 = phi i32 [ %size.1, %for.inc.for.inc.1_crit_edge ], [ %add.1, %if.end5.1 ]
  %call.2 = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 5, i32 noundef 2) #9
  %sext.mask.2 = and i32 %call.2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.2)
  %cmp2.not.2 = icmp eq i32 %sext.mask.2, 0
  br i1 %cmp2.not.2, label %if.end5.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.end5.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 2) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 2), align 4
  %7 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %power_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp6.2 = icmp eq i32 %8, 2
  %cond.2 = select i1 %cmp6.2, ptr @.str.14, ptr @.str.67
  %call8.2 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef nonnull %buf, i32 noundef %size.1.1, ptr noundef nonnull @.str.66, i32 noundef 2, ptr noundef %6, ptr noundef nonnull %cond.2) #9
  %add.2 = add i32 %call8.2, %size.1.1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end5.2, %for.inc.1.for.inc.2_crit_edge
  %size.1.2 = phi i32 [ %size.1.1, %for.inc.1.for.inc.2_crit_edge ], [ %add.2, %if.end5.2 ]
  %call.3 = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 5, i32 noundef 3) #9
  %sext.mask.3 = and i32 %call.3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.3)
  %cmp2.not.3 = icmp eq i32 %sext.mask.3, 0
  br i1 %cmp2.not.3, label %if.end5.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.end5.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 3) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 3), align 4
  %10 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %power_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp6.3 = icmp eq i32 %11, 3
  %cond.3 = select i1 %cmp6.3, ptr @.str.14, ptr @.str.67
  %call8.3 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef nonnull %buf, i32 noundef %size.1.2, ptr noundef nonnull @.str.66, i32 noundef 3, ptr noundef %9, ptr noundef nonnull %cond.3) #9
  %add.3 = add i32 %call8.3, %size.1.2
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end5.3, %for.inc.2.for.inc.3_crit_edge
  %size.1.3 = phi i32 [ %size.1.2, %for.inc.2.for.inc.3_crit_edge ], [ %add.3, %if.end5.3 ]
  %call.4 = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 5, i32 noundef 4) #9
  %sext.mask.4 = and i32 %call.4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.4)
  %cmp2.not.4 = icmp eq i32 %sext.mask.4, 0
  br i1 %cmp2.not.4, label %if.end5.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

if.end5.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 4) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 4), align 4
  %13 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %power_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp6.4 = icmp eq i32 %14, 4
  %cond.4 = select i1 %cmp6.4, ptr @.str.14, ptr @.str.67
  %call8.4 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef nonnull %buf, i32 noundef %size.1.3, ptr noundef nonnull @.str.66, i32 noundef 4, ptr noundef %12, ptr noundef nonnull %cond.4) #9
  %add.4 = add i32 %call8.4, %size.1.3
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end5.4, %for.inc.3.for.inc.4_crit_edge
  %size.1.4 = phi i32 [ %size.1.3, %for.inc.3.for.inc.4_crit_edge ], [ %add.4, %if.end5.4 ]
  %call.5 = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 5, i32 noundef 5) #9
  %sext.mask.5 = and i32 %call.5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.5)
  %cmp2.not.5 = icmp eq i32 %sext.mask.5, 0
  br i1 %cmp2.not.5, label %if.end5.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

if.end5.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 5) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 5), align 4
  %16 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %power_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %17)
  %cmp6.5 = icmp eq i32 %17, 5
  %cond.5 = select i1 %cmp6.5, ptr @.str.14, ptr @.str.67
  %call8.5 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef nonnull %buf, i32 noundef %size.1.4, ptr noundef nonnull @.str.66, i32 noundef 5, ptr noundef %15, ptr noundef nonnull %cond.5) #9
  %add.5 = add i32 %call8.5, %size.1.4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end5.5, %for.inc.4.for.inc.5_crit_edge
  %size.1.5 = phi i32 [ %size.1.4, %for.inc.4.for.inc.5_crit_edge ], [ %add.5, %if.end5.5 ]
  %call.6 = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 5, i32 noundef 6) #9
  %sext.mask.6 = and i32 %call.6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.6)
  %cmp2.not.6 = icmp eq i32 %sext.mask.6, 0
  br i1 %cmp2.not.6, label %if.end5.6, label %for.inc.5.cleanup_crit_edge

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 6) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 6), align 4
  %19 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %power_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %20)
  %cmp6.6 = icmp eq i32 %20, 6
  %cond.6 = select i1 %cmp6.6, ptr @.str.14, ptr @.str.67
  %call8.6 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef nonnull %buf, i32 noundef %size.1.5, ptr noundef nonnull @.str.66, i32 noundef 6, ptr noundef %18, ptr noundef nonnull %cond.6) #9
  %add.6 = add i32 %call8.6, %size.1.5
  br label %cleanup

cleanup:                                          ; preds = %if.end5.6, %for.inc.5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %size.1.5, %for.inc.5.cleanup_crit_edge ], [ %add.6, %if.end5.6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vangogh_set_power_profile_mode(ptr noundef %smu, ptr nocapture noundef readonly %input, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i32, ptr %input, i32 %size
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp ugt i32 %1, 6
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.68, i32 noundef %1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %1, label %if.end4 [
    i32 0, label %if.end.cleanup_crit_edge
    i32 2, label %if.end.cleanup_crit_edge51
  ]

if.end.cleanup_crit_edge51:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 5, i32 noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %do.body7, label %if.end17

do.body7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vangogh_set_power_profile_mode.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vangogh_set_power_profile_mode, %if.then11)) #9
          to label %cleanup [label %if.then11], !srcloc !192

if.then11:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %smu, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vangogh_set_power_profile_mode.__UNIQUE_ID_ddebug343, ptr noundef %10, ptr noundef nonnull @.str.71, i32 noundef %1) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end4
  %shl = shl nuw i32 1, %call
  %call18 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 111, i32 noundef %shl, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end32, label %do.body21

do.body21:                                        ; preds = %if.end17
  %.b49 = load i1, ptr @vangogh_set_power_profile_mode.__print_once, align 1
  br i1 %.b49, label %do.body21.cleanup_crit_edge, label %if.then23

do.body21.cleanup_crit_edge:                      ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then23:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @vangogh_set_power_profile_mode.__print_once, align 1
  %11 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %smu, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.73, i32 noundef %call) #12
  br label %cleanup

if.end32:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
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
define internal i32 @vangogh_dpm_set_vcn_enable(ptr noundef %smu, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 85, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end7_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 86, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else.if.end7_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end7:                                          ; preds = %if.else.if.end7_crit_edge, %if.then.if.end7_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %call, %if.then.cleanup_crit_edge ], [ %call3, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vangogh_dpm_set_jpeg_enable(ptr noundef %smu, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 87, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end7_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 88, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else.if.end7_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end7:                                          ; preds = %if.else.if.end7_crit_edge, %if.then.if.end7_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %call, %if.then.cleanup_crit_edge ], [ %call3, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vangogh_read_sensor(ptr noundef %smu, i32 noundef %sensor, ptr noundef %data, ptr noundef writeonly %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  %tobool1.not = icmp eq ptr %size, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sensor_lock = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %sensor_lock, i32 noundef 0) #9
  %0 = zext i32 %sensor to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %sensor, label %if.end.sw.epilog_crit_edge [
    i32 7, label %sw.bb
    i32 15, label %sw.bb2
    i32 10, label %sw.bb4
    i32 11, label %sw.bb6
    i32 9, label %sw.bb8
    i32 0, label %sw.bb10
    i32 3, label %sw.bb13
    i32 2, label %sw.bb15
    i32 1, label %sw.bb17
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc i32 @vangogh_common_get_smu_metrics_data(ptr noundef %smu, i32 noundef 16, ptr noundef nonnull %data)
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call fastcc i32 @vangogh_common_get_smu_metrics_data(ptr noundef %smu, i32 noundef 19, ptr noundef nonnull %data)
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call fastcc i32 @vangogh_common_get_smu_metrics_data(ptr noundef %smu, i32 noundef 20, ptr noundef nonnull %data)
  br label %sw.epilog.sink.split

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call fastcc i32 @vangogh_common_get_smu_metrics_data(ptr noundef %smu, i32 noundef 21, ptr noundef nonnull %data)
  br label %sw.epilog.sink.split

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call fastcc i32 @vangogh_common_get_smu_metrics_data(ptr noundef %smu, i32 noundef 2, ptr noundef nonnull %data)
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data, align 4
  %mul = mul i32 %2, 100
  store i32 %mul, ptr %data, align 4
  br label %sw.epilog.sink.split

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call fastcc i32 @vangogh_common_get_smu_metrics_data(ptr noundef %smu, i32 noundef 0, ptr noundef nonnull %data)
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 4
  %mul12 = mul i32 %4, 100
  store i32 %mul12, ptr %data, align 4
  br label %sw.epilog.sink.split

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call fastcc i32 @vangogh_common_get_smu_metrics_data(ptr noundef %smu, i32 noundef 29, ptr noundef nonnull %data)
  br label %sw.epilog.sink.split

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = tail call fastcc i32 @vangogh_common_get_smu_metrics_data(ptr noundef %smu, i32 noundef 28, ptr noundef nonnull %data)
  br label %sw.epilog.sink.split

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call fastcc i32 @vangogh_common_get_smu_metrics_data(ptr noundef %smu, i32 noundef 9, ptr noundef nonnull %data)
  %cpu_core_num = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 63
  %5 = ptrtoint ptr %cpu_core_num to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cpu_core_num, align 8
  %conv = zext i16 %6 to i32
  %mul19 = shl nuw nsw i32 %conv, 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  %mul19.sink = phi i32 [ %mul19, %sw.bb17 ], [ 4, %sw.bb15 ], [ 4, %sw.bb13 ], [ 4, %sw.bb10 ], [ 4, %sw.bb8 ], [ 4, %sw.bb6 ], [ 4, %sw.bb4 ], [ 4, %sw.bb2 ], [ 4, %sw.bb ]
  %ret.0.ph = phi i32 [ %call18, %sw.bb17 ], [ %call16, %sw.bb15 ], [ %call14, %sw.bb13 ], [ %call11, %sw.bb10 ], [ %call9, %sw.bb8 ], [ %call7, %sw.bb6 ], [ %call5, %sw.bb4 ], [ %call3, %sw.bb2 ], [ %call, %sw.bb ]
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul19.sink, ptr %size, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %if.end.sw.epilog_crit_edge ], [ %ret.0.ph, %sw.epilog.sink.split ]
  tail call void @mutex_unlock(ptr noundef %sensor_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @vangogh_is_dpm_running(ptr noundef %smu) #1 align 64 {
entry:
  %feature_mask = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %feature_mask) #9
  %2 = ptrtoint ptr %feature_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %feature_mask, align 4, !annotation !190
  %3 = getelementptr inbounds [2 x i32], ptr %feature_mask, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !190
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 137
  %5 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %in_suspend, align 1, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @smu_cmn_get_enabled_32_bits_mask(ptr noundef %smu, ptr noundef nonnull %feature_mask, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %feature_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %feature_mask, align 4
  %9 = and i32 %8, 1042433
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9 = icmp ne i32 %9, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool9, %if.end4 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %feature_mask) #9
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vangogh_set_watermarks_table(ptr noundef %smu, ptr noundef readonly %clock_ranges) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %entry
  %2 = ptrtoint ptr %clock_ranges to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clock_ranges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %if.then3.cleanup_crit_edge, label %lor.lhs.false4

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond32.preheader

for.cond32.preheaderthread-pre-split:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end72

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then79:                                        ; preds = %for.end72
  %call = tail call i32 @smu_cmn_write_watermarks_table(ptr noundef %smu) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool80.not = icmp eq i32 %call, 0
  br i1 %tobool80.not, label %if.end82, label %do.end

do.end:                                           ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %smu, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.76) #12
  br label %cleanup

if.end82:                                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
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
define internal i32 @vangogh_set_performance_level(ptr noundef %smu, i32 noundef %level) #1 align 64 {
entry:
  %vclk_freq.i = alloca i32, align 4
  %dclk_freq.i = alloca i32, align 4
  %min_freq.i = alloca i32, align 4
  %max_freq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu_default_soft_min_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 58
  %0 = ptrtoint ptr %cpu_default_soft_min_freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu_default_soft_min_freq, align 4
  %cpu_actual_soft_min_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 60
  %2 = ptrtoint ptr %cpu_actual_soft_min_freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %cpu_actual_soft_min_freq, align 4
  %cpu_default_soft_max_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 59
  %3 = ptrtoint ptr %cpu_default_soft_max_freq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu_default_soft_max_freq, align 8
  %cpu_actual_soft_max_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 61
  %5 = ptrtoint ptr %cpu_actual_soft_max_freq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cpu_actual_soft_max_freq, align 8
  %6 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %level, label %entry.cleanup_crit_edge [
    i32 8, label %sw.bb
    i32 4, label %sw.bb2
    i32 1, label %sw.bb10
    i32 16, label %sw.bb19
    i32 32, label %sw.bb33
    i32 64, label %sw.bb38
    i32 128, label %sw.bb49
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %gfx_default_soft_max_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 55
  %7 = ptrtoint ptr %gfx_default_soft_max_freq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gfx_default_soft_max_freq, align 8
  %gfx_actual_hard_min_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %9 = ptrtoint ptr %gfx_actual_hard_min_freq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %gfx_actual_hard_min_freq, align 4
  %gfx_actual_soft_max_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %10 = ptrtoint ptr %gfx_actual_soft_max_freq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %gfx_actual_soft_max_freq, align 8
  %call = tail call fastcc i32 @vangogh_force_dpm_limit_value(ptr noundef %smu, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %gfx_default_hard_min_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 54
  %11 = ptrtoint ptr %gfx_default_hard_min_freq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gfx_default_hard_min_freq, align 4
  %gfx_actual_hard_min_freq3 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %13 = ptrtoint ptr %gfx_actual_hard_min_freq3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %gfx_actual_hard_min_freq3, align 4
  %gfx_actual_soft_max_freq5 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %14 = ptrtoint ptr %gfx_actual_soft_max_freq5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %gfx_actual_soft_max_freq5, align 8
  %call6 = tail call fastcc i32 @vangogh_force_dpm_limit_value(ptr noundef %smu, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %sw.bb2.sw.epilog_crit_edge, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %gfx_default_hard_min_freq11 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 54
  %15 = ptrtoint ptr %gfx_default_hard_min_freq11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gfx_default_hard_min_freq11, align 4
  %gfx_actual_hard_min_freq12 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %17 = ptrtoint ptr %gfx_actual_hard_min_freq12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %gfx_actual_hard_min_freq12, align 4
  %gfx_default_soft_max_freq13 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 55
  %18 = ptrtoint ptr %gfx_default_soft_max_freq13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gfx_default_soft_max_freq13, align 8
  %gfx_actual_soft_max_freq14 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %20 = ptrtoint ptr %gfx_actual_soft_max_freq14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %gfx_actual_soft_max_freq14, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_freq.i) #9
  %21 = ptrtoint ptr %min_freq.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %min_freq.i, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_freq.i) #9
  %22 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %max_freq.i, align 4, !annotation !190
  %call.i = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.bb10.for.inc.i_crit_edge, label %if.end.i

sw.bb10.for.inc.i_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %sw.bb10
  %call.i.i201 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i201)
  %tobool.not.i.not.i202 = icmp eq i32 %call.i.i201, 0
  br i1 %tobool.not.i.not.i202, label %if.then.i203, label %if.end21.i208

if.then.i203:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %fclk.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 16
  %23 = ptrtoint ptr %fclk.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fclk.i, align 8
  %div.i205 = udiv i32 %24, 100
  %25 = ptrtoint ptr %min_freq.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div.i205, ptr %min_freq.i, align 4
  %26 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div.i205, ptr %max_freq.i, align 4
  br label %if.end6.i

if.end21.i208:                                    ; preds = %if.end.i
  %clocks_table.i.i209 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %27 = ptrtoint ptr %clocks_table.i.i209 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clocks_table.i.i209, align 4
  %tobool.not.i160.i = icmp eq ptr %28, null
  br i1 %tobool.not.i160.i, label %if.end21.i208.vangogh_unforce_dpm_levels.exit.thread_crit_edge, label %if.end.i161.i

if.end21.i208.vangogh_unforce_dpm_levels.exit.thread_crit_edge: ; preds = %if.end21.i208
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_unforce_dpm_levels.exit.thread

if.end.i161.i:                                    ; preds = %if.end21.i208
  %NumDfPstatesEnabled29.i162.i = getelementptr inbounds %struct.DpmClocks_t, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %NumDfPstatesEnabled29.i162.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %NumDfPstatesEnabled29.i162.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp31.not.i164.not.i = icmp eq i8 %30, 0
  br i1 %cmp31.not.i164.not.i, label %if.end.i161.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge, label %if.end34.i258.i

if.end.i161.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge: ; preds = %if.end.i161.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_unforce_dpm_levels.exit.thread

if.end34.i258.i:                                  ; preds = %if.end.i161.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx36.i166.i = getelementptr %struct.DpmClocks_t, ptr %28, i32 0, i32 8, i32 0
  %31 = ptrtoint ptr %arrayidx36.i166.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx36.i166.i, align 4
  %33 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %max_freq.i, align 4
  %34 = load i32, ptr %arrayidx36.i166.i, align 4
  %35 = ptrtoint ptr %min_freq.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %min_freq.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end34.i258.i, %if.then.i203
  %36 = ptrtoint ptr %min_freq.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %min_freq.i, align 4
  %38 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_freq.i, align 4
  %call.i.i193 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i193)
  %tobool.not.i.not.i194 = icmp eq i32 %call.i.i193, 0
  br i1 %tobool.not.i.not.i194, label %if.end6.i.for.inc.i_crit_edge, label %if.end.i195

if.end6.i.for.inc.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i195:                                      ; preds = %if.end6.i
  %call9.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 143, i32 noundef %37, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i198, label %if.end.i195.vangogh_unforce_dpm_levels.exit.thread_crit_edge

if.end.i195.vangogh_unforce_dpm_levels.exit.thread_crit_edge: ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_unforce_dpm_levels.exit.thread

if.end12.i198:                                    ; preds = %if.end.i195
  %call13.i196 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 133, i32 noundef %39, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i196)
  %tobool14.not.i197 = icmp eq i32 %call13.i196, 0
  br i1 %tobool14.not.i197, label %if.end12.i198.for.inc.i_crit_edge, label %if.end12.i198.vangogh_unforce_dpm_levels.exit.thread_crit_edge

if.end12.i198.vangogh_unforce_dpm_levels.exit.thread_crit_edge: ; preds = %if.end12.i198
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_unforce_dpm_levels.exit.thread

if.end12.i198.for.inc.i_crit_edge:                ; preds = %if.end12.i198
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end12.i198.for.inc.i_crit_edge, %if.end6.i.for.inc.i_crit_edge, %sw.bb10.for.inc.i_crit_edge
  %call.1.i = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  %call.i.i182 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i182)
  %tobool.not.i.not.i183 = icmp eq i32 %call.i.i182, 0
  br i1 %tobool.not.i.not.i183, label %if.then.i184, label %if.end21.i189

if.then.i184:                                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %socclk.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 3
  %40 = ptrtoint ptr %socclk.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %socclk.i, align 4
  %div.i186 = udiv i32 %41, 100
  %42 = ptrtoint ptr %min_freq.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div.i186, ptr %min_freq.i, align 4
  %43 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %div.i186, ptr %max_freq.i, align 4
  br label %if.end6.1.i

if.end21.i189:                                    ; preds = %if.end.1.i
  %clocks_table.i.i190 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %44 = ptrtoint ptr %clocks_table.i.i190 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clocks_table.i.i190, align 4
  %tobool.not.i147.i = icmp eq ptr %45, null
  br i1 %tobool.not.i147.i, label %if.end21.i189.vangogh_unforce_dpm_levels.exit.thread_crit_edge, label %if.end.i148.i

if.end21.i189.vangogh_unforce_dpm_levels.exit.thread_crit_edge: ; preds = %if.end21.i189
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_unforce_dpm_levels.exit.thread

if.end.i148.i:                                    ; preds = %if.end21.i189
  %NumSocClkLevelsEnabled.i149.i = getelementptr inbounds %struct.DpmClocks_t, ptr %45, i32 0, i32 14
  %46 = ptrtoint ptr %NumSocClkLevelsEnabled.i149.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %NumSocClkLevelsEnabled.i149.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %47)
  %cmp1.not.i151.i = icmp ugt i8 %47, 1
  br i1 %cmp1.not.i151.i, label %if.end.i239.i, label %if.end.i148.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge

if.end.i148.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge: ; preds = %if.end.i148.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_unforce_dpm_levels.exit.thread

if.end.i239.i:                                    ; preds = %if.end.i148.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i153.i = getelementptr %struct.DpmClocks_t, ptr %45, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %arrayidx.i153.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i153.i, align 4
  %50 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %max_freq.i, align 4
  %51 = load i32, ptr %arrayidx.i153.i, align 4
  %52 = ptrtoint ptr %min_freq.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %min_freq.i, align 4
  br label %if.end6.1.i

if.end6.1.i:                                      ; preds = %if.end.i239.i, %if.then.i184
  %53 = ptrtoint ptr %min_freq.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %min_freq.i, align 4
  %55 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_freq.i, align 4
  %call7.1.i = tail call fastcc i32 @vangogh_set_soft_freq_limited_range(ptr noundef %smu, i32 noundef 6, i32 noundef %54, i32 noundef %56) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.1.i)
  %tobool8.not.1.i = icmp eq i32 %call7.1.i, 0
  br i1 %tobool8.not.1.i, label %if.end6.1.i.for.inc.1.i_crit_edge, label %if.end6.1.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge

if.end6.1.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge: ; preds = %if.end6.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_unforce_dpm_levels.exit.thread

if.end6.1.i.for.inc.1.i_crit_edge:                ; preds = %if.end6.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end6.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %call.2.i = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 62) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  %call.i.i = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 62) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.not.i, label %if.then.i, label %if.end21.i

if.then.i:                                        ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %vclk.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 6
  %57 = ptrtoint ptr %vclk.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %vclk.i, align 8
  %div.i = udiv i32 %58, 100
  %59 = ptrtoint ptr %min_freq.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %div.i, ptr %min_freq.i, align 4
  %60 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %div.i, ptr %max_freq.i, align 4
  br label %if.end6.2.i

if.end21.i:                                       ; preds = %if.end.2.i
  %clocks_table.i.i180 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %61 = ptrtoint ptr %clocks_table.i.i180 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %clocks_table.i.i180, align 4
  %tobool.not.i173.i = icmp eq ptr %62, null
  br i1 %tobool.not.i173.i, label %if.end21.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge, label %if.end.i174.i

if.end21.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_unforce_dpm_levels.exit.thread

if.end.i174.i:                                    ; preds = %if.end21.i
  %VcnClkLevelsEnabled.i175.i = getelementptr inbounds %struct.DpmClocks_t, ptr %62, i32 0, i32 16
  %63 = ptrtoint ptr %VcnClkLevelsEnabled.i175.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %VcnClkLevelsEnabled.i175.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %64)
  %cmp7.not.i177.i = icmp ugt i8 %64, 1
  br i1 %cmp7.not.i177.i, label %if.end.i265.i, label %if.end.i174.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge

if.end.i174.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge: ; preds = %if.end.i174.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_unforce_dpm_levels.exit.thread

if.end.i265.i:                                    ; preds = %if.end.i174.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx11.i179.i = getelementptr %struct.DpmClocks_t, ptr %62, i32 0, i32 6, i32 1
  %65 = ptrtoint ptr %arrayidx11.i179.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx11.i179.i, align 4
  %67 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %max_freq.i, align 4
  %68 = load i32, ptr %arrayidx11.i179.i, align 4
  %69 = ptrtoint ptr %min_freq.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %min_freq.i, align 4
  br label %if.end6.2.i

if.end6.2.i:                                      ; preds = %if.end.i265.i, %if.then.i
  %70 = ptrtoint ptr %min_freq.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %min_freq.i, align 4
  %72 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %max_freq.i, align 4
  %call7.2.i = tail call fastcc i32 @vangogh_set_soft_freq_limited_range(ptr noundef %smu, i32 noundef 1, i32 noundef %71, i32 noundef %73) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.2.i)
  %tobool8.not.2.i = icmp eq i32 %call7.2.i, 0
  br i1 %tobool8.not.2.i, label %if.end6.2.i.for.inc.2.i_crit_edge, label %if.end6.2.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge

if.end6.2.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge: ; preds = %if.end6.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_unforce_dpm_levels.exit.thread

if.end6.2.i.for.inc.2.i_crit_edge:                ; preds = %if.end6.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end6.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %call.3.i = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 62) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.vangogh_unforce_dpm_levels.exit_crit_edge, label %if.end.3.i

for.inc.2.i.vangogh_unforce_dpm_levels.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_unforce_dpm_levels.exit

if.end.3.i:                                       ; preds = %for.inc.2.i
  %call3.3.i = call fastcc i32 @vangogh_get_dpm_ultimate_freq(ptr noundef %smu, i32 noundef 2, ptr noundef nonnull %min_freq.i, ptr noundef nonnull %max_freq.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.3.i)
  %tobool4.not.3.i = icmp eq i32 %call3.3.i, 0
  br i1 %tobool4.not.3.i, label %if.end6.3.i, label %if.end.3.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge

if.end.3.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge: ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_unforce_dpm_levels.exit.thread

if.end6.3.i:                                      ; preds = %if.end.3.i
  %74 = ptrtoint ptr %min_freq.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %min_freq.i, align 4
  %76 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %max_freq.i, align 4
  %call7.3.i = call fastcc i32 @vangogh_set_soft_freq_limited_range(ptr noundef %smu, i32 noundef 2, i32 noundef %75, i32 noundef %77) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.3.i)
  %tobool8.not.3.i = icmp eq i32 %call7.3.i, 0
  br i1 %tobool8.not.3.i, label %if.end6.3.i.vangogh_unforce_dpm_levels.exit_crit_edge, label %if.end6.3.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge

if.end6.3.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge: ; preds = %if.end6.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_unforce_dpm_levels.exit.thread

if.end6.3.i.vangogh_unforce_dpm_levels.exit_crit_edge: ; preds = %if.end6.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_unforce_dpm_levels.exit

vangogh_unforce_dpm_levels.exit.thread:           ; preds = %if.end6.3.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge, %if.end.3.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge, %if.end6.2.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge, %if.end.i174.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge, %if.end21.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge, %if.end6.1.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge, %if.end.i148.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge, %if.end21.i189.vangogh_unforce_dpm_levels.exit.thread_crit_edge, %if.end12.i198.vangogh_unforce_dpm_levels.exit.thread_crit_edge, %if.end.i195.vangogh_unforce_dpm_levels.exit.thread_crit_edge, %if.end.i161.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge, %if.end21.i208.vangogh_unforce_dpm_levels.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call13.i196, %if.end12.i198.vangogh_unforce_dpm_levels.exit.thread_crit_edge ], [ %call9.i, %if.end.i195.vangogh_unforce_dpm_levels.exit.thread_crit_edge ], [ -22, %if.end.i161.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge ], [ -22, %if.end21.i208.vangogh_unforce_dpm_levels.exit.thread_crit_edge ], [ %call7.3.i, %if.end6.3.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge ], [ %call3.3.i, %if.end.3.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge ], [ %call7.2.i, %if.end6.2.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge ], [ %call7.1.i, %if.end6.1.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge ], [ -22, %if.end21.i189.vangogh_unforce_dpm_levels.exit.thread_crit_edge ], [ -22, %if.end.i148.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge ], [ -22, %if.end21.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge ], [ -22, %if.end.i174.i.vangogh_unforce_dpm_levels.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_freq.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_freq.i) #9
  br label %cleanup

vangogh_unforce_dpm_levels.exit:                  ; preds = %if.end6.3.i.vangogh_unforce_dpm_levels.exit_crit_edge, %for.inc.2.i.vangogh_unforce_dpm_levels.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_freq.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_freq.i) #9
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %gfx_actual_hard_min_freq20 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %78 = ptrtoint ptr %gfx_actual_hard_min_freq20 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1100, ptr %gfx_actual_hard_min_freq20, align 4
  %gfx_actual_soft_max_freq21 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %79 = ptrtoint ptr %gfx_actual_soft_max_freq21 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1100, ptr %gfx_actual_soft_max_freq21, align 8
  %clocks_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %80 = ptrtoint ptr %clocks_table.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %clocks_table.i, align 4
  %tobool.not.i152.i = icmp eq ptr %81, null
  br i1 %tobool.not.i152.i, label %sw.bb19.sw.epilog_crit_edge, label %if.end.i153.i

sw.bb19.sw.epilog_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i153.i:                                    ; preds = %sw.bb19
  %NumDfPstatesEnabled29.i.i = getelementptr inbounds %struct.DpmClocks_t, ptr %81, i32 0, i32 11
  %82 = ptrtoint ptr %NumDfPstatesEnabled29.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %NumDfPstatesEnabled29.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %cmp31.not.i.i.not = icmp eq i8 %83, 0
  br i1 %cmp31.not.i.i.not, label %if.end.i153.i.vangogh_force_clk_levels.exit_crit_edge, label %if.end29.i

if.end.i153.i.vangogh_force_clk_levels.exit_crit_edge: ; preds = %if.end.i153.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_force_clk_levels.exit

if.end29.i:                                       ; preds = %if.end.i153.i
  %arrayidx36.i.i = getelementptr %struct.DpmClocks_t, ptr %81, i32 0, i32 8, i32 0
  %84 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx36.i.i, align 4
  %call30.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 133, i32 noundef %85, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end29.i.vangogh_force_clk_levels.exit_crit_edge

if.end29.i.vangogh_force_clk_levels.exit_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_force_clk_levels.exit

if.end33.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  %call34.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 143, i32 noundef %85, ptr noundef null) #9
  br label %vangogh_force_clk_levels.exit

vangogh_force_clk_levels.exit:                    ; preds = %if.end33.i, %if.end29.i.vangogh_force_clk_levels.exit_crit_edge, %if.end.i153.i.vangogh_force_clk_levels.exit_crit_edge
  %86 = ptrtoint ptr %clocks_table.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %.pr = load ptr, ptr %clocks_table.i, align 4
  %tobool.not.i.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i.i, label %vangogh_force_clk_levels.exit.sw.epilog_crit_edge, label %if.end.i.i

vangogh_force_clk_levels.exit.sw.epilog_crit_edge: ; preds = %vangogh_force_clk_levels.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i.i:                                       ; preds = %vangogh_force_clk_levels.exit
  %NumSocClkLevelsEnabled.i.i = getelementptr inbounds %struct.DpmClocks_t, ptr %.pr, i32 0, i32 14
  %87 = ptrtoint ptr %NumSocClkLevelsEnabled.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %NumSocClkLevelsEnabled.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %88)
  %cmp1.not.i.i = icmp ugt i8 %88, 1
  br i1 %cmp1.not.i.i, label %if.end12.i, label %if.end.i.i.vangogh_force_clk_levels.exit136_crit_edge

if.end.i.i.vangogh_force_clk_levels.exit136_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_force_clk_levels.exit136

if.end12.i:                                       ; preds = %if.end.i.i
  %arrayidx.i.i = getelementptr %struct.DpmClocks_t, ptr %.pr, i32 0, i32 3, i32 1
  %89 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx.i.i, align 4
  %call13.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 132, i32 noundef %90, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end12.i.vangogh_force_clk_levels.exit136_crit_edge

if.end12.i.vangogh_force_clk_levels.exit136_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_force_clk_levels.exit136

if.end16.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %call17.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 116, i32 noundef %90, ptr noundef null) #9
  br label %vangogh_force_clk_levels.exit136

vangogh_force_clk_levels.exit136:                 ; preds = %if.end16.i, %if.end12.i.vangogh_force_clk_levels.exit136_crit_edge, %if.end.i.i.vangogh_force_clk_levels.exit136_crit_edge
  %91 = ptrtoint ptr %clocks_table.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %.pr224 = load ptr, ptr %clocks_table.i, align 4
  %tobool.not.i167.i = icmp eq ptr %.pr224, null
  br i1 %tobool.not.i167.i, label %vangogh_force_clk_levels.exit136.sw.epilog_crit_edge, label %if.end.i168.i

vangogh_force_clk_levels.exit136.sw.epilog_crit_edge: ; preds = %vangogh_force_clk_levels.exit136
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i168.i:                                    ; preds = %vangogh_force_clk_levels.exit136
  %VcnClkLevelsEnabled.i.i = getelementptr inbounds %struct.DpmClocks_t, ptr %.pr224, i32 0, i32 16
  %92 = ptrtoint ptr %VcnClkLevelsEnabled.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %VcnClkLevelsEnabled.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %93)
  %cmp7.not.i.i = icmp ugt i8 %93, 1
  br i1 %cmp7.not.i.i, label %if.end46.i, label %if.end.i168.i.vangogh_force_clk_levels.exit140_crit_edge

if.end.i168.i.vangogh_force_clk_levels.exit140_crit_edge: ; preds = %if.end.i168.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_force_clk_levels.exit140

if.end46.i:                                       ; preds = %if.end.i168.i
  %arrayidx11.i.i = getelementptr %struct.DpmClocks_t, ptr %.pr224, i32 0, i32 6, i32 1
  %94 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx11.i.i, align 4
  %shl.i = shl i32 %95, 16
  %call47.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 108, i32 noundef %shl.i, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.end50.i, label %if.end46.i.vangogh_force_clk_levels.exit140_crit_edge

if.end46.i.vangogh_force_clk_levels.exit140_crit_edge: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_force_clk_levels.exit140

if.end50.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  %call52.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 134, i32 noundef %shl.i, ptr noundef null) #9
  br label %vangogh_force_clk_levels.exit140

vangogh_force_clk_levels.exit140:                 ; preds = %if.end50.i, %if.end46.i.vangogh_force_clk_levels.exit140_crit_edge, %if.end.i168.i.vangogh_force_clk_levels.exit140_crit_edge
  %96 = ptrtoint ptr %clocks_table.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %.pr226.pr = load ptr, ptr %clocks_table.i, align 4
  %tobool.not.i182.i = icmp eq ptr %.pr226.pr, null
  br i1 %tobool.not.i182.i, label %vangogh_force_clk_levels.exit140.sw.epilog_crit_edge, label %if.end.i183.i

vangogh_force_clk_levels.exit140.sw.epilog_crit_edge: ; preds = %vangogh_force_clk_levels.exit140
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i183.i:                                    ; preds = %vangogh_force_clk_levels.exit140
  %VcnClkLevelsEnabled13.i.i = getelementptr inbounds %struct.DpmClocks_t, ptr %.pr226.pr, i32 0, i32 16
  %97 = ptrtoint ptr %VcnClkLevelsEnabled13.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %VcnClkLevelsEnabled13.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %98)
  %cmp15.not.i.i = icmp ugt i8 %98, 1
  br i1 %cmp15.not.i.i, label %if.end64.i, label %if.end.i183.i.sw.epilog_crit_edge

if.end.i183.i.sw.epilog_crit_edge:                ; preds = %if.end.i183.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end64.i:                                       ; preds = %if.end.i183.i
  %dclk.i.i = getelementptr %struct.DpmClocks_t, ptr %.pr226.pr, i32 0, i32 6, i32 1, i32 1
  %99 = ptrtoint ptr %dclk.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dclk.i.i, align 4
  %call65.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 108, i32 noundef %100, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %if.end68.i, label %if.end64.i.sw.epilog_crit_edge

if.end64.i.sw.epilog_crit_edge:                   ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end68.i:                                       ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #11
  %call69.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 134, i32 noundef %100, ptr noundef null) #9
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %gfx_default_hard_min_freq34 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 54
  %101 = ptrtoint ptr %gfx_default_hard_min_freq34 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %gfx_default_hard_min_freq34, align 4
  %gfx_actual_hard_min_freq35 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %103 = ptrtoint ptr %gfx_actual_hard_min_freq35 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %gfx_actual_hard_min_freq35, align 4
  %gfx_actual_soft_max_freq37 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %104 = ptrtoint ptr %gfx_actual_soft_max_freq37 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %102, ptr %gfx_actual_soft_max_freq37, align 8
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry
  %gfx_default_hard_min_freq39 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 54
  %105 = ptrtoint ptr %gfx_default_hard_min_freq39 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %gfx_default_hard_min_freq39, align 4
  %gfx_actual_hard_min_freq40 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %107 = ptrtoint ptr %gfx_actual_hard_min_freq40 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %gfx_actual_hard_min_freq40, align 4
  %gfx_default_soft_max_freq41 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 55
  %108 = ptrtoint ptr %gfx_default_soft_max_freq41 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %gfx_default_soft_max_freq41, align 8
  %gfx_actual_soft_max_freq42 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %110 = ptrtoint ptr %gfx_actual_soft_max_freq42 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %gfx_actual_soft_max_freq42, align 8
  %clocks_table.i145 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %111 = ptrtoint ptr %clocks_table.i145 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %clocks_table.i145, align 4
  %NumDfPstatesEnabled.i = getelementptr inbounds %struct.DpmClocks_t, ptr %112, i32 0, i32 11
  %113 = ptrtoint ptr %NumDfPstatesEnabled.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %NumDfPstatesEnabled.i, align 4
  %conv.i = zext i8 %114 to i32
  %sub6.i = add nsw i32 %conv.i, -1
  %shl47 = shl nuw i32 1, %sub6.i
  %115 = tail call i32 @llvm.ctlz.i32(i32 %shl47, i1 true) #9, !range !191
  %sub3.i148 = xor i32 %115, 31
  %tobool.not.i152.i150 = icmp ne ptr %112, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %cmp31.not.i.i153 = icmp ne i8 %114, 0
  %or.cond = select i1 %tobool.not.i152.i150, i1 %cmp31.not.i.i153, i1 false
  br i1 %or.cond, label %if.end.i158.i158, label %sw.bb38.sw.epilog_crit_edge

sw.bb38.sw.epilog_crit_edge:                      ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i158.i158:                                 ; preds = %sw.bb38
  %arrayidx36.i.i155 = getelementptr %struct.DpmClocks_t, ptr %112, i32 0, i32 8, i32 %sub6.i
  %116 = ptrtoint ptr %arrayidx36.i.i155 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx36.i.i155, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub3.i148, i32 %conv.i)
  %cmp31.not.i161.i157 = icmp ult i32 %sub3.i148, %conv.i
  br i1 %cmp31.not.i161.i157, label %if.end29.i162, label %if.end.i158.i158.sw.epilog_crit_edge

if.end.i158.i158.sw.epilog_crit_edge:             ; preds = %if.end.i158.i158
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end29.i162:                                    ; preds = %if.end.i158.i158
  %arrayidx36.i162.i159 = getelementptr %struct.DpmClocks_t, ptr %112, i32 0, i32 8, i32 %sub3.i148
  %118 = ptrtoint ptr %arrayidx36.i162.i159 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx36.i162.i159, align 4
  %call30.i160 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 133, i32 noundef %119, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i160)
  %tobool31.not.i161 = icmp eq i32 %call30.i160, 0
  br i1 %tobool31.not.i161, label %if.end33.i165, label %if.end29.i162.sw.epilog_crit_edge

if.end29.i162.sw.epilog_crit_edge:                ; preds = %if.end29.i162
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end33.i165:                                    ; preds = %if.end29.i162
  call void @__sanitizer_cov_trace_pc() #11
  %call34.i163 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 143, i32 noundef %117, ptr noundef null) #9
  br label %sw.epilog

sw.bb49:                                          ; preds = %entry
  %gfx_actual_hard_min_freq50 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %120 = ptrtoint ptr %gfx_actual_hard_min_freq50 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 1300, ptr %gfx_actual_hard_min_freq50, align 4
  %gfx_actual_soft_max_freq51 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %121 = ptrtoint ptr %gfx_actual_soft_max_freq51 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 1300, ptr %gfx_actual_soft_max_freq51, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vclk_freq.i) #9
  %122 = ptrtoint ptr %vclk_freq.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %vclk_freq.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dclk_freq.i) #9
  %123 = ptrtoint ptr %dclk_freq.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %dclk_freq.i, align 4
  %call.i.i.i = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.not.i.i, label %if.then.i.i, label %if.end21.i.i

if.then.i.i:                                      ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #11
  %fclk.i.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 16
  %124 = ptrtoint ptr %fclk.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %fclk.i.i, align 8
  %div19.i.i = udiv i32 %125, 100
  br label %if.end.i169

if.end21.i.i:                                     ; preds = %sw.bb49
  %clocks_table.i.i.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %126 = ptrtoint ptr %clocks_table.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %clocks_table.i.i.i, align 4
  %tobool.not.i160.i.i = icmp eq ptr %127, null
  br i1 %tobool.not.i160.i.i, label %if.end21.i.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge, label %if.end.i161.i.i

if.end21.i.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge: ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_set_peak_clock_by_device.exit.thread

if.end.i161.i.i:                                  ; preds = %if.end21.i.i
  %NumDfPstatesEnabled29.i162.i.i = getelementptr inbounds %struct.DpmClocks_t, ptr %127, i32 0, i32 11
  %128 = ptrtoint ptr %NumDfPstatesEnabled29.i162.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %NumDfPstatesEnabled29.i162.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %cmp31.not.i164.not.i.i = icmp eq i8 %129, 0
  br i1 %cmp31.not.i164.not.i.i, label %if.end.i161.i.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge, label %vangogh_get_dpm_clk_limited.exit171.i.i

if.end.i161.i.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge: ; preds = %if.end.i161.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_set_peak_clock_by_device.exit.thread

vangogh_get_dpm_clk_limited.exit171.i.i:          ; preds = %if.end.i161.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx36.i166.i.i = getelementptr %struct.DpmClocks_t, ptr %127, i32 0, i32 8, i32 0
  %130 = ptrtoint ptr %arrayidx36.i166.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx36.i166.i.i, align 4
  br label %if.end.i169

if.end.i169:                                      ; preds = %vangogh_get_dpm_clk_limited.exit171.i.i, %if.then.i.i
  %fclk_freq.0.ph.i = phi i32 [ %131, %vangogh_get_dpm_clk_limited.exit171.i.i ], [ %div19.i.i, %if.then.i.i ]
  %call.i.i56.i = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i56.i)
  %tobool.not.i.not.i57.i = icmp eq i32 %call.i.i56.i, 0
  br i1 %tobool.not.i.not.i57.i, label %if.end.i169.if.end4.i_crit_edge, label %if.end.i.i170

if.end.i169.if.end4.i_crit_edge:                  ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.end.i.i170:                                    ; preds = %if.end.i169
  %call9.i.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 143, i32 noundef %fclk_freq.0.ph.i, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end12.i.i, label %if.end.i.i170.vangogh_set_peak_clock_by_device.exit.thread_crit_edge

if.end.i.i170.vangogh_set_peak_clock_by_device.exit.thread_crit_edge: ; preds = %if.end.i.i170
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_set_peak_clock_by_device.exit.thread

if.end12.i.i:                                     ; preds = %if.end.i.i170
  %call13.i.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 133, i32 noundef %fclk_freq.0.ph.i, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end12.i.i.if.end4.i_crit_edge, label %if.end12.i.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge

if.end12.i.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_set_peak_clock_by_device.exit.thread

if.end12.i.i.if.end4.i_crit_edge:                 ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end12.i.i.if.end4.i_crit_edge, %if.end.i169.if.end4.i_crit_edge
  %call.i.i59.i = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i59.i)
  %tobool.not.i.not.i60.i = icmp eq i32 %call.i.i59.i, 0
  br i1 %tobool.not.i.not.i60.i, label %if.then.i61.i, label %if.end21.i65.i

if.then.i61.i:                                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %socclk.i.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 3
  %132 = ptrtoint ptr %socclk.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %socclk.i.i, align 4
  %div19.i64.i = udiv i32 %133, 100
  br label %if.end8.i

if.end21.i65.i:                                   ; preds = %if.end4.i
  %clocks_table.i.i66.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %134 = ptrtoint ptr %clocks_table.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %clocks_table.i.i66.i, align 4
  %tobool.not.i147.i.i = icmp eq ptr %135, null
  br i1 %tobool.not.i147.i.i, label %if.end21.i65.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge, label %if.end.i148.i.i

if.end21.i65.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge: ; preds = %if.end21.i65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_set_peak_clock_by_device.exit.thread

if.end.i148.i.i:                                  ; preds = %if.end21.i65.i
  %NumSocClkLevelsEnabled.i149.i.i = getelementptr inbounds %struct.DpmClocks_t, ptr %135, i32 0, i32 14
  %136 = ptrtoint ptr %NumSocClkLevelsEnabled.i149.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %NumSocClkLevelsEnabled.i149.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %137)
  %cmp1.not.i151.i.i = icmp ugt i8 %137, 1
  br i1 %cmp1.not.i151.i.i, label %vangogh_get_dpm_clk_limited.exit158.i.i, label %if.end.i148.i.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge

if.end.i148.i.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge: ; preds = %if.end.i148.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_set_peak_clock_by_device.exit.thread

vangogh_get_dpm_clk_limited.exit158.i.i:          ; preds = %if.end.i148.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i153.i.i = getelementptr %struct.DpmClocks_t, ptr %135, i32 0, i32 3, i32 1
  %138 = ptrtoint ptr %arrayidx.i153.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx.i153.i.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %vangogh_get_dpm_clk_limited.exit158.i.i, %if.then.i61.i
  %socclk_freq.0.ph.i = phi i32 [ %139, %vangogh_get_dpm_clk_limited.exit158.i.i ], [ %div19.i64.i, %if.then.i61.i ]
  %call.i.i69.i = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i69.i)
  %tobool.not.i.not.i70.i = icmp eq i32 %call.i.i69.i, 0
  br i1 %tobool.not.i.not.i70.i, label %if.end8.i.if.end12.i173_crit_edge, label %if.end.i71.i

if.end8.i.if.end12.i173_crit_edge:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i173

if.end.i71.i:                                     ; preds = %if.end8.i
  %call18.i.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 116, i32 noundef %socclk_freq.0.ph.i, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %tobool19.not.i.i = icmp eq i32 %call18.i.i, 0
  br i1 %tobool19.not.i.i, label %if.end21.i72.i, label %if.end.i71.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge

if.end.i71.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge: ; preds = %if.end.i71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_set_peak_clock_by_device.exit.thread

if.end21.i72.i:                                   ; preds = %if.end.i71.i
  %call22.i.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 132, i32 noundef %socclk_freq.0.ph.i, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.end21.i72.i.if.end12.i173_crit_edge, label %if.end21.i72.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge

if.end21.i72.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge: ; preds = %if.end21.i72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_set_peak_clock_by_device.exit.thread

if.end21.i72.i.if.end12.i173_crit_edge:           ; preds = %if.end21.i72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i173

if.end12.i173:                                    ; preds = %if.end21.i72.i.if.end12.i173_crit_edge, %if.end8.i.if.end12.i173_crit_edge
  %call13.i171 = call fastcc i32 @vangogh_get_dpm_ultimate_freq(ptr noundef %smu, i32 noundef 1, ptr noundef null, ptr noundef nonnull %vclk_freq.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i171)
  %tobool14.not.i172 = icmp eq i32 %call13.i171, 0
  br i1 %tobool14.not.i172, label %if.end16.i176, label %if.end12.i173.vangogh_set_peak_clock_by_device.exit.thread_crit_edge

if.end12.i173.vangogh_set_peak_clock_by_device.exit.thread_crit_edge: ; preds = %if.end12.i173
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_set_peak_clock_by_device.exit.thread

if.end16.i176:                                    ; preds = %if.end12.i173
  %140 = ptrtoint ptr %vclk_freq.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %vclk_freq.i, align 4
  %call17.i174 = call fastcc i32 @vangogh_set_soft_freq_limited_range(ptr noundef %smu, i32 noundef 1, i32 noundef %141, i32 noundef %141) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i174)
  %tobool18.not.i175 = icmp eq i32 %call17.i174, 0
  br i1 %tobool18.not.i175, label %if.end20.i, label %if.end16.i176.vangogh_set_peak_clock_by_device.exit.thread_crit_edge

if.end16.i176.vangogh_set_peak_clock_by_device.exit.thread_crit_edge: ; preds = %if.end16.i176
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_set_peak_clock_by_device.exit.thread

if.end20.i:                                       ; preds = %if.end16.i176
  %call21.i = call fastcc i32 @vangogh_get_dpm_ultimate_freq(ptr noundef %smu, i32 noundef 2, ptr noundef null, ptr noundef nonnull %dclk_freq.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %vangogh_set_peak_clock_by_device.exit, label %if.end20.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge

if.end20.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_set_peak_clock_by_device.exit.thread

vangogh_set_peak_clock_by_device.exit.thread:     ; preds = %if.end20.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge, %if.end16.i176.vangogh_set_peak_clock_by_device.exit.thread_crit_edge, %if.end12.i173.vangogh_set_peak_clock_by_device.exit.thread_crit_edge, %if.end21.i72.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge, %if.end.i71.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge, %if.end.i148.i.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge, %if.end21.i65.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge, %if.end12.i.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge, %if.end.i.i170.vangogh_set_peak_clock_by_device.exit.thread_crit_edge, %if.end.i161.i.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge, %if.end21.i.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge
  %retval.0.i177.ph = phi i32 [ %call22.i.i, %if.end21.i72.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge ], [ %call18.i.i, %if.end.i71.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge ], [ -22, %if.end.i148.i.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge ], [ -22, %if.end21.i65.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge ], [ %call13.i.i, %if.end12.i.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge ], [ %call9.i.i, %if.end.i.i170.vangogh_set_peak_clock_by_device.exit.thread_crit_edge ], [ -22, %if.end.i161.i.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge ], [ -22, %if.end21.i.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge ], [ %call21.i, %if.end20.i.vangogh_set_peak_clock_by_device.exit.thread_crit_edge ], [ %call17.i174, %if.end16.i176.vangogh_set_peak_clock_by_device.exit.thread_crit_edge ], [ %call13.i171, %if.end12.i173.vangogh_set_peak_clock_by_device.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dclk_freq.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vclk_freq.i) #9
  br label %cleanup

vangogh_set_peak_clock_by_device.exit:            ; preds = %if.end20.i
  %142 = ptrtoint ptr %dclk_freq.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %dclk_freq.i, align 4
  %call25.i = call fastcc i32 @vangogh_set_soft_freq_limited_range(ptr noundef %smu, i32 noundef 2, i32 noundef %143, i32 noundef %143) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dclk_freq.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vclk_freq.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool53.not = icmp eq i32 %call25.i, 0
  br i1 %tobool53.not, label %vangogh_set_peak_clock_by_device.exit.sw.epilog_crit_edge, label %vangogh_set_peak_clock_by_device.exit.cleanup_crit_edge

vangogh_set_peak_clock_by_device.exit.cleanup_crit_edge: ; preds = %vangogh_set_peak_clock_by_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

vangogh_set_peak_clock_by_device.exit.sw.epilog_crit_edge: ; preds = %vangogh_set_peak_clock_by_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %vangogh_set_peak_clock_by_device.exit.sw.epilog_crit_edge, %if.end33.i165, %if.end29.i162.sw.epilog_crit_edge, %if.end.i158.i158.sw.epilog_crit_edge, %sw.bb38.sw.epilog_crit_edge, %sw.bb33, %if.end68.i, %if.end64.i.sw.epilog_crit_edge, %if.end.i183.i.sw.epilog_crit_edge, %vangogh_force_clk_levels.exit140.sw.epilog_crit_edge, %vangogh_force_clk_levels.exit136.sw.epilog_crit_edge, %vangogh_force_clk_levels.exit.sw.epilog_crit_edge, %sw.bb19.sw.epilog_crit_edge, %vangogh_unforce_dpm_levels.exit, %sw.bb2.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %gfx_actual_hard_min_freq57 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 56
  %144 = ptrtoint ptr %gfx_actual_hard_min_freq57 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %gfx_actual_hard_min_freq57, align 4
  %call58 = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 131, i32 noundef %145, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end61:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %gfx_actual_soft_max_freq62 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 57
  %146 = ptrtoint ptr %gfx_actual_soft_max_freq62 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %gfx_actual_soft_max_freq62, align 8
  %call63 = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 130, i32 noundef %147, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %sw.epilog.cleanup_crit_edge, %vangogh_set_peak_clock_by_device.exit.cleanup_crit_edge, %vangogh_set_peak_clock_by_device.exit.thread, %vangogh_unforce_dpm_levels.exit.thread, %sw.bb2.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb.cleanup_crit_edge ], [ %call6, %sw.bb2.cleanup_crit_edge ], [ %call25.i, %vangogh_set_peak_clock_by_device.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call58, %sw.epilog.cleanup_crit_edge ], [ %call63, %if.end61 ], [ %retval.0.i.ph, %vangogh_unforce_dpm_levels.exit.thread ], [ %retval.0.i177.ph, %vangogh_set_peak_clock_by_device.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vangogh_get_power_limit(ptr noundef %smu, ptr noundef writeonly %current_power_limit, ptr noundef writeonly %default_power_limit, ptr noundef writeonly %max_power_limit) #1 align 64 {
entry:
  %ppt_limit = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_power = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 16
  %0 = ptrtoint ptr %smu_power to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_power, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ppt_limit) #9
  %2 = ptrtoint ptr %ppt_limit to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ppt_limit, align 4, !annotation !190
  %3 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %smu, align 8
  %fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %4, i32 0, i32 98, i32 17
  %5 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 71245312, i32 %6)
  %cmp = icmp ult i32 %6, 71245312
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef 196, ptr noundef nonnull %ppt_limit) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %smu, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.78) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq ptr %current_power_limit, null
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %ppt_limit to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ppt_limit, align 4
  %div = udiv i32 %12, 1000
  %13 = ptrtoint ptr %current_power_limit to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div, ptr %current_power_limit, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %tobool8.not = icmp eq ptr %default_power_limit, null
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %ppt_limit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ppt_limit, align 4
  %div10 = udiv i32 %15, 1000
  %16 = ptrtoint ptr %default_power_limit to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div10, ptr %default_power_limit, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  %tobool12.not = icmp eq ptr %max_power_limit, null
  br i1 %tobool12.not, label %if.end11.if.end14_crit_edge, label %if.then13

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %max_power_limit to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 29, ptr %max_power_limit, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11.if.end14_crit_edge
  %call15 = call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef 195, ptr noundef nonnull %ppt_limit) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end23, label %do.end20

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %smu, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.81) #12
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %ppt_limit to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ppt_limit, align 4
  %div24 = udiv i32 %23, 1000
  %default_fast_ppt_limit = getelementptr inbounds %struct.smu_11_5_power_context, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %default_fast_ppt_limit to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div24, ptr %default_fast_ppt_limit, align 4
  %current_fast_ppt_limit = getelementptr inbounds %struct.smu_11_5_power_context, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %current_fast_ppt_limit to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div24, ptr %current_fast_ppt_limit, align 4
  %max_fast_ppt_limit = getelementptr inbounds %struct.smu_11_5_power_context, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %max_fast_ppt_limit to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 30, ptr %max_fast_ppt_limit, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end20, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ %call15, %do.end20 ], [ 0, %if.end23 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ppt_limit) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vangogh_get_ppt_limit(ptr nocapture noundef readonly %smu, ptr nocapture noundef writeonly %ppt_limit, i32 noundef %type, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_power = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 16
  %0 = ptrtoint ptr %smu_power to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_power, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp = icmp eq i32 %type, 1
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %2 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %level, label %if.then2.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %sw.bb3
    i32 1, label %sw.bb4
  ]

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %max_fast_ppt_limit = getelementptr inbounds %struct.smu_11_5_power_context, ptr %1, i32 0, i32 5
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %current_fast_ppt_limit = getelementptr inbounds %struct.smu_11_5_power_context, ptr %1, i32 0, i32 3
  br label %cleanup.sink.split

sw.bb4:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %default_fast_ppt_limit = getelementptr inbounds %struct.smu_11_5_power_context, ptr %1, i32 0, i32 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb4, %sw.bb3, %sw.bb
  %default_fast_ppt_limit.sink = phi ptr [ %default_fast_ppt_limit, %sw.bb4 ], [ %current_fast_ppt_limit, %sw.bb3 ], [ %max_fast_ppt_limit, %sw.bb ]
  %3 = ptrtoint ptr %default_fast_ppt_limit.sink to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %default_fast_ppt_limit.sink, align 4
  %5 = ptrtoint ptr %ppt_limit to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ppt_limit, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.then2.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vangogh_get_dpm_clock_table(ptr nocapture noundef readonly %smu, ptr noundef writeonly %clock_table) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 3, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 0
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 7, i32 0
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx4, align 4
  %Vol = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %Vol to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %Vol, align 4
  %arrayidx.1 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.1, align 4
  %arrayidx3.1 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx3.1, align 4
  %arrayidx4.1 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx4.1, align 4
  %Vol.1 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 1, i32 1
  %13 = ptrtoint ptr %Vol.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %Vol.1, align 4
  %arrayidx.2 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.2, align 4
  %arrayidx3.2 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx3.2, align 4
  %arrayidx4.2 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 7, i32 2
  %17 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx4.2, align 4
  %Vol.2 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 2, i32 1
  %19 = ptrtoint ptr %Vol.2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %Vol.2, align 4
  %arrayidx.3 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.3, align 4
  %arrayidx3.3 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 3
  %22 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx3.3, align 4
  %arrayidx4.3 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 7, i32 3
  %23 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx4.3, align 4
  %Vol.3 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 3, i32 1
  %25 = ptrtoint ptr %Vol.3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %Vol.3, align 4
  %arrayidx.4 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 3, i32 4
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.4, align 4
  %arrayidx3.4 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 4
  %28 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx3.4, align 4
  %arrayidx4.4 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 7, i32 4
  %29 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx4.4, align 4
  %Vol.4 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 4, i32 1
  %31 = ptrtoint ptr %Vol.4 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %Vol.4, align 4
  %arrayidx.5 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 3, i32 5
  %32 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.5, align 4
  %arrayidx3.5 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 5
  %34 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx3.5, align 4
  %arrayidx4.5 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 7, i32 5
  %35 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx4.5, align 4
  %Vol.5 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 5, i32 1
  %37 = ptrtoint ptr %Vol.5 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %Vol.5, align 4
  %arrayidx.6 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 3, i32 6
  %38 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.6, align 4
  %arrayidx3.6 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 6
  %40 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx3.6, align 4
  %arrayidx4.6 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 7, i32 6
  %41 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx4.6, align 4
  %Vol.6 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 1, i32 6, i32 1
  %43 = ptrtoint ptr %Vol.6 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %Vol.6, align 4
  %arrayidx10 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 8, i32 0
  %44 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx10, align 4
  %arrayidx11 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 2, i32 0
  %46 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx11, align 4
  %voltage = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 8, i32 0, i32 2
  %47 = ptrtoint ptr %voltage to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %voltage, align 4
  %Vol17 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 2, i32 0, i32 1
  %49 = ptrtoint ptr %Vol17 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %Vol17, align 4
  %arrayidx10.1 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 8, i32 1
  %50 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx10.1, align 4
  %arrayidx11.1 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx11.1, align 4
  %voltage.1 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 8, i32 1, i32 2
  %53 = ptrtoint ptr %voltage.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %voltage.1, align 4
  %Vol17.1 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 2, i32 1, i32 1
  %55 = ptrtoint ptr %Vol17.1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %Vol17.1, align 4
  %arrayidx10.2 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 8, i32 2
  %56 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx10.2, align 4
  %arrayidx11.2 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 2, i32 2
  %58 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arrayidx11.2, align 4
  %voltage.2 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 8, i32 2, i32 2
  %59 = ptrtoint ptr %voltage.2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %voltage.2, align 4
  %Vol17.2 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 2, i32 2, i32 1
  %61 = ptrtoint ptr %Vol17.2 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %Vol17.2, align 4
  %arrayidx10.3 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 8, i32 3
  %62 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx10.3, align 4
  %arrayidx11.3 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 2, i32 3
  %64 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx11.3, align 4
  %voltage.3 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 8, i32 3, i32 2
  %65 = ptrtoint ptr %voltage.3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %voltage.3, align 4
  %Vol17.3 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 2, i32 3, i32 1
  %67 = ptrtoint ptr %Vol17.3 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %Vol17.3, align 4
  %memclk = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 8, i32 0, i32 1
  %68 = ptrtoint ptr %memclk to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %memclk, align 4
  %arrayidx26 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 3, i32 0
  %70 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx26, align 4
  %71 = load i32, ptr %voltage, align 4
  %Vol33 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 3, i32 0, i32 1
  %72 = ptrtoint ptr %Vol33 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %Vol33, align 4
  %memclk.1 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 8, i32 1, i32 1
  %73 = ptrtoint ptr %memclk.1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %memclk.1, align 4
  %arrayidx26.1 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 3, i32 1
  %75 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %arrayidx26.1, align 4
  %76 = load i32, ptr %voltage.1, align 4
  %Vol33.1 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 3, i32 1, i32 1
  %77 = ptrtoint ptr %Vol33.1 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %Vol33.1, align 4
  %memclk.2 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 8, i32 2, i32 1
  %78 = ptrtoint ptr %memclk.2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %memclk.2, align 4
  %arrayidx26.2 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 3, i32 2
  %80 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %arrayidx26.2, align 4
  %81 = load i32, ptr %voltage.2, align 4
  %Vol33.2 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 3, i32 2, i32 1
  %82 = ptrtoint ptr %Vol33.2 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %Vol33.2, align 4
  %memclk.3 = getelementptr %struct.DpmClocks_t, ptr %1, i32 0, i32 8, i32 3, i32 1
  %83 = ptrtoint ptr %memclk.3 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %memclk.3, align 4
  %arrayidx26.3 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 3, i32 3
  %85 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %arrayidx26.3, align 4
  %86 = load i32, ptr %voltage.3, align 4
  %Vol33.3 = getelementptr %struct.dpm_clocks, ptr %clock_table, i32 0, i32 3, i32 3, i32 1
  %87 = ptrtoint ptr %Vol33.3 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %Vol33.3, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.body.preheader ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vangogh_init_smc_tables(ptr noundef %smu) #1 align 64 {
entry:
  %if_version.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %if_version.i) #9
  %2 = ptrtoint ptr %if_version.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %if_version.i, align 4, !annotation !190
  %call.i = call i32 @smu_cmn_get_smc_version(ptr noundef %smu, ptr noundef nonnull %if_version.i, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str) #12
  br label %vangogh_tables_init.exit.thread

do.body4.i:                                       ; preds = %entry
  %arrayidx.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 124, ptr %arrayidx.i, align 8
  %align.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 1, i32 1
  %6 = ptrtoint ptr %align.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4096, ptr %align.i, align 8
  %domain.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 1, i32 2
  %7 = ptrtoint ptr %domain.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %domain.i, align 4
  %arrayidx10.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 3
  %8 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 304, ptr %arrayidx10.i, align 8
  %align13.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 3, i32 1
  %9 = ptrtoint ptr %align13.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4096, ptr %align13.i, align 8
  %domain15.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 3, i32 2
  %10 = ptrtoint ptr %domain15.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %domain15.i, align 4
  %arrayidx19.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 7
  %11 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 102400, ptr %arrayidx19.i, align 8
  %align22.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 7, i32 1
  %12 = ptrtoint ptr %align22.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4096, ptr %align22.i, align 8
  %domain24.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 7, i32 2
  %13 = ptrtoint ptr %domain24.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 4, ptr %domain24.i, align 4
  %arrayidx28.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 10
  %14 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 44, ptr %arrayidx28.i, align 8
  %align31.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 10, i32 1
  %15 = ptrtoint ptr %align31.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4096, ptr %align31.i, align 8
  %domain33.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 10, i32 2
  %16 = ptrtoint ptr %domain33.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 4, ptr %domain33.i, align 4
  %17 = ptrtoint ptr %if_version.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %if_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp.i = icmp ult i32 %18, 3
  %arrayidx38.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 8
  %..i = select i1 %cmp.i, i64 100, i64 168
  %.127.i = select i1 %cmp.i, i32 100, i32 168
  %19 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %..i, ptr %arrayidx38.i, align 8
  %align51.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 8, i32 1
  %20 = ptrtoint ptr %align51.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4096, ptr %align51.i, align 8
  %domain53.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 8, i32 2
  %21 = ptrtoint ptr %domain53.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 4, ptr %domain53.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %.val.i = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %.val128.i = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %22 = select i1 %cmp.i, ptr %.val.i, ptr %.val128.i
  %call7.i.i120.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef %.127.i) #13
  %23 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i120.i, ptr %23, align 8
  %tobool60.not.i = icmp eq ptr %call7.i.i120.i, null
  br i1 %tobool60.not.i, label %do.body4.i.vangogh_tables_init.exit.thread_crit_edge, label %if.end62.i

do.body4.i.vangogh_tables_init.exit.thread_crit_edge: ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_tables_init.exit.thread

if.end62.i:                                       ; preds = %do.body4.i
  %metrics_time.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 3
  %25 = ptrtoint ptr %metrics_time.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %metrics_time.i, align 4
  %gpu_metrics_table_size.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 19
  %26 = ptrtoint ptr %gpu_metrics_table_size.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 128, ptr %gpu_metrics_table_size.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i121.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 128) #13
  %gpu_metrics_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 20
  %28 = ptrtoint ptr %gpu_metrics_table.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i121.i, ptr %gpu_metrics_table.i, align 4
  %tobool66.not.i = icmp eq ptr %call7.i.i121.i, null
  br i1 %tobool66.not.i, label %if.end62.i.err1_out.i_crit_edge, label %if.end68.i

if.end62.i.err1_out.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err1_out.i

if.end68.i:                                       ; preds = %if.end62.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i122.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 124) #13
  %watermarks_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 6
  %30 = ptrtoint ptr %watermarks_table.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i122.i, ptr %watermarks_table.i, align 8
  %tobool71.not.i = icmp eq ptr %call7.i.i122.i, null
  br i1 %tobool71.not.i, label %if.end68.i.err2_out.i_crit_edge, label %if.end73.i

if.end68.i.err2_out.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err2_out.i

if.end73.i:                                       ; preds = %if.end68.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i123.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 304) #13
  %clocks_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %32 = ptrtoint ptr %clocks_table.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i123.i, ptr %clocks_table.i, align 4
  %tobool76.not.i = icmp eq ptr %call7.i.i123.i, null
  br i1 %tobool76.not.i, label %err3_out.i, label %if.end

err3_out.i:                                       ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %watermarks_table.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %watermarks_table.i, align 8
  call void @kfree(ptr noundef %34) #9
  br label %err2_out.i

err2_out.i:                                       ; preds = %err3_out.i, %if.end68.i.err2_out.i_crit_edge
  %35 = ptrtoint ptr %gpu_metrics_table.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gpu_metrics_table.i, align 4
  call void @kfree(ptr noundef %36) #9
  br label %err1_out.i

err1_out.i:                                       ; preds = %err2_out.i, %if.end62.i.err1_out.i_crit_edge
  %37 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %23, align 8
  call void @kfree(ptr noundef %38) #9
  br label %vangogh_tables_init.exit.thread

vangogh_tables_init.exit.thread:                  ; preds = %err1_out.i, %do.body4.i.vangogh_tables_init.exit.thread_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %if_version.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.end73.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %if_version.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 1884) #13
  %dpm_context.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 1
  %40 = ptrtoint ptr %dpm_context.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i.i, ptr %dpm_context.i, align 4
  %tobool.not.i12 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i12, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %smu_dpm1.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15
  %41 = ptrtoint ptr %smu_dpm1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1884, ptr %smu_dpm1.i, align 4
  %cpu_core_num = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 63
  %42 = ptrtoint ptr %cpu_core_num to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 4, ptr %cpu_core_num, align 8
  %call5 = call i32 @smu_v11_0_init_smc_tables(ptr noundef %smu) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %vangogh_tables_init.exit.thread
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -12, %vangogh_tables_init.exit.thread ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_fini_smc_tables(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_init_power(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_fini_power(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_check_fw_status(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_get_vbios_bootup_values(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_check_fw_version(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_set_driver_table_location(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_notify_memory_pool_location(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vangogh_system_features_control(ptr noundef %smu, i1 noundef zeroext %en) #1 align 64 {
entry:
  %feature_mask = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %smu_feature = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %feature_mask) #9
  %2 = ptrtoint ptr %feature_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %feature_mask, align 4, !annotation !190
  %3 = getelementptr inbounds [2 x i32], ptr %feature_mask, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !190
  %fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 17
  %5 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 71243520, i32 %6)
  %cmp = icmp ult i32 %6, 71243520
  %brmerge = or i1 %cmp, %en
  br i1 %brmerge, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 159, i32 noundef 0, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
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
  br i1 %en, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call8 = call i32 @smu_cmn_get_enabled_32_bits_mask(ptr noundef %smu, ptr noundef nonnull %feature_mask, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %smu_feature to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %smu_feature, align 4
  %sub.i36 = add i32 %13, 31
  %14 = lshr i32 %sub.i36, 3
  %mul.i37 = and i32 %14, 536870908
  %15 = call ptr @memcpy(ptr %enabled, ptr %feature_mask, i32 %mul.i37)
  %16 = call ptr @memcpy(ptr %supported, ptr %feature_mask, i32 %mul.i37)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %ret.0, %if.end.cleanup_crit_edge ], [ %call8, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %feature_mask) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_send_smc_msg_with_param(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_send_smc_msg(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_enabled_32_bits_mask(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_feature_is_enabled(ptr noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vangogh_set_power_limit(ptr noundef %smu, i32 noundef %limit_type, i32 noundef %ppt_limit) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_power = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 16
  %0 = ptrtoint ptr %smu_power to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_power, align 8
  %call = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.84) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %limit_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %limit_type, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %mul = mul i32 %ppt_limit, 1000
  %call2 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 194, i32 noundef %mul, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %current_power_limit = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 26
  %7 = ptrtoint ptr %current_power_limit to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %ppt_limit, ptr %current_power_limit, align 8
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  %and = and i32 %ppt_limit, -16777217
  %max_fast_ppt_limit = getelementptr inbounds %struct.smu_11_5_power_context, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %max_fast_ppt_limit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_fast_ppt_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %9)
  %cmp = icmp ugt i32 %and, %9
  br i1 %cmp, label %do.end10, label %if.end14

do.end10:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smu, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.87, i32 noundef %and, i32 noundef %9) #12
  br label %cleanup

if.end14:                                         ; preds = %sw.bb6
  %mul15 = mul i32 %and, 1000
  %call16 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 193, i32 noundef %mul15, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %current_fast_ppt_limit = getelementptr inbounds %struct.smu_11_5_power_context, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %current_fast_ppt_limit to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %current_fast_ppt_limit, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end14.cleanup_crit_edge, %do.end10, %if.end5, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end10 ], [ -95, %do.end ], [ %call2, %sw.bb.cleanup_crit_edge ], [ %call16, %if.end14.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end19 ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_gfx_off_control(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_register_irq_handler(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vangogh_mode2_reset(ptr noundef %smu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 0, i32 noundef 53) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, -13
  %spec.select.i = select i1 %cmp1.i, i32 0, i32 %call.i
  br label %vangogh_mode_reset.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %message_lock.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %message_lock.i, i32 noundef 0) #9
  %conv.i = trunc i32 %call.i to i16
  %call2.i = tail call i32 @smu_cmn_send_msg_without_waiting(ptr noundef %smu, i16 noundef zeroext %conv.i, i32 noundef 2) #9
  tail call void @mutex_unlock(ptr noundef %message_lock.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #9
  br label %vangogh_mode_reset.exit

vangogh_mode_reset.exit:                          ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %spec.select.i, %if.then.i ], [ %call2.i, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_pp_feature_mask(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vangogh_common_get_gpu_metrics(ptr noundef %smu, ptr nocapture noundef writeonly %table) #1 align 64 {
entry:
  %metrics.i14 = alloca %struct.SmuMetrics_t, align 4
  %metrics.i = alloca %struct.SmuMetrics_legacy_t, align 2
  %if_version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %if_version) #9
  %2 = ptrtoint ptr %if_version to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %if_version, align 4, !annotation !190
  %call = call i32 @smu_cmn_get_smc_version(ptr noundef %smu, ptr noundef nonnull %if_version, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %if_version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %if_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp = icmp ult i32 %6, 3
  %gpu_metrics_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 20
  %7 = ptrtoint ptr %gpu_metrics_table.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpu_metrics_table.i, align 4
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %metrics.i) #9
  %9 = call ptr @memset(ptr %metrics.i, i32 255, i32 100)
  %call.i = call i32 @smu_cmn_get_metrics_table(ptr noundef %smu, ptr noundef nonnull %metrics.i, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then2.vangogh_get_legacy_gpu_metrics.exit_crit_edge

if.then2.vangogh_get_legacy_gpu_metrics.exit_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_get_legacy_gpu_metrics.exit

if.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  call void @smu_cmn_init_soft_gpu_metrics(ptr noundef %8, i8 noundef zeroext 2, i8 noundef zeroext 2) #9
  %GfxTemperature.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %metrics.i, i32 0, i32 17
  %10 = ptrtoint ptr %GfxTemperature.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %GfxTemperature.i, align 2
  %temperature_gfx.i = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %temperature_gfx.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %temperature_gfx.i, align 4
  %SocTemperature.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %metrics.i, i32 0, i32 18
  %13 = ptrtoint ptr %SocTemperature.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %SocTemperature.i, align 2
  %temperature_soc.i = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 2
  %15 = ptrtoint ptr %temperature_soc.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %temperature_soc.i, align 2
  %temperature_core.i = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 3
  %CoreTemperature.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %metrics.i, i32 0, i32 14
  %16 = ptrtoint ptr %CoreTemperature.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %CoreTemperature.i, align 2
  %18 = ptrtoint ptr %temperature_core.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %temperature_core.i, align 8
  %L3Temperature.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %metrics.i, i32 0, i32 16
  %19 = ptrtoint ptr %L3Temperature.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %L3Temperature.i, align 2
  %temperature_l3.i = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 4
  %21 = ptrtoint ptr %temperature_l3.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %temperature_l3.i, align 8
  %GfxActivity.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %metrics.i, i32 0, i32 6
  %22 = ptrtoint ptr %GfxActivity.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %GfxActivity.i, align 2
  %average_gfx_activity.i = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 5
  %24 = ptrtoint ptr %average_gfx_activity.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %average_gfx_activity.i, align 4
  %UvdActivity.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %metrics.i, i32 0, i32 7
  %25 = ptrtoint ptr %UvdActivity.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %UvdActivity.i, align 2
  %average_mm_activity.i = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 6
  %27 = ptrtoint ptr %average_mm_activity.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %average_mm_activity.i, align 2
  %CurrentSocketPower.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %metrics.i, i32 0, i32 11
  %28 = ptrtoint ptr %CurrentSocketPower.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %CurrentSocketPower.i, align 2
  %average_socket_power.i = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 8
  %30 = ptrtoint ptr %average_socket_power.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %average_socket_power.i, align 8
  %Power.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %metrics.i, i32 0, i32 10
  %31 = ptrtoint ptr %Power.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %Power.i, align 2
  %average_cpu_power.i = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 9
  %33 = ptrtoint ptr %average_cpu_power.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %average_cpu_power.i, align 2
  %arrayidx7.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %metrics.i, i32 0, i32 10, i32 1
  %34 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx7.i, align 2
  %average_soc_power.i = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 10
  %36 = ptrtoint ptr %average_soc_power.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %average_soc_power.i, align 4
  %arrayidx9.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %metrics.i, i32 0, i32 10, i32 2
  %37 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx9.i, align 2
  %average_gfx_power.i = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 11
  %39 = ptrtoint ptr %average_gfx_power.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %average_gfx_power.i, align 2
  %average_core_power.i = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 12
  %CorePower.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %metrics.i, i32 0, i32 13
  %40 = ptrtoint ptr %CorePower.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %41 = load i64, ptr %CorePower.i, align 2
  %42 = ptrtoint ptr %average_core_power.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %average_core_power.i, align 8
  %43 = ptrtoint ptr %metrics.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %metrics.i, align 2
  %average_gfxclk_frequency.i = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 13
  %45 = ptrtoint ptr %average_gfxclk_frequency.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %average_gfxclk_frequency.i, align 8
  %SocclkFrequency.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %metrics.i, i32 0, i32 1
  %46 = ptrtoint ptr %SocclkFrequency.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %SocclkFrequency.i, align 2
  %average_socclk_frequency.i = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 14
  %48 = ptrtoint ptr %average_socclk_frequency.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %average_socclk_frequency.i, align 2
  %MemclkFrequency.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %metrics.i, i32 0, i32 4
  %49 = ptrtoint ptr %MemclkFrequency.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %MemclkFrequency.i, align 2
  %average_uclk_frequency.i = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 15
  %51 = ptrtoint ptr %average_uclk_frequency.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %average_uclk_frequency.i, align 4
  %average_fclk_frequency.i = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 16
  %52 = ptrtoint ptr %average_fclk_frequency.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %50, ptr %average_fclk_frequency.i, align 2
  %VclkFrequency.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %metrics.i, i32 0, i32 2
  %53 = ptrtoint ptr %VclkFrequency.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %VclkFrequency.i, align 2
  %average_vclk_frequency.i = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 17
  %55 = ptrtoint ptr %average_vclk_frequency.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %average_vclk_frequency.i, align 8
  %DclkFrequency.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %metrics.i, i32 0, i32 3
  %56 = ptrtoint ptr %DclkFrequency.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %DclkFrequency.i, align 2
  %average_dclk_frequency.i = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 18
  %58 = ptrtoint ptr %average_dclk_frequency.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %average_dclk_frequency.i, align 2
  %current_coreclk.i = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 25
  %CoreFrequency.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %metrics.i, i32 0, i32 12
  %59 = ptrtoint ptr %CoreFrequency.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 8)
  %60 = load i64, ptr %CoreFrequency.i, align 2
  %61 = ptrtoint ptr %current_coreclk.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %current_coreclk.i, align 8
  %L3Frequency.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %metrics.i, i32 0, i32 15
  %62 = ptrtoint ptr %L3Frequency.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %L3Frequency.i, align 2
  %current_l3clk.i = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 26
  %64 = ptrtoint ptr %current_l3clk.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %current_l3clk.i, align 8
  %ThrottlerStatus.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %metrics.i, i32 0, i32 20
  %65 = ptrtoint ptr %ThrottlerStatus.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %ThrottlerStatus.i, align 2
  %conv.i = zext i16 %66 to i32
  %throttle_status.i = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 27
  %67 = ptrtoint ptr %throttle_status.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv.i, ptr %throttle_status.i, align 4
  %call19.i = call i64 @smu_cmn_get_indep_throttler_status(i32 noundef %conv.i, ptr noundef nonnull @vangogh_throttler_map) #9
  %indep_throttle_status.i = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 30
  %68 = ptrtoint ptr %indep_throttle_status.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %call19.i, ptr %indep_throttle_status.i, align 8
  %call.i.i.i = call i64 @ktime_get_with_offset(i32 noundef 1) #9
  %system_clock_counter.i = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 7
  %69 = ptrtoint ptr %system_clock_counter.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %call.i.i.i, ptr %system_clock_counter.i, align 8
  %70 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %8, ptr %table, align 4
  br label %vangogh_get_legacy_gpu_metrics.exit

vangogh_get_legacy_gpu_metrics.exit:              ; preds = %if.end.i, %if.then2.vangogh_get_legacy_gpu_metrics.exit_crit_edge
  %retval.0.i = phi i32 [ 128, %if.end.i ], [ %call.i, %if.then2.vangogh_get_legacy_gpu_metrics.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %metrics.i) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %metrics.i14) #9
  %71 = call ptr @memset(ptr %metrics.i14, i32 255, i32 168)
  %call.i16 = call i32 @smu_cmn_get_metrics_table(ptr noundef %smu, ptr noundef nonnull %metrics.i14, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool.not.i17 = icmp eq i32 %call.i16, 0
  br i1 %tobool.not.i17, label %if.end.i58, label %if.else.vangogh_get_gpu_metrics.exit_crit_edge

if.else.vangogh_get_gpu_metrics.exit_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_get_gpu_metrics.exit

if.end.i58:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @smu_cmn_init_soft_gpu_metrics(ptr noundef %8, i8 noundef zeroext 2, i8 noundef zeroext 2) #9
  %GfxTemperature.i18 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics.i14, i32 0, i32 18
  %72 = ptrtoint ptr %GfxTemperature.i18 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %GfxTemperature.i18, align 4
  %temperature_gfx.i19 = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 1
  %74 = ptrtoint ptr %temperature_gfx.i19 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %temperature_gfx.i19, align 4
  %SocTemperature.i20 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics.i14, i32 0, i32 19
  %75 = ptrtoint ptr %SocTemperature.i20 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %SocTemperature.i20, align 2
  %temperature_soc.i21 = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 2
  %77 = ptrtoint ptr %temperature_soc.i21 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %temperature_soc.i21, align 2
  %temperature_core.i22 = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 3
  %CoreTemperature.i23 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics.i14, i32 0, i32 15
  %78 = ptrtoint ptr %CoreTemperature.i23 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 8)
  %79 = load i64, ptr %CoreTemperature.i23, align 4
  %80 = ptrtoint ptr %temperature_core.i22 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %temperature_core.i22, align 8
  %L3Temperature.i24 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics.i14, i32 0, i32 17
  %81 = ptrtoint ptr %L3Temperature.i24 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %L3Temperature.i24, align 2
  %temperature_l3.i25 = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 4
  %83 = ptrtoint ptr %temperature_l3.i25 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %temperature_l3.i25, align 8
  %GfxActivity.i26 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics.i14, i32 0, i32 6
  %84 = ptrtoint ptr %GfxActivity.i26 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %GfxActivity.i26, align 4
  %average_gfx_activity.i27 = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 5
  %86 = ptrtoint ptr %average_gfx_activity.i27 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %average_gfx_activity.i27, align 4
  %UvdActivity.i28 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics.i14, i32 0, i32 7
  %87 = ptrtoint ptr %UvdActivity.i28 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %UvdActivity.i28, align 2
  %average_mm_activity.i29 = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 6
  %89 = ptrtoint ptr %average_mm_activity.i29 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %average_mm_activity.i29, align 2
  %CurrentSocketPower.i30 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics.i14, i32 0, i32 12
  %90 = ptrtoint ptr %CurrentSocketPower.i30 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %CurrentSocketPower.i30, align 2
  %average_socket_power.i31 = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 8
  %92 = ptrtoint ptr %average_socket_power.i31 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %average_socket_power.i31, align 8
  %Power.i32 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics.i14, i32 0, i32 11
  %93 = ptrtoint ptr %Power.i32 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %Power.i32, align 4
  %average_cpu_power.i33 = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 9
  %95 = ptrtoint ptr %average_cpu_power.i33 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %average_cpu_power.i33, align 2
  %arrayidx15.i = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics.i14, i32 0, i32 11, i32 1
  %96 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %arrayidx15.i, align 2
  %average_soc_power.i34 = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 10
  %98 = ptrtoint ptr %average_soc_power.i34 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %average_soc_power.i34, align 4
  %arrayidx18.i = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics.i14, i32 0, i32 11, i32 2
  %99 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %arrayidx18.i, align 4
  %average_gfx_power.i35 = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 11
  %101 = ptrtoint ptr %average_gfx_power.i35 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %average_gfx_power.i35, align 2
  %average_core_power.i36 = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 12
  %Average.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics.i14, i32 0, i32 1
  %CorePower.i37 = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics.i14, i32 0, i32 1, i32 14
  %102 = ptrtoint ptr %CorePower.i37 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 8)
  %103 = load i64, ptr %CorePower.i37, align 4
  %104 = ptrtoint ptr %average_core_power.i36 to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %103, ptr %average_core_power.i36, align 8
  %105 = ptrtoint ptr %Average.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %Average.i, align 4
  %average_gfxclk_frequency.i38 = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 13
  %107 = ptrtoint ptr %average_gfxclk_frequency.i38 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %average_gfxclk_frequency.i38, align 8
  %SocclkFrequency.i39 = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics.i14, i32 0, i32 1, i32 1
  %108 = ptrtoint ptr %SocclkFrequency.i39 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %SocclkFrequency.i39, align 2
  %average_socclk_frequency.i40 = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 14
  %110 = ptrtoint ptr %average_socclk_frequency.i40 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %average_socclk_frequency.i40, align 2
  %MemclkFrequency.i41 = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics.i14, i32 0, i32 1, i32 4
  %111 = ptrtoint ptr %MemclkFrequency.i41 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %MemclkFrequency.i41, align 4
  %average_uclk_frequency.i42 = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 15
  %113 = ptrtoint ptr %average_uclk_frequency.i42 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %112, ptr %average_uclk_frequency.i42, align 4
  %114 = load i16, ptr %MemclkFrequency.i41, align 4
  %average_fclk_frequency.i43 = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 16
  %115 = ptrtoint ptr %average_fclk_frequency.i43 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %114, ptr %average_fclk_frequency.i43, align 2
  %VclkFrequency.i44 = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics.i14, i32 0, i32 1, i32 2
  %116 = ptrtoint ptr %VclkFrequency.i44 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %VclkFrequency.i44, align 4
  %average_vclk_frequency.i45 = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 17
  %118 = ptrtoint ptr %average_vclk_frequency.i45 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %117, ptr %average_vclk_frequency.i45, align 8
  %DclkFrequency.i46 = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics.i14, i32 0, i32 1, i32 3
  %119 = ptrtoint ptr %DclkFrequency.i46 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %DclkFrequency.i46, align 2
  %average_dclk_frequency.i47 = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 18
  %121 = ptrtoint ptr %average_dclk_frequency.i47 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %average_dclk_frequency.i47, align 2
  %122 = ptrtoint ptr %metrics.i14 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %metrics.i14, align 4
  %current_gfxclk.i = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 19
  %124 = ptrtoint ptr %current_gfxclk.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %123, ptr %current_gfxclk.i, align 4
  %SocclkFrequency31.i = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics.i14, i32 0, i32 1
  %125 = ptrtoint ptr %SocclkFrequency31.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %SocclkFrequency31.i, align 2
  %current_socclk.i = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 20
  %127 = ptrtoint ptr %current_socclk.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %current_socclk.i, align 2
  %MemclkFrequency33.i = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics.i14, i32 0, i32 4
  %128 = ptrtoint ptr %MemclkFrequency33.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %MemclkFrequency33.i, align 4
  %current_uclk.i = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 21
  %130 = ptrtoint ptr %current_uclk.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %current_uclk.i, align 8
  %current_fclk.i = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 22
  %131 = ptrtoint ptr %current_fclk.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %129, ptr %current_fclk.i, align 2
  %VclkFrequency37.i = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics.i14, i32 0, i32 2
  %132 = ptrtoint ptr %VclkFrequency37.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %VclkFrequency37.i, align 4
  %current_vclk.i = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 23
  %134 = ptrtoint ptr %current_vclk.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %133, ptr %current_vclk.i, align 4
  %DclkFrequency39.i = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics.i14, i32 0, i32 3
  %135 = ptrtoint ptr %DclkFrequency39.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %DclkFrequency39.i, align 2
  %current_dclk.i = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 24
  %137 = ptrtoint ptr %current_dclk.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %136, ptr %current_dclk.i, align 2
  %current_coreclk.i48 = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 25
  %CoreFrequency.i49 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics.i14, i32 0, i32 13
  %138 = ptrtoint ptr %CoreFrequency.i49 to i32
  call void @__asan_loadN_noabort(i32 %138, i32 8)
  %139 = load i64, ptr %CoreFrequency.i49, align 4
  %140 = ptrtoint ptr %current_coreclk.i48 to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 %139, ptr %current_coreclk.i48, align 8
  %L3Frequency.i50 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics.i14, i32 0, i32 16
  %141 = ptrtoint ptr %L3Frequency.i50 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %L3Frequency.i50, align 4
  %current_l3clk.i51 = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 26
  %143 = ptrtoint ptr %current_l3clk.i51 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %142, ptr %current_l3clk.i51, align 8
  %ThrottlerStatus.i52 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics.i14, i32 0, i32 21
  %144 = ptrtoint ptr %ThrottlerStatus.i52 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %ThrottlerStatus.i52, align 2
  %conv.i53 = zext i16 %145 to i32
  %throttle_status.i54 = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 27
  %146 = ptrtoint ptr %throttle_status.i54 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %conv.i53, ptr %throttle_status.i54, align 4
  %call50.i = call i64 @smu_cmn_get_indep_throttler_status(i32 noundef %conv.i53, ptr noundef nonnull @vangogh_throttler_map) #9
  %indep_throttle_status.i55 = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 30
  %147 = ptrtoint ptr %indep_throttle_status.i55 to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 %call50.i, ptr %indep_throttle_status.i55, align 8
  %call.i.i.i56 = call i64 @ktime_get_with_offset(i32 noundef 1) #9
  %system_clock_counter.i57 = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %8, i32 0, i32 7
  %148 = ptrtoint ptr %system_clock_counter.i57 to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 %call.i.i.i56, ptr %system_clock_counter.i57, align 8
  %149 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %8, ptr %table, align 4
  br label %vangogh_get_gpu_metrics.exit

vangogh_get_gpu_metrics.exit:                     ; preds = %if.end.i58, %if.else.vangogh_get_gpu_metrics.exit_crit_edge
  %retval.0.i59 = phi i32 [ 128, %if.end.i58 ], [ %call.i16, %if.else.vangogh_get_gpu_metrics.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %metrics.i14) #9
  br label %cleanup

cleanup:                                          ; preds = %vangogh_get_gpu_metrics.exit, %vangogh_get_legacy_gpu_metrics.exit, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %retval.0.i, %vangogh_get_legacy_gpu_metrics.exit ], [ %retval.0.i59, %vangogh_get_gpu_metrics.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %if_version) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vangogh_post_smu_init(ptr noundef %smu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %number = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 48, i32 5
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number, align 4
  %div386 = lshr i32 %3, 1
  %config = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 1
  %max_cu_per_sh = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 1, i32 2
  %4 = ptrtoint ptr %max_cu_per_sh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_cu_per_sh, align 8
  %max_sh_per_se = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 1, i32 3
  %6 = ptrtoint ptr %max_sh_per_se to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_sh_per_se, align 4
  %mul = mul i32 %7, %5
  %8 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config, align 8
  %mul7 = mul i32 %mul, %9
  %call = tail call i32 @smu_cmn_feature_is_supported(ptr noundef %smu, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %pg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 100
  %10 = ptrtoint ptr %pg_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pg_flags, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call9 = tail call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef 165, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then.if.end17_crit_edge, label %do.end

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.90) #12
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %pp_feature = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 24
  %14 = ptrtoint ptr %pp_feature to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pp_feature, align 8
  %and12 = and i32 %15, -32769
  store i32 %and12, ptr %pp_feature, align 8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.93) #12
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then.if.end17_crit_edge
  %18 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul7, i32 %19)
  %cmp = icmp eq i32 %mul7, %19
  br i1 %cmp, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 1
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 8
  %arrayidx24 = getelementptr i32, ptr %21, i32 1
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx24, align 4
  %add = add i32 %23, 19539
  %call25 = tail call i32 @amdgpu_kiq_rreg(ptr noundef %1, i32 noundef %add) #9
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %call25) #9
  %24 = ptrtoint ptr %max_sh_per_se to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_sh_per_se, align 4
  %mul313 = mul i32 %25, %call.i
  %26 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %config, align 8
  %mul317 = mul i32 %mul313, %27
  %conv319 = and i32 %mul317, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv319, i32 %div386)
  %cmp320 = icmp ugt i32 %conv319, %div386
  br i1 %cmp320, label %do.end325, label %if.else327

do.end325:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str.97) #12
  br label %cleanup

if.else327:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %call328 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 192, i32 noundef %div386, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else327, %do.end325, %if.end17.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call9, %do.end ], [ 0, %do.end325 ], [ %call328, %if.else327 ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smu_v11_0_interrupt_work(ptr noundef) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vangogh_set_fine_grain_gfx_freq_parameters(ptr nocapture noundef %smu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %clocks_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %0 = ptrtoint ptr %clocks_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clocks_table, align 4
  %MinGfxClk = getelementptr inbounds %struct.DpmClocks_t, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %MinGfxClk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %MinGfxClk, align 4
  %gfx_default_hard_min_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 54
  %4 = ptrtoint ptr %gfx_default_hard_min_freq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %gfx_default_hard_min_freq, align 4
  %MaxGfxClk = getelementptr inbounds %struct.DpmClocks_t, ptr %1, i32 0, i32 10
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
  %cpu_default_soft_min_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 58
  %10 = ptrtoint ptr %cpu_default_soft_min_freq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1400, ptr %cpu_default_soft_min_freq, align 4
  %cpu_default_soft_max_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 59
  %11 = ptrtoint ptr %cpu_default_soft_max_freq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3500, ptr %cpu_default_soft_max_freq, align 8
  %cpu_actual_soft_min_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 60
  %12 = ptrtoint ptr %cpu_actual_soft_min_freq to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %cpu_actual_soft_min_freq, align 4
  %cpu_actual_soft_max_freq = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 61
  %13 = ptrtoint ptr %cpu_actual_soft_max_freq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %cpu_actual_soft_max_freq, align 8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_update_table(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_smc_version(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_metrics_table(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_to_asic_specific_index(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vangogh_common_get_smu_metrics_data(ptr noundef %smu, i32 noundef %member, ptr noundef writeonly %value) unnamed_addr #1 align 64 {
entry:
  %if_version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %if_version) #9
  %2 = ptrtoint ptr %if_version to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %if_version, align 4, !annotation !190
  %call = call i32 @smu_cmn_get_smc_version(ptr noundef %smu, ptr noundef nonnull %if_version, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %if_version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %if_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp = icmp ult i32 %6, 3
  %metrics_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %7 = ptrtoint ptr %metrics_table.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %metrics_table.i, align 8
  %metrics_lock.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  call void @mutex_lock_nested(ptr noundef %metrics_lock.i, i32 noundef 0) #9
  %call.i = call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  br i1 %tobool.not.i, label %if.end.i, label %if.then2.vangogh_get_legacy_smu_metrics_data.exit_crit_edge

if.then2.vangogh_get_legacy_smu_metrics_data.exit_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_get_legacy_smu_metrics_data.exit

if.end.i:                                         ; preds = %if.then2
  %9 = zext i32 %member to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %member, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 11, label %sw.bb3.i
    i32 14, label %sw.bb5.i
    i32 15, label %sw.bb7.i
    i32 2, label %sw.bb9.i
    i32 16, label %sw.bb11.i
    i32 18, label %sw.bb13.i
    i32 19, label %sw.bb15.i
    i32 20, label %sw.bb18.i
    i32 21, label %sw.bb21.i
    i32 26, label %sw.bb25.i
    i32 29, label %sw.bb27.i
    i32 28, label %sw.bb29.i
    i32 9, label %sw.bb33.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %8, align 2
  %conv.i = zext i16 %11 to i32
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv.i, ptr %value, align 4
  br label %vangogh_get_legacy_smu_metrics_data.exit

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %SocclkFrequency.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %SocclkFrequency.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %SocclkFrequency.i, align 2
  %conv4.i = zext i16 %14 to i32
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv4.i, ptr %value, align 4
  br label %vangogh_get_legacy_smu_metrics_data.exit

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %VclkFrequency.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %8, i32 0, i32 2
  %16 = ptrtoint ptr %VclkFrequency.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %VclkFrequency.i, align 2
  %conv6.i = zext i16 %17 to i32
  %18 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv6.i, ptr %value, align 4
  br label %vangogh_get_legacy_smu_metrics_data.exit

sw.bb7.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %DclkFrequency.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %8, i32 0, i32 3
  %19 = ptrtoint ptr %DclkFrequency.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %DclkFrequency.i, align 2
  %conv8.i = zext i16 %20 to i32
  %21 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv8.i, ptr %value, align 4
  br label %vangogh_get_legacy_smu_metrics_data.exit

sw.bb9.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %MemclkFrequency.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %8, i32 0, i32 4
  %22 = ptrtoint ptr %MemclkFrequency.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %MemclkFrequency.i, align 2
  %conv10.i = zext i16 %23 to i32
  %24 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv10.i, ptr %value, align 4
  br label %vangogh_get_legacy_smu_metrics_data.exit

sw.bb11.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %GfxActivity.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %8, i32 0, i32 6
  %25 = ptrtoint ptr %GfxActivity.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %GfxActivity.i, align 2
  %27 = udiv i16 %26, 100
  %div.i = zext i16 %27 to i32
  %28 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div.i, ptr %value, align 4
  br label %vangogh_get_legacy_smu_metrics_data.exit

sw.bb13.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %UvdActivity.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %8, i32 0, i32 7
  %29 = ptrtoint ptr %UvdActivity.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %UvdActivity.i, align 2
  %conv14.i = zext i16 %30 to i32
  %31 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv14.i, ptr %value, align 4
  br label %vangogh_get_legacy_smu_metrics_data.exit

sw.bb15.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %CurrentSocketPower.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %8, i32 0, i32 11
  %32 = ptrtoint ptr %CurrentSocketPower.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %CurrentSocketPower.i, align 2
  %conv16.i = zext i16 %33 to i32
  %shl.i = shl nuw nsw i32 %conv16.i, 8
  %div17.i = udiv i32 %shl.i, 1000
  %34 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div17.i, ptr %value, align 4
  br label %vangogh_get_legacy_smu_metrics_data.exit

sw.bb18.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %GfxTemperature.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %8, i32 0, i32 17
  %35 = ptrtoint ptr %GfxTemperature.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %GfxTemperature.i, align 2
  %37 = udiv i16 %36, 100
  %div20.i = zext i16 %37 to i32
  %mul.i = mul nuw nsw i32 %div20.i, 1000
  %38 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %mul.i, ptr %value, align 4
  br label %vangogh_get_legacy_smu_metrics_data.exit

sw.bb21.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %SocTemperature.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %8, i32 0, i32 18
  %39 = ptrtoint ptr %SocTemperature.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %SocTemperature.i, align 2
  %41 = udiv i16 %40, 100
  %div23.i = zext i16 %41 to i32
  %mul24.i = mul nuw nsw i32 %div23.i, 1000
  %42 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mul24.i, ptr %value, align 4
  br label %vangogh_get_legacy_smu_metrics_data.exit

sw.bb25.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %ThrottlerStatus.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %8, i32 0, i32 20
  %43 = ptrtoint ptr %ThrottlerStatus.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %ThrottlerStatus.i, align 2
  %conv26.i = zext i16 %44 to i32
  %45 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv26.i, ptr %value, align 4
  br label %vangogh_get_legacy_smu_metrics_data.exit

sw.bb27.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.SmuMetrics_legacy_t, ptr %8, i32 0, i32 8, i32 2
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx.i, align 2
  %conv28.i = zext i16 %47 to i32
  %48 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv28.i, ptr %value, align 4
  br label %vangogh_get_legacy_smu_metrics_data.exit

sw.bb29.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx31.i = getelementptr %struct.SmuMetrics_legacy_t, ptr %8, i32 0, i32 8, i32 1
  %49 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx31.i, align 2
  %conv32.i = zext i16 %50 to i32
  %51 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv32.i, ptr %value, align 4
  br label %vangogh_get_legacy_smu_metrics_data.exit

sw.bb33.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %CoreFrequency.i = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %8, i32 0, i32 12
  %cpu_core_num.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 63
  %52 = ptrtoint ptr %cpu_core_num.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %cpu_core_num.i, align 8
  %conv35.i = zext i16 %53 to i32
  %mul36.i = shl nuw nsw i32 %conv35.i, 1
  %54 = call ptr @memcpy(ptr %value, ptr %CoreFrequency.i, i32 %mul36.i)
  br label %vangogh_get_legacy_smu_metrics_data.exit

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %value, align 4
  br label %vangogh_get_legacy_smu_metrics_data.exit

vangogh_get_legacy_smu_metrics_data.exit:         ; preds = %sw.default.i, %sw.bb33.i, %sw.bb29.i, %sw.bb27.i, %sw.bb25.i, %sw.bb21.i, %sw.bb18.i, %sw.bb15.i, %sw.bb13.i, %sw.bb11.i, %sw.bb9.i, %sw.bb7.i, %sw.bb5.i, %sw.bb3.i, %sw.bb.i, %if.then2.vangogh_get_legacy_smu_metrics_data.exit_crit_edge
  call void @mutex_unlock(ptr noundef %metrics_lock.i) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  br i1 %tobool.not.i, label %if.end.i19, label %if.else.vangogh_get_smu_metrics_data.exit_crit_edge

if.else.vangogh_get_smu_metrics_data.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %vangogh_get_smu_metrics_data.exit

if.end.i19:                                       ; preds = %if.else
  %56 = zext i32 %member to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %member, label %sw.default.i47 [
    i32 0, label %sw.bb.i21
    i32 11, label %sw.bb3.i23
    i32 14, label %sw.bb6.i
    i32 15, label %sw.bb9.i27
    i32 2, label %sw.bb12.i
    i32 16, label %sw.bb15.i31
    i32 18, label %sw.bb18.i33
    i32 19, label %sw.bb21.i37
    i32 20, label %sw.bb24.i
    i32 21, label %sw.bb28.i
    i32 26, label %sw.bb33.i43
    i32 29, label %sw.bb36.i
    i32 28, label %sw.bb39.i
    i32 9, label %sw.bb44.i
  ]

sw.bb.i21:                                        ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %8, align 4
  %conv.i20 = zext i16 %58 to i32
  %59 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv.i20, ptr %value, align 4
  br label %vangogh_get_smu_metrics_data.exit

sw.bb3.i23:                                       ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #11
  %SocclkFrequency.i22 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %8, i32 0, i32 1
  %60 = ptrtoint ptr %SocclkFrequency.i22 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %SocclkFrequency.i22, align 2
  %conv5.i = zext i16 %61 to i32
  %62 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv5.i, ptr %value, align 4
  br label %vangogh_get_smu_metrics_data.exit

sw.bb6.i:                                         ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #11
  %VclkFrequency.i24 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %8, i32 0, i32 2
  %63 = ptrtoint ptr %VclkFrequency.i24 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %VclkFrequency.i24, align 4
  %conv8.i25 = zext i16 %64 to i32
  %65 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv8.i25, ptr %value, align 4
  br label %vangogh_get_smu_metrics_data.exit

sw.bb9.i27:                                       ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #11
  %DclkFrequency.i26 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %8, i32 0, i32 3
  %66 = ptrtoint ptr %DclkFrequency.i26 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %DclkFrequency.i26, align 2
  %conv11.i = zext i16 %67 to i32
  %68 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv11.i, ptr %value, align 4
  br label %vangogh_get_smu_metrics_data.exit

sw.bb12.i:                                        ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #11
  %MemclkFrequency.i28 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %8, i32 0, i32 4
  %69 = ptrtoint ptr %MemclkFrequency.i28 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %MemclkFrequency.i28, align 4
  %conv14.i29 = zext i16 %70 to i32
  %71 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv14.i29, ptr %value, align 4
  br label %vangogh_get_smu_metrics_data.exit

sw.bb15.i31:                                      ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #11
  %GfxActivity.i30 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %8, i32 0, i32 6
  %72 = ptrtoint ptr %GfxActivity.i30 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %GfxActivity.i30, align 4
  %conv17.i = zext i16 %73 to i32
  %74 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv17.i, ptr %value, align 4
  br label %vangogh_get_smu_metrics_data.exit

sw.bb18.i33:                                      ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #11
  %UvdActivity.i32 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %8, i32 0, i32 7
  %75 = ptrtoint ptr %UvdActivity.i32 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %UvdActivity.i32, align 2
  %conv20.i = zext i16 %76 to i32
  %77 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv20.i, ptr %value, align 4
  br label %vangogh_get_smu_metrics_data.exit

sw.bb21.i37:                                      ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #11
  %CurrentSocketPower.i34 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %8, i32 0, i32 12
  %78 = ptrtoint ptr %CurrentSocketPower.i34 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %CurrentSocketPower.i34, align 2
  %conv23.i = zext i16 %79 to i32
  %shl.i35 = shl nuw nsw i32 %conv23.i, 8
  %div.i36 = udiv i32 %shl.i35, 1000
  %80 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %div.i36, ptr %value, align 4
  br label %vangogh_get_smu_metrics_data.exit

sw.bb24.i:                                        ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #11
  %GfxTemperature.i38 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %8, i32 0, i32 18
  %81 = ptrtoint ptr %GfxTemperature.i38 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %GfxTemperature.i38, align 4
  %83 = udiv i16 %82, 100
  %div27.i = zext i16 %83 to i32
  %mul.i39 = mul nuw nsw i32 %div27.i, 1000
  %84 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %mul.i39, ptr %value, align 4
  br label %vangogh_get_smu_metrics_data.exit

sw.bb28.i:                                        ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #11
  %SocTemperature.i40 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %8, i32 0, i32 19
  %85 = ptrtoint ptr %SocTemperature.i40 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %SocTemperature.i40, align 2
  %87 = udiv i16 %86, 100
  %div31.i = zext i16 %87 to i32
  %mul32.i = mul nuw nsw i32 %div31.i, 1000
  %88 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %mul32.i, ptr %value, align 4
  br label %vangogh_get_smu_metrics_data.exit

sw.bb33.i43:                                      ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #11
  %ThrottlerStatus.i41 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %8, i32 0, i32 21
  %89 = ptrtoint ptr %ThrottlerStatus.i41 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %ThrottlerStatus.i41, align 2
  %conv35.i42 = zext i16 %90 to i32
  %91 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %conv35.i42, ptr %value, align 4
  br label %vangogh_get_smu_metrics_data.exit

sw.bb36.i:                                        ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i44 = getelementptr %struct.SmuMetricsTable_t, ptr %8, i32 0, i32 9, i32 2
  %92 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx.i44, align 4
  %conv38.i = zext i16 %93 to i32
  %94 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %conv38.i, ptr %value, align 4
  br label %vangogh_get_smu_metrics_data.exit

sw.bb39.i:                                        ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx42.i = getelementptr %struct.SmuMetricsTable_t, ptr %8, i32 0, i32 9, i32 1
  %95 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx42.i, align 2
  %conv43.i = zext i16 %96 to i32
  %97 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %conv43.i, ptr %value, align 4
  br label %vangogh_get_smu_metrics_data.exit

sw.bb44.i:                                        ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #11
  %CoreFrequency.i45 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %8, i32 0, i32 13
  %cpu_core_num.i46 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 63
  %98 = ptrtoint ptr %cpu_core_num.i46 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %cpu_core_num.i46, align 8
  %conv47.i = zext i16 %99 to i32
  %mul48.i = shl nuw nsw i32 %conv47.i, 1
  %100 = call ptr @memcpy(ptr %value, ptr %CoreFrequency.i45, i32 %mul48.i)
  br label %vangogh_get_smu_metrics_data.exit

sw.default.i47:                                   ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -1, ptr %value, align 4
  br label %vangogh_get_smu_metrics_data.exit

vangogh_get_smu_metrics_data.exit:                ; preds = %sw.default.i47, %sw.bb44.i, %sw.bb39.i, %sw.bb36.i, %sw.bb33.i43, %sw.bb28.i, %sw.bb24.i, %sw.bb21.i37, %sw.bb18.i33, %sw.bb15.i31, %sw.bb12.i, %sw.bb9.i27, %sw.bb6.i, %sw.bb3.i23, %sw.bb.i21, %if.else.vangogh_get_smu_metrics_data.exit_crit_edge
  call void @mutex_unlock(ptr noundef %metrics_lock.i) #9
  br label %cleanup

cleanup:                                          ; preds = %vangogh_get_smu_metrics_data.exit, %vangogh_get_legacy_smu_metrics_data.exit, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call.i, %vangogh_get_legacy_smu_metrics_data.exit ], [ %call.i, %vangogh_get_smu_metrics_data.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %if_version) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_metrics_table_locked(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_write_watermarks_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vangogh_force_dpm_limit_value(ptr noundef %smu, i1 noundef zeroext %highest) unnamed_addr #1 align 64 {
entry:
  %min_freq = alloca i32, align 4
  %max_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_freq) #9
  %0 = ptrtoint ptr %min_freq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %min_freq, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_freq) #9
  %1 = ptrtoint ptr %max_freq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %max_freq, align 4, !annotation !190
  %call = call fastcc i32 @vangogh_get_dpm_ultimate_freq(ptr noundef %smu, i32 noundef 6, ptr noundef nonnull %min_freq, ptr noundef nonnull %max_freq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond:                                         ; preds = %if.end
  %call.1 = call fastcc i32 @vangogh_get_dpm_ultimate_freq(ptr noundef %smu, i32 noundef 1, ptr noundef nonnull %min_freq, ptr noundef nonnull %max_freq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %if.end.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.1:                                         ; preds = %for.cond
  %2 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %max_freq.val.1 = load i32, ptr %max_freq, align 4
  %3 = ptrtoint ptr %min_freq to i32
  call void @__asan_load4_noabort(i32 %3)
  %min_freq.val.1 = load i32, ptr %min_freq, align 4
  %cond.1 = select i1 %highest, i32 %max_freq.val.1, i32 %min_freq.val.1
  %call2.1 = call fastcc i32 @vangogh_set_soft_freq_limited_range(ptr noundef %smu, i32 noundef 1, i32 noundef %cond.1, i32 noundef %cond.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1)
  %tobool3.not.1 = icmp eq i32 %call2.1, 0
  br i1 %tobool3.not.1, label %for.cond.1, label %if.end.1.cleanup_crit_edge

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.1:                                       ; preds = %if.end.1
  %call.2 = call fastcc i32 @vangogh_get_dpm_ultimate_freq(ptr noundef %smu, i32 noundef 2, ptr noundef nonnull %min_freq, ptr noundef nonnull %max_freq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %if.end.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.2:                                         ; preds = %for.cond.1
  %4 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %max_freq.val.2 = load i32, ptr %max_freq, align 4
  %5 = ptrtoint ptr %min_freq to i32
  call void @__asan_load4_noabort(i32 %5)
  %min_freq.val.2 = load i32, ptr %min_freq, align 4
  %cond.2 = select i1 %highest, i32 %max_freq.val.2, i32 %min_freq.val.2
  %call2.2 = call fastcc i32 @vangogh_set_soft_freq_limited_range(ptr noundef %smu, i32 noundef 2, i32 noundef %cond.2, i32 noundef %cond.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.2)
  %tobool3.not.2 = icmp eq i32 %call2.2, 0
  br i1 %tobool3.not.2, label %for.cond.2, label %if.end.2.cleanup_crit_edge

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.2:                                       ; preds = %if.end.2
  %call.3 = call fastcc i32 @vangogh_get_dpm_ultimate_freq(ptr noundef %smu, i32 noundef 12, ptr noundef nonnull %min_freq, ptr noundef nonnull %max_freq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %if.end.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.3:                                         ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %6)
  %max_freq.val.3 = load i32, ptr %max_freq, align 4
  %7 = ptrtoint ptr %min_freq to i32
  call void @__asan_load4_noabort(i32 %7)
  %min_freq.val.3 = load i32, ptr %min_freq, align 4
  %cond.3 = select i1 %highest, i32 %max_freq.val.3, i32 %min_freq.val.3
  %call2.3 = call fastcc i32 @vangogh_set_soft_freq_limited_range(ptr noundef %smu, i32 noundef 12, i32 noundef %cond.3, i32 noundef %cond.3)
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %8)
  %max_freq.val = load i32, ptr %max_freq, align 4
  %9 = ptrtoint ptr %min_freq to i32
  call void @__asan_load4_noabort(i32 %9)
  %min_freq.val = load i32, ptr %min_freq, align 4
  %cond = select i1 %highest, i32 %max_freq.val, i32 %min_freq.val
  %call2 = call fastcc i32 @vangogh_set_soft_freq_limited_range(ptr noundef %smu, i32 noundef 6, i32 noundef %cond, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %for.cond, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.end.3, %for.cond.2.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call.1, %for.cond.cleanup_crit_edge ], [ %call2.1, %if.end.1.cleanup_crit_edge ], [ %call.2, %for.cond.1.cleanup_crit_edge ], [ %call2.2, %if.end.2.cleanup_crit_edge ], [ %call.3, %for.cond.2.cleanup_crit_edge ], [ %call2.3, %if.end.3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_freq) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_freq) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vangogh_get_dpm_ultimate_freq(ptr noundef %smu, i32 noundef %clk_type, ptr noundef writeonly %min, ptr noundef writeonly %max) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %clk_type)
  %0 = icmp ult i32 %clk_type, 15
  br i1 %0, label %switch.hole_check, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %clk_type to i16
  %switch.shifted = lshr i16 28871, %switch.maskindex
  %1 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %switch.lobit.not = icmp eq i16 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end21_crit_edge, label %switch.lookup

switch.hole_check.if.end21_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [15 x i32], ptr @switch.table.vangogh_get_dpm_ultimate_freq, i32 0, i32 %clk_type
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call.i = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef %switch.load) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i.not, label %if.then, label %switch.lookup.if.end21_crit_edge

switch.lookup.if.end21_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then:                                          ; preds = %switch.lookup
  %3 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %clk_type, label %if.then.sw.epilog_crit_edge [
    i32 14, label %if.then.sw.bb_crit_edge
    i32 7, label %if.then.sw.bb_crit_edge305
    i32 12, label %sw.bb1
    i32 0, label %if.then.sw.bb4_crit_edge
    i32 13, label %if.then.sw.bb4_crit_edge306
    i32 6, label %sw.bb7
    i32 1, label %sw.bb10
    i32 2, label %sw.bb13
  ]

if.then.sw.bb4_crit_edge306:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

if.then.sw.bb4_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

if.then.sw.bb_crit_edge305:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge305
  %uclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 2
  %4 = ptrtoint ptr %uclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uclk, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %fclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 16
  %6 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fclk, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.then.sw.bb4_crit_edge, %if.then.sw.bb4_crit_edge306
  %gfxclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 1
  %8 = ptrtoint ptr %gfxclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gfxclk, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %socclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 3
  %10 = ptrtoint ptr %socclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %socclk, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %vclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 6
  %12 = ptrtoint ptr %vclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vclk, align 8
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 7
  %14 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dclk, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb1, %sw.bb, %if.then.sw.epilog_crit_edge
  %clock_limit.0 = phi i32 [ %15, %sw.bb13 ], [ %13, %sw.bb10 ], [ %11, %sw.bb7 ], [ %9, %sw.bb4 ], [ %7, %sw.bb1 ], [ %5, %sw.bb ], [ 0, %if.then.sw.epilog_crit_edge ]
  %tobool.not = icmp eq ptr %min, null
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then16

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then16:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %div = udiv i32 %clock_limit.0, 100
  %16 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div, ptr %min, align 4
  br label %if.end

if.end:                                           ; preds = %if.then16, %sw.epilog.if.end_crit_edge
  %tobool17.not = icmp eq ptr %max, null
  br i1 %tobool17.not, label %if.end.cleanup_crit_edge, label %if.then18

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %div19 = udiv i32 %clock_limit.0, 100
  %17 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div19, ptr %max, align 4
  br label %cleanup

if.end21:                                         ; preds = %switch.lookup.if.end21_crit_edge, %switch.hole_check.if.end21_crit_edge, %entry.if.end21_crit_edge
  %tobool22.not = icmp eq ptr %max, null
  br i1 %tobool22.not, label %if.end21.if.end55_crit_edge, label %if.then23

if.end21.if.end55_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then23:                                        ; preds = %if.end21
  %clocks_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %18 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %clk_type, label %if.then23.cleanup_crit_edge [
    i32 7, label %if.then23.sw.bb28_crit_edge
    i32 14, label %if.then23.sw.bb28_crit_edge307
    i32 6, label %sw.bb33
    i32 12, label %sw.bb38
    i32 1, label %sw.bb43
    i32 2, label %sw.bb48
  ]

if.then23.sw.bb28_crit_edge307:                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb28

if.then23.sw.bb28_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb28

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb28:                                          ; preds = %if.then23.sw.bb28_crit_edge, %if.then23.sw.bb28_crit_edge307
  %19 = ptrtoint ptr %clocks_table.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clocks_table.i, align 4
  %tobool.not.i144 = icmp eq ptr %20, null
  br i1 %tobool.not.i144, label %sw.bb28.cleanup_crit_edge, label %if.end.i

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb28
  %21 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %clk_type, label %if.end.i.cleanup_crit_edge [
    i32 12, label %sw.bb28.i
    i32 14, label %if.end.i.sw.bb21.i_crit_edge
    i32 7, label %if.end.i.sw.bb21.i_crit_edge308
  ]

if.end.i.sw.bb21.i_crit_edge308:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb21.i

if.end.i.sw.bb21.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb21.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb21.i:                                        ; preds = %if.end.i.sw.bb21.i_crit_edge, %if.end.i.sw.bb21.i_crit_edge308
  %NumDfPstatesEnabled.i = getelementptr inbounds %struct.DpmClocks_t, ptr %20, i32 0, i32 11
  %22 = ptrtoint ptr %NumDfPstatesEnabled.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %NumDfPstatesEnabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp23.not.i.not = icmp eq i8 %23, 0
  br i1 %cmp23.not.i.not, label %sw.bb21.i.cleanup_crit_edge, label %if.end26.i

sw.bb21.i.cleanup_crit_edge:                      ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26.i:                                       ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #11
  %memclk.i = getelementptr %struct.DpmClocks_t, ptr %20, i32 0, i32 8, i32 0, i32 1
  br label %if.end55.sink.split

sw.bb28.i:                                        ; preds = %if.end.i
  %NumDfPstatesEnabled29.i = getelementptr inbounds %struct.DpmClocks_t, ptr %20, i32 0, i32 11
  %24 = ptrtoint ptr %NumDfPstatesEnabled29.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %NumDfPstatesEnabled29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp31.not.i.not = icmp eq i8 %25, 0
  br i1 %cmp31.not.i.not, label %sw.bb28.i.cleanup_crit_edge, label %if.end34.i

sw.bb28.i.cleanup_crit_edge:                      ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34.i:                                       ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx36.i = getelementptr %struct.DpmClocks_t, ptr %20, i32 0, i32 8, i32 0
  br label %if.end55.sink.split

sw.bb33:                                          ; preds = %if.then23
  %26 = ptrtoint ptr %clocks_table.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clocks_table.i, align 4
  %tobool.not.i147 = icmp eq ptr %27, null
  br i1 %tobool.not.i147, label %sw.bb33.cleanup_crit_edge, label %if.end.i148

sw.bb33.cleanup_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i148:                                      ; preds = %sw.bb33
  %NumSocClkLevelsEnabled.i149 = getelementptr inbounds %struct.DpmClocks_t, ptr %27, i32 0, i32 14
  %28 = ptrtoint ptr %NumSocClkLevelsEnabled.i149 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %NumSocClkLevelsEnabled.i149, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp1.not.i151 = icmp ugt i8 %29, 1
  br i1 %cmp1.not.i151, label %vangogh_get_dpm_clk_limited.exit158, label %if.end.i148.cleanup_crit_edge

if.end.i148.cleanup_crit_edge:                    ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

vangogh_get_dpm_clk_limited.exit158:              ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i153 = getelementptr %struct.DpmClocks_t, ptr %27, i32 0, i32 3, i32 1
  br label %if.end55.sink.split

sw.bb38:                                          ; preds = %if.then23
  %30 = ptrtoint ptr %clocks_table.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clocks_table.i, align 4
  %tobool.not.i160 = icmp eq ptr %31, null
  br i1 %tobool.not.i160, label %sw.bb38.cleanup_crit_edge, label %if.end.i161

sw.bb38.cleanup_crit_edge:                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i161:                                      ; preds = %sw.bb38
  %NumDfPstatesEnabled29.i162 = getelementptr inbounds %struct.DpmClocks_t, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %NumDfPstatesEnabled29.i162 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %NumDfPstatesEnabled29.i162, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp31.not.i164.not = icmp eq i8 %33, 0
  br i1 %cmp31.not.i164.not, label %if.end.i161.cleanup_crit_edge, label %vangogh_get_dpm_clk_limited.exit171

if.end.i161.cleanup_crit_edge:                    ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

vangogh_get_dpm_clk_limited.exit171:              ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx36.i166 = getelementptr %struct.DpmClocks_t, ptr %31, i32 0, i32 8, i32 0
  br label %if.end55.sink.split

sw.bb43:                                          ; preds = %if.then23
  %34 = ptrtoint ptr %clocks_table.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clocks_table.i, align 4
  %tobool.not.i173 = icmp eq ptr %35, null
  br i1 %tobool.not.i173, label %sw.bb43.cleanup_crit_edge, label %if.end.i174

sw.bb43.cleanup_crit_edge:                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i174:                                      ; preds = %sw.bb43
  %VcnClkLevelsEnabled.i175 = getelementptr inbounds %struct.DpmClocks_t, ptr %35, i32 0, i32 16
  %36 = ptrtoint ptr %VcnClkLevelsEnabled.i175 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %VcnClkLevelsEnabled.i175, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp7.not.i177 = icmp ugt i8 %37, 1
  br i1 %cmp7.not.i177, label %vangogh_get_dpm_clk_limited.exit184, label %if.end.i174.cleanup_crit_edge

if.end.i174.cleanup_crit_edge:                    ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

vangogh_get_dpm_clk_limited.exit184:              ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx11.i179 = getelementptr %struct.DpmClocks_t, ptr %35, i32 0, i32 6, i32 1
  br label %if.end55.sink.split

sw.bb48:                                          ; preds = %if.then23
  %38 = ptrtoint ptr %clocks_table.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clocks_table.i, align 4
  %tobool.not.i186 = icmp eq ptr %39, null
  br i1 %tobool.not.i186, label %sw.bb48.cleanup_crit_edge, label %if.end.i187

sw.bb48.cleanup_crit_edge:                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i187:                                      ; preds = %sw.bb48
  %VcnClkLevelsEnabled13.i188 = getelementptr inbounds %struct.DpmClocks_t, ptr %39, i32 0, i32 16
  %40 = ptrtoint ptr %VcnClkLevelsEnabled13.i188 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %VcnClkLevelsEnabled13.i188, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %41)
  %cmp15.not.i190 = icmp ugt i8 %41, 1
  br i1 %cmp15.not.i190, label %vangogh_get_dpm_clk_limited.exit197, label %if.end.i187.cleanup_crit_edge

if.end.i187.cleanup_crit_edge:                    ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

vangogh_get_dpm_clk_limited.exit197:              ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #11
  %dclk.i192 = getelementptr %struct.DpmClocks_t, ptr %39, i32 0, i32 6, i32 1, i32 1
  br label %if.end55.sink.split

if.end55.sink.split:                              ; preds = %vangogh_get_dpm_clk_limited.exit197, %vangogh_get_dpm_clk_limited.exit184, %vangogh_get_dpm_clk_limited.exit171, %vangogh_get_dpm_clk_limited.exit158, %if.end34.i, %if.end26.i
  %dclk.i192.sink = phi ptr [ %dclk.i192, %vangogh_get_dpm_clk_limited.exit197 ], [ %arrayidx11.i179, %vangogh_get_dpm_clk_limited.exit184 ], [ %arrayidx36.i166, %vangogh_get_dpm_clk_limited.exit171 ], [ %arrayidx.i153, %vangogh_get_dpm_clk_limited.exit158 ], [ %memclk.i, %if.end26.i ], [ %arrayidx36.i, %if.end34.i ]
  %42 = ptrtoint ptr %dclk.i192.sink to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dclk.i192.sink, align 4
  %44 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %max, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.end55.sink.split, %if.end21.if.end55_crit_edge
  %soc_mask.0 = phi i32 [ -1, %if.end21.if.end55_crit_edge ], [ 1, %if.end55.sink.split ]
  %mclk_mask.0 = phi i32 [ -1, %if.end21.if.end55_crit_edge ], [ 0, %if.end55.sink.split ]
  %tobool56.not = icmp eq ptr %min, null
  br i1 %tobool56.not, label %if.end55.cleanup_crit_edge, label %if.then57

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then57:                                        ; preds = %if.end55
  %45 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %clk_type, label %if.then57.cleanup_crit_edge [
    i32 7, label %if.then57.sw.bb58_crit_edge
    i32 14, label %if.then57.sw.bb58_crit_edge309
    i32 6, label %sw.bb63
    i32 12, label %sw.bb68
    i32 1, label %sw.bb73
    i32 2, label %sw.bb78
  ]

if.then57.sw.bb58_crit_edge309:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb58

if.then57.sw.bb58_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb58

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb58:                                          ; preds = %if.then57.sw.bb58_crit_edge, %if.then57.sw.bb58_crit_edge309
  %clocks_table.i198 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %46 = ptrtoint ptr %clocks_table.i198 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clocks_table.i198, align 4
  %tobool.not.i199 = icmp eq ptr %47, null
  br i1 %tobool.not.i199, label %sw.bb58.cleanup_crit_edge, label %if.end.i202

sw.bb58.cleanup_crit_edge:                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i202:                                      ; preds = %sw.bb58
  %48 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %clk_type, label %if.end.i202.cleanup_crit_edge [
    i32 12, label %sw.bb28.i230
    i32 14, label %if.end.i202.sw.bb21.i224_crit_edge
    i32 7, label %if.end.i202.sw.bb21.i224_crit_edge310
  ]

if.end.i202.sw.bb21.i224_crit_edge310:            ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb21.i224

if.end.i202.sw.bb21.i224_crit_edge:               ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb21.i224

if.end.i202.cleanup_crit_edge:                    ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb21.i224:                                     ; preds = %if.end.i202.sw.bb21.i224_crit_edge, %if.end.i202.sw.bb21.i224_crit_edge310
  %NumDfPstatesEnabled.i221 = getelementptr inbounds %struct.DpmClocks_t, ptr %47, i32 0, i32 11
  %49 = ptrtoint ptr %NumDfPstatesEnabled.i221 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %NumDfPstatesEnabled.i221, align 4
  %conv22.i222 = zext i8 %50 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mclk_mask.0, i32 %conv22.i222)
  %cmp23.not.i223 = icmp ult i32 %mclk_mask.0, %conv22.i222
  br i1 %cmp23.not.i223, label %if.end26.i226, label %sw.bb21.i224.cleanup_crit_edge

sw.bb21.i224.cleanup_crit_edge:                   ; preds = %sw.bb21.i224
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26.i226:                                    ; preds = %sw.bb21.i224
  call void @__sanitizer_cov_trace_pc() #11
  %memclk.i225 = getelementptr %struct.DpmClocks_t, ptr %47, i32 0, i32 8, i32 %mclk_mask.0, i32 1
  br label %cleanup.sink.split.i234

sw.bb28.i230:                                     ; preds = %if.end.i202
  %NumDfPstatesEnabled29.i227 = getelementptr inbounds %struct.DpmClocks_t, ptr %47, i32 0, i32 11
  %51 = ptrtoint ptr %NumDfPstatesEnabled29.i227 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %NumDfPstatesEnabled29.i227, align 4
  %conv30.i228 = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mclk_mask.0, i32 %conv30.i228)
  %cmp31.not.i229 = icmp ult i32 %mclk_mask.0, %conv30.i228
  br i1 %cmp31.not.i229, label %if.end34.i232, label %sw.bb28.i230.cleanup_crit_edge

sw.bb28.i230.cleanup_crit_edge:                   ; preds = %sw.bb28.i230
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34.i232:                                    ; preds = %sw.bb28.i230
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx36.i231 = getelementptr %struct.DpmClocks_t, ptr %47, i32 0, i32 8, i32 %mclk_mask.0
  br label %cleanup.sink.split.i234

cleanup.sink.split.i234:                          ; preds = %if.end34.i232, %if.end26.i226
  %arrayidx.sink.i233 = phi ptr [ %memclk.i225, %if.end26.i226 ], [ %arrayidx36.i231, %if.end34.i232 ]
  %53 = ptrtoint ptr %arrayidx.sink.i233 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.sink.i233, align 4
  %55 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %min, align 4
  br label %cleanup

sw.bb63:                                          ; preds = %if.then57
  %clocks_table.i237 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %56 = ptrtoint ptr %clocks_table.i237 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %clocks_table.i237, align 4
  %tobool.not.i238 = icmp eq ptr %57, null
  br i1 %tobool.not.i238, label %sw.bb63.cleanup_crit_edge, label %if.end.i239

sw.bb63.cleanup_crit_edge:                        ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i239:                                      ; preds = %sw.bb63
  %NumSocClkLevelsEnabled.i240 = getelementptr inbounds %struct.DpmClocks_t, ptr %57, i32 0, i32 14
  %58 = ptrtoint ptr %NumSocClkLevelsEnabled.i240 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %NumSocClkLevelsEnabled.i240, align 1
  %conv.i241 = zext i8 %59 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %soc_mask.0, i32 %conv.i241)
  %cmp1.not.i242 = icmp ult i32 %soc_mask.0, %conv.i241
  br i1 %cmp1.not.i242, label %if.end4.i245, label %if.end.i239.cleanup_crit_edge

if.end.i239.cleanup_crit_edge:                    ; preds = %if.end.i239
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.i245:                                     ; preds = %if.end.i239
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i244 = getelementptr %struct.DpmClocks_t, ptr %57, i32 0, i32 3, i32 %soc_mask.0
  %60 = ptrtoint ptr %arrayidx.i244 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i244, align 4
  %62 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %min, align 4
  br label %cleanup

sw.bb68:                                          ; preds = %if.then57
  %clocks_table.i250 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %63 = ptrtoint ptr %clocks_table.i250 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %clocks_table.i250, align 4
  %tobool.not.i251 = icmp eq ptr %64, null
  br i1 %tobool.not.i251, label %sw.bb68.cleanup_crit_edge, label %if.end.i252

sw.bb68.cleanup_crit_edge:                        ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i252:                                      ; preds = %sw.bb68
  %NumDfPstatesEnabled29.i253 = getelementptr inbounds %struct.DpmClocks_t, ptr %64, i32 0, i32 11
  %65 = ptrtoint ptr %NumDfPstatesEnabled29.i253 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %NumDfPstatesEnabled29.i253, align 4
  %conv30.i254 = zext i8 %66 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mclk_mask.0, i32 %conv30.i254)
  %cmp31.not.i255 = icmp ult i32 %mclk_mask.0, %conv30.i254
  br i1 %cmp31.not.i255, label %if.end34.i258, label %if.end.i252.cleanup_crit_edge

if.end.i252.cleanup_crit_edge:                    ; preds = %if.end.i252
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34.i258:                                    ; preds = %if.end.i252
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx36.i257 = getelementptr %struct.DpmClocks_t, ptr %64, i32 0, i32 8, i32 %mclk_mask.0
  %67 = ptrtoint ptr %arrayidx36.i257 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx36.i257, align 4
  %69 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %min, align 4
  br label %cleanup

sw.bb73:                                          ; preds = %if.then57
  %clocks_table.i263 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %70 = ptrtoint ptr %clocks_table.i263 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %clocks_table.i263, align 4
  %tobool.not.i264 = icmp eq ptr %71, null
  br i1 %tobool.not.i264, label %sw.bb73.cleanup_crit_edge, label %if.end.i265

sw.bb73.cleanup_crit_edge:                        ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i265:                                      ; preds = %sw.bb73
  %VcnClkLevelsEnabled.i266 = getelementptr inbounds %struct.DpmClocks_t, ptr %71, i32 0, i32 16
  %72 = ptrtoint ptr %VcnClkLevelsEnabled.i266 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %VcnClkLevelsEnabled.i266, align 1
  %conv6.i267 = zext i8 %73 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %soc_mask.0, i32 %conv6.i267)
  %cmp7.not.i268 = icmp ult i32 %soc_mask.0, %conv6.i267
  br i1 %cmp7.not.i268, label %if.end10.i271, label %if.end.i265.cleanup_crit_edge

if.end.i265.cleanup_crit_edge:                    ; preds = %if.end.i265
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10.i271:                                    ; preds = %if.end.i265
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx11.i270 = getelementptr %struct.DpmClocks_t, ptr %71, i32 0, i32 6, i32 %soc_mask.0
  %74 = ptrtoint ptr %arrayidx11.i270 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx11.i270, align 4
  %76 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %min, align 4
  br label %cleanup

sw.bb78:                                          ; preds = %if.then57
  %clocks_table.i276 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %77 = ptrtoint ptr %clocks_table.i276 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %clocks_table.i276, align 4
  %tobool.not.i277 = icmp eq ptr %78, null
  br i1 %tobool.not.i277, label %sw.bb78.cleanup_crit_edge, label %if.end.i278

sw.bb78.cleanup_crit_edge:                        ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i278:                                      ; preds = %sw.bb78
  %VcnClkLevelsEnabled13.i279 = getelementptr inbounds %struct.DpmClocks_t, ptr %78, i32 0, i32 16
  %79 = ptrtoint ptr %VcnClkLevelsEnabled13.i279 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %VcnClkLevelsEnabled13.i279, align 1
  %conv14.i280 = zext i8 %80 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %soc_mask.0, i32 %conv14.i280)
  %cmp15.not.i281 = icmp ult i32 %soc_mask.0, %conv14.i280
  br i1 %cmp15.not.i281, label %if.end18.i284, label %if.end.i278.cleanup_crit_edge

if.end.i278.cleanup_crit_edge:                    ; preds = %if.end.i278
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18.i284:                                    ; preds = %if.end.i278
  call void @__sanitizer_cov_trace_pc() #11
  %dclk.i283 = getelementptr %struct.DpmClocks_t, ptr %78, i32 0, i32 6, i32 %soc_mask.0, i32 1
  %81 = ptrtoint ptr %dclk.i283 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dclk.i283, align 4
  %83 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %min, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18.i284, %if.end.i278.cleanup_crit_edge, %sw.bb78.cleanup_crit_edge, %if.end10.i271, %if.end.i265.cleanup_crit_edge, %sw.bb73.cleanup_crit_edge, %if.end34.i258, %if.end.i252.cleanup_crit_edge, %sw.bb68.cleanup_crit_edge, %if.end4.i245, %if.end.i239.cleanup_crit_edge, %sw.bb63.cleanup_crit_edge, %cleanup.sink.split.i234, %sw.bb28.i230.cleanup_crit_edge, %sw.bb21.i224.cleanup_crit_edge, %if.end.i202.cleanup_crit_edge, %sw.bb58.cleanup_crit_edge, %if.then57.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.end.i187.cleanup_crit_edge, %sw.bb48.cleanup_crit_edge, %if.end.i174.cleanup_crit_edge, %sw.bb43.cleanup_crit_edge, %if.end.i161.cleanup_crit_edge, %sw.bb38.cleanup_crit_edge, %if.end.i148.cleanup_crit_edge, %sw.bb33.cleanup_crit_edge, %sw.bb28.i.cleanup_crit_edge, %sw.bb21.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.bb28.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %if.then18, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then18 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end55.cleanup_crit_edge ], [ -22, %if.then23.cleanup_crit_edge ], [ -22, %if.then57.cleanup_crit_edge ], [ -22, %sw.bb58.cleanup_crit_edge ], [ -22, %sw.bb21.i224.cleanup_crit_edge ], [ -22, %sw.bb28.i230.cleanup_crit_edge ], [ -22, %if.end.i202.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i234 ], [ -22, %sw.bb63.cleanup_crit_edge ], [ -22, %if.end.i239.cleanup_crit_edge ], [ 0, %if.end4.i245 ], [ -22, %sw.bb68.cleanup_crit_edge ], [ -22, %if.end.i252.cleanup_crit_edge ], [ 0, %if.end34.i258 ], [ -22, %sw.bb73.cleanup_crit_edge ], [ -22, %if.end.i265.cleanup_crit_edge ], [ 0, %if.end10.i271 ], [ -22, %sw.bb78.cleanup_crit_edge ], [ -22, %if.end.i278.cleanup_crit_edge ], [ 0, %if.end18.i284 ], [ -22, %sw.bb28.cleanup_crit_edge ], [ -22, %sw.bb21.i.cleanup_crit_edge ], [ -22, %sw.bb28.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %sw.bb33.cleanup_crit_edge ], [ -22, %if.end.i148.cleanup_crit_edge ], [ -22, %sw.bb38.cleanup_crit_edge ], [ -22, %if.end.i161.cleanup_crit_edge ], [ -22, %sw.bb43.cleanup_crit_edge ], [ -22, %if.end.i174.cleanup_crit_edge ], [ -22, %sw.bb48.cleanup_crit_edge ], [ -22, %if.end.i187.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vangogh_set_soft_freq_limited_range(ptr noundef %smu, i32 noundef %clk_type, i32 noundef %min, i32 noundef %max) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %clk_type)
  %0 = icmp ult i32 %clk_type, 15
  br i1 %0, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %clk_type to i16
  %switch.shifted = lshr i16 28871, %switch.maskindex
  %1 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %switch.lobit.not = icmp eq i16 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [15 x i32], ptr @switch.table.vangogh_set_soft_freq_limited_range, i32 0, i32 %clk_type
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call.i = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef %switch.load) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i.not, label %switch.lookup.cleanup_crit_edge, label %if.end

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  %3 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %clk_type, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 13, label %if.end.sw.bb_crit_edge85
    i32 12, label %sw.bb8
    i32 6, label %sw.bb17
    i32 1, label %sw.bb26
    i32 2, label %sw.bb36
  ]

if.end.sw.bb_crit_edge85:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge85
  %call1 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 131, i32 noundef %min, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %sw.bb
  %call4 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 130, i32 noundef %max, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end3.sw.epilog_crit_edge, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %call9 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 143, i32 noundef %min, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %sw.bb8
  %call13 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 133, i32 noundef %max, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.sw.epilog_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  %call18 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 116, i32 noundef %min, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %sw.bb17.cleanup_crit_edge

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %sw.bb17
  %call22 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 132, i32 noundef %max, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end21.sw.epilog_crit_edge, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21.sw.epilog_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  %shl = shl i32 %min, 16
  %call27 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 108, i32 noundef %shl, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %sw.bb26.cleanup_crit_edge

sw.bb26.cleanup_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %sw.bb26
  %shl31 = shl i32 %max, 16
  %call32 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 134, i32 noundef %shl31, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end30.sw.epilog_crit_edge, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30.sw.epilog_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end
  %call37 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 108, i32 noundef %min, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %sw.bb36.cleanup_crit_edge

sw.bb36.cleanup_crit_edge:                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end40:                                         ; preds = %sw.bb36
  %call41 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 134, i32 noundef %max, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end40.sw.epilog_crit_edge, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end40.sw.epilog_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end40.sw.epilog_crit_edge, %if.end30.sw.epilog_crit_edge, %if.end21.sw.epilog_crit_edge, %if.end12.sw.epilog_crit_edge, %if.end3.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end40.cleanup_crit_edge, %sw.bb36.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %sw.bb26.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %sw.bb17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 0, %switch.lookup.cleanup_crit_edge ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ %call9, %sw.bb8.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call18, %sw.bb17.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ], [ %call27, %sw.bb26.cleanup_crit_edge ], [ %call32, %if.end30.cleanup_crit_edge ], [ %call37, %sw.bb36.cleanup_crit_edge ], [ %call41, %if.end40.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_init_smc_tables(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_send_msg_without_waiting(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @smu_cmn_init_soft_gpu_metrics(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @smu_cmn_get_indep_throttler_status(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_feature_is_supported(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_kiq_rreg(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !161, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !175, !177, !179}
!llvm.module.flags = !{!181, !182, !183, !184, !185, !186, !187, !188}
!llvm.ident = !{!189}

!0 = !{ptr @vangogh_ppt_funcs, !1, !"vangogh_ppt_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 2183, i32 35}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 813, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @vangogh_common_print_clk_levels._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @vangogh_common_print_clk_levels._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 597, i32 37}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 597, i32 46}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 598, i32 37}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 600, i32 37}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 606, i32 37}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 615, i32 46}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 616, i32 37}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 618, i32 37}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 661, i32 37}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 662, i32 27}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 662, i32 33}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 668, i32 37}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 789, i32 36}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 791, i32 36}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 794, i32 36}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 1785, i32 3}
!42 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @vangogh_od_edit_dpm_table._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @vangogh_od_edit_dpm_table._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 1793, i32 4}
!48 = !{ptr @vangogh_od_edit_dpm_table._entry.23, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @vangogh_od_edit_dpm_table._entry_ptr.25, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 1797, i32 4}
!52 = !{ptr @vangogh_od_edit_dpm_table._entry.26, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @vangogh_od_edit_dpm_table._entry_ptr.28, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 1803, i32 5}
!56 = !{ptr @vangogh_od_edit_dpm_table._entry.29, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @vangogh_od_edit_dpm_table._entry_ptr.31, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 1810, i32 5}
!60 = !{ptr @vangogh_od_edit_dpm_table._entry.32, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @vangogh_od_edit_dpm_table._entry_ptr.34, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.36, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 1821, i32 4}
!64 = !{ptr @vangogh_od_edit_dpm_table._entry.35, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @vangogh_od_edit_dpm_table._entry_ptr.37, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.39, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 1827, i32 5}
!68 = !{ptr @vangogh_od_edit_dpm_table._entry.38, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @vangogh_od_edit_dpm_table._entry_ptr.40, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.42, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 1835, i32 5}
!72 = !{ptr @vangogh_od_edit_dpm_table._entry.41, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @vangogh_od_edit_dpm_table._entry_ptr.43, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @vangogh_od_edit_dpm_table._entry.44, !75, !"_entry", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 1847, i32 4}
!76 = !{ptr @vangogh_od_edit_dpm_table._entry_ptr.45, !75, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @vangogh_od_edit_dpm_table._entry.46, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 1858, i32 4}
!79 = !{ptr @vangogh_od_edit_dpm_table._entry_ptr.47, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.49, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 1862, i32 5}
!82 = !{ptr @vangogh_od_edit_dpm_table._entry.48, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @vangogh_od_edit_dpm_table._entry_ptr.50, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.52, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 1872, i32 5}
!86 = !{ptr @vangogh_od_edit_dpm_table._entry.51, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @vangogh_od_edit_dpm_table._entry_ptr.53, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.55, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 1879, i32 5}
!90 = !{ptr @vangogh_od_edit_dpm_table._entry.54, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @vangogh_od_edit_dpm_table._entry_ptr.56, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.58, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 1884, i32 5}
!94 = !{ptr @vangogh_od_edit_dpm_table._entry.57, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @vangogh_od_edit_dpm_table._entry_ptr.59, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.61, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 1893, i32 5}
!98 = !{ptr @vangogh_od_edit_dpm_table._entry.60, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @vangogh_od_edit_dpm_table._entry_ptr.62, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.64, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 1902, i32 5}
!102 = !{ptr @vangogh_od_edit_dpm_table._entry.63, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @vangogh_od_edit_dpm_table._entry_ptr.65, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.66, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 1060, i32 36}
!106 = !{ptr @.str.67, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 1061, i32 73}
!108 = !{ptr @.str.68, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 1073, i32 3}
!110 = !{ptr @.str.69, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @vangogh_set_power_profile_mode._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @vangogh_set_power_profile_mode._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.70, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 1086, i32 3}
!115 = !{ptr @.str.71, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @vangogh_set_power_profile_mode.__UNIQUE_ID_ddebug343, !114, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!117 = distinct !{null, !118, !"__print_once", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 1095, i32 3}
!119 = !{ptr @.str.73, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @vangogh_set_power_profile_mode._entry.72, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @vangogh_set_power_profile_mode._entry_ptr.74, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.75, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 428, i32 3}
!124 = !{ptr @vangogh_common_get_smu_metrics_data._entry, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @vangogh_common_get_smu_metrics_data._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.76, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 1627, i32 4}
!128 = !{ptr @.str.77, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @vangogh_set_watermarks_table._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @vangogh_set_watermarks_table._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.78, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 2080, i32 3}
!133 = !{ptr @.str.79, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @vangogh_get_power_limit._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @vangogh_get_power_limit._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.81, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 2093, i32 3}
!138 = !{ptr @vangogh_get_power_limit._entry.80, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @vangogh_get_power_limit._entry_ptr.82, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.83, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 217, i32 3}
!142 = !{ptr @vangogh_tables_init._entry, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @vangogh_tables_init._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.84, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 2143, i32 3}
!146 = !{ptr @.str.85, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @vangogh_set_power_limit._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @vangogh_set_power_limit._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.87, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 2161, i32 4}
!151 = !{ptr @vangogh_set_power_limit._entry.86, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @vangogh_set_power_limit._entry_ptr.88, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.89, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 1766, i32 3}
!155 = !{ptr @vangogh_common_get_gpu_metrics._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @vangogh_common_get_gpu_metrics._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @vangogh_throttler_map, !158, !"vangogh_throttler_map", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 193, i32 22}
!159 = !{ptr @.str.90, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 2010, i32 4}
!161 = !{ptr @.str.91, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @vangogh_post_smu_init._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @vangogh_post_smu_init._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.93, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 2015, i32 3}
!166 = !{ptr @.str.94, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @vangogh_post_smu_init._entry.92, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @vangogh_post_smu_init._entry_ptr.95, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.97, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 2033, i32 3}
!171 = !{ptr @vangogh_post_smu_init._entry.96, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @vangogh_post_smu_init._entry_ptr.98, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @vangogh_message_map, !174, !"vangogh_message_map", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 61, i32 36}
!175 = !{ptr @vangogh_feature_mask_map, !176, !"vangogh_feature_mask_map", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 131, i32 32}
!177 = !{ptr @vangogh_table_map, !178, !"vangogh_table_map", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 178, i32 32}
!179 = !{ptr @vangogh_workload_map, !180, !"vangogh_workload_map", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/vangogh_ppt.c", i32 185, i32 32}
!181 = !{i32 1, !"wchar_size", i32 2}
!182 = !{i32 1, !"min_enum_size", i32 4}
!183 = !{i32 8, !"branch-target-enforcement", i32 0}
!184 = !{i32 8, !"sign-return-address", i32 0}
!185 = !{i32 8, !"sign-return-address-all", i32 0}
!186 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!187 = !{i32 7, !"uwtable", i32 1}
!188 = !{i32 7, !"frame-pointer", i32 2}
!189 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!190 = !{!"auto-init"}
!191 = !{i32 0, i32 33}
!192 = !{i64 2148990906, i64 2148990911, i64 2148990924, i64 2148990968, i64 2148991002, i64 2148991023}
!193 = !{i8 0, i8 2}
