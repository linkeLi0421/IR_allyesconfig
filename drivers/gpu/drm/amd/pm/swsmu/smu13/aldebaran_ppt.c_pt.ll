; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/swsmu/smu13/aldebaran_ppt.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pptable_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cmn2asic_msg_mapping = type { i32, i32, i32 }
%struct.cmn2asic_mapping = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.smu_temperature_range = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
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
%struct.smu_umd_pstate_table = type { %struct.pstates_clk_freq, %struct.pstates_clk_freq, %struct.pstates_clk_freq, %struct.pstates_clk_freq, %struct.pstates_clk_freq }
%struct.pstates_clk_freq = type { i32, i32, i32, %struct.smu_freq_info, %struct.smu_freq_info }
%struct.smu_freq_info = type { i32, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.smu_user_dpm_profile = type { i32, i32, i32, i32, i32, i32, [23 x i32], i32 }
%struct.stb_context = type { i32, i8, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.smu_13_0_dpm_table = type { i32, i32, i32, [16 x %struct.smu_13_0_dpm_clk_level] }
%struct.smu_13_0_dpm_clk_level = type { i8, i32 }
%struct.smu_13_0_dpm_tables = type { %struct.smu_13_0_dpm_table, %struct.smu_13_0_dpm_table, %struct.smu_13_0_dpm_table, %struct.smu_13_0_dpm_table, %struct.smu_13_0_dpm_table, %struct.smu_13_0_dpm_table, %struct.smu_13_0_dpm_table, %struct.smu_13_0_dpm_table, %struct.smu_13_0_dpm_table, %struct.smu_13_0_dpm_table, %struct.smu_13_0_dpm_table, %struct.smu_13_0_pcie_table }
%struct.smu_13_0_pcie_table = type { [2 x i8], [2 x i8] }
%struct.PPTable_t = type { i32, [2 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [7 x %struct.DpmDescriptor_t], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i32], [8 x i8], [4 x i32], [4 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i32, [8 x i16], [8 x i16], [8 x i16], [8 x i16], [8 x i16], [8 x i16], [8 x i16], [8 x i16], i16, i16, i16, i16, [4 x i8], [4 x i8], i8, [3 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, [14 x i32], i16, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, [8 x %struct.I2cControllerConfig_t], i8, i8, i16, i16, i8, i8, i16, i16, [14 x i32] }
%struct.DpmDescriptor_t = type { i8, i8, i16, %struct.LinearInt_t, %struct.QuadraticInt_t }
%struct.LinearInt_t = type { i32, i32 }
%struct.QuadraticInt_t = type { i32, i32, i32 }
%struct.I2cControllerConfig_t = type { i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.pp_clock_levels_with_latency = type { i32, [16 x %struct.pp_clock_with_latency] }
%struct.pp_clock_with_latency = type { i32, i32 }
%struct.SmuMetrics_t = type { [7 x i16], i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, [4 x i16], i32, i32, i32, i32, i32, i32, [8 x i32] }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.108, i32, i32, i32, i32 }
%union.anon.108 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_smuio_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.smu_13_0_powerplay_table = type <{ %struct.atom_common_table_header, i8, i16, i32, i32, i16, i32, i8, i16, i16, i16, i16, i16, i16, [6 x i16], %struct.smu_13_0_power_saving_clock_table, %struct.smu_13_0_overdrive_table, %struct.PPTable_t }>
%struct.atom_common_table_header = type { i16, i8, i8 }
%struct.smu_13_0_power_saving_clock_table = type { i8, [3 x i8], i32, [16 x i32], [16 x i32] }
%struct.smu_13_0_overdrive_table = type { i8, [3 x i8], i32, i32, [32 x i8], [32 x i32], [32 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.88, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.88 = type { ptr }
%struct.amdgpu_ras = type { i32, %struct.list_head, %struct.device_attribute, %struct.bin_attribute, ptr, ptr, %struct.work_struct, %struct.atomic_t, ptr, ptr, %struct.mutex, i32, i8, %struct.amdgpu_ras_eeprom_control, i8, i32, i8, i8, %struct.delayed_work, %struct.atomic_t, %struct.atomic_t, %struct.umc_ecc_info }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ras_eeprom_control = type { %struct.amdgpu_ras_eeprom_table_header, i32, i32, i32, i32, i32, i32, %struct.mutex }
%struct.amdgpu_ras_eeprom_table_header = type { i32, i32, i32, i32, i32 }
%struct.umc_ecc_info = type { [32 x %struct.ecc_info_per_ch] }
%struct.ecc_info_per_ch = type { i16, i16, i64, i64 }
%struct.gpu_metrics_v1_3 = type { %struct.metrics_table_header, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i32, i32, [4 x i16], i64, i16, i16, i16, i16, i64 }
%struct.metrics_table_header = type { i16, i8, i8 }
%struct.EccInfo_t = type { i64, i64, i16, i16, i32 }
%struct.SwI2cRequest_t = type { i8, i8, i8, i8, [24 x %struct.SwI2cCmd_t] }
%struct.SwI2cCmd_t = type { i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@aldebaran_ppt_funcs = internal constant { %struct.pptable_funcs, [124 x i8] } { %struct.pptable_funcs { ptr null, ptr @aldebaran_get_allowed_feature_mask, ptr null, ptr @aldebaran_set_default_dpm_table, ptr null, ptr @aldebaran_populate_umd_state_clk, ptr @aldebaran_print_clk_levels, ptr @aldebaran_force_clk_levels, ptr @aldebaran_usr_edit_dpm_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aldebaran_read_sensor, ptr null, ptr null, ptr null, ptr null, ptr @aldebaran_is_dpm_running, ptr null, ptr null, ptr null, ptr @aldebaran_get_thermal_temperature_range, ptr null, ptr null, ptr @aldebaran_set_performance_level, ptr null, ptr null, ptr @aldebaran_get_power_limit, ptr null, ptr @aldebaran_set_df_cstate, ptr @aldebaran_allow_xgmi_power_down, ptr null, ptr @aldebaran_i2c_control_init, ptr @aldebaran_i2c_control_fini, ptr @aldebaran_get_unique_id, ptr null, ptr @smu_v13_0_init_microcode, ptr @smu_v13_0_load_microcode, ptr @smu_v13_0_fini_microcode, ptr @aldebaran_init_smc_tables, ptr @smu_v13_0_fini_smc_tables, ptr @smu_v13_0_init_power, ptr @smu_v13_0_fini_power, ptr @smu_v13_0_check_fw_status, ptr @aldebaran_set_mp1_state, ptr @aldebaran_setup_pptable, ptr @smu_v13_0_get_vbios_bootup_values, ptr @smu_v13_0_check_fw_version, ptr null, ptr null, ptr @smu_cmn_write_pptable, ptr @smu_v13_0_set_driver_table_location, ptr @smu_v13_0_set_tool_table_location, ptr @smu_v13_0_notify_memory_pool_location, ptr @aldebaran_system_features_control, ptr @smu_cmn_send_smc_msg_with_param, ptr @smu_cmn_send_smc_msg, ptr null, ptr null, ptr @smu_cmn_get_enabled_mask, ptr @smu_cmn_feature_is_enabled, ptr @smu_cmn_disable_all_features_with_exception, ptr null, ptr @aldebaran_set_power_limit, ptr @smu_v13_0_init_max_sustainable_clocks, ptr @smu_v13_0_enable_thermal_alert, ptr @smu_v13_0_disable_thermal_alert, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smu_v13_0_set_xgmi_pstate, ptr null, ptr null, ptr @smu_v13_0_register_irq_handler, ptr @smu_v13_0_set_azalia_d3_pme, ptr @smu_v13_0_get_max_sustainable_clocks_by_dc, ptr @aldebaran_is_baco_supported, ptr null, ptr null, ptr null, ptr null, ptr @aldebaran_is_mode1_reset_supported, ptr @aldebaran_is_mode2_reset_supported, ptr @aldebaran_mode1_reset, ptr @aldebaran_mode2_reset, ptr @smu_v13_0_get_dpm_ultimate_freq, ptr @aldebaran_set_soft_freq_limited_range, ptr null, ptr @aldebaran_log_thermal_throttling_event, ptr @smu_cmn_get_pp_feature_mask, ptr @smu_cmn_set_pp_feature_mask, ptr @aldebaran_get_gpu_metrics, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aldebaran_smu_handle_passthrough_sbr, ptr @smu_v13_0_wait_for_event, ptr @aldebaran_smu_send_hbm_bad_page_num, ptr @aldebaran_get_ecc_info, ptr null }, [124 x i8] zeroinitializer }, align 32
@aldebaran_message_map = internal constant { [207 x %struct.cmn2asic_msg_mapping], [620 x i8] } { [207 x %struct.cmn2asic_msg_mapping] [%struct.cmn2asic_msg_mapping { i32 1, i32 1, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 2, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 4, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 7, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 8, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 13, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 14, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 31, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 34, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 15, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 16, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 17, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 18, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 19, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 20, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 21, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 24, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 25, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 26, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 27, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 28, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 29, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 30, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 3, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 36, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 40, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 41, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 42, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 22, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 23, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 44, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 35, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 43, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 39, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 46, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 32, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 33, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 50, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 53, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 47, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 51, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 52, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 54, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 55, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 56, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 57, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 58, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 59, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 66, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 67, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 69, i32 0 }], [620 x i8] zeroinitializer }, align 32
@aldebaran_clk_map = internal constant { [23 x %struct.cmn2asic_mapping], [40 x i8] } { [23 x %struct.cmn2asic_mapping] [%struct.cmn2asic_mapping { i32 1, i32 0 }, %struct.cmn2asic_mapping { i32 1, i32 1 }, %struct.cmn2asic_mapping { i32 1, i32 2 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 3 }, %struct.cmn2asic_mapping { i32 1, i32 4 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 5 }, %struct.cmn2asic_mapping { i32 1, i32 0 }, %struct.cmn2asic_mapping { i32 1, i32 4 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 6 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer], [40 x i8] zeroinitializer }, align 32
@aldebaran_feature_mask_map = internal constant { [95 x %struct.cmn2asic_mapping], [168 x i8] } { [95 x %struct.cmn2asic_mapping] [%struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 1 }, %struct.cmn2asic_mapping { i32 1, i32 2 }, %struct.cmn2asic_mapping { i32 1, i32 3 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 5 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 6 }, %struct.cmn2asic_mapping { i32 1, i32 7 }, %struct.cmn2asic_mapping { i32 1, i32 8 }, %struct.cmn2asic_mapping { i32 1, i32 9 }, %struct.cmn2asic_mapping { i32 1, i32 16 }, %struct.cmn2asic_mapping { i32 1, i32 17 }, %struct.cmn2asic_mapping { i32 1, i32 21 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 0 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 20 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 4 }, %struct.cmn2asic_mapping { i32 1, i32 10 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 24 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 11 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 14 }, %struct.cmn2asic_mapping { i32 1, i32 18 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 12 }, %struct.cmn2asic_mapping { i32 1, i32 22 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 19 }, %struct.cmn2asic_mapping { i32 1, i32 25 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 15 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 13 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 26 }, %struct.cmn2asic_mapping { i32 1, i32 27 }, %struct.cmn2asic_mapping { i32 1, i32 28 }, %struct.cmn2asic_mapping { i32 1, i32 29 }, %struct.cmn2asic_mapping { i32 1, i32 30 }], [168 x i8] zeroinitializer }, align 32
@aldebaran_table_map = internal constant { [15 x %struct.cmn2asic_mapping], [40 x i8] } { [15 x %struct.cmn2asic_mapping] [%struct.cmn2asic_mapping { i32 1, i32 0 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 1 }, %struct.cmn2asic_mapping { i32 1, i32 2 }, %struct.cmn2asic_mapping { i32 1, i32 3 }, %struct.cmn2asic_mapping { i32 1, i32 4 }, %struct.cmn2asic_mapping { i32 1, i32 5 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 6 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 7 }], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unavailable\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s:\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GFXCLK\00", [25 x i8] zeroinitializer }, align 32
@aldebaran_print_clk_levels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 758, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"amdgpu: Attempt to get current gfx clk Failed!\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"aldebaran_print_clk_levels\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aldebaran_print_clk_levels._entry_ptr = internal global ptr @aldebaran_print_clk_levels._entry, section ".printk_index", align 4
@aldebaran_print_clk_levels._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 765, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"amdgpu: Attempt to get gfx clk levels Failed!\00", [50 x i8] zeroinitializer }, align 32
@aldebaran_print_clk_levels._entry_ptr.10 = internal global ptr @aldebaran_print_clk_levels._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%d: %uMhz %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCLK\00", [27 x i8] zeroinitializer }, align 32
@aldebaran_print_clk_levels._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 812, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"amdgpu: Attempt to get current mclk Failed!\00", [52 x i8] zeroinitializer }, align 32
@aldebaran_print_clk_levels._entry_ptr.17 = internal global ptr @aldebaran_print_clk_levels._entry.15, section ".printk_index", align 4
@aldebaran_print_clk_levels._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 819, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"amdgpu: Attempt to get memory clk levels Failed!\00", [47 x i8] zeroinitializer }, align 32
@aldebaran_print_clk_levels._entry_ptr.20 = internal global ptr @aldebaran_print_clk_levels._entry.18, section ".printk_index", align 4
@aldebaran_print_clk_levels._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.4, ptr @.str.5, i32 835, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"amdgpu: Attempt to get current socclk Failed!\00", [50 x i8] zeroinitializer }, align 32
@aldebaran_print_clk_levels._entry_ptr.23 = internal global ptr @aldebaran_print_clk_levels._entry.21, section ".printk_index", align 4
@aldebaran_print_clk_levels._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.5, i32 842, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu: Attempt to get socclk levels Failed!\00", [51 x i8] zeroinitializer }, align 32
@aldebaran_print_clk_levels._entry_ptr.26 = internal global ptr @aldebaran_print_clk_levels._entry.24, section ".printk_index", align 4
@aldebaran_print_clk_levels._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.5, i32 858, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"amdgpu: Attempt to get current fclk Failed!\00", [52 x i8] zeroinitializer }, align 32
@aldebaran_print_clk_levels._entry_ptr.29 = internal global ptr @aldebaran_print_clk_levels._entry.27, section ".printk_index", align 4
@aldebaran_print_clk_levels._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.4, ptr @.str.5, i32 865, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"amdgpu: Attempt to get fclk levels Failed!\00", [53 x i8] zeroinitializer }, align 32
@aldebaran_print_clk_levels._entry_ptr.32 = internal global ptr @aldebaran_print_clk_levels._entry.30, section ".printk_index", align 4
@aldebaran_print_clk_levels._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.4, ptr @.str.5, i32 881, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"amdgpu: Attempt to get current vclk Failed!\00", [52 x i8] zeroinitializer }, align 32
@aldebaran_print_clk_levels._entry_ptr.35 = internal global ptr @aldebaran_print_clk_levels._entry.33, section ".printk_index", align 4
@aldebaran_print_clk_levels._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.4, ptr @.str.5, i32 888, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"amdgpu: Attempt to get vclk levels Failed!\00", [53 x i8] zeroinitializer }, align 32
@aldebaran_print_clk_levels._entry_ptr.38 = internal global ptr @aldebaran_print_clk_levels._entry.36, section ".printk_index", align 4
@aldebaran_print_clk_levels._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.4, ptr @.str.5, i32 904, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"amdgpu: Attempt to get current dclk Failed!\00", [52 x i8] zeroinitializer }, align 32
@aldebaran_print_clk_levels._entry_ptr.41 = internal global ptr @aldebaran_print_clk_levels._entry.39, section ".printk_index", align 4
@aldebaran_print_clk_levels._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.4, ptr @.str.5, i32 911, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"amdgpu: Attempt to get dclk levels Failed!\00", [53 x i8] zeroinitializer }, align 32
@aldebaran_print_clk_levels._entry_ptr.44 = internal global ptr @aldebaran_print_clk_levels._entry.42, section ".printk_index", align 4
@amdgpu_ras_in_intr = external dso_local global %struct.atomic_t, align 4
@aldebaran_force_clk_levels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.5, i32 1002, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"amdgpu: Clock level specified %d is over max allowed %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"aldebaran_force_clk_levels\00", [37 x i8] zeroinitializer }, align 32
@aldebaran_force_clk_levels._entry_ptr = internal global ptr @aldebaran_force_clk_levels._entry, section ".printk_index", align 4
@aldebaran_force_clk_levels._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.5, i32 1012, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"amdgpu: Failed to upload boot level to lowest!\0A\00", [48 x i8] zeroinitializer }, align 32
@aldebaran_force_clk_levels._entry_ptr.49 = internal global ptr @aldebaran_force_clk_levels._entry.47, section ".printk_index", align 4
@aldebaran_force_clk_levels._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.5, i32 1021, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"amdgpu: Failed to upload dpm max level to highest!\0A\00", [44 x i8] zeroinitializer }, align 32
@aldebaran_force_clk_levels._entry_ptr.52 = internal global ptr @aldebaran_force_clk_levels._entry.50, section ".printk_index", align 4
@aldebaran_upload_dpm_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.5, i32 950, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: Failed to set soft %s gfxclk !\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"aldebaran_upload_dpm_level\00", [37 x i8] zeroinitializer }, align 32
@aldebaran_upload_dpm_level._entry_ptr = internal global ptr @aldebaran_upload_dpm_level._entry, section ".printk_index", align 4
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"max\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"min\00", [28 x i8] zeroinitializer }, align 32
@aldebaran_upload_dpm_level._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.54, ptr @.str.5, i32 964, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: Failed to set soft %s memclk !\0A\00", [56 x i8] zeroinitializer }, align 32
@aldebaran_upload_dpm_level._entry_ptr.59 = internal global ptr @aldebaran_upload_dpm_level._entry.57, section ".printk_index", align 4
@aldebaran_upload_dpm_level._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.54, ptr @.str.5, i32 978, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: Failed to set soft %s socclk !\0A\00", [56 x i8] zeroinitializer }, align 32
@aldebaran_upload_dpm_level._entry_ptr.62 = internal global ptr @aldebaran_upload_dpm_level._entry.60, section ".printk_index", align 4
@aldebaran_usr_edit_dpm_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.5, i32 1394, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"amdgpu: Input parameter number not correct\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"aldebaran_usr_edit_dpm_table\00", [35 x i8] zeroinitializer }, align 32
@aldebaran_usr_edit_dpm_table._entry_ptr = internal global ptr @aldebaran_usr_edit_dpm_table._entry, section ".printk_index", align 4
@aldebaran_usr_edit_dpm_table._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.5, i32 1401, ptr @.str.67, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"amdgpu: Minimum GFX clk (%ld) MHz specified is less than the minimum allowed (%d) MHz\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@aldebaran_usr_edit_dpm_table._entry_ptr.68 = internal global ptr @aldebaran_usr_edit_dpm_table._entry.65, section ".printk_index", align 4
@aldebaran_usr_edit_dpm_table._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.64, ptr @.str.5, i32 1411, ptr @.str.67, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"amdgpu: Maximum GFX clk (%ld) MHz specified is greater than the maximum allowed (%d) MHz\0A\00", [38 x i8] zeroinitializer }, align 32
@aldebaran_usr_edit_dpm_table._entry_ptr.71 = internal global ptr @aldebaran_usr_edit_dpm_table._entry.69, section ".printk_index", align 4
@aldebaran_usr_edit_dpm_table._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.5, i32 1424, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@aldebaran_usr_edit_dpm_table._entry_ptr.73 = internal global ptr @aldebaran_usr_edit_dpm_table._entry.72, section ".printk_index", align 4
@aldebaran_usr_edit_dpm_table._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.5, i32 1436, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@aldebaran_usr_edit_dpm_table._entry_ptr.75 = internal global ptr @aldebaran_usr_edit_dpm_table._entry.74, section ".printk_index", align 4
@aldebaran_get_current_activity_percent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.5, i32 1089, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"amdgpu: Invalid sensor for retrieving clock activity\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"aldebaran_get_current_activity_percent\00", [57 x i8] zeroinitializer }, align 32
@aldebaran_get_current_activity_percent._entry_ptr = internal global ptr @aldebaran_get_current_activity_percent._entry, section ".printk_index", align 4
@aldebaran_thermal_get_temperature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.5, i32 1132, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"amdgpu: Invalid sensor for retrieving temp\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"aldebaran_thermal_get_temperature\00", [62 x i8] zeroinitializer }, align 32
@aldebaran_thermal_get_temperature._entry_ptr = internal global ptr @aldebaran_thermal_get_temperature._entry, section ".printk_index", align 4
@smu13_thermal_policy = internal constant { [2 x %struct.smu_temperature_range], [48 x i8] } { [2 x %struct.smu_temperature_range] [%struct.smu_temperature_range { i32 -273150, i32 99000, i32 99000, i32 -273150, i32 99000, i32 99000, i32 -273150, i32 99000, i32 99000, i32 0 }, %struct.smu_temperature_range { i32 120000, i32 120000, i32 120000, i32 120000, i32 120000, i32 120000, i32 120000, i32 120000, i32 120000, i32 0 }], [48 x i8] zeroinitializer }, align 32
@aldebaran_get_power_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.5, i32 1213, ptr @.str.67, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"amdgpu: PPT feature is not enabled, power values can't be fetched.\00", [61 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"aldebaran_get_power_limit\00", [38 x i8] zeroinitializer }, align 32
@aldebaran_get_power_limit._entry_ptr = internal global ptr @aldebaran_get_power_limit._entry, section ".printk_index", align 4
@aldebaran_get_power_limit._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.5, i32 1229, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"amdgpu: Cannot get PPT limit due to pptable missing!\00", [43 x i8] zeroinitializer }, align 32
@aldebaran_get_power_limit._entry_ptr.84 = internal global ptr @aldebaran_get_power_limit._entry.82, section ".printk_index", align 4
@aldebaran_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @aldebaran_i2c_xfer, ptr null, ptr null, ptr null, ptr @aldebaran_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AMDGPU SMU\00", [21 x i8] zeroinitializer }, align 32
@aldebaran_i2c_control_quirks = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 105, i32 0, i16 24, i16 24, i16 2, i16 22 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to register hw i2c, err: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%016llx\00", [24 x i8] zeroinitializer }, align 32
@aldebaran_append_powerplay_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.5, i32 413, ptr @.str.90, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"amdgpu: smc_dpm_info table revision(format.content): %d.%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"aldebaran_append_powerplay_table\00", [63 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@aldebaran_append_powerplay_table._entry_ptr = internal global ptr @aldebaran_append_powerplay_table._entry, section ".printk_index", align 4
@aldebaran_run_btc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.5, i32 487, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu: RunDcBtc failed!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aldebaran_run_btc\00", [46 x i8] zeroinitializer }, align 32
@aldebaran_run_btc._entry_ptr = internal global ptr @aldebaran_run_btc._entry, section ".printk_index", align 4
@aldebaran_run_board_btc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.5, i32 468, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: Failed to get smu version!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"aldebaran_run_board_btc\00", [40 x i8] zeroinitializer }, align 32
@aldebaran_run_board_btc._entry_ptr = internal global ptr @aldebaran_run_board_btc._entry, section ".printk_index", align 4
@aldebaran_run_board_btc._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.5, i32 476, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"amdgpu: Board power calibration failed!\0A\00", [55 x i8] zeroinitializer }, align 32
@aldebaran_run_board_btc._entry_ptr.97 = internal global ptr @aldebaran_run_board_btc._entry.95, section ".printk_index", align 4
@aldebaran_mode2_reset.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.98, ptr @.str.99, ptr @.str.5, ptr @.str.100, i8 1, i8 -40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aldebaran_mode2_reset\00", [42 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"amdgpu: restore config space...\0A\00", [63 x i8] zeroinitializer }, align 32
@aldebaran_mode2_reset.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.98, ptr @.str.99, ptr @.str.5, ptr @.str.101, i8 1, i8 -39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu: wait for reset ack\0A\00", [36 x i8] zeroinitializer }, align 32
@aldebaran_mode2_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.99, ptr @.str.5, i32 1907, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"amdgpu: failed to send mode2 message \09param: 0x%08x response %#x\0A\00", [62 x i8] zeroinitializer }, align 32
@aldebaran_mode2_reset._entry_ptr = internal global ptr @aldebaran_mode2_reset._entry, section ".printk_index", align 4
@aldebaran_mode2_reset._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.99, ptr @.str.5, i32 1914, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"amdgpu: smu fw 0x%x does not support MSG_GfxDeviceDriverReset MSG\0A\00", [61 x i8] zeroinitializer }, align 32
@aldebaran_mode2_reset._entry_ptr.105 = internal global ptr @aldebaran_mode2_reset._entry.103, section ".printk_index", align 4
@aldebaran_set_soft_freq_limited_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.5, i32 1328, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"amdgpu: Minimum GFX clk should be less than the maximum allowed clock\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"aldebaran_set_soft_freq_limited_range\00", [58 x i8] zeroinitializer }, align 32
@aldebaran_set_soft_freq_limited_range._entry_ptr = internal global ptr @aldebaran_set_soft_freq_limited_range._entry, section ".printk_index", align 4
@aldebaran_set_soft_freq_limited_range._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.5, i32 1350, ptr @.str.67, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"amdgpu: Invalid max frequency %d MHz specified for determinism\0A\00", [32 x i8] zeroinitializer }, align 32
@aldebaran_set_soft_freq_limited_range._entry_ptr.110 = internal global ptr @aldebaran_set_soft_freq_limited_range._entry.108, section ".printk_index", align 4
@aldebaran_set_soft_freq_limited_range._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.107, ptr @.str.5, i32 1365, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"amdgpu: Failed to enable determinism at GFX clock %d MHz\0A\00", [38 x i8] zeroinitializer }, align 32
@aldebaran_set_soft_freq_limited_range._entry_ptr.113 = internal global ptr @aldebaran_set_soft_freq_limited_range._entry.111, section ".printk_index", align 4
@.str.114 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" and \00", [26 x i8] zeroinitializer }, align 32
@aldebaran_log_thermal_throttling_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.5, i32 1676, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu: buffer overflow!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"aldebaran_log_thermal_throttling_event\00", [57 x i8] zeroinitializer }, align 32
@aldebaran_log_thermal_throttling_event._entry_ptr = internal global ptr @aldebaran_log_thermal_throttling_event._entry, section ".printk_index", align 4
@aldebaran_log_thermal_throttling_event._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.5, i32 1684, ptr @.str.67, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"amdgpu: WARN: GPU thermal throttling temperature reached, expect performance decrease. %s.\0A\00", [36 x i8] zeroinitializer }, align 32
@aldebaran_log_thermal_throttling_event._entry_ptr.120 = internal global ptr @aldebaran_log_thermal_throttling_event._entry.118, section ".printk_index", align 4
@aldebaran_throttler_map = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\00\01\10\11\12\00 \22\00\00\00&'(\00\00\00\00\00\17", [44 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HBM\00", [28 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VR of GFX rail\00", [17 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VR of HBM rail\00", [17 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VR of SOC rail\00", [17 x i8] zeroinitializer }, align 32
@aldebaran_smu_send_hbm_bad_page_num._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.5, i32 1981, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"amdgpu: [%s] failed to message SMU to update HBM bad pages number\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"aldebaran_smu_send_hbm_bad_page_num\00", [60 x i8] zeroinitializer }, align 32
@aldebaran_smu_send_hbm_bad_page_num._entry_ptr = internal global ptr @aldebaran_smu_send_hbm_bad_page_num._entry, section ".printk_index", align 4
@aldebaran_get_ecc_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.5, i32 1818, ptr @.str.90, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"amdgpu: Failed to export SMU ecc table!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"aldebaran_get_ecc_info\00", [41 x i8] zeroinitializer }, align 32
@aldebaran_get_ecc_info._entry_ptr = internal global ptr @aldebaran_get_ecc_info._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 6, i64 12, i64 13, i64 14, i64 18, i64 19]
@__sancov_gen_cov_switch_values.129 = internal global [6 x i64] [i64 4, i64 32, i64 6, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 512]
@__sancov_gen_cov_switch_values.131 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 5]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.133 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 3, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 15]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967234]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967234]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967234]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967234]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967234]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967234]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967234]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967234]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967234]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967234]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967234]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967234]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967234]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967234]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967234]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967234]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967234]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967234]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967234]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967234]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 13]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 512]
@__sancov_gen_cov_switch_values.156 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.157 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 7, i64 10, i64 11, i64 13]
@___asan_gen_.158 = private unnamed_addr constant [20 x i8] c"aldebaran_ppt_funcs\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1986, i32 35 }
@___asan_gen_.161 = private unnamed_addr constant [22 x i8] c"aldebaran_message_map\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 93, i32 42 }
@___asan_gen_.164 = private unnamed_addr constant [18 x i8] c"aldebaran_clk_map\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 147, i32 38 }
@___asan_gen_.167 = private unnamed_addr constant [27 x i8] c"aldebaran_feature_mask_map\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 159, i32 38 }
@___asan_gen_.170 = private unnamed_addr constant [20 x i8] c"aldebaran_table_map\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 192, i32 38 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 744, i32 36 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 753, i32 36 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 753, i32 45 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 758, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 765, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 790, i32 38 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 793, i32 7 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 797, i32 9 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 807, i32 45 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 812, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 819, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 835, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 842, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 858, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 865, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 881, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 888, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 904, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 911, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1001, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1012, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1021, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 949, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 963, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 977, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1394, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1400, i32 5 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1410, i32 5 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1424, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1436, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1089, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1132, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant [21 x i8] c"smu13_thermal_policy\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 87, i32 43 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1212, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1228, i32 5 }
@___asan_gen_.392 = private unnamed_addr constant [19 x i8] c"aldebaran_i2c_algo\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1553, i32 35 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1575, i32 49 }
@___asan_gen_.398 = private unnamed_addr constant [29 x i8] c"aldebaran_i2c_control_quirks\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1558, i32 40 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1580, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1610, i32 25 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 411, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 487, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 468, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 476, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1891, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1895, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1906, i32 5 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1913, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1327, i32 4 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1349, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1364, i32 5 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1672, i32 10 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1673, i32 33 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1676, i32 5 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1683, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant [24 x i8] c"aldebaran_throttler_map\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 203, i32 22 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1646, i32 35 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1647, i32 38 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1648, i32 38 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1649, i32 38 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1980, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.539 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.540 = private constant [64 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1818, i32 3 }
@llvm.compiler.used = appending global [168 x ptr] [ptr @aldebaran_append_powerplay_table._entry, ptr @aldebaran_append_powerplay_table._entry_ptr, ptr @aldebaran_force_clk_levels._entry, ptr @aldebaran_force_clk_levels._entry.47, ptr @aldebaran_force_clk_levels._entry.50, ptr @aldebaran_force_clk_levels._entry_ptr, ptr @aldebaran_force_clk_levels._entry_ptr.49, ptr @aldebaran_force_clk_levels._entry_ptr.52, ptr @aldebaran_get_current_activity_percent._entry, ptr @aldebaran_get_current_activity_percent._entry_ptr, ptr @aldebaran_get_ecc_info._entry, ptr @aldebaran_get_ecc_info._entry_ptr, ptr @aldebaran_get_power_limit._entry, ptr @aldebaran_get_power_limit._entry.82, ptr @aldebaran_get_power_limit._entry_ptr, ptr @aldebaran_get_power_limit._entry_ptr.84, ptr @aldebaran_log_thermal_throttling_event._entry, ptr @aldebaran_log_thermal_throttling_event._entry.118, ptr @aldebaran_log_thermal_throttling_event._entry_ptr, ptr @aldebaran_log_thermal_throttling_event._entry_ptr.120, ptr @aldebaran_mode2_reset._entry, ptr @aldebaran_mode2_reset._entry.103, ptr @aldebaran_mode2_reset._entry_ptr, ptr @aldebaran_mode2_reset._entry_ptr.105, ptr @aldebaran_print_clk_levels._entry, ptr @aldebaran_print_clk_levels._entry.15, ptr @aldebaran_print_clk_levels._entry.18, ptr @aldebaran_print_clk_levels._entry.21, ptr @aldebaran_print_clk_levels._entry.24, ptr @aldebaran_print_clk_levels._entry.27, ptr @aldebaran_print_clk_levels._entry.30, ptr @aldebaran_print_clk_levels._entry.33, ptr @aldebaran_print_clk_levels._entry.36, ptr @aldebaran_print_clk_levels._entry.39, ptr @aldebaran_print_clk_levels._entry.42, ptr @aldebaran_print_clk_levels._entry.8, ptr @aldebaran_print_clk_levels._entry_ptr, ptr @aldebaran_print_clk_levels._entry_ptr.10, ptr @aldebaran_print_clk_levels._entry_ptr.17, ptr @aldebaran_print_clk_levels._entry_ptr.20, ptr @aldebaran_print_clk_levels._entry_ptr.23, ptr @aldebaran_print_clk_levels._entry_ptr.26, ptr @aldebaran_print_clk_levels._entry_ptr.29, ptr @aldebaran_print_clk_levels._entry_ptr.32, ptr @aldebaran_print_clk_levels._entry_ptr.35, ptr @aldebaran_print_clk_levels._entry_ptr.38, ptr @aldebaran_print_clk_levels._entry_ptr.41, ptr @aldebaran_print_clk_levels._entry_ptr.44, ptr @aldebaran_run_board_btc._entry, ptr @aldebaran_run_board_btc._entry.95, ptr @aldebaran_run_board_btc._entry_ptr, ptr @aldebaran_run_board_btc._entry_ptr.97, ptr @aldebaran_run_btc._entry, ptr @aldebaran_run_btc._entry_ptr, ptr @aldebaran_set_soft_freq_limited_range._entry, ptr @aldebaran_set_soft_freq_limited_range._entry.108, ptr @aldebaran_set_soft_freq_limited_range._entry.111, ptr @aldebaran_set_soft_freq_limited_range._entry_ptr, ptr @aldebaran_set_soft_freq_limited_range._entry_ptr.110, ptr @aldebaran_set_soft_freq_limited_range._entry_ptr.113, ptr @aldebaran_smu_send_hbm_bad_page_num._entry, ptr @aldebaran_smu_send_hbm_bad_page_num._entry_ptr, ptr @aldebaran_thermal_get_temperature._entry, ptr @aldebaran_thermal_get_temperature._entry_ptr, ptr @aldebaran_upload_dpm_level._entry, ptr @aldebaran_upload_dpm_level._entry.57, ptr @aldebaran_upload_dpm_level._entry.60, ptr @aldebaran_upload_dpm_level._entry_ptr, ptr @aldebaran_upload_dpm_level._entry_ptr.59, ptr @aldebaran_upload_dpm_level._entry_ptr.62, ptr @aldebaran_usr_edit_dpm_table._entry, ptr @aldebaran_usr_edit_dpm_table._entry.65, ptr @aldebaran_usr_edit_dpm_table._entry.69, ptr @aldebaran_usr_edit_dpm_table._entry.72, ptr @aldebaran_usr_edit_dpm_table._entry.74, ptr @aldebaran_usr_edit_dpm_table._entry_ptr, ptr @aldebaran_usr_edit_dpm_table._entry_ptr.68, ptr @aldebaran_usr_edit_dpm_table._entry_ptr.71, ptr @aldebaran_usr_edit_dpm_table._entry_ptr.73, ptr @aldebaran_usr_edit_dpm_table._entry_ptr.75, ptr @aldebaran_ppt_funcs, ptr @aldebaran_message_map, ptr @aldebaran_clk_map, ptr @aldebaran_feature_mask_map, ptr @aldebaran_table_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.70, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @smu13_thermal_policy, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @aldebaran_i2c_algo, ptr @.str.85, ptr @aldebaran_i2c_control_quirks, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @aldebaran_throttler_map, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128], section "llvm.metadata"
@0 = internal global [128 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_ppt_funcs to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_message_map to i32), i32 2484, i32 3104, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_clk_map to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_feature_mask_map to i32), i32 760, i32 928, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_table_map to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_print_clk_levels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_print_clk_levels._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_print_clk_levels._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_print_clk_levels._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_print_clk_levels._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_print_clk_levels._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_print_clk_levels._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_print_clk_levels._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_print_clk_levels._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_print_clk_levels._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_print_clk_levels._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_print_clk_levels._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_force_clk_levels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_force_clk_levels._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_force_clk_levels._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_upload_dpm_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_upload_dpm_level._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_upload_dpm_level._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_usr_edit_dpm_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_usr_edit_dpm_table._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_usr_edit_dpm_table._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_usr_edit_dpm_table._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_usr_edit_dpm_table._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_get_current_activity_percent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_thermal_get_temperature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu13_thermal_policy to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_get_power_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_get_power_limit._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_i2c_control_quirks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_append_powerplay_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_run_btc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_run_board_btc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_run_board_btc._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_mode2_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_mode2_reset._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_set_soft_freq_limited_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_set_soft_freq_limited_range._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_set_soft_freq_limited_range._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_log_thermal_throttling_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_log_thermal_throttling_event._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_throttler_map to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_smu_send_hbm_bad_page_num._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_get_ecc_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @aldebaran_set_ppt_funcs(ptr nocapture noundef writeonly %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 2
  %0 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @aldebaran_ppt_funcs, ptr %ppt_funcs, align 8
  %message_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 3
  %1 = ptrtoint ptr %message_map to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @aldebaran_message_map, ptr %message_map, align 4
  %clock_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 4
  %2 = ptrtoint ptr %clock_map to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @aldebaran_clk_map, ptr %clock_map, align 8
  %feature_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 5
  %3 = ptrtoint ptr %feature_map to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @aldebaran_feature_mask_map, ptr %feature_map, align 4
  %table_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 6
  %4 = ptrtoint ptr %table_map to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @aldebaran_table_map, ptr %table_map, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @aldebaran_get_allowed_feature_mask(ptr nocapture noundef readnone %smu, ptr nocapture noundef writeonly %feature_mask, i32 noundef %num) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num)
  %cmp = icmp ugt i32 %num, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %mul = shl nuw nsw i32 %num, 2
  %0 = call ptr @memset(ptr %feature_mask, i32 255, i32 %mul)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aldebaran_set_default_dpm_table(ptr noundef %smu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dpm_context1 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 1
  %0 = ptrtoint ptr %dpm_context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpm_context1, align 4
  %driver_pptable = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 9
  %2 = ptrtoint ptr %driver_pptable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_pptable, align 4
  %call = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @smu_v13_0_set_single_dpm_table(ptr noundef %smu, i32 noundef 6, ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end14_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %count = getelementptr inbounds %struct.smu_13_0_dpm_table, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %count, align 4
  %socclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 3
  %5 = ptrtoint ptr %socclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %socclk, align 4
  %div = udiv i32 %6, 100
  %dpm_levels = getelementptr inbounds %struct.smu_13_0_dpm_table, ptr %1, i32 0, i32 3
  %value = getelementptr inbounds %struct.smu_13_0_dpm_table, ptr %1, i32 0, i32 3, i32 0, i32 1
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div, ptr %value, align 4
  %8 = ptrtoint ptr %dpm_levels to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %dpm_levels, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div, ptr %1, align 4
  %max = getelementptr inbounds %struct.smu_13_0_dpm_table, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div, ptr %max, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then.if.end14_crit_edge
  %gfx_table = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 1
  %call16 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  %count42 = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 1, i32 2
  br i1 %tobool17.not, label %if.else41, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %count42 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %count42, align 4
  %GfxclkFmin = getelementptr inbounds %struct.PPTable_t, ptr %3, i32 0, i32 43
  %12 = ptrtoint ptr %GfxclkFmin to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %GfxclkFmin, align 2
  %conv = zext i16 %13 to i32
  %dpm_levels20 = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 1, i32 3
  %value22 = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 1, i32 3, i32 0, i32 1
  %14 = ptrtoint ptr %value22 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %value22, align 4
  %15 = ptrtoint ptr %dpm_levels20 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %dpm_levels20, align 4
  %GfxclkFmax = getelementptr inbounds %struct.PPTable_t, ptr %3, i32 0, i32 42
  %16 = ptrtoint ptr %GfxclkFmax to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %GfxclkFmax, align 4
  %conv26 = zext i16 %17 to i32
  %arrayidx28 = getelementptr %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 1, i32 3, i32 1
  %value29 = getelementptr %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 1, i32 3, i32 1, i32 1
  %18 = ptrtoint ptr %value29 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv26, ptr %value29, align 4
  br label %if.end60

if.else41:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %count42 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %count42, align 4
  %gfxclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 1
  %20 = ptrtoint ptr %gfxclk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gfxclk, align 4
  %div45 = udiv i32 %21, 100
  %dpm_levels46 = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 1, i32 3
  %value48 = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 1, i32 3, i32 0, i32 1
  %22 = ptrtoint ptr %value48 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div45, ptr %value48, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.else41, %if.then18
  %dpm_levels46.sink = phi ptr [ %dpm_levels46, %if.else41 ], [ %arrayidx28, %if.then18 ]
  %storemerge = phi i32 [ %div45, %if.else41 ], [ %conv, %if.then18 ]
  %conv26.sink = phi i32 [ %div45, %if.else41 ], [ %conv26, %if.then18 ]
  %23 = ptrtoint ptr %dpm_levels46.sink to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %dpm_levels46.sink, align 4
  %24 = ptrtoint ptr %gfx_table to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %storemerge, ptr %gfx_table, align 4
  %25 = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv26.sink, ptr %25, align 4
  %uclk_table = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 2
  %call62 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.else69, label %if.then64

if.then64:                                        ; preds = %if.end60
  %call65 = tail call i32 @smu_v13_0_set_single_dpm_table(ptr noundef %smu, i32 noundef 7, ptr noundef %uclk_table) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then64.if.end88_crit_edge, label %if.then64.cleanup_crit_edge

if.then64.cleanup_crit_edge:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then64.if.end88_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

if.else69:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  %count70 = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %count70 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %count70, align 4
  %uclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 2
  %28 = ptrtoint ptr %uclk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %uclk, align 8
  %div73 = udiv i32 %29, 100
  %dpm_levels74 = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 2, i32 3
  %value76 = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 1
  %30 = ptrtoint ptr %value76 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div73, ptr %value76, align 4
  %31 = ptrtoint ptr %dpm_levels74 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %dpm_levels74, align 4
  %32 = ptrtoint ptr %uclk_table to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div73, ptr %uclk_table, align 4
  %max87 = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %max87 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %div73, ptr %max87, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.else69, %if.then64.if.end88_crit_edge
  %fclk_table = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 10
  %call90 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 31) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.else97, label %if.then92

if.then92:                                        ; preds = %if.end88
  %call93 = tail call i32 @smu_v13_0_set_single_dpm_table(ptr noundef %smu, i32 noundef 12, ptr noundef %fclk_table) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.then92.if.end116_crit_edge, label %if.then92.cleanup_crit_edge

if.then92.cleanup_crit_edge:                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then92.if.end116_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end116

if.else97:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  %count98 = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 10, i32 2
  %34 = ptrtoint ptr %count98 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %count98, align 4
  %fclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 16
  %35 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fclk, align 8
  %div101 = udiv i32 %36, 100
  %dpm_levels102 = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 10, i32 3
  %value104 = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 10, i32 3, i32 0, i32 1
  %37 = ptrtoint ptr %value104 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %div101, ptr %value104, align 4
  %38 = ptrtoint ptr %dpm_levels102 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %dpm_levels102, align 4
  %39 = ptrtoint ptr %fclk_table to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div101, ptr %fclk_table, align 4
  %max115 = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 10, i32 1
  %40 = ptrtoint ptr %max115 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %div101, ptr %max115, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.else97, %if.then92.if.end116_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end116, %if.then92.cleanup_crit_edge, %if.then64.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end116 ], [ %call2, %if.then.cleanup_crit_edge ], [ %call65, %if.then64.cleanup_crit_edge ], [ %call93, %if.then92.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aldebaran_populate_umd_state_clk(ptr nocapture noundef %smu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dpm_context1 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 1
  %0 = ptrtoint ptr %dpm_context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpm_context1, align 4
  %gfx_table2 = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 1
  %uclk_table = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 2
  %pstate_table6 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22
  %2 = ptrtoint ptr %gfx_table2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gfx_table2, align 4
  %4 = ptrtoint ptr %pstate_table6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pstate_table6, align 4
  %max = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max, align 4
  %peak = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 2
  %7 = ptrtoint ptr %peak to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %peak, align 4
  %8 = load i32, ptr %gfx_table2, align 4
  %curr = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 4
  %9 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %curr, align 4
  %10 = load i32, ptr %max, align 4
  %max15 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %max15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %max15, align 4
  %12 = ptrtoint ptr %uclk_table to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %uclk_table, align 4
  %uclk_pstate = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 2
  %14 = ptrtoint ptr %uclk_pstate to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %uclk_pstate, align 4
  %max18 = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %max18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max18, align 4
  %peak20 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 2, i32 2
  %17 = ptrtoint ptr %peak20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %peak20, align 4
  %18 = load i32, ptr %uclk_table, align 4
  %curr23 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 2, i32 4
  %19 = ptrtoint ptr %curr23 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %curr23, align 4
  %20 = load i32, ptr %max18, align 4
  %max28 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 2, i32 4, i32 1
  %21 = ptrtoint ptr %max28 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %max28, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %socclk_pstate = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 1
  %24 = ptrtoint ptr %socclk_pstate to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %socclk_pstate, align 4
  %max31 = getelementptr inbounds %struct.smu_13_0_dpm_table, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %max31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max31, align 4
  %peak33 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 1, i32 2
  %27 = ptrtoint ptr %peak33 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %peak33, align 4
  %28 = load i32, ptr %1, align 4
  %curr36 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 1, i32 4
  %29 = ptrtoint ptr %curr36 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %curr36, align 4
  %30 = load i32, ptr %max31, align 4
  %max41 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 1, i32 4, i32 1
  %31 = ptrtoint ptr %max41 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %max41, align 4
  %count = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp = icmp ugt i32 %33, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %count42 = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 2, i32 2
  %34 = ptrtoint ptr %count42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %count42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp43 = icmp ugt i32 %35, 2
  br i1 %cmp43, label %land.lhs.true44, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true44:                                  ; preds = %land.lhs.true
  %count45 = getelementptr inbounds %struct.smu_13_0_dpm_table, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %count45 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp46 = icmp ugt i32 %37, 3
  br i1 %cmp46, label %if.then, label %land.lhs.true44.if.else_crit_edge

land.lhs.true44.if.else_crit_edge:                ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #15
  %value = getelementptr %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 1, i32 3, i32 3, i32 1
  %38 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %value, align 4
  %standard = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 1
  %40 = ptrtoint ptr %standard to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %standard, align 4
  %value50 = getelementptr %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 2, i32 3, i32 2, i32 1
  %41 = ptrtoint ptr %value50 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %value50, align 4
  %standard52 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 2, i32 1
  %43 = ptrtoint ptr %standard52 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %standard52, align 4
  %value55 = getelementptr %struct.smu_13_0_dpm_table, ptr %1, i32 0, i32 3, i32 3, i32 1
  %44 = ptrtoint ptr %value55 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %value55, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true44.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %standard61 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 1
  %46 = ptrtoint ptr %standard61 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %3, ptr %standard61, align 4
  %standard65 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 2, i32 1
  %47 = ptrtoint ptr %standard65 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %13, ptr %standard65, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ %23, %if.else ], [ %45, %if.then ]
  %standard69 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 1, i32 1
  %48 = ptrtoint ptr %standard69 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink, ptr %standard69, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aldebaran_print_clk_levels(ptr noundef %smu, i32 noundef %type, ptr noundef %buf) #2 align 64 {
entry:
  %now = alloca i32, align 4
  %clocks = alloca %struct.pp_clock_levels_with_latency, align 4
  %freq_values = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %now) #13
  %0 = ptrtoint ptr %now to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %now, align 4, !annotation !248
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %clocks) #13
  %1 = call ptr @memset(ptr %clocks, i32 255, i32 132)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %freq_values) #13
  %2 = getelementptr inbounds i8, ptr %freq_values, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %2, align 4
  %tobool.not.i = icmp eq ptr %buf, null
  %4 = ptrtoint ptr %buf to i32
  %and.i = and i32 %4, 4095
  %idx.neg.i = sub nsw i32 0, %and.i
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %idx.neg.i
  %buf.addr.0 = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %size.0 = select i1 %tobool.not.i, i32 0, i32 %and.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @amdgpu_ras_in_intr, i32 noundef 4) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_ras_in_intr to i32))
  %5 = load volatile i32, ptr @amdgpu_ras_in_intr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.0, ptr noundef nonnull @.str) #13
  %add = add i32 %call3, %size.0
  br label %cleanup

if.end:                                           ; preds = %entry
  %dpm_context4 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 1
  %6 = ptrtoint ptr %dpm_context4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dpm_context4, align 4
  %8 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 18, label %sw.bb
    i32 13, label %if.end.sw.bb7_crit_edge
    i32 19, label %sw.bb56
    i32 14, label %if.end.sw.bb59_crit_edge
    i32 6, label %sw.bb102
    i32 12, label %sw.bb148
    i32 1, label %sw.bb190
    i32 2, label %sw.bb235
  ]

if.end.sw.bb59_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb59

if.end.sw.bb7_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #13
  %add6 = add i32 %call5, %size.0
  br label %sw.bb7

sw.bb7:                                           ; preds = %sw.bb, %if.end.sw.bb7_crit_edge
  %size.1 = phi i32 [ %size.0, %if.end.sw.bb7_crit_edge ], [ %add6, %sw.bb ]
  %call8 = call fastcc i32 @aldebaran_get_current_clk_freq_by_table(ptr noundef %smu, i32 noundef 0, ptr noundef nonnull %now)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %do.end

do.end:                                           ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %smu, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.3) #16
  br label %cleanup

if.end10:                                         ; preds = %sw.bb7
  %count1.i = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %7, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count1.i, align 4
  %15 = call i32 @llvm.umin.i32(i32 %14, i32 16) #13
  %16 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp31.not.i = icmp eq i32 %15, 0
  br i1 %cmp31.not.i, label %if.end10.aldebaran_get_clk_table.exit_crit_edge, label %if.end10.for.body.i_crit_edge

if.end10.for.body.i_crit_edge:                    ; preds = %if.end10
  br label %for.body.i

if.end10.aldebaran_get_clk_table.exit_crit_edge:  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %aldebaran_get_clk_table.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end10.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end10.for.body.i_crit_edge ]
  %value.i = getelementptr %struct.smu_13_0_dpm_tables, ptr %7, i32 0, i32 1, i32 3, i32 %i.02.i, i32 1
  %17 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value.i, align 4
  %mul.i = mul i32 %18, 1000
  %arrayidx4.i = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.02.i
  %19 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul.i, ptr %arrayidx4.i, align 4
  %latency_in_us.i = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.02.i, i32 1
  %20 = ptrtoint ptr %latency_in_us.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %latency_in_us.i, align 4
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %15
  br i1 %exitcond.not.i, label %for.body.i.aldebaran_get_clk_table.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.aldebaran_get_clk_table.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %aldebaran_get_clk_table.exit

aldebaran_get_clk_table.exit:                     ; preds = %for.body.i.aldebaran_get_clk_table.exit_crit_edge, %if.end10.aldebaran_get_clk_table.exit_crit_edge
  %21 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %clocks, align 4
  %curr = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 4
  %23 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %curr, align 4
  %max = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max, align 4
  %27 = ptrtoint ptr %freq_values to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %freq_values, align 4
  %arrayidx22 = getelementptr inbounds [3 x i32], ptr %freq_values, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %26, ptr %arrayidx22, align 4
  %29 = ptrtoint ptr %now to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %now, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %24)
  %cmp = icmp ugt i32 %30, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %26)
  %cmp23 = icmp ult i32 %30, %26
  %or.cond = select i1 %cmp, i1 %cmp23, i1 false
  br i1 %or.cond, label %if.end29, label %for.cond.preheader

if.end29:                                         ; preds = %aldebaran_get_clk_table.exit
  %arrayidx27 = getelementptr inbounds [3 x i32], ptr %freq_values, i32 0, i32 2
  %31 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %26, ptr %arrayidx27, align 4
  %32 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %30, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp45528.not = icmp eq i32 %22, -1
  br i1 %cmp45528.not, label %if.end29.cleanup_crit_edge, label %if.end29.for.body46_crit_edge

if.end29.for.body46_crit_edge:                    ; preds = %if.end29
  br label %for.body46

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %aldebaran_get_clk_table.exit
  %33 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp34532.not = icmp eq i32 %34, 0
  br i1 %cmp34532.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %35 = phi i32 [ %42, %cond.end.for.body_crit_edge ], [ %34, %for.cond.preheader.for.body_crit_edge ]
  %i.0534 = phi i32 [ %inc, %cond.end.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %size.2533 = phi i32 [ %add43, %cond.end.for.body_crit_edge ], [ %size.1, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx35 = getelementptr [3 x i32], ptr %freq_values, i32 0, i32 %i.0534
  %36 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp37 = icmp eq i32 %35, 1
  br i1 %cmp37, label %for.body.cond.end_crit_edge, label %cond.false

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %now to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %now, align 4
  %sub.i = sub i32 %37, %39
  %40 = call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp2.i = icmp sgt i32 %40, 1
  %cond = select i1 %cmp2.i, ptr @.str.13, ptr @.str.12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.body.cond.end_crit_edge
  %cond41 = phi ptr [ %cond, %cond.false ], [ @.str.12, %for.body.cond.end_crit_edge ]
  %call42 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.2533, ptr noundef nonnull @.str.11, i32 noundef %i.0534, i32 noundef %37, ptr noundef nonnull %cond41) #13
  %add43 = add i32 %call42, %size.2533
  %inc = add nuw i32 %i.0534, 1
  %41 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %clocks, align 4
  %cmp34 = icmp ult i32 %inc, %42
  br i1 %cmp34, label %cond.end.for.body_crit_edge, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body46:                                       ; preds = %for.body46.for.body46_crit_edge, %if.end29.for.body46_crit_edge
  %i.1530 = phi i32 [ %inc53, %for.body46.for.body46_crit_edge ], [ 0, %if.end29.for.body46_crit_edge ]
  %size.3529 = phi i32 [ %add51, %for.body46.for.body46_crit_edge ], [ %size.1, %if.end29.for.body46_crit_edge ]
  %arrayidx47 = getelementptr [3 x i32], ptr %freq_values, i32 0, i32 %i.1530
  %43 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.1530)
  %cmp48 = icmp eq i32 %i.1530, 1
  %cond49 = select i1 %cmp48, ptr @.str.12, ptr @.str.13
  %call50 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.3529, ptr noundef nonnull @.str.11, i32 noundef %i.1530, i32 noundef %44, ptr noundef nonnull %cond49) #13
  %add51 = add i32 %call50, %size.3529
  %inc53 = add nuw i32 %i.1530, 1
  %exitcond.not = icmp eq i32 %i.1530, %22
  br i1 %exitcond.not, label %for.body46.cleanup_crit_edge, label %for.body46.for.body46_crit_edge

for.body46.for.body46_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body46

for.body46.cleanup_crit_edge:                     ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb56:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call57 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14) #13
  %add58 = add i32 %call57, %size.0
  br label %sw.bb59

sw.bb59:                                          ; preds = %sw.bb56, %if.end.sw.bb59_crit_edge
  %size.4 = phi i32 [ %size.0, %if.end.sw.bb59_crit_edge ], [ %add58, %sw.bb56 ]
  %call60 = call fastcc i32 @aldebaran_get_current_clk_freq_by_table(ptr noundef %smu, i32 noundef 7, ptr noundef nonnull %now)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end68, label %do.end65

do.end65:                                         ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %smu, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.16) #16
  br label %cleanup

if.end68:                                         ; preds = %sw.bb59
  %count1.i399 = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %7, i32 0, i32 2, i32 2
  %49 = ptrtoint ptr %count1.i399 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %count1.i399, align 4
  %51 = call i32 @llvm.umin.i32(i32 %50, i32 16) #13
  %52 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp31.not.i400 = icmp eq i32 %51, 0
  br i1 %cmp31.not.i400, label %if.end68.cleanup_crit_edge, label %if.end68.for.body.i408_crit_edge

if.end68.for.body.i408_crit_edge:                 ; preds = %if.end68
  br label %for.body.i408

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i408:                                    ; preds = %for.body.i408.for.body.i408_crit_edge, %if.end68.for.body.i408_crit_edge
  %i.02.i401 = phi i32 [ %inc.i406, %for.body.i408.for.body.i408_crit_edge ], [ 0, %if.end68.for.body.i408_crit_edge ]
  %value.i402 = getelementptr %struct.smu_13_0_dpm_tables, ptr %7, i32 0, i32 2, i32 3, i32 %i.02.i401, i32 1
  %53 = ptrtoint ptr %value.i402 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %value.i402, align 4
  %mul.i403 = mul i32 %54, 1000
  %arrayidx4.i404 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.02.i401
  %55 = ptrtoint ptr %arrayidx4.i404 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %mul.i403, ptr %arrayidx4.i404, align 4
  %latency_in_us.i405 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.02.i401, i32 1
  %56 = ptrtoint ptr %latency_in_us.i405 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %latency_in_us.i405, align 4
  %inc.i406 = add nuw nsw i32 %i.02.i401, 1
  %exitcond.not.i407 = icmp eq i32 %inc.i406, %51
  br i1 %exitcond.not.i407, label %aldebaran_get_clk_table.exit409, label %for.body.i408.for.body.i408_crit_edge

for.body.i408.for.body.i408_crit_edge:            ; preds = %for.body.i408
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i408

aldebaran_get_clk_table.exit409:                  ; preds = %for.body.i408
  %57 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pr = load i32, ptr %clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp81524.not = icmp eq i32 %.pr, 0
  br i1 %cmp81524.not, label %aldebaran_get_clk_table.exit409.cleanup_crit_edge, label %aldebaran_get_clk_table.exit409.for.body82_crit_edge

aldebaran_get_clk_table.exit409.for.body82_crit_edge: ; preds = %aldebaran_get_clk_table.exit409
  br label %for.body82

aldebaran_get_clk_table.exit409.cleanup_crit_edge: ; preds = %aldebaran_get_clk_table.exit409
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body82:                                       ; preds = %cond.end95.for.body82_crit_edge, %aldebaran_get_clk_table.exit409.for.body82_crit_edge
  %58 = phi i32 [ %65, %cond.end95.for.body82_crit_edge ], [ %.pr, %aldebaran_get_clk_table.exit409.for.body82_crit_edge ]
  %i.2526 = phi i32 [ %inc100, %cond.end95.for.body82_crit_edge ], [ 0, %aldebaran_get_clk_table.exit409.for.body82_crit_edge ]
  %size.5525 = phi i32 [ %add98, %cond.end95.for.body82_crit_edge ], [ %size.4, %aldebaran_get_clk_table.exit409.for.body82_crit_edge ]
  %arrayidx83 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.2526
  %59 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx83, align 4
  %div = udiv i32 %60, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp85 = icmp eq i32 %58, 1
  br i1 %cmp85, label %for.body82.cond.end95_crit_edge, label %cond.false87

for.body82.cond.end95_crit_edge:                  ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end95

cond.false87:                                     ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #15
  %61 = ptrtoint ptr %now to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %now, align 4
  %sub.i410 = sub i32 %div, %62
  %63 = call i32 @llvm.abs.i32(i32 %sub.i410, i1 false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp2.i411 = icmp sgt i32 %63, 1
  %cond94 = select i1 %cmp2.i411, ptr @.str.13, ptr @.str.12
  br label %cond.end95

cond.end95:                                       ; preds = %cond.false87, %for.body82.cond.end95_crit_edge
  %cond96 = phi ptr [ %cond94, %cond.false87 ], [ @.str.12, %for.body82.cond.end95_crit_edge ]
  %call97 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.5525, ptr noundef nonnull @.str.11, i32 noundef %i.2526, i32 noundef %div, ptr noundef nonnull %cond96) #13
  %add98 = add i32 %call97, %size.5525
  %inc100 = add nuw i32 %i.2526, 1
  %64 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %clocks, align 4
  %cmp81 = icmp ult i32 %inc100, %65
  br i1 %cmp81, label %cond.end95.for.body82_crit_edge, label %cond.end95.cleanup_crit_edge

cond.end95.cleanup_crit_edge:                     ; preds = %cond.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.end95.for.body82_crit_edge:                  ; preds = %cond.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body82

sw.bb102:                                         ; preds = %if.end
  %call103 = call fastcc i32 @aldebaran_get_current_clk_freq_by_table(ptr noundef %smu, i32 noundef 6, ptr noundef nonnull %now)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end111, label %do.end108

do.end108:                                        ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #15
  %66 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %smu, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.22) #16
  br label %cleanup

if.end111:                                        ; preds = %sw.bb102
  %count1.i413 = getelementptr inbounds %struct.smu_13_0_dpm_table, ptr %7, i32 0, i32 2
  %70 = ptrtoint ptr %count1.i413 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %count1.i413, align 4
  %72 = call i32 @llvm.umin.i32(i32 %71, i32 16) #13
  %73 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp31.not.i414 = icmp eq i32 %72, 0
  br i1 %cmp31.not.i414, label %if.end111.cleanup_crit_edge, label %if.end111.for.body.i422_crit_edge

if.end111.for.body.i422_crit_edge:                ; preds = %if.end111
  br label %for.body.i422

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i422:                                    ; preds = %for.body.i422.for.body.i422_crit_edge, %if.end111.for.body.i422_crit_edge
  %i.02.i415 = phi i32 [ %inc.i420, %for.body.i422.for.body.i422_crit_edge ], [ 0, %if.end111.for.body.i422_crit_edge ]
  %value.i416 = getelementptr %struct.smu_13_0_dpm_table, ptr %7, i32 0, i32 3, i32 %i.02.i415, i32 1
  %74 = ptrtoint ptr %value.i416 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %value.i416, align 4
  %mul.i417 = mul i32 %75, 1000
  %arrayidx4.i418 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.02.i415
  %76 = ptrtoint ptr %arrayidx4.i418 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %mul.i417, ptr %arrayidx4.i418, align 4
  %latency_in_us.i419 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.02.i415, i32 1
  %77 = ptrtoint ptr %latency_in_us.i419 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %latency_in_us.i419, align 4
  %inc.i420 = add nuw nsw i32 %i.02.i415, 1
  %exitcond.not.i421 = icmp eq i32 %inc.i420, %72
  br i1 %exitcond.not.i421, label %aldebaran_get_clk_table.exit423, label %for.body.i422.for.body.i422_crit_edge

for.body.i422.for.body.i422_crit_edge:            ; preds = %for.body.i422
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i422

aldebaran_get_clk_table.exit423:                  ; preds = %for.body.i422
  %78 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pr545 = load i32, ptr %clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr545)
  %cmp124520.not = icmp eq i32 %.pr545, 0
  br i1 %cmp124520.not, label %aldebaran_get_clk_table.exit423.cleanup_crit_edge, label %aldebaran_get_clk_table.exit423.for.body125_crit_edge

aldebaran_get_clk_table.exit423.for.body125_crit_edge: ; preds = %aldebaran_get_clk_table.exit423
  br label %for.body125

aldebaran_get_clk_table.exit423.cleanup_crit_edge: ; preds = %aldebaran_get_clk_table.exit423
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body125:                                      ; preds = %cond.end141.for.body125_crit_edge, %aldebaran_get_clk_table.exit423.for.body125_crit_edge
  %79 = phi i32 [ %86, %cond.end141.for.body125_crit_edge ], [ %.pr545, %aldebaran_get_clk_table.exit423.for.body125_crit_edge ]
  %i.3522 = phi i32 [ %inc146, %cond.end141.for.body125_crit_edge ], [ 0, %aldebaran_get_clk_table.exit423.for.body125_crit_edge ]
  %size.6521 = phi i32 [ %add144, %cond.end141.for.body125_crit_edge ], [ %size.0, %aldebaran_get_clk_table.exit423.for.body125_crit_edge ]
  %arrayidx127 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.3522
  %80 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx127, align 4
  %div129 = udiv i32 %81, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %79)
  %cmp131 = icmp eq i32 %79, 1
  br i1 %cmp131, label %for.body125.cond.end141_crit_edge, label %cond.false133

for.body125.cond.end141_crit_edge:                ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end141

cond.false133:                                    ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #15
  %82 = ptrtoint ptr %now to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %now, align 4
  %sub.i424 = sub i32 %div129, %83
  %84 = call i32 @llvm.abs.i32(i32 %sub.i424, i1 false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %84)
  %cmp2.i425 = icmp sgt i32 %84, 1
  %cond140 = select i1 %cmp2.i425, ptr @.str.13, ptr @.str.12
  br label %cond.end141

cond.end141:                                      ; preds = %cond.false133, %for.body125.cond.end141_crit_edge
  %cond142 = phi ptr [ %cond140, %cond.false133 ], [ @.str.12, %for.body125.cond.end141_crit_edge ]
  %call143 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.6521, ptr noundef nonnull @.str.11, i32 noundef %i.3522, i32 noundef %div129, ptr noundef nonnull %cond142) #13
  %add144 = add i32 %call143, %size.6521
  %inc146 = add nuw i32 %i.3522, 1
  %85 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %clocks, align 4
  %cmp124 = icmp ult i32 %inc146, %86
  br i1 %cmp124, label %cond.end141.for.body125_crit_edge, label %cond.end141.cleanup_crit_edge

cond.end141.cleanup_crit_edge:                    ; preds = %cond.end141
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.end141.for.body125_crit_edge:                ; preds = %cond.end141
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body125

sw.bb148:                                         ; preds = %if.end
  %call149 = call fastcc i32 @aldebaran_get_current_clk_freq_by_table(ptr noundef %smu, i32 noundef 12, ptr noundef nonnull %now)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.end157, label %do.end154

do.end154:                                        ; preds = %sw.bb148
  call void @__sanitizer_cov_trace_pc() #15
  %87 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %smu, align 8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.28) #16
  br label %cleanup

if.end157:                                        ; preds = %sw.bb148
  %count1.i427 = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %7, i32 0, i32 10, i32 2
  %91 = ptrtoint ptr %count1.i427 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %count1.i427, align 4
  %93 = call i32 @llvm.umin.i32(i32 %92, i32 16) #13
  %94 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp31.not.i428 = icmp eq i32 %93, 0
  br i1 %cmp31.not.i428, label %if.end157.aldebaran_get_clk_table.exit437_crit_edge, label %if.end157.for.body.i436_crit_edge

if.end157.for.body.i436_crit_edge:                ; preds = %if.end157
  br label %for.body.i436

if.end157.aldebaran_get_clk_table.exit437_crit_edge: ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #15
  br label %aldebaran_get_clk_table.exit437

for.body.i436:                                    ; preds = %for.body.i436.for.body.i436_crit_edge, %if.end157.for.body.i436_crit_edge
  %i.02.i429 = phi i32 [ %inc.i434, %for.body.i436.for.body.i436_crit_edge ], [ 0, %if.end157.for.body.i436_crit_edge ]
  %value.i430 = getelementptr %struct.smu_13_0_dpm_tables, ptr %7, i32 0, i32 10, i32 3, i32 %i.02.i429, i32 1
  %95 = ptrtoint ptr %value.i430 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %value.i430, align 4
  %mul.i431 = mul i32 %96, 1000
  %arrayidx4.i432 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.02.i429
  %97 = ptrtoint ptr %arrayidx4.i432 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %mul.i431, ptr %arrayidx4.i432, align 4
  %latency_in_us.i433 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.02.i429, i32 1
  %98 = ptrtoint ptr %latency_in_us.i433 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %latency_in_us.i433, align 4
  %inc.i434 = add nuw nsw i32 %i.02.i429, 1
  %exitcond.not.i435 = icmp eq i32 %inc.i434, %93
  br i1 %exitcond.not.i435, label %aldebaran_get_clk_table.exit437thread-pre-split, label %for.body.i436.for.body.i436_crit_edge

for.body.i436.for.body.i436_crit_edge:            ; preds = %for.body.i436
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i436

aldebaran_get_clk_table.exit437thread-pre-split:  ; preds = %for.body.i436
  call void @__sanitizer_cov_trace_pc() #15
  %99 = ptrtoint ptr %count1.i427 to i32
  call void @__asan_load4_noabort(i32 %99)
  %.pr547 = load i32, ptr %count1.i427, align 4
  br label %aldebaran_get_clk_table.exit437

aldebaran_get_clk_table.exit437:                  ; preds = %aldebaran_get_clk_table.exit437thread-pre-split, %if.end157.aldebaran_get_clk_table.exit437_crit_edge
  %100 = phi i32 [ %.pr547, %aldebaran_get_clk_table.exit437thread-pre-split ], [ %92, %if.end157.aldebaran_get_clk_table.exit437_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp169515.not = icmp eq i32 %100, 0
  br i1 %cmp169515.not, label %aldebaran_get_clk_table.exit437.cleanup_crit_edge, label %aldebaran_get_clk_table.exit437.for.body170_crit_edge

aldebaran_get_clk_table.exit437.for.body170_crit_edge: ; preds = %aldebaran_get_clk_table.exit437
  br label %for.body170

aldebaran_get_clk_table.exit437.cleanup_crit_edge: ; preds = %aldebaran_get_clk_table.exit437
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body170:                                      ; preds = %cond.end183.for.body170_crit_edge, %aldebaran_get_clk_table.exit437.for.body170_crit_edge
  %i.4517 = phi i32 [ %inc188, %cond.end183.for.body170_crit_edge ], [ 0, %aldebaran_get_clk_table.exit437.for.body170_crit_edge ]
  %size.7516 = phi i32 [ %add186, %cond.end183.for.body170_crit_edge ], [ %size.0, %aldebaran_get_clk_table.exit437.for.body170_crit_edge ]
  %value = getelementptr %struct.smu_13_0_dpm_tables, ptr %7, i32 0, i32 10, i32 3, i32 %i.4517, i32 1
  %101 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %value, align 4
  %103 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %104)
  %cmp173 = icmp eq i32 %104, 1
  br i1 %cmp173, label %for.body170.cond.end183_crit_edge, label %cond.false175

for.body170.cond.end183_crit_edge:                ; preds = %for.body170
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end183

cond.false175:                                    ; preds = %for.body170
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx177 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.4517
  %105 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx177, align 4
  %div179 = udiv i32 %106, 1000
  %107 = ptrtoint ptr %now to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %now, align 4
  %sub.i438 = sub i32 %div179, %108
  %109 = call i32 @llvm.abs.i32(i32 %sub.i438, i1 false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp2.i439 = icmp sgt i32 %109, 1
  %cond182 = select i1 %cmp2.i439, ptr @.str.13, ptr @.str.12
  br label %cond.end183

cond.end183:                                      ; preds = %cond.false175, %for.body170.cond.end183_crit_edge
  %cond184 = phi ptr [ %cond182, %cond.false175 ], [ @.str.12, %for.body170.cond.end183_crit_edge ]
  %call185 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.7516, ptr noundef nonnull @.str.11, i32 noundef %i.4517, i32 noundef %102, ptr noundef nonnull %cond184) #13
  %add186 = add i32 %call185, %size.7516
  %inc188 = add nuw i32 %i.4517, 1
  %110 = ptrtoint ptr %count1.i427 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %count1.i427, align 4
  %cmp169 = icmp ult i32 %inc188, %111
  br i1 %cmp169, label %cond.end183.for.body170_crit_edge, label %cond.end183.cleanup_crit_edge

cond.end183.cleanup_crit_edge:                    ; preds = %cond.end183
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.end183.for.body170_crit_edge:                ; preds = %cond.end183
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body170

sw.bb190:                                         ; preds = %if.end
  %call191 = call fastcc i32 @aldebaran_get_current_clk_freq_by_table(ptr noundef %smu, i32 noundef 1, ptr noundef nonnull %now)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %if.end199, label %do.end196

do.end196:                                        ; preds = %sw.bb190
  call void @__sanitizer_cov_trace_pc() #15
  %112 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %smu, align 8
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.34) #16
  br label %cleanup

if.end199:                                        ; preds = %sw.bb190
  %count1.i441 = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %7, i32 0, i32 4, i32 2
  %116 = ptrtoint ptr %count1.i441 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %count1.i441, align 4
  %118 = call i32 @llvm.umin.i32(i32 %117, i32 16) #13
  %119 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp31.not.i442 = icmp eq i32 %118, 0
  br i1 %cmp31.not.i442, label %if.end199.aldebaran_get_clk_table.exit451_crit_edge, label %if.end199.for.body.i450_crit_edge

if.end199.for.body.i450_crit_edge:                ; preds = %if.end199
  br label %for.body.i450

if.end199.aldebaran_get_clk_table.exit451_crit_edge: ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #15
  br label %aldebaran_get_clk_table.exit451

for.body.i450:                                    ; preds = %for.body.i450.for.body.i450_crit_edge, %if.end199.for.body.i450_crit_edge
  %i.02.i443 = phi i32 [ %inc.i448, %for.body.i450.for.body.i450_crit_edge ], [ 0, %if.end199.for.body.i450_crit_edge ]
  %value.i444 = getelementptr %struct.smu_13_0_dpm_tables, ptr %7, i32 0, i32 4, i32 3, i32 %i.02.i443, i32 1
  %120 = ptrtoint ptr %value.i444 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %value.i444, align 4
  %mul.i445 = mul i32 %121, 1000
  %arrayidx4.i446 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.02.i443
  %122 = ptrtoint ptr %arrayidx4.i446 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %mul.i445, ptr %arrayidx4.i446, align 4
  %latency_in_us.i447 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.02.i443, i32 1
  %123 = ptrtoint ptr %latency_in_us.i447 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %latency_in_us.i447, align 4
  %inc.i448 = add nuw nsw i32 %i.02.i443, 1
  %exitcond.not.i449 = icmp eq i32 %inc.i448, %118
  br i1 %exitcond.not.i449, label %aldebaran_get_clk_table.exit451thread-pre-split, label %for.body.i450.for.body.i450_crit_edge

for.body.i450.for.body.i450_crit_edge:            ; preds = %for.body.i450
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i450

aldebaran_get_clk_table.exit451thread-pre-split:  ; preds = %for.body.i450
  call void @__sanitizer_cov_trace_pc() #15
  %124 = ptrtoint ptr %count1.i441 to i32
  call void @__asan_load4_noabort(i32 %124)
  %.pr548 = load i32, ptr %count1.i441, align 4
  br label %aldebaran_get_clk_table.exit451

aldebaran_get_clk_table.exit451:                  ; preds = %aldebaran_get_clk_table.exit451thread-pre-split, %if.end199.aldebaran_get_clk_table.exit451_crit_edge
  %125 = phi i32 [ %.pr548, %aldebaran_get_clk_table.exit451thread-pre-split ], [ %117, %if.end199.aldebaran_get_clk_table.exit451_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp212510.not = icmp eq i32 %125, 0
  br i1 %cmp212510.not, label %aldebaran_get_clk_table.exit451.cleanup_crit_edge, label %aldebaran_get_clk_table.exit451.for.body213_crit_edge

aldebaran_get_clk_table.exit451.for.body213_crit_edge: ; preds = %aldebaran_get_clk_table.exit451
  br label %for.body213

aldebaran_get_clk_table.exit451.cleanup_crit_edge: ; preds = %aldebaran_get_clk_table.exit451
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body213:                                      ; preds = %cond.end228.for.body213_crit_edge, %aldebaran_get_clk_table.exit451.for.body213_crit_edge
  %i.5512 = phi i32 [ %inc233, %cond.end228.for.body213_crit_edge ], [ 0, %aldebaran_get_clk_table.exit451.for.body213_crit_edge ]
  %size.8511 = phi i32 [ %add231, %cond.end228.for.body213_crit_edge ], [ %size.0, %aldebaran_get_clk_table.exit451.for.body213_crit_edge ]
  %value216 = getelementptr %struct.smu_13_0_dpm_tables, ptr %7, i32 0, i32 4, i32 3, i32 %i.5512, i32 1
  %126 = ptrtoint ptr %value216 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %value216, align 4
  %128 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %129)
  %cmp218 = icmp eq i32 %129, 1
  br i1 %cmp218, label %for.body213.cond.end228_crit_edge, label %cond.false220

for.body213.cond.end228_crit_edge:                ; preds = %for.body213
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end228

cond.false220:                                    ; preds = %for.body213
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx222 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.5512
  %130 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx222, align 4
  %div224 = udiv i32 %131, 1000
  %132 = ptrtoint ptr %now to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %now, align 4
  %sub.i452 = sub i32 %div224, %133
  %134 = call i32 @llvm.abs.i32(i32 %sub.i452, i1 false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %134)
  %cmp2.i453 = icmp sgt i32 %134, 1
  %cond227 = select i1 %cmp2.i453, ptr @.str.13, ptr @.str.12
  br label %cond.end228

cond.end228:                                      ; preds = %cond.false220, %for.body213.cond.end228_crit_edge
  %cond229 = phi ptr [ %cond227, %cond.false220 ], [ @.str.12, %for.body213.cond.end228_crit_edge ]
  %call230 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.8511, ptr noundef nonnull @.str.11, i32 noundef %i.5512, i32 noundef %127, ptr noundef nonnull %cond229) #13
  %add231 = add i32 %call230, %size.8511
  %inc233 = add nuw i32 %i.5512, 1
  %135 = ptrtoint ptr %count1.i441 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %count1.i441, align 4
  %cmp212 = icmp ult i32 %inc233, %136
  br i1 %cmp212, label %cond.end228.for.body213_crit_edge, label %cond.end228.cleanup_crit_edge

cond.end228.cleanup_crit_edge:                    ; preds = %cond.end228
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.end228.for.body213_crit_edge:                ; preds = %cond.end228
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body213

sw.bb235:                                         ; preds = %if.end
  %call236 = call fastcc i32 @aldebaran_get_current_clk_freq_by_table(ptr noundef %smu, i32 noundef 2, ptr noundef nonnull %now)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call236)
  %tobool237.not = icmp eq i32 %call236, 0
  br i1 %tobool237.not, label %if.end244, label %do.end241

do.end241:                                        ; preds = %sw.bb235
  call void @__sanitizer_cov_trace_pc() #15
  %137 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %smu, align 8
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %140, ptr noundef nonnull @.str.40) #16
  br label %cleanup

if.end244:                                        ; preds = %sw.bb235
  %count1.i455 = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %7, i32 0, i32 5, i32 2
  %141 = ptrtoint ptr %count1.i455 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %count1.i455, align 4
  %143 = call i32 @llvm.umin.i32(i32 %142, i32 16) #13
  %144 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp31.not.i456 = icmp eq i32 %143, 0
  br i1 %cmp31.not.i456, label %if.end244.aldebaran_get_clk_table.exit465_crit_edge, label %if.end244.for.body.i464_crit_edge

if.end244.for.body.i464_crit_edge:                ; preds = %if.end244
  br label %for.body.i464

if.end244.aldebaran_get_clk_table.exit465_crit_edge: ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #15
  br label %aldebaran_get_clk_table.exit465

for.body.i464:                                    ; preds = %for.body.i464.for.body.i464_crit_edge, %if.end244.for.body.i464_crit_edge
  %i.02.i457 = phi i32 [ %inc.i462, %for.body.i464.for.body.i464_crit_edge ], [ 0, %if.end244.for.body.i464_crit_edge ]
  %value.i458 = getelementptr %struct.smu_13_0_dpm_tables, ptr %7, i32 0, i32 5, i32 3, i32 %i.02.i457, i32 1
  %145 = ptrtoint ptr %value.i458 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %value.i458, align 4
  %mul.i459 = mul i32 %146, 1000
  %arrayidx4.i460 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.02.i457
  %147 = ptrtoint ptr %arrayidx4.i460 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %mul.i459, ptr %arrayidx4.i460, align 4
  %latency_in_us.i461 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.02.i457, i32 1
  %148 = ptrtoint ptr %latency_in_us.i461 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %latency_in_us.i461, align 4
  %inc.i462 = add nuw nsw i32 %i.02.i457, 1
  %exitcond.not.i463 = icmp eq i32 %inc.i462, %143
  br i1 %exitcond.not.i463, label %aldebaran_get_clk_table.exit465thread-pre-split, label %for.body.i464.for.body.i464_crit_edge

for.body.i464.for.body.i464_crit_edge:            ; preds = %for.body.i464
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i464

aldebaran_get_clk_table.exit465thread-pre-split:  ; preds = %for.body.i464
  call void @__sanitizer_cov_trace_pc() #15
  %149 = ptrtoint ptr %count1.i455 to i32
  call void @__asan_load4_noabort(i32 %149)
  %.pr549 = load i32, ptr %count1.i455, align 4
  br label %aldebaran_get_clk_table.exit465

aldebaran_get_clk_table.exit465:                  ; preds = %aldebaran_get_clk_table.exit465thread-pre-split, %if.end244.aldebaran_get_clk_table.exit465_crit_edge
  %150 = phi i32 [ %.pr549, %aldebaran_get_clk_table.exit465thread-pre-split ], [ %142, %if.end244.aldebaran_get_clk_table.exit465_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %cmp257506.not = icmp eq i32 %150, 0
  br i1 %cmp257506.not, label %aldebaran_get_clk_table.exit465.cleanup_crit_edge, label %aldebaran_get_clk_table.exit465.for.body258_crit_edge

aldebaran_get_clk_table.exit465.for.body258_crit_edge: ; preds = %aldebaran_get_clk_table.exit465
  br label %for.body258

aldebaran_get_clk_table.exit465.cleanup_crit_edge: ; preds = %aldebaran_get_clk_table.exit465
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body258:                                      ; preds = %cond.end273.for.body258_crit_edge, %aldebaran_get_clk_table.exit465.for.body258_crit_edge
  %i.6508 = phi i32 [ %inc278, %cond.end273.for.body258_crit_edge ], [ 0, %aldebaran_get_clk_table.exit465.for.body258_crit_edge ]
  %size.9507 = phi i32 [ %add276, %cond.end273.for.body258_crit_edge ], [ %size.0, %aldebaran_get_clk_table.exit465.for.body258_crit_edge ]
  %value261 = getelementptr %struct.smu_13_0_dpm_tables, ptr %7, i32 0, i32 5, i32 3, i32 %i.6508, i32 1
  %151 = ptrtoint ptr %value261 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %value261, align 4
  %153 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %154)
  %cmp263 = icmp eq i32 %154, 1
  br i1 %cmp263, label %for.body258.cond.end273_crit_edge, label %cond.false265

for.body258.cond.end273_crit_edge:                ; preds = %for.body258
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end273

cond.false265:                                    ; preds = %for.body258
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx267 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.6508
  %155 = ptrtoint ptr %arrayidx267 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx267, align 4
  %div269 = udiv i32 %156, 1000
  %157 = ptrtoint ptr %now to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %now, align 4
  %sub.i466 = sub i32 %div269, %158
  %159 = call i32 @llvm.abs.i32(i32 %sub.i466, i1 false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %159)
  %cmp2.i467 = icmp sgt i32 %159, 1
  %cond272 = select i1 %cmp2.i467, ptr @.str.13, ptr @.str.12
  br label %cond.end273

cond.end273:                                      ; preds = %cond.false265, %for.body258.cond.end273_crit_edge
  %cond274 = phi ptr [ %cond272, %cond.false265 ], [ @.str.12, %for.body258.cond.end273_crit_edge ]
  %call275 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.9507, ptr noundef nonnull @.str.11, i32 noundef %i.6508, i32 noundef %152, ptr noundef nonnull %cond274) #13
  %add276 = add i32 %call275, %size.9507
  %inc278 = add nuw i32 %i.6508, 1
  %160 = ptrtoint ptr %count1.i455 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %count1.i455, align 4
  %cmp257 = icmp ult i32 %inc278, %161
  br i1 %cmp257, label %cond.end273.for.body258_crit_edge, label %cond.end273.cleanup_crit_edge

cond.end273.cleanup_crit_edge:                    ; preds = %cond.end273
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.end273.for.body258_crit_edge:                ; preds = %cond.end273
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body258

cleanup:                                          ; preds = %cond.end273.cleanup_crit_edge, %aldebaran_get_clk_table.exit465.cleanup_crit_edge, %do.end241, %cond.end228.cleanup_crit_edge, %aldebaran_get_clk_table.exit451.cleanup_crit_edge, %do.end196, %cond.end183.cleanup_crit_edge, %aldebaran_get_clk_table.exit437.cleanup_crit_edge, %do.end154, %cond.end141.cleanup_crit_edge, %aldebaran_get_clk_table.exit423.cleanup_crit_edge, %if.end111.cleanup_crit_edge, %do.end108, %cond.end95.cleanup_crit_edge, %aldebaran_get_clk_table.exit409.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %do.end65, %for.body46.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %add, %if.then ], [ %call236, %do.end241 ], [ %call191, %do.end196 ], [ %call149, %do.end154 ], [ %call103, %do.end108 ], [ %call60, %do.end65 ], [ %call8, %do.end ], [ %size.0, %if.end.cleanup_crit_edge ], [ %size.1, %for.cond.preheader.cleanup_crit_edge ], [ %size.1, %if.end29.cleanup_crit_edge ], [ %size.4, %aldebaran_get_clk_table.exit409.cleanup_crit_edge ], [ %size.0, %aldebaran_get_clk_table.exit423.cleanup_crit_edge ], [ %size.0, %aldebaran_get_clk_table.exit437.cleanup_crit_edge ], [ %size.0, %aldebaran_get_clk_table.exit451.cleanup_crit_edge ], [ %size.0, %aldebaran_get_clk_table.exit465.cleanup_crit_edge ], [ %size.4, %if.end68.cleanup_crit_edge ], [ %size.0, %if.end111.cleanup_crit_edge ], [ %add51, %for.body46.cleanup_crit_edge ], [ %add43, %cond.end.cleanup_crit_edge ], [ %add98, %cond.end95.cleanup_crit_edge ], [ %add144, %cond.end141.cleanup_crit_edge ], [ %add186, %cond.end183.cleanup_crit_edge ], [ %add231, %cond.end228.cleanup_crit_edge ], [ %add276, %cond.end273.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %freq_values) #13
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %clocks) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %now) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aldebaran_force_clk_levels(ptr noundef %smu, i32 noundef %type, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dpm_context1 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 1
  %0 = ptrtoint ptr %dpm_context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpm_context1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %tobool.not = icmp eq i32 %mask, 0
  %2 = tail call i32 @llvm.cttz.i32(i32 %mask, i1 true), !range !249
  %spec.select = select i1 %tobool.not, i32 0, i32 %2
  %3 = tail call i32 @llvm.ctlz.i32(i32 %mask, i1 false) #13, !range !249
  %sub4 = sub nsw i32 31, %3
  %cond7 = select i1 %tobool.not, i32 0, i32 %sub4
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 13, label %sw.bb
    i32 14, label %entry.sw.bb28_crit_edge
    i32 6, label %entry.sw.bb28_crit_edge60
    i32 12, label %entry.sw.bb28_crit_edge61
  ]

entry.sw.bb28_crit_edge61:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb28

entry.sw.bb28_crit_edge60:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb28

entry.sw.bb28_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb28

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %count = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond7, i32 %6)
  %cmp.not = icmp ult i32 %cond7, %6
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %smu, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %sub9 = add i32 %6, -1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.45, i32 noundef %cond7, i32 noundef %sub9) #16
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %call.i = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.if.end18_crit_edge, label %if.then.i

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then.i:                                        ; preds = %if.end
  %value.i = getelementptr %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 1, i32 3, i32 %spec.select, i32 1
  %11 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value.i, align 4
  %and5.i = and i32 %12, 65535
  %call6.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 32, i32 noundef %and5.i, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then.i.if.end18_crit_edge, label %do.end15

if.then.i.if.end18_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

do.end15:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %smu, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.56) #16
  %17 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %smu, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.48) #16
  br label %sw.epilog

if.end18:                                         ; preds = %if.then.i.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %call13.i = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 2) #13
  %call42.i = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 3) #13
  %21 = ptrtoint ptr %dpm_context1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dpm_context1, align 4
  %call.i43 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool.not.i44 = icmp eq i32 %call.i43, 0
  br i1 %tobool.not.i44, label %if.end18.aldebaran_upload_dpm_level.exit55.thread_crit_edge, label %if.then.i49

if.end18.aldebaran_upload_dpm_level.exit55.thread_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %aldebaran_upload_dpm_level.exit55.thread

if.then.i49:                                      ; preds = %if.end18
  %value.i45 = getelementptr %struct.smu_13_0_dpm_tables, ptr %22, i32 0, i32 1, i32 3, i32 %cond7, i32 1
  %23 = ptrtoint ptr %value.i45 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %value.i45, align 4
  %and5.i46 = and i32 %24, 65535
  %call6.i47 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 33, i32 noundef %and5.i46, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i47)
  %tobool7.not.i48 = icmp eq i32 %call6.i47, 0
  br i1 %tobool7.not.i48, label %if.then.i49.aldebaran_upload_dpm_level.exit55.thread_crit_edge, label %do.end24

if.then.i49.aldebaran_upload_dpm_level.exit55.thread_crit_edge: ; preds = %if.then.i49
  call void @__sanitizer_cov_trace_pc() #15
  br label %aldebaran_upload_dpm_level.exit55.thread

aldebaran_upload_dpm_level.exit55.thread:         ; preds = %if.then.i49.aldebaran_upload_dpm_level.exit55.thread_crit_edge, %if.end18.aldebaran_upload_dpm_level.exit55.thread_crit_edge
  %call13.i51 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 2) #13
  %call42.i52 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 3) #13
  br label %sw.epilog

do.end24:                                         ; preds = %if.then.i49
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %smu, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.55) #16
  %29 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %smu, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.51) #16
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry.sw.bb28_crit_edge, %entry.sw.bb28_crit_edge60, %entry.sw.bb28_crit_edge61
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb28, %do.end24, %aldebaran_upload_dpm_level.exit55.thread, %do.end15, %do.end, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ -22, %sw.bb28 ], [ -22, %do.end ], [ %call6.i, %do.end15 ], [ %call6.i47, %do.end24 ], [ 0, %aldebaran_upload_dpm_level.exit55.thread ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aldebaran_usr_edit_dpm_table(ptr noundef %smu, i32 noundef %type, ptr nocapture noundef readonly %input, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dpm_context2 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 1
  %0 = ptrtoint ptr %dpm_context2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpm_context2, align 4
  %dpm_level = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 4
  %2 = ptrtoint ptr %dpm_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dpm_level, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 2, label %entry.if.end_crit_edge
    i32 512, label %entry.if.end_crit_edge166
  ]

entry.if.end_crit_edge166:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge166
  %5 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 4, label %sw.bb62
    i32 5, label %sw.bb77
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size)
  %cmp6.not = icmp eq i32 %size, 2
  br i1 %cmp6.not, label %if.end8, label %do.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smu, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.63) #16
  br label %cleanup

if.end8:                                          ; preds = %sw.bb
  %10 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %input, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %11, label %if.end8.cleanup_crit_edge [
    i32 0, label %if.then10
    i32 1, label %if.then33
  ]

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10:                                        ; preds = %if.end8
  %arrayidx11 = getelementptr i32, ptr %input, i32 1
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx11, align 4
  %gfx_table = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %gfx_table to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gfx_table, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp12 = icmp ult i32 %14, %16
  br i1 %cmp12, label %do.end16, label %if.end26

do.end16:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %smu, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.66, i32 noundef %14, i32 noundef %16) #16
  %curr = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 4
  %21 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %curr, align 4
  %custom = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 3
  %23 = ptrtoint ptr %custom to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %custom, align 4
  br label %cleanup

if.end26:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  %custom29 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 3
  %24 = ptrtoint ptr %custom29 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %14, ptr %custom29, align 4
  br label %cleanup

if.then33:                                        ; preds = %if.end8
  %arrayidx34 = getelementptr i32, ptr %input, i32 1
  %25 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx34, align 4
  %max = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp37 = icmp ugt i32 %26, %28
  br i1 %cmp37, label %do.end41, label %if.end54

do.end41:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %smu, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.70, i32 noundef %26, i32 noundef %28) #16
  %max50 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %max50 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max50, align 4
  %max53 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %max53 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %max53, align 4
  br label %cleanup

if.end54:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  %max58 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %max58 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %26, ptr %max58, align 4
  br label %cleanup

sw.bb62:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp63.not = icmp eq i32 %size, 0
  br i1 %cmp63.not, label %if.else70, label %do.end67

do.end67:                                         ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %smu, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.63) #16
  br label %cleanup

if.else70:                                        ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #15
  %gfx_table72 = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %gfx_table72 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %gfx_table72, align 4
  %max76 = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %max76 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max76, align 4
  %call = tail call i32 @aldebaran_set_soft_freq_limited_range(ptr noundef %smu, i32 noundef 0, i32 noundef %42, i32 noundef %44)
  br label %cleanup

sw.bb77:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp78.not = icmp eq i32 %size, 0
  br i1 %cmp78.not, label %if.else85, label %do.end82

do.end82:                                         ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %smu, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.63) #16
  br label %cleanup

if.else85:                                        ; preds = %sw.bb77
  %custom87 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 3
  %49 = ptrtoint ptr %custom87 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %custom87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not = icmp eq i32 %50, 0
  br i1 %tobool.not, label %if.then89, label %if.else85.if.end96_crit_edge

if.else85.if.end96_crit_edge:                     ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end96

if.then89:                                        ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #15
  %curr91 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 4
  %51 = ptrtoint ptr %curr91 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %curr91, align 4
  %53 = ptrtoint ptr %custom87 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %custom87, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then89, %if.else85.if.end96_crit_edge
  %max99 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 3, i32 1
  %54 = ptrtoint ptr %max99 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool100.not = icmp eq i32 %55, 0
  br i1 %tobool100.not, label %if.then101, label %if.end96.if.end108_crit_edge

if.end96.if.end108_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end108

if.then101:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #15
  %max104 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %max104 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %max104, align 4
  %58 = ptrtoint ptr %max99 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %max99, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.then101, %if.end96.if.end108_crit_edge
  %59 = ptrtoint ptr %custom87 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %custom87, align 4
  %61 = ptrtoint ptr %max99 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max99, align 4
  %call115 = tail call i32 @aldebaran_set_soft_freq_limited_range(ptr noundef %smu, i32 noundef 0, i32 noundef %60, i32 noundef %62)
  br label %cleanup

cleanup:                                          ; preds = %if.end108, %do.end82, %if.else70, %do.end67, %if.end54, %do.end41, %if.end26, %do.end16, %if.end8.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end82 ], [ %call115, %if.end108 ], [ -22, %do.end67 ], [ %call, %if.else70 ], [ -22, %do.end ], [ -22, %do.end16 ], [ -22, %do.end41 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ -38, %if.end.cleanup_crit_edge ], [ 0, %if.end26 ], [ 0, %if.end54 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aldebaran_read_sensor(ptr noundef %smu, i32 noundef %sensor, ptr noundef %data, ptr noundef writeonly %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @amdgpu_ras_in_intr, i32 noundef 4) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_ras_in_intr to i32))
  %0 = load volatile i32, ptr @amdgpu_ras_in_intr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.i.not = icmp eq i32 %0, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %data, null
  %tobool1.not = icmp eq ptr %size, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %sensor_lock = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %sensor_lock, i32 noundef 0) #13
  %1 = zext i32 %sensor to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %sensor, label %if.end3.sw.epilog_crit_edge [
    i32 3, label %sw.bb14
    i32 0, label %sw.bb11
    i32 15, label %if.end.i45
    i32 8, label %sw.bb1.i
    i32 7, label %sw.bb.i
    i32 9, label %sw.bb9
    i32 11, label %sw.bb.i56
    i32 10, label %sw.bb1.i59
    i32 12, label %sw.bb3.i
  ]

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb.i:                                          ; preds = %if.end3
  %metrics_table.i.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %2 = ptrtoint ptr %metrics_table.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %metrics_table.i.i, align 8
  %metrics_lock.i.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i.i, i32 noundef 0) #13
  %call.i.i = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb.i.aldebaran_get_current_activity_percent.exit_crit_edge

sw.bb.i.aldebaran_get_current_activity_percent.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %aldebaran_get_current_activity_percent.exit

if.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  %AverageGfxActivity.i.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %3, i32 0, i32 5
  br label %aldebaran_get_current_activity_percent.exit.sink.split

sw.bb1.i:                                         ; preds = %if.end3
  %metrics_table.i7.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %4 = ptrtoint ptr %metrics_table.i7.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %metrics_table.i7.i, align 8
  %metrics_lock.i8.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i8.i, i32 noundef 0) #13
  %call.i9.i = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %tobool.not.i10.i = icmp eq i32 %call.i9.i, 0
  br i1 %tobool.not.i10.i, label %if.end.i11.i, label %sw.bb1.i.aldebaran_get_current_activity_percent.exit_crit_edge

sw.bb1.i.aldebaran_get_current_activity_percent.exit_crit_edge: ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %aldebaran_get_current_activity_percent.exit

if.end.i11.i:                                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #15
  %AverageUclkActivity.i.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %5, i32 0, i32 6
  br label %aldebaran_get_current_activity_percent.exit.sink.split

aldebaran_get_current_activity_percent.exit.sink.split: ; preds = %if.end.i11.i, %if.end.i.i
  %.sink.in = phi ptr [ %AverageUclkActivity.i.i, %if.end.i11.i ], [ %AverageGfxActivity.i.i, %if.end.i.i ]
  %metrics_lock.i.i.sink.ph = phi ptr [ %metrics_lock.i8.i, %if.end.i11.i ], [ %metrics_lock.i.i, %if.end.i.i ]
  %retval.0.i.ph = phi i32 [ %call.i9.i, %if.end.i11.i ], [ %call.i.i, %if.end.i.i ]
  %6 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load2_noabort(i32 %6)
  %.sink = load i16, ptr %.sink.in, align 2
  %conv32.i.i = zext i16 %.sink to i32
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv32.i.i, ptr %data, align 4
  br label %aldebaran_get_current_activity_percent.exit

aldebaran_get_current_activity_percent.exit:      ; preds = %aldebaran_get_current_activity_percent.exit.sink.split, %sw.bb1.i.aldebaran_get_current_activity_percent.exit_crit_edge, %sw.bb.i.aldebaran_get_current_activity_percent.exit_crit_edge
  %metrics_lock.i.i.sink = phi ptr [ %metrics_lock.i.i, %sw.bb.i.aldebaran_get_current_activity_percent.exit_crit_edge ], [ %metrics_lock.i8.i, %sw.bb1.i.aldebaran_get_current_activity_percent.exit_crit_edge ], [ %metrics_lock.i.i.sink.ph, %aldebaran_get_current_activity_percent.exit.sink.split ]
  %retval.0.i = phi i32 [ %call.i.i, %sw.bb.i.aldebaran_get_current_activity_percent.exit_crit_edge ], [ %call.i9.i, %sw.bb1.i.aldebaran_get_current_activity_percent.exit_crit_edge ], [ %retval.0.i.ph, %aldebaran_get_current_activity_percent.exit.sink.split ]
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i.i.sink) #13
  br label %sw.epilog.sink.split

if.end.i45:                                       ; preds = %if.end3
  %metrics_table.i.i41 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %8 = ptrtoint ptr %metrics_table.i.i41 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %metrics_table.i.i41, align 8
  %metrics_lock.i.i42 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i.i42, i32 noundef 0) #13
  %call.i.i43 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i43)
  %tobool.not.i.i44 = icmp eq i32 %call.i.i43, 0
  br i1 %tobool.not.i.i44, label %if.end.i.i46, label %if.end.i45.aldebaran_get_gpu_power.exit_crit_edge

if.end.i45.aldebaran_get_gpu_power.exit_crit_edge: ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #15
  br label %aldebaran_get_gpu_power.exit

if.end.i.i46:                                     ; preds = %if.end.i45
  %10 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smu, align 8
  %smuio.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %11, i32 0, i32 103
  %12 = ptrtoint ptr %smuio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %smuio.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i46.cond.true.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i46.cond.true.i.i_crit_edge:             ; preds = %if.end.i.i46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.true.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i46
  %get_die_id.i.i.i = getelementptr inbounds %struct.amdgpu_smuio_funcs, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %get_die_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_die_id.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %15, null
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i.i.i.cond.true.i.i_crit_edge, label %aldebaran_is_primary.exit.i.i

land.lhs.true.i.i.i.cond.true.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.true.i.i

aldebaran_is_primary.exit.i.i:                    ; preds = %land.lhs.true.i.i.i
  %call.i.i.i47 = tail call i32 %15(ptr noundef %11) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i47)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i47, 0
  br i1 %cmp.i.i.i, label %aldebaran_is_primary.exit.i.i.cond.true.i.i_crit_edge, label %aldebaran_is_primary.exit.i.i.sw.epilog.i.i_crit_edge

aldebaran_is_primary.exit.i.i.sw.epilog.i.i_crit_edge: ; preds = %aldebaran_is_primary.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i.i

aldebaran_is_primary.exit.i.i.cond.true.i.i_crit_edge: ; preds = %aldebaran_is_primary.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.true.i.i

cond.true.i.i:                                    ; preds = %aldebaran_is_primary.exit.i.i.cond.true.i.i_crit_edge, %land.lhs.true.i.i.i.cond.true.i.i_crit_edge, %if.end.i.i46.cond.true.i.i_crit_edge
  %AverageSocketPower.i.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %9, i32 0, i32 11
  %16 = ptrtoint ptr %AverageSocketPower.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %AverageSocketPower.i.i, align 2
  %conv36.i.i = zext i16 %17 to i32
  %shl.i.i = shl nuw nsw i32 %conv36.i.i, 8
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %cond.true.i.i, %aldebaran_is_primary.exit.i.i.sw.epilog.i.i_crit_edge
  %.sink.i.i = phi i32 [ %shl.i.i, %cond.true.i.i ], [ 0, %aldebaran_is_primary.exit.i.i.sw.epilog.i.i_crit_edge ]
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink.i.i, ptr %data, align 4
  br label %aldebaran_get_gpu_power.exit

aldebaran_get_gpu_power.exit:                     ; preds = %sw.epilog.i.i, %if.end.i45.aldebaran_get_gpu_power.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i.i42) #13
  br label %sw.epilog.sink.split

sw.bb.i56:                                        ; preds = %if.end3
  %metrics_table.i.i52 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %19 = ptrtoint ptr %metrics_table.i.i52 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %metrics_table.i.i52, align 8
  %metrics_lock.i.i53 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i.i53, i32 noundef 0) #13
  %call.i.i54 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i54)
  %tobool.not.i.i55 = icmp eq i32 %call.i.i54, 0
  br i1 %tobool.not.i.i55, label %if.end.i.i57, label %sw.bb.i56.aldebaran_thermal_get_temperature.exit_crit_edge

sw.bb.i56.aldebaran_thermal_get_temperature.exit_crit_edge: ; preds = %sw.bb.i56
  call void @__sanitizer_cov_trace_pc() #15
  br label %aldebaran_thermal_get_temperature.exit

if.end.i.i57:                                     ; preds = %sw.bb.i56
  call void @__sanitizer_cov_trace_pc() #15
  %TemperatureHotspot.i.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %20, i32 0, i32 13
  br label %aldebaran_thermal_get_temperature.exit.sink.split

sw.bb1.i59:                                       ; preds = %if.end3
  %metrics_table.i11.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %21 = ptrtoint ptr %metrics_table.i11.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %metrics_table.i11.i, align 8
  %metrics_lock.i12.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i12.i, i32 noundef 0) #13
  %call.i13.i = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i)
  %tobool.not.i14.i = icmp eq i32 %call.i13.i, 0
  br i1 %tobool.not.i14.i, label %if.end.i15.i, label %sw.bb1.i59.aldebaran_thermal_get_temperature.exit_crit_edge

sw.bb1.i59.aldebaran_thermal_get_temperature.exit_crit_edge: ; preds = %sw.bb1.i59
  call void @__sanitizer_cov_trace_pc() #15
  br label %aldebaran_thermal_get_temperature.exit

if.end.i15.i:                                     ; preds = %sw.bb1.i59
  call void @__sanitizer_cov_trace_pc() #15
  %TemperatureEdge.i.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %22, i32 0, i32 12
  br label %aldebaran_thermal_get_temperature.exit.sink.split

sw.bb3.i:                                         ; preds = %if.end3
  %metrics_table.i17.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %23 = ptrtoint ptr %metrics_table.i17.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %metrics_table.i17.i, align 8
  %metrics_lock.i18.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i18.i, i32 noundef 0) #13
  %call.i19.i = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i)
  %tobool.not.i20.i = icmp eq i32 %call.i19.i, 0
  br i1 %tobool.not.i20.i, label %if.end.i21.i, label %sw.bb3.i.aldebaran_thermal_get_temperature.exit_crit_edge

sw.bb3.i.aldebaran_thermal_get_temperature.exit_crit_edge: ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %aldebaran_thermal_get_temperature.exit

if.end.i21.i:                                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #15
  %TemperatureHBM.i.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %24, i32 0, i32 14
  br label %aldebaran_thermal_get_temperature.exit.sink.split

aldebaran_thermal_get_temperature.exit.sink.split: ; preds = %if.end.i21.i, %if.end.i15.i, %if.end.i.i57
  %.sink62.in = phi ptr [ %TemperatureHBM.i.i, %if.end.i21.i ], [ %TemperatureEdge.i.i, %if.end.i15.i ], [ %TemperatureHotspot.i.i, %if.end.i.i57 ]
  %metrics_lock.i.i53.sink.ph = phi ptr [ %metrics_lock.i18.i, %if.end.i21.i ], [ %metrics_lock.i12.i, %if.end.i15.i ], [ %metrics_lock.i.i53, %if.end.i.i57 ]
  %retval.0.i61.ph = phi i32 [ %call.i19.i, %if.end.i21.i ], [ %call.i13.i, %if.end.i15.i ], [ %call.i.i54, %if.end.i.i57 ]
  %25 = ptrtoint ptr %.sink62.in to i32
  call void @__asan_load2_noabort(i32 %25)
  %.sink62 = load i16, ptr %.sink62.in, align 2
  %conv43.i.i = zext i16 %.sink62 to i32
  %mul44.i.i = mul nuw nsw i32 %conv43.i.i, 1000
  %26 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul44.i.i, ptr %data, align 4
  br label %aldebaran_thermal_get_temperature.exit

aldebaran_thermal_get_temperature.exit:           ; preds = %aldebaran_thermal_get_temperature.exit.sink.split, %sw.bb3.i.aldebaran_thermal_get_temperature.exit_crit_edge, %sw.bb1.i59.aldebaran_thermal_get_temperature.exit_crit_edge, %sw.bb.i56.aldebaran_thermal_get_temperature.exit_crit_edge
  %metrics_lock.i.i53.sink = phi ptr [ %metrics_lock.i.i53, %sw.bb.i56.aldebaran_thermal_get_temperature.exit_crit_edge ], [ %metrics_lock.i12.i, %sw.bb1.i59.aldebaran_thermal_get_temperature.exit_crit_edge ], [ %metrics_lock.i18.i, %sw.bb3.i.aldebaran_thermal_get_temperature.exit_crit_edge ], [ %metrics_lock.i.i53.sink.ph, %aldebaran_thermal_get_temperature.exit.sink.split ]
  %retval.0.i61 = phi i32 [ %call.i.i54, %sw.bb.i56.aldebaran_thermal_get_temperature.exit_crit_edge ], [ %call.i13.i, %sw.bb1.i59.aldebaran_thermal_get_temperature.exit_crit_edge ], [ %call.i19.i, %sw.bb3.i.aldebaran_thermal_get_temperature.exit_crit_edge ], [ %retval.0.i61.ph, %aldebaran_thermal_get_temperature.exit.sink.split ]
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i.i53.sink) #13
  br label %sw.epilog.sink.split

sw.bb9:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %call10 = tail call fastcc i32 @aldebaran_get_current_clk_freq_by_table(ptr noundef %smu, i32 noundef 7, ptr noundef nonnull %data)
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data, align 4
  %mul = mul i32 %28, 100
  store i32 %mul, ptr %data, align 4
  br label %sw.epilog.sink.split

sw.bb11:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %call12 = tail call fastcc i32 @aldebaran_get_current_clk_freq_by_table(ptr noundef %smu, i32 noundef 0, ptr noundef nonnull %data)
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data, align 4
  %mul13 = mul i32 %30, 100
  store i32 %mul13, ptr %data, align 4
  br label %sw.epilog.sink.split

sw.bb14:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %call15 = tail call i32 @smu_v13_0_get_gfx_vdd(ptr noundef %smu, ptr noundef nonnull %data) #13
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb14, %sw.bb11, %sw.bb9, %aldebaran_thermal_get_temperature.exit, %aldebaran_get_gpu_power.exit, %aldebaran_get_current_activity_percent.exit
  %ret.0.ph = phi i32 [ %retval.0.i, %aldebaran_get_current_activity_percent.exit ], [ %call.i.i43, %aldebaran_get_gpu_power.exit ], [ %retval.0.i61, %aldebaran_thermal_get_temperature.exit ], [ %call10, %sw.bb9 ], [ %call12, %sw.bb11 ], [ %call15, %sw.bb14 ]
  %31 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %size, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end3.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %if.end3.sw.epilog_crit_edge ], [ %ret.0.ph, %sw.epilog.sink.split ]
  tail call void @mutex_unlock(ptr noundef %sensor_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @aldebaran_is_dpm_running(ptr noundef %smu) #2 align 64 {
entry:
  %feature_mask = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %feature_mask) #13
  %0 = ptrtoint ptr %feature_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %feature_mask, align 4, !annotation !248
  %1 = getelementptr inbounds [2 x i32], ptr %feature_mask, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !248
  %call = call i32 @smu_cmn_get_enabled_mask(ptr noundef %smu, ptr noundef nonnull %feature_mask, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %feature_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %feature_mask, align 4
  %5 = and i32 %4, 8319
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5 = icmp ne i32 %5, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool5, %if.end ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %feature_mask) #13
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aldebaran_get_thermal_temperature_range(ptr nocapture noundef readonly %smu, ptr noundef writeonly %range) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %range, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %driver_pptable = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 9
  %0 = ptrtoint ptr %driver_pptable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_pptable, align 4
  %smu_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14
  %2 = ptrtoint ptr %smu_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_table, align 8
  %4 = call ptr @memcpy(ptr %range, ptr @smu13_thermal_policy, i32 40)
  %ThotspotLimit = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %ThotspotLimit to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ThotspotLimit, align 4
  %conv = zext i16 %6 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %hotspot_crit_max = getelementptr inbounds %struct.smu_temperature_range, ptr %range, i32 0, i32 4
  %7 = ptrtoint ptr %hotspot_crit_max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul, ptr %hotspot_crit_max, align 4
  %8 = load i16, ptr %ThotspotLimit, align 4
  %conv3 = zext i16 %8 to i32
  %9 = mul nuw nsw i32 %conv3, 1000
  %mul4 = add nuw nsw i32 %9, 5000
  %hotspot_emergency_max = getelementptr inbounds %struct.smu_temperature_range, ptr %range, i32 0, i32 5
  %10 = ptrtoint ptr %hotspot_emergency_max to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul4, ptr %hotspot_emergency_max, align 4
  %TmemLimit = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %TmemLimit to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %TmemLimit, align 2
  %conv5 = zext i16 %12 to i32
  %mul6 = mul nuw nsw i32 %conv5, 1000
  %mem_crit_max = getelementptr inbounds %struct.smu_temperature_range, ptr %range, i32 0, i32 7
  %13 = ptrtoint ptr %mem_crit_max to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul6, ptr %mem_crit_max, align 4
  %14 = load i16, ptr %TmemLimit, align 2
  %conv8 = zext i16 %14 to i32
  %15 = mul nuw nsw i32 %conv8, 1000
  %mul10 = add nuw nsw i32 %15, 5000
  %mem_emergency_max = getelementptr inbounds %struct.smu_temperature_range, ptr %range, i32 0, i32 8
  %16 = ptrtoint ptr %mem_emergency_max to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul10, ptr %mem_emergency_max, align 4
  %software_shutdown_temp = getelementptr inbounds %struct.smu_13_0_powerplay_table, ptr %3, i32 0, i32 13
  %17 = ptrtoint ptr %software_shutdown_temp to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %software_shutdown_temp, align 1
  %conv11 = zext i16 %18 to i32
  %software_shutdown_temp12 = getelementptr inbounds %struct.smu_temperature_range, ptr %range, i32 0, i32 9
  %19 = ptrtoint ptr %software_shutdown_temp12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv11, ptr %software_shutdown_temp12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aldebaran_set_performance_level(ptr noundef %smu, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dpm_level = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 4
  %0 = ptrtoint ptr %dpm_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dpm_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %1)
  %cmp = icmp ne i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %level)
  %cmp5.not = icmp eq i32 %level, 512
  %or.cond = or i1 %cmp5.not, %cmp
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dpm_context2 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 1
  %2 = ptrtoint ptr %dpm_context2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dpm_context2, align 4
  %call = tail call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef 198, ptr noundef null) #13
  %max = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max, align 4
  %max6 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %max6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %max6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  br i1 %cmp5.not, label %if.end.cleanup_crit_edge, label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = tail call i32 @smu_v13_0_set_performance_level(ptr noundef %smu, i32 noundef %level) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %sw.epilog ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aldebaran_get_power_limit(ptr noundef %smu, ptr noundef writeonly %current_power_limit, ptr noundef writeonly %default_power_limit, ptr noundef writeonly %max_power_limit) #2 align 64 {
entry:
  %power_limit = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_pptable = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 9
  %0 = ptrtoint ptr %driver_pptable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_pptable, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %power_limit) #13
  %2 = ptrtoint ptr %power_limit to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %power_limit, align 4
  %call = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq ptr %current_power_limit, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %current_power_limit to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %current_power_limit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %tobool3.not = icmp eq ptr %default_power_limit, null
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %default_power_limit to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %default_power_limit, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %tobool6.not = icmp eq ptr %max_power_limit, null
  br i1 %tobool6.not, label %if.end5.do.end_crit_edge, label %if.then7

if.end5.do.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %max_power_limit to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %max_power_limit, align 4
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.end5.do.end_crit_edge
  %6 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smu, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.80) #16
  br label %cleanup

if.end9:                                          ; preds = %entry
  %10 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smu, align 8
  %smuio.i = getelementptr inbounds %struct.amdgpu_device, ptr %11, i32 0, i32 103
  %12 = ptrtoint ptr %smuio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %smuio.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end9.if.then11_crit_edge, label %land.lhs.true.i

if.end9.if.then11_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11

land.lhs.true.i:                                  ; preds = %if.end9
  %get_die_id.i = getelementptr inbounds %struct.amdgpu_smuio_funcs, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %get_die_id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_die_id.i, align 4
  %tobool4.not.i = icmp eq ptr %15, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.then11_crit_edge, label %aldebaran_is_primary.exit

land.lhs.true.i.if.then11_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11

aldebaran_is_primary.exit:                        ; preds = %land.lhs.true.i
  %call.i = tail call i32 %15(ptr noundef %11) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %aldebaran_is_primary.exit.if.then11_crit_edge, label %aldebaran_is_primary.exit.if.end24_crit_edge

aldebaran_is_primary.exit.if.end24_crit_edge:     ; preds = %aldebaran_is_primary.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

aldebaran_is_primary.exit.if.then11_crit_edge:    ; preds = %aldebaran_is_primary.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11

if.then11:                                        ; preds = %aldebaran_is_primary.exit.if.then11_crit_edge, %land.lhs.true.i.if.then11_crit_edge, %if.end9.if.then11_crit_edge
  %call12 = call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef 75, ptr noundef nonnull %power_limit) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.if.end24_crit_edge, label %if.then14

if.then11.if.end24_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then14:                                        ; preds = %if.then11
  %tobool15.not = icmp eq ptr %1, null
  br i1 %tobool15.not, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %smu, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.83) #16
  br label %cleanup

if.end22:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  %PptLimit = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %PptLimit to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %PptLimit, align 4
  %conv = zext i16 %21 to i32
  %22 = ptrtoint ptr %power_limit to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv, ptr %power_limit, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end22, %if.then11.if.end24_crit_edge, %aldebaran_is_primary.exit.if.end24_crit_edge
  %tobool25.not = icmp eq ptr %current_power_limit, null
  br i1 %tobool25.not, label %if.end24.if.end27_crit_edge, label %if.then26

if.end24.if.end27_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %power_limit to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %power_limit, align 4
  %25 = ptrtoint ptr %current_power_limit to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %current_power_limit, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end24.if.end27_crit_edge
  %tobool28.not = icmp eq ptr %default_power_limit, null
  br i1 %tobool28.not, label %if.end27.if.end30_crit_edge, label %if.then29

if.end27.if.end30_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %power_limit to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %power_limit, align 4
  %28 = ptrtoint ptr %default_power_limit to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %default_power_limit, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end27.if.end30_crit_edge
  %tobool31.not = icmp eq ptr %max_power_limit, null
  %tobool33.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool31.not, i1 true, i1 %tobool33.not
  br i1 %or.cond, label %if.end30.cleanup_crit_edge, label %if.then34

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %PptLimit35 = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %PptLimit35 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %PptLimit35, align 4
  %conv36 = zext i16 %30 to i32
  %31 = ptrtoint ptr %max_power_limit to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv36, ptr %max_power_limit, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end30.cleanup_crit_edge, %do.end19, %do.end
  %retval.0 = phi i32 [ -22, %do.end19 ], [ 0, %do.end ], [ 0, %if.then34 ], [ 0, %if.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %power_limit) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aldebaran_set_df_cstate(ptr noundef %smu, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 144, i32 noundef %state, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aldebaran_allow_xgmi_power_down(ptr noundef %smu, i1 noundef zeroext %en) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %smuio = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %smuio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smuio, align 4
  %get_socket_id = getelementptr inbounds %struct.amdgpu_smuio_funcs, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %get_socket_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_socket_id, align 4
  %call = tail call i32 %5(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %smuio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smuio, align 4
  %get_die_id = getelementptr inbounds %struct.amdgpu_smuio_funcs, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %get_die_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_die_id, align 4
  %call4 = tail call i32 %9(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %not.en = xor i1 %en, true
  %cond = zext i1 %not.en to i32
  %call7 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 145, i32 noundef %cond, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aldebaran_i2c_control_init(ptr nocapture noundef readnone %smu, ptr noundef %control) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %control, align 8
  %class = getelementptr inbounds %struct.i2c_adapter, ptr %control, i32 0, i32 1
  %1 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 128, ptr %class, align 4
  %pdev = getelementptr i8, ptr %control, i32 -31236
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %control, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %parent, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %control, i32 0, i32 2
  %5 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @aldebaran_i2c_algo, ptr %algo, align 8
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %control, i32 0, i32 12
  %6 = call ptr @memcpy(ptr %name, ptr @.str.85, i32 11)
  %quirks = getelementptr inbounds %struct.i2c_adapter, ptr %control, i32 0, i32 17
  %7 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @aldebaran_i2c_control_quirks, ptr %quirks, align 8
  %call2 = tail call i32 @i2c_add_adapter(ptr noundef %control) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.86, i32 noundef %call2) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aldebaran_i2c_control_fini(ptr nocapture noundef readnone %smu, ptr noundef %control) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @i2c_del_adapter(ptr noundef %control) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aldebaran_get_unique_id(ptr noundef %smu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %metrics_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %2 = ptrtoint ptr %metrics_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %metrics_table, align 8
  %metrics_lock = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock, i32 noundef 0) #13
  %call = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %PublicSerialNumUpper32 = getelementptr inbounds %struct.SmuMetrics_t, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %PublicSerialNumUpper32 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %PublicSerialNumUpper32, align 4
  %PublicSerialNumLower32 = getelementptr inbounds %struct.SmuMetrics_t, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %PublicSerialNumLower32 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %PublicSerialNumLower32, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.end, %entry.out_unlock_crit_edge
  %upper32.0 = phi i32 [ 0, %entry.out_unlock_crit_edge ], [ %5, %if.end ]
  %lower32.0 = phi i32 [ 0, %entry.out_unlock_crit_edge ], [ %7, %if.end ]
  tail call void @mutex_unlock(ptr noundef %metrics_lock) #13
  %conv = zext i32 %upper32.0 to i64
  %shl = shl nuw i64 %conv, 32
  %conv3 = zext i32 %lower32.0 to i64
  %or = or i64 %shl, %conv3
  %unique_id = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 153
  %8 = ptrtoint ptr %unique_id to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %or, ptr %unique_id, align 8
  %serial = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 163
  %9 = ptrtoint ptr %serial to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %serial, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp = icmp eq i8 %10, 0
  br i1 %cmp, label %if.then6, label %out_unlock.if.end10_crit_edge

out_unlock.if.end10_crit_edge:                    ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then6:                                         ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #15
  %call9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %serial, ptr noundef nonnull @.str.87, i64 noundef %or)
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %out_unlock.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_init_microcode(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_load_microcode(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @smu_v13_0_fini_microcode(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aldebaran_init_smc_tables(ptr noundef %smu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tables2.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11
  %0 = ptrtoint ptr %tables2.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 760, ptr %tables2.i, align 8
  %align.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 0, i32 1
  %1 = ptrtoint ptr %align.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4096, ptr %align.i, align 8
  %domain.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 0, i32 2
  %2 = ptrtoint ptr %domain.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 4, ptr %domain.i, align 4
  %arrayidx6.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 7
  %3 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 102400, ptr %arrayidx6.i, align 8
  %align9.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 7, i32 1
  %4 = ptrtoint ptr %align9.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %align9.i, align 8
  %domain11.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 7, i32 2
  %5 = ptrtoint ptr %domain11.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 4, ptr %domain11.i, align 4
  %arrayidx15.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 8
  %6 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 120, ptr %arrayidx15.i, align 8
  %align18.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 8, i32 1
  %7 = ptrtoint ptr %align18.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4096, ptr %align18.i, align 8
  %domain20.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 8, i32 2
  %8 = ptrtoint ptr %domain20.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %domain20.i, align 4
  %arrayidx24.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 12
  %9 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 52, ptr %arrayidx24.i, align 8
  %align27.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 12, i32 1
  %10 = ptrtoint ptr %align27.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4096, ptr %align27.i, align 8
  %domain29.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 12, i32 2
  %11 = ptrtoint ptr %domain29.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %domain29.i, align 4
  %arrayidx33.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 14
  %12 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 768, ptr %arrayidx33.i, align 8
  %align36.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 14, i32 1
  %13 = ptrtoint ptr %align36.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4096, ptr %align36.i, align 8
  %domain38.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 14, i32 2
  %14 = ptrtoint ptr %domain38.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 4, ptr %domain38.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 120) #17
  %metrics_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %16 = ptrtoint ptr %metrics_table.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i.i, ptr %metrics_table.i, align 8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %metrics_time.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 3
  %17 = ptrtoint ptr %metrics_time.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %metrics_time.i, align 4
  %gpu_metrics_table_size.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 19
  %18 = ptrtoint ptr %gpu_metrics_table_size.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 120, ptr %gpu_metrics_table_size.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i82.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 120) #17
  %gpu_metrics_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 20
  %20 = ptrtoint ptr %gpu_metrics_table.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i82.i, ptr %gpu_metrics_table.i, align 4
  %tobool45.not.i = icmp eq ptr %call7.i.i82.i, null
  br i1 %tobool45.not.i, label %if.then46.i, label %if.end8.i.i.i

if.then46.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %metrics_table.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %metrics_table.i, align 8
  tail call void @kfree(ptr noundef %22) #13
  br label %cleanup

if.end8.i.i.i:                                    ; preds = %if.end.i
  %23 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx33.i, align 8
  %conv.i = trunc i64 %24 to i32
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv.i, i32 noundef 3520) #18
  %ecc_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 10
  %25 = ptrtoint ptr %ecc_table.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call9.i.i.i, ptr %ecc_table.i, align 8
  %tobool53.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool53.not.i, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.end8.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 1552) #17
  %dpm_context.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 1
  %27 = ptrtoint ptr %dpm_context.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i.i11, ptr %dpm_context.i, align 4
  %tobool.not.i12 = icmp eq ptr %call7.i.i.i11, null
  br i1 %tobool.not.i12, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %smu_dpm1.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15
  %28 = ptrtoint ptr %smu_dpm1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1552, ptr %smu_dpm1.i, align 4
  %call5 = tail call i32 @smu_v13_0_init_smc_tables(ptr noundef %smu) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %if.end8.i.i.i.cleanup_crit_edge, %if.then46.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.then46.i ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_fini_smc_tables(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_init_power(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_fini_power(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_check_fw_status(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aldebaran_set_mp1_state(ptr noundef %smu, i32 noundef %mp1_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mp1_state)
  %cond = icmp eq i32 %mp1_state, 2
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @smu_cmn_set_mp1_state(ptr noundef %smu, i32 noundef 2) #13
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aldebaran_setup_pptable(ptr noundef %smu) #2 align 64 {
entry:
  %smc_dpm_table.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pp_table_id = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 13
  %0 = ptrtoint ptr %pp_table_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %pp_table_id, align 4
  %call = tail call i32 @smu_v13_0_setup_pptable(ptr noundef %smu) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %smu_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14
  %1 = ptrtoint ptr %smu_table.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %smu_table.i, align 8
  %driver_pptable.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 9
  %3 = ptrtoint ptr %driver_pptable.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_pptable.i, align 4
  %smc_pptable.i = getelementptr inbounds %struct.smu_13_0_powerplay_table, ptr %2, i32 0, i32 17
  %5 = call ptr @memcpy(ptr %4, ptr %smc_pptable.i, i32 760)
  %6 = load ptr, ptr %driver_pptable.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smc_dpm_table.i) #13
  %7 = ptrtoint ptr %smc_dpm_table.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %smc_dpm_table.i, align 4, !annotation !248
  %8 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %smu, align 8
  %call.i = call i32 @amdgpu_atombios_get_data_table(ptr noundef %9, i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %smc_dpm_table.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %aldebaran_append_powerplay_table.exit

do.end.i:                                         ; preds = %if.end
  %10 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smu, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %14 = ptrtoint ptr %smc_dpm_table.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %smc_dpm_table.i, align 4
  %format_revision.i = getelementptr inbounds %struct.atom_common_table_header, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %format_revision.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %format_revision.i, align 1
  %conv.i = zext i8 %17 to i32
  %content_revision.i = getelementptr inbounds %struct.atom_common_table_header, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %content_revision.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %content_revision.i, align 1
  %conv3.i = zext i8 %19 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.88, i32 noundef %conv.i, i32 noundef %conv3.i) #16
  %20 = ptrtoint ptr %smc_dpm_table.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %smc_dpm_table.i, align 4
  %format_revision5.i = getelementptr inbounds %struct.atom_common_table_header, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %format_revision5.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %format_revision5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %23)
  %cmp.i = icmp eq i8 %23, 4
  br i1 %cmp.i, label %land.lhs.true.i, label %do.end.i.if.end8_crit_edge

do.end.i.if.end8_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

land.lhs.true.i:                                  ; preds = %do.end.i
  %content_revision9.i = getelementptr inbounds %struct.atom_common_table_header, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %content_revision9.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %content_revision9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %25)
  %cmp11.i = icmp eq i8 %25, 10
  br i1 %cmp11.i, label %do.end21.i, label %land.lhs.true.i.if.end8_crit_edge

land.lhs.true.i.if.end8_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

do.end21.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %6, i32 592
  %add.ptr22.i = getelementptr i8, ptr %21, i32 4
  %26 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr22.i, i32 168)
  br label %if.end8

aldebaran_append_powerplay_table.exit:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smc_dpm_table.i) #13
  br label %cleanup

if.end8:                                          ; preds = %do.end21.i, %land.lhs.true.i.if.end8_crit_edge, %do.end.i.if.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smc_dpm_table.i) #13
  %27 = ptrtoint ptr %smu_table.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %smu_table.i, align 8
  %thermal_controller_type.i = getelementptr inbounds %struct.smu_13_0_powerplay_table, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %thermal_controller_type.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %thermal_controller_type.i, align 1
  %thermal_controller_type1.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 15
  %31 = ptrtoint ptr %thermal_controller_type1.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %thermal_controller_type1.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %aldebaran_append_powerplay_table.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i, %aldebaran_append_powerplay_table.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_get_vbios_bootup_values(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_check_fw_version(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_write_pptable(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_set_driver_table_location(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_set_tool_table_location(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_notify_memory_pool_location(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aldebaran_system_features_control(ptr noundef %smu, i1 noundef zeroext %enable) #2 align 64 {
entry:
  %smu_version.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smu_v13_0_system_features_control(ptr noundef %smu, i1 noundef zeroext %enable) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  %0 = and i1 %tobool1.not, %enable
  br i1 %0, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef 91, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %smu, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.91) #16
  br label %if.end

if.else.i:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smu_version.i.i) #13
  %5 = ptrtoint ptr %smu_version.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %smu_version.i.i, align 4, !annotation !248
  %6 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smu, align 8
  %smuio.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %7, i32 0, i32 103
  %8 = ptrtoint ptr %smuio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %smuio.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %if.else.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.i

if.else.i.if.end.i.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

land.lhs.true.i.i.i:                              ; preds = %if.else.i
  %get_die_id.i.i.i = getelementptr inbounds %struct.amdgpu_smuio_funcs, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %get_die_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_die_id.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i_crit_edge, label %aldebaran_is_primary.exit.i.i

land.lhs.true.i.i.i.if.end.i.i_crit_edge:         ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

aldebaran_is_primary.exit.i.i:                    ; preds = %land.lhs.true.i.i.i
  %call.i.i.i = tail call i32 %11(ptr noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %aldebaran_is_primary.exit.i.i.if.end.i.i_crit_edge, label %aldebaran_is_primary.exit.i.i.aldebaran_run_board_btc.exit.i_crit_edge

aldebaran_is_primary.exit.i.i.aldebaran_run_board_btc.exit.i_crit_edge: ; preds = %aldebaran_is_primary.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %aldebaran_run_board_btc.exit.i

aldebaran_is_primary.exit.i.i.if.end.i.i_crit_edge: ; preds = %aldebaran_is_primary.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %aldebaran_is_primary.exit.i.i.if.end.i.i_crit_edge, %land.lhs.true.i.i.i.if.end.i.i_crit_edge, %if.else.i.if.end.i.i_crit_edge
  %call1.i.i = call i32 @smu_cmn_get_smc_version(ptr noundef %smu, ptr noundef null, ptr noundef nonnull %smu_version.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end3.i.i, label %if.end.i.i.cleanup.sink.split.i.i_crit_edge

if.end.i.i.cleanup.sink.split.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %12 = ptrtoint ptr %smu_version.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %smu_version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4463873, i32 %13)
  %cmp.i.i = icmp ult i32 %13, 4463873
  br i1 %cmp.i.i, label %if.end3.i.i.aldebaran_run_board_btc.exit.i_crit_edge, label %if.end5.i.i

if.end3.i.i.aldebaran_run_board_btc.exit.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %aldebaran_run_board_btc.exit.i

if.end5.i.i:                                      ; preds = %if.end3.i.i
  %call6.i.i = call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef 202, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end5.i.i.aldebaran_run_board_btc.exit.i_crit_edge, label %if.end5.i.i.cleanup.sink.split.i.i_crit_edge

if.end5.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i.i

if.end5.i.i.aldebaran_run_board_btc.exit.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %aldebaran_run_board_btc.exit.i

cleanup.sink.split.i.i:                           ; preds = %if.end5.i.i.cleanup.sink.split.i.i_crit_edge, %if.end.i.i.cleanup.sink.split.i.i_crit_edge
  %.str.96.sink.i.i = phi ptr [ @.str.93, %if.end.i.i.cleanup.sink.split.i.i_crit_edge ], [ @.str.96, %if.end5.i.i.cleanup.sink.split.i.i_crit_edge ]
  %retval.0.ph.i.i = phi i32 [ %call1.i.i, %if.end.i.i.cleanup.sink.split.i.i_crit_edge ], [ %call6.i.i, %if.end5.i.i.cleanup.sink.split.i.i_crit_edge ]
  %14 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %smu, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull %.str.96.sink.i.i) #16
  br label %aldebaran_run_board_btc.exit.i

aldebaran_run_board_btc.exit.i:                   ; preds = %cleanup.sink.split.i.i, %if.end5.i.i.aldebaran_run_board_btc.exit.i_crit_edge, %if.end3.i.i.aldebaran_run_board_btc.exit.i_crit_edge, %aldebaran_is_primary.exit.i.i.aldebaran_run_board_btc.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %aldebaran_is_primary.exit.i.i.aldebaran_run_board_btc.exit.i_crit_edge ], [ 0, %if.end3.i.i.aldebaran_run_board_btc.exit.i_crit_edge ], [ 0, %if.end5.i.i.aldebaran_run_board_btc.exit.i_crit_edge ], [ %retval.0.ph.i.i, %cleanup.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smu_version.i.i) #13
  br label %if.end

if.end:                                           ; preds = %aldebaran_run_board_btc.exit.i, %do.end.i, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %call.i, %do.end.i ], [ %retval.0.i.i, %aldebaran_run_board_btc.exit.i ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_send_smc_msg_with_param(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_send_smc_msg(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_enabled_mask(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_feature_is_enabled(ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_disable_all_features_with_exception(ptr noundef, i1 noundef zeroext, i32 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aldebaran_set_power_limit(ptr noundef %smu, i32 noundef %limit_type, i32 noundef %limit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %smuio.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %smuio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smuio.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %land.lhs.true.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

land.lhs.true.i:                                  ; preds = %entry
  %get_die_id.i = getelementptr inbounds %struct.amdgpu_smuio_funcs, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %get_die_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_die_id.i, align 4
  %tobool4.not.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.then_crit_edge, label %aldebaran_is_primary.exit

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

aldebaran_is_primary.exit:                        ; preds = %land.lhs.true.i
  %call.i = tail call i32 %5(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %aldebaran_is_primary.exit.if.then_crit_edge, label %aldebaran_is_primary.exit.return_crit_edge

aldebaran_is_primary.exit.return_crit_edge:       ; preds = %aldebaran_is_primary.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

aldebaran_is_primary.exit.if.then_crit_edge:      ; preds = %aldebaran_is_primary.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %aldebaran_is_primary.exit.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge, %entry.if.then_crit_edge
  %call1 = tail call i32 @smu_v13_0_set_power_limit(ptr noundef %smu, i32 noundef %limit_type, i32 noundef %limit) #13
  br label %return

return:                                           ; preds = %if.then, %aldebaran_is_primary.exit.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then ], [ -22, %aldebaran_is_primary.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_init_max_sustainable_clocks(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_enable_thermal_alert(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_disable_thermal_alert(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_set_xgmi_pstate(ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_register_irq_handler(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_set_azalia_d3_pme(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_get_max_sustainable_clocks_by_dc(ptr noundef, ptr noundef) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @aldebaran_is_baco_supported(ptr nocapture noundef readnone %smu) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @aldebaran_is_mode1_reset_supported(ptr nocapture noundef readnone %smu) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @aldebaran_is_mode2_reset_supported(ptr nocapture noundef readnone %smu) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aldebaran_mode1_reset(ptr noundef %smu) #2 align 64 {
entry:
  %smu_version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smu_version) #13
  %0 = ptrtoint ptr %smu_version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %smu_version, align 4, !annotation !248
  %1 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %smu, align 8
  %ras2 = getelementptr inbounds %struct.amdgpu_device, ptr %2, i32 0, i32 113, i32 34, i32 1
  %3 = ptrtoint ptr %ras2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ras2, align 8
  %call = call i32 @smu_cmn_get_smc_version(ptr noundef %smu, ptr noundef null, ptr noundef nonnull %smu_version) #13
  %5 = ptrtoint ptr %smu_version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %smu_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4458240, i32 %6)
  %cmp = icmp ult i32 %6, 4458240
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef 158, ptr noundef null) #13
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4467712, i32 %6)
  %cmp4 = icmp ult i32 %6, 4467712
  %tobool.not = icmp eq ptr %4, null
  %or.cond = select i1 %cmp4, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.else.if.end_crit_edge, label %land.lhs.true5

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true5:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %in_recovery = getelementptr inbounds %struct.amdgpu_ras, ptr %4, i32 0, i32 7
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %in_recovery, i32 noundef 4) #13
  %7 = ptrtoint ptr %in_recovery to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %in_recovery, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  %spec.select = select i1 %tobool7.not, i32 1, i32 65537
  br label %if.end

if.end:                                           ; preds = %land.lhs.true5, %if.else.if.end_crit_edge
  %fatal_err.0 = phi i32 [ 1, %if.else.if.end_crit_edge ], [ %spec.select, %land.lhs.true5 ]
  %call9 = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 53, i32 noundef %fatal_err.0, ptr noundef null) #13
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %ret.0 = phi i32 [ %call3, %if.then ], [ %call9, %if.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool11.not = icmp eq i32 %ret.0, 0
  br i1 %tobool11.not, label %if.then12, label %if.end10.if.end13_crit_edge

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  call void @msleep(i32 noundef 500) #13
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smu_version) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aldebaran_mode2_reset(ptr noundef %smu) #2 align 64 {
entry:
  %smu_version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smu_version) #13
  %0 = ptrtoint ptr %smu_version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %smu_version, align 4, !annotation !248
  %1 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %smu, align 8
  %call = call i32 @smu_cmn_get_smc_version(ptr noundef %smu, ptr noundef null, ptr noundef nonnull %smu_version) #13
  %call2 = call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 0, i32 noundef 53) #13
  %message_lock = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 12
  call void @mutex_lock_nested(ptr noundef %message_lock, i32 noundef 0) #13
  %3 = ptrtoint ptr %smu_version to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %smu_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4461567, i32 %4)
  %cmp = icmp ugt i32 %4, 4461567
  br i1 %cmp, label %if.then, label %do.end46

if.then:                                          ; preds = %entry
  %conv = trunc i32 %call2 to i16
  %call3 = call i32 @smu_cmn_send_msg_without_waiting(ptr noundef %smu, i16 noundef zeroext %conv, i32 noundef 2) #13
  call void @msleep(i32 noundef 100) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aldebaran_mode2_reset.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aldebaran_mode2_reset, %if.then7)) #13
          to label %do.end [label %if.then7], !srcloc !250

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smu, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aldebaran_mode2_reset.__UNIQUE_ID_ddebug344, ptr noundef %8, ptr noundef nonnull @.str.100) #13
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.then
  %pdev = getelementptr inbounds %struct.amdgpu_device, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %call9 = call zeroext i1 @amdgpu_device_load_pci_state(ptr noundef %10) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aldebaran_mode2_reset.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aldebaran_mode2_reset, %if.then22)) #13
          to label %while.cond [label %if.then22], !srcloc !250

if.then22:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %smu, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aldebaran_mode2_reset.__UNIQUE_ID_ddebug345, ptr noundef %14, ptr noundef nonnull @.str.101) #13
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %if.then22, %do.end
  %ret.0 = phi i32 [ %call31, %land.rhs.while.cond_crit_edge ], [ %call3, %do.end ], [ %call3, %if.then22 ]
  %15 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %ret.0, label %out.loopexit310 [
    i32 -62, label %land.rhs
    i32 1, label %while.cond.out_crit_edge
  ]

while.cond.out_crit_edge:                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.rhs:                                         ; preds = %while.cond
  %call31 = call i32 @smu_cmn_wait_for_response(ptr noundef %smu) #13
  %16 = zext i32 %call31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %call31, label %land.rhs.do.end41_crit_edge [
    i32 -62, label %if.then34
    i32 1, label %land.rhs.while.cond_crit_edge
  ]

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

land.rhs.do.end41_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end41

if.then34:                                        ; preds = %land.rhs
  call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #13
  br label %while.cond.1

while.cond.1:                                     ; preds = %land.rhs.1.while.cond.1_crit_edge, %if.then34
  %ret.0.1 = phi i32 [ %call31.1, %land.rhs.1.while.cond.1_crit_edge ], [ -62, %if.then34 ]
  %17 = zext i32 %ret.0.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %ret.0.1, label %out.loopexit304 [
    i32 -62, label %land.rhs.1
    i32 1, label %while.cond.1.out_crit_edge
  ]

while.cond.1.out_crit_edge:                       ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.rhs.1:                                       ; preds = %while.cond.1
  %call31.1 = call i32 @smu_cmn_wait_for_response(ptr noundef %smu) #13
  %18 = zext i32 %call31.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %call31.1, label %land.rhs.1.do.end41_crit_edge [
    i32 -62, label %if.then34.1
    i32 1, label %land.rhs.1.while.cond.1_crit_edge
  ]

land.rhs.1.while.cond.1_crit_edge:                ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.1

land.rhs.1.do.end41_crit_edge:                    ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end41

if.then34.1:                                      ; preds = %land.rhs.1
  call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #13
  br label %while.cond.2

while.cond.2:                                     ; preds = %land.rhs.2.while.cond.2_crit_edge, %if.then34.1
  %ret.0.2 = phi i32 [ %call31.2, %land.rhs.2.while.cond.2_crit_edge ], [ -62, %if.then34.1 ]
  %19 = zext i32 %ret.0.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %ret.0.2, label %out.loopexit298 [
    i32 -62, label %land.rhs.2
    i32 1, label %while.cond.2.out_crit_edge
  ]

while.cond.2.out_crit_edge:                       ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.rhs.2:                                       ; preds = %while.cond.2
  %call31.2 = call i32 @smu_cmn_wait_for_response(ptr noundef %smu) #13
  %20 = zext i32 %call31.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %call31.2, label %land.rhs.2.do.end41_crit_edge [
    i32 -62, label %if.then34.2
    i32 1, label %land.rhs.2.while.cond.2_crit_edge
  ]

land.rhs.2.while.cond.2_crit_edge:                ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.2

land.rhs.2.do.end41_crit_edge:                    ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end41

if.then34.2:                                      ; preds = %land.rhs.2
  call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #13
  br label %while.cond.3

while.cond.3:                                     ; preds = %land.rhs.3.while.cond.3_crit_edge, %if.then34.2
  %ret.0.3 = phi i32 [ %call31.3, %land.rhs.3.while.cond.3_crit_edge ], [ -62, %if.then34.2 ]
  %21 = zext i32 %ret.0.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %ret.0.3, label %out.loopexit292 [
    i32 -62, label %land.rhs.3
    i32 1, label %while.cond.3.out_crit_edge
  ]

while.cond.3.out_crit_edge:                       ; preds = %while.cond.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.rhs.3:                                       ; preds = %while.cond.3
  %call31.3 = call i32 @smu_cmn_wait_for_response(ptr noundef %smu) #13
  %22 = zext i32 %call31.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %call31.3, label %land.rhs.3.do.end41_crit_edge [
    i32 -62, label %if.then34.3
    i32 1, label %land.rhs.3.while.cond.3_crit_edge
  ]

land.rhs.3.while.cond.3_crit_edge:                ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.3

land.rhs.3.do.end41_crit_edge:                    ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end41

if.then34.3:                                      ; preds = %land.rhs.3
  call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #13
  br label %while.cond.4

while.cond.4:                                     ; preds = %land.rhs.4.while.cond.4_crit_edge, %if.then34.3
  %ret.0.4 = phi i32 [ %call31.4, %land.rhs.4.while.cond.4_crit_edge ], [ -62, %if.then34.3 ]
  %23 = zext i32 %ret.0.4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %ret.0.4, label %out.loopexit286 [
    i32 -62, label %land.rhs.4
    i32 1, label %while.cond.4.out_crit_edge
  ]

while.cond.4.out_crit_edge:                       ; preds = %while.cond.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.rhs.4:                                       ; preds = %while.cond.4
  %call31.4 = call i32 @smu_cmn_wait_for_response(ptr noundef %smu) #13
  %24 = zext i32 %call31.4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %call31.4, label %land.rhs.4.do.end41_crit_edge [
    i32 -62, label %if.then34.4
    i32 1, label %land.rhs.4.while.cond.4_crit_edge
  ]

land.rhs.4.while.cond.4_crit_edge:                ; preds = %land.rhs.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.4

land.rhs.4.do.end41_crit_edge:                    ; preds = %land.rhs.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end41

if.then34.4:                                      ; preds = %land.rhs.4
  call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #13
  br label %while.cond.5

while.cond.5:                                     ; preds = %land.rhs.5.while.cond.5_crit_edge, %if.then34.4
  %ret.0.5 = phi i32 [ %call31.5, %land.rhs.5.while.cond.5_crit_edge ], [ -62, %if.then34.4 ]
  %25 = zext i32 %ret.0.5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %ret.0.5, label %out.loopexit280 [
    i32 -62, label %land.rhs.5
    i32 1, label %while.cond.5.out_crit_edge
  ]

while.cond.5.out_crit_edge:                       ; preds = %while.cond.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.rhs.5:                                       ; preds = %while.cond.5
  %call31.5 = call i32 @smu_cmn_wait_for_response(ptr noundef %smu) #13
  %26 = zext i32 %call31.5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %call31.5, label %land.rhs.5.do.end41_crit_edge [
    i32 -62, label %if.then34.5
    i32 1, label %land.rhs.5.while.cond.5_crit_edge
  ]

land.rhs.5.while.cond.5_crit_edge:                ; preds = %land.rhs.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.5

land.rhs.5.do.end41_crit_edge:                    ; preds = %land.rhs.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end41

if.then34.5:                                      ; preds = %land.rhs.5
  call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #13
  br label %while.cond.6

while.cond.6:                                     ; preds = %land.rhs.6.while.cond.6_crit_edge, %if.then34.5
  %ret.0.6 = phi i32 [ %call31.6, %land.rhs.6.while.cond.6_crit_edge ], [ -62, %if.then34.5 ]
  %27 = zext i32 %ret.0.6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %ret.0.6, label %out.loopexit274 [
    i32 -62, label %land.rhs.6
    i32 1, label %while.cond.6.out_crit_edge
  ]

while.cond.6.out_crit_edge:                       ; preds = %while.cond.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.rhs.6:                                       ; preds = %while.cond.6
  %call31.6 = call i32 @smu_cmn_wait_for_response(ptr noundef %smu) #13
  %28 = zext i32 %call31.6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %call31.6, label %land.rhs.6.do.end41_crit_edge [
    i32 -62, label %if.then34.6
    i32 1, label %land.rhs.6.while.cond.6_crit_edge
  ]

land.rhs.6.while.cond.6_crit_edge:                ; preds = %land.rhs.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.6

land.rhs.6.do.end41_crit_edge:                    ; preds = %land.rhs.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end41

if.then34.6:                                      ; preds = %land.rhs.6
  call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #13
  br label %while.cond.7

while.cond.7:                                     ; preds = %land.rhs.7.while.cond.7_crit_edge, %if.then34.6
  %ret.0.7 = phi i32 [ %call31.7, %land.rhs.7.while.cond.7_crit_edge ], [ -62, %if.then34.6 ]
  %29 = zext i32 %ret.0.7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %ret.0.7, label %out.loopexit268 [
    i32 -62, label %land.rhs.7
    i32 1, label %while.cond.7.out_crit_edge
  ]

while.cond.7.out_crit_edge:                       ; preds = %while.cond.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.rhs.7:                                       ; preds = %while.cond.7
  %call31.7 = call i32 @smu_cmn_wait_for_response(ptr noundef %smu) #13
  %30 = zext i32 %call31.7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %call31.7, label %land.rhs.7.do.end41_crit_edge [
    i32 -62, label %if.then34.7
    i32 1, label %land.rhs.7.while.cond.7_crit_edge
  ]

land.rhs.7.while.cond.7_crit_edge:                ; preds = %land.rhs.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.7

land.rhs.7.do.end41_crit_edge:                    ; preds = %land.rhs.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end41

if.then34.7:                                      ; preds = %land.rhs.7
  call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #13
  br label %while.cond.8

while.cond.8:                                     ; preds = %land.rhs.8.while.cond.8_crit_edge, %if.then34.7
  %ret.0.8 = phi i32 [ %call31.8, %land.rhs.8.while.cond.8_crit_edge ], [ -62, %if.then34.7 ]
  %31 = zext i32 %ret.0.8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %ret.0.8, label %out.loopexit262 [
    i32 -62, label %land.rhs.8
    i32 1, label %while.cond.8.out_crit_edge
  ]

while.cond.8.out_crit_edge:                       ; preds = %while.cond.8
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.rhs.8:                                       ; preds = %while.cond.8
  %call31.8 = call i32 @smu_cmn_wait_for_response(ptr noundef %smu) #13
  %32 = zext i32 %call31.8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %call31.8, label %land.rhs.8.do.end41_crit_edge [
    i32 -62, label %if.then34.8
    i32 1, label %land.rhs.8.while.cond.8_crit_edge
  ]

land.rhs.8.while.cond.8_crit_edge:                ; preds = %land.rhs.8
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.8

land.rhs.8.do.end41_crit_edge:                    ; preds = %land.rhs.8
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end41

if.then34.8:                                      ; preds = %land.rhs.8
  call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #13
  br label %while.cond.9

while.cond.9:                                     ; preds = %land.rhs.9.while.cond.9_crit_edge, %if.then34.8
  %ret.0.9 = phi i32 [ %call31.9, %land.rhs.9.while.cond.9_crit_edge ], [ -62, %if.then34.8 ]
  %33 = zext i32 %ret.0.9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %ret.0.9, label %out.loopexit [
    i32 -62, label %land.rhs.9
    i32 1, label %while.cond.9.out_crit_edge
  ]

while.cond.9.out_crit_edge:                       ; preds = %while.cond.9
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.rhs.9:                                       ; preds = %while.cond.9
  %call31.9 = call i32 @smu_cmn_wait_for_response(ptr noundef %smu) #13
  %34 = zext i32 %call31.9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %call31.9, label %land.rhs.9.do.end41_crit_edge [
    i32 -62, label %out.loopexit.loopexit125
    i32 1, label %land.rhs.9.while.cond.9_crit_edge
  ]

land.rhs.9.while.cond.9_crit_edge:                ; preds = %land.rhs.9
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.9

land.rhs.9.do.end41_crit_edge:                    ; preds = %land.rhs.9
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end41

do.end41:                                         ; preds = %land.rhs.9.do.end41_crit_edge, %land.rhs.8.do.end41_crit_edge, %land.rhs.7.do.end41_crit_edge, %land.rhs.6.do.end41_crit_edge, %land.rhs.5.do.end41_crit_edge, %land.rhs.4.do.end41_crit_edge, %land.rhs.3.do.end41_crit_edge, %land.rhs.2.do.end41_crit_edge, %land.rhs.1.do.end41_crit_edge, %land.rhs.do.end41_crit_edge
  %call31.lcssa = phi i32 [ %call31.9, %land.rhs.9.do.end41_crit_edge ], [ %call31.8, %land.rhs.8.do.end41_crit_edge ], [ %call31.7, %land.rhs.7.do.end41_crit_edge ], [ %call31.6, %land.rhs.6.do.end41_crit_edge ], [ %call31.5, %land.rhs.5.do.end41_crit_edge ], [ %call31.4, %land.rhs.4.do.end41_crit_edge ], [ %call31.3, %land.rhs.3.do.end41_crit_edge ], [ %call31.2, %land.rhs.2.do.end41_crit_edge ], [ %call31.1, %land.rhs.1.do.end41_crit_edge ], [ %call31, %land.rhs.do.end41_crit_edge ]
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %2, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.102, i32 noundef 2, i32 noundef %call31.lcssa) #16
  br label %out

do.end46:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %2, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.104, i32 noundef %4) #16
  br label %out

out.loopexit.loopexit125:                         ; preds = %land.rhs.9
  call void @__sanitizer_cov_trace_pc() #15
  call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #13
  br label %out

out.loopexit:                                     ; preds = %while.cond.9
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out.loopexit262:                                  ; preds = %while.cond.8
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out.loopexit268:                                  ; preds = %while.cond.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out.loopexit274:                                  ; preds = %while.cond.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out.loopexit280:                                  ; preds = %while.cond.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out.loopexit286:                                  ; preds = %while.cond.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out.loopexit292:                                  ; preds = %while.cond.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out.loopexit298:                                  ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out.loopexit304:                                  ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out.loopexit310:                                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out:                                              ; preds = %out.loopexit310, %out.loopexit304, %out.loopexit298, %out.loopexit292, %out.loopexit286, %out.loopexit280, %out.loopexit274, %out.loopexit268, %out.loopexit262, %out.loopexit, %out.loopexit.loopexit125, %do.end46, %do.end41, %while.cond.9.out_crit_edge, %while.cond.8.out_crit_edge, %while.cond.7.out_crit_edge, %while.cond.6.out_crit_edge, %while.cond.5.out_crit_edge, %while.cond.4.out_crit_edge, %while.cond.3.out_crit_edge, %while.cond.2.out_crit_edge, %while.cond.1.out_crit_edge, %while.cond.out_crit_edge
  %ret.2 = phi i32 [ %call31.lcssa, %do.end41 ], [ 0, %do.end46 ], [ -62, %out.loopexit.loopexit125 ], [ %ret.0.9, %out.loopexit ], [ %ret.0.8, %out.loopexit262 ], [ %ret.0.7, %out.loopexit268 ], [ %ret.0.6, %out.loopexit274 ], [ %ret.0.5, %out.loopexit280 ], [ %ret.0.4, %out.loopexit286 ], [ %ret.0.3, %out.loopexit292 ], [ %ret.0.2, %out.loopexit298 ], [ %ret.0.1, %out.loopexit304 ], [ %ret.0, %out.loopexit310 ], [ 0, %while.cond.9.out_crit_edge ], [ 0, %while.cond.8.out_crit_edge ], [ 0, %while.cond.7.out_crit_edge ], [ 0, %while.cond.6.out_crit_edge ], [ 0, %while.cond.5.out_crit_edge ], [ 0, %while.cond.4.out_crit_edge ], [ 0, %while.cond.3.out_crit_edge ], [ 0, %while.cond.2.out_crit_edge ], [ 0, %while.cond.1.out_crit_edge ], [ 0, %while.cond.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %message_lock) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smu_version) #13
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_get_dpm_ultimate_freq(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aldebaran_set_soft_freq_limited_range(ptr noundef %smu, i32 noundef %clk_type, i32 noundef %min, i32 noundef %max) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dpm_context2 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 1
  %0 = ptrtoint ptr %dpm_context2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpm_context2, align 4
  %2 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu, align 8
  %4 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %clk_type, label %entry.cleanup_crit_edge [
    i32 0, label %entry.if.end_crit_edge
    i32 13, label %entry.if.end_crit_edge126
  ]

entry.if.end_crit_edge126:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge126
  %dpm_level = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 4
  %5 = ptrtoint ptr %dpm_level to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dpm_level, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %6, label %if.end.cleanup_crit_edge [
    i32 2, label %if.then14
    i32 512, label %if.then39
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %min, i32 %max)
  %cmp15.not = icmp ult i32 %min, %max
  br i1 %cmp15.not, label %if.end18, label %do.end

do.end:                                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.106) #16
  br label %cleanup

if.end18:                                         ; preds = %if.then14
  %curr = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 4
  %10 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %curr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %min)
  %cmp20 = icmp eq i32 %11, %min
  br i1 %cmp20, label %land.lhs.true21, label %if.end18.if.end27_crit_edge

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

land.lhs.true21:                                  ; preds = %if.end18
  %max24 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %max24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %max)
  %cmp25 = icmp eq i32 %13, %max
  br i1 %cmp25, label %land.lhs.true21.cleanup_crit_edge, label %land.lhs.true21.if.end27_crit_edge

land.lhs.true21.if.end27_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

land.lhs.true21.cleanup_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end27:                                         ; preds = %land.lhs.true21.if.end27_crit_edge, %if.end18.if.end27_crit_edge
  %call = tail call i32 @smu_v13_0_set_soft_freq_limited_range(ptr noundef %smu, i32 noundef 0, i32 noundef %min, i32 noundef %max) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then28, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then28:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %min, ptr %curr, align 4
  %max34 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %max34 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %max, ptr %max34, align 4
  br label %cleanup

if.then39:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max)
  %tobool40.not = icmp eq i32 %max, 0
  br i1 %tobool40.not, label %if.then39.do.end51_crit_edge, label %lor.lhs.false

if.then39.do.end51_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end51

lor.lhs.false:                                    ; preds = %if.then39
  %gfx_table = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %gfx_table to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gfx_table, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %max)
  %cmp42 = icmp ugt i32 %17, %max
  br i1 %cmp42, label %lor.lhs.false.do.end51_crit_edge, label %lor.lhs.false43

lor.lhs.false.do.end51_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end51

lor.lhs.false43:                                  ; preds = %lor.lhs.false
  %max46 = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %max46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max46, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %max)
  %cmp47 = icmp ult i32 %19, %max
  br i1 %cmp47, label %lor.lhs.false43.do.end51_crit_edge, label %if.end53

lor.lhs.false43.do.end51_crit_edge:               ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end51

do.end51:                                         ; preds = %lor.lhs.false43.do.end51_crit_edge, %lor.lhs.false.do.end51_crit_edge, %if.then39.do.end51_crit_edge
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.109, i32 noundef %max) #16
  br label %cleanup

if.end53:                                         ; preds = %lor.lhs.false43
  %call60 = tail call i32 @smu_v13_0_set_soft_freq_limited_range(ptr noundef %smu, i32 noundef 0, i32 noundef %17, i32 noundef %19) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then62, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then62:                                        ; preds = %if.end53
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #13
  %call63 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 197, i32 noundef %max, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.else, label %do.end68

do.end68:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.112, i32 noundef %max) #16
  br label %cleanup

if.else:                                          ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #15
  %curr71 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 4
  %24 = ptrtoint ptr %curr71 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %17, ptr %curr71, align 4
  %max75 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %max75 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %max, ptr %max75, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end68, %if.end53.cleanup_crit_edge, %do.end51, %if.then28, %if.end27.cleanup_crit_edge, %land.lhs.true21.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end51 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true21.cleanup_crit_edge ], [ 0, %if.then28 ], [ %call, %if.end27.cleanup_crit_edge ], [ %call60, %if.end53.cleanup_crit_edge ], [ %call63, %do.end68 ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aldebaran_log_thermal_throttling_event(ptr noundef %smu) #2 align 64 {
entry:
  %log_buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %log_buf) #13
  %metrics_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %2 = ptrtoint ptr %metrics_table.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %metrics_table.i, align 8
  %metrics_lock.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i, i32 noundef 0) #13
  %call.i = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %aldebaran_get_smu_metrics_data.exit

aldebaran_get_smu_metrics_data.exit:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ThrottlerStatus.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %ThrottlerStatus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ThrottlerStatus.i, align 4
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i) #13
  %6 = call ptr @memset(ptr %log_buf, i32 0, i32 256)
  %and = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.for.inc_crit_edge, label %if.then3

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then3:                                         ; preds = %if.end
  %call7 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %log_buf, i32 noundef 256, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.121)
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call7)
  %cmp8 = icmp ugt i32 %call7, 255
  br i1 %cmp8, label %if.then3.do.end_crit_edge, label %if.then3.for.inc_crit_edge

if.then3.for.inc_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then3.do.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %if.then3.3.do.end_crit_edge, %if.then3.2.do.end_crit_edge, %if.then3.1.do.end_crit_edge, %if.then3.do.end_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.116) #16
  %arrayidx10 = getelementptr inbounds [256 x i8], ptr %log_buf, i32 0, i32 255
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx10, align 1
  br label %do.end16

for.inc:                                          ; preds = %if.then3.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %throtting_events.1 = phi i32 [ 1, %if.then3.for.inc_crit_edge ], [ 0, %if.end.for.inc_crit_edge ]
  %buf_idx.1 = phi i32 [ %call7, %if.then3.for.inc_crit_edge ], [ 0, %if.end.for.inc_crit_edge ]
  %and.1 = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool2.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool2.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then3.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.then3.1:                                       ; preds = %for.inc
  %inc.1 = add nuw nsw i32 %throtting_events.1, 1
  %add.ptr.1 = getelementptr i8, ptr %log_buf, i32 %buf_idx.1
  %sub.1 = sub nuw nsw i32 256, %buf_idx.1
  %cond.1 = select i1 %tobool2.not, ptr @.str.13, ptr @.str.115
  %call7.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.1, i32 noundef %sub.1, ptr noundef nonnull @.str.114, ptr noundef nonnull %cond.1, ptr noundef nonnull @.str.122)
  %add.1 = add i32 %call7.1, %buf_idx.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add.1)
  %cmp8.1 = icmp ugt i32 %add.1, 255
  br i1 %cmp8.1, label %if.then3.1.do.end_crit_edge, label %if.then3.1.for.inc.1_crit_edge

if.then3.1.for.inc.1_crit_edge:                   ; preds = %if.then3.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.then3.1.do.end_crit_edge:                      ; preds = %if.then3.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

for.inc.1:                                        ; preds = %if.then3.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %throtting_events.1.1 = phi i32 [ %inc.1, %if.then3.1.for.inc.1_crit_edge ], [ %throtting_events.1, %for.inc.for.inc.1_crit_edge ]
  %buf_idx.1.1 = phi i32 [ %add.1, %if.then3.1.for.inc.1_crit_edge ], [ %buf_idx.1, %for.inc.for.inc.1_crit_edge ]
  %and.2 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool2.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool2.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then3.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.then3.2:                                       ; preds = %for.inc.1
  %inc.2 = add nuw nsw i32 %throtting_events.1.1, 1
  %add.ptr.2 = getelementptr i8, ptr %log_buf, i32 %buf_idx.1.1
  %sub.2 = sub nuw nsw i32 256, %buf_idx.1.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %throtting_events.1.1)
  %cmp5.2.not = icmp eq i32 %throtting_events.1.1, 0
  %cond.2 = select i1 %cmp5.2.not, ptr @.str.13, ptr @.str.115
  %call7.2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.2, i32 noundef %sub.2, ptr noundef nonnull @.str.114, ptr noundef nonnull %cond.2, ptr noundef nonnull @.str.123)
  %add.2 = add i32 %call7.2, %buf_idx.1.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add.2)
  %cmp8.2 = icmp ugt i32 %add.2, 255
  br i1 %cmp8.2, label %if.then3.2.do.end_crit_edge, label %if.then3.2.for.inc.2_crit_edge

if.then3.2.for.inc.2_crit_edge:                   ; preds = %if.then3.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.then3.2.do.end_crit_edge:                      ; preds = %if.then3.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

for.inc.2:                                        ; preds = %if.then3.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %throtting_events.1.2 = phi i32 [ %inc.2, %if.then3.2.for.inc.2_crit_edge ], [ %throtting_events.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %buf_idx.1.2 = phi i32 [ %add.2, %if.then3.2.for.inc.2_crit_edge ], [ %buf_idx.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %and.3 = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool2.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool2.not.3, label %for.inc.2.do.end16_crit_edge, label %if.then3.3

for.inc.2.do.end16_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end16

if.then3.3:                                       ; preds = %for.inc.2
  %add.ptr.3 = getelementptr i8, ptr %log_buf, i32 %buf_idx.1.2
  %sub.3 = sub nuw nsw i32 256, %buf_idx.1.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %throtting_events.1.2)
  %cmp5.3.not = icmp eq i32 %throtting_events.1.2, 0
  %cond.3 = select i1 %cmp5.3.not, ptr @.str.13, ptr @.str.115
  %call7.3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.3, i32 noundef %sub.3, ptr noundef nonnull @.str.114, ptr noundef nonnull %cond.3, ptr noundef nonnull @.str.124)
  %add.3 = add i32 %call7.3, %buf_idx.1.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add.3)
  %cmp8.3 = icmp ugt i32 %add.3, 255
  br i1 %cmp8.3, label %if.then3.3.do.end_crit_edge, label %if.then3.3.do.end16_crit_edge

if.then3.3.do.end16_crit_edge:                    ; preds = %if.then3.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end16

if.then3.3.do.end_crit_edge:                      ; preds = %if.then3.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end16:                                         ; preds = %if.then3.3.do.end16_crit_edge, %for.inc.2.do.end16_crit_edge, %do.end
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.119, ptr noundef nonnull %log_buf) #16
  %call21 = call i64 @smu_cmn_get_indep_throttler_status(i32 noundef %5, ptr noundef nonnull @aldebaran_throttler_map) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %aldebaran_get_smu_metrics_data.exit
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %log_buf) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_pp_feature_mask(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_set_pp_feature_mask(ptr noundef, i64 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aldebaran_get_gpu_metrics(ptr noundef %smu, ptr nocapture noundef writeonly %table) #2 align 64 {
entry:
  %metrics = alloca %struct.SmuMetrics_t, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %gpu_metrics_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 20
  %0 = ptrtoint ptr %gpu_metrics_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpu_metrics_table, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %metrics) #13
  %2 = call ptr @memset(ptr %metrics, i32 255, i32 120)
  %call = call i32 @smu_cmn_get_metrics_table(ptr noundef %smu, ptr noundef nonnull %metrics, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @smu_cmn_init_soft_gpu_metrics(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 3) #13
  %TemperatureEdge = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 12
  %3 = ptrtoint ptr %TemperatureEdge to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %TemperatureEdge, align 4
  %temperature_edge = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %temperature_edge to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %temperature_edge, align 4
  %TemperatureHotspot = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 13
  %6 = ptrtoint ptr %TemperatureHotspot to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %TemperatureHotspot, align 2
  %temperature_hotspot = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %temperature_hotspot to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %temperature_hotspot, align 2
  %TemperatureHBM = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 14
  %9 = ptrtoint ptr %TemperatureHBM to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %TemperatureHBM, align 4
  %temperature_mem = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %temperature_mem to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %temperature_mem, align 8
  %TemperatureVrGfx = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 15
  %12 = ptrtoint ptr %TemperatureVrGfx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %TemperatureVrGfx, align 2
  %temperature_vrgfx = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %temperature_vrgfx to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %temperature_vrgfx, align 2
  %TemperatureVrSoc = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 16
  %15 = ptrtoint ptr %TemperatureVrSoc to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %TemperatureVrSoc, align 4
  %temperature_vrsoc = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %temperature_vrsoc to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %temperature_vrsoc, align 4
  %TemperatureVrMem = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 17
  %18 = ptrtoint ptr %TemperatureVrMem to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %TemperatureVrMem, align 2
  %temperature_vrmem = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %temperature_vrmem to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %temperature_vrmem, align 2
  %AverageGfxActivity = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 5
  %21 = ptrtoint ptr %AverageGfxActivity to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %AverageGfxActivity, align 2
  %average_gfx_activity = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %average_gfx_activity to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %average_gfx_activity, align 8
  %AverageUclkActivity = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 6
  %24 = ptrtoint ptr %AverageUclkActivity to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %AverageUclkActivity, align 4
  %average_umc_activity = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %average_umc_activity to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %average_umc_activity, align 2
  %average_mm_activity = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %average_mm_activity to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %average_mm_activity, align 4
  %28 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %smu, align 8
  %smuio.i = getelementptr inbounds %struct.amdgpu_device, ptr %29, i32 0, i32 103
  %30 = ptrtoint ptr %smuio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %smuio.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.end.if.then3_crit_edge, label %land.lhs.true.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

land.lhs.true.i:                                  ; preds = %if.end
  %get_die_id.i = getelementptr inbounds %struct.amdgpu_smuio_funcs, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %get_die_id.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get_die_id.i, align 4
  %tobool4.not.i = icmp eq ptr %33, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.then3_crit_edge, label %aldebaran_is_primary.exit

land.lhs.true.i.if.then3_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

aldebaran_is_primary.exit:                        ; preds = %land.lhs.true.i
  %call.i = call i32 %33(ptr noundef %29) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %aldebaran_is_primary.exit.if.then3_crit_edge, label %if.else

aldebaran_is_primary.exit.if.then3_crit_edge:     ; preds = %aldebaran_is_primary.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

if.then3:                                         ; preds = %aldebaran_is_primary.exit.if.then3_crit_edge, %land.lhs.true.i.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %AverageSocketPower = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 11
  %34 = ptrtoint ptr %AverageSocketPower to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %AverageSocketPower, align 2
  %average_socket_power = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 10
  %36 = ptrtoint ptr %average_socket_power to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %average_socket_power, align 2
  %EnergyAcc64bitHigh = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 25
  %37 = ptrtoint ptr %EnergyAcc64bitHigh to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %EnergyAcc64bitHigh, align 4
  %conv = zext i32 %38 to i64
  %shl = shl nuw i64 %conv, 32
  %EnergyAcc64bitLow = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 24
  %39 = ptrtoint ptr %EnergyAcc64bitLow to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %EnergyAcc64bitLow, align 4
  %conv4 = zext i32 %40 to i64
  %or = or i64 %shl, %conv4
  br label %if.end7

if.else:                                          ; preds = %aldebaran_is_primary.exit
  call void @__sanitizer_cov_trace_pc() #15
  %average_socket_power5 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 10
  %41 = ptrtoint ptr %average_socket_power5 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %average_socket_power5, align 2
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %.sink = phi i64 [ 0, %if.else ], [ %or, %if.then3 ]
  %energy_accumulator6 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 11
  %42 = ptrtoint ptr %energy_accumulator6 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %.sink, ptr %energy_accumulator6, align 8
  %AverageGfxclkFrequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 2
  %43 = ptrtoint ptr %AverageGfxclkFrequency to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %AverageGfxclkFrequency, align 4
  %average_gfxclk_frequency = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 13
  %45 = ptrtoint ptr %average_gfxclk_frequency to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %average_gfxclk_frequency, align 8
  %AverageSocclkFrequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 3
  %46 = ptrtoint ptr %AverageSocclkFrequency to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %AverageSocclkFrequency, align 2
  %average_socclk_frequency = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 14
  %48 = ptrtoint ptr %average_socclk_frequency to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %average_socclk_frequency, align 2
  %AverageUclkFrequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 4
  %49 = ptrtoint ptr %AverageUclkFrequency to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %AverageUclkFrequency, align 4
  %average_uclk_frequency = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 15
  %51 = ptrtoint ptr %average_uclk_frequency to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %average_uclk_frequency, align 4
  %average_vclk0_frequency = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 16
  %52 = ptrtoint ptr %average_vclk0_frequency to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %average_vclk0_frequency, align 2
  %average_dclk0_frequency = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 17
  %53 = ptrtoint ptr %average_dclk0_frequency to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %average_dclk0_frequency, align 8
  %54 = ptrtoint ptr %metrics to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %metrics, align 4
  %current_gfxclk = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 20
  %56 = ptrtoint ptr %current_gfxclk to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %current_gfxclk, align 2
  %arrayidx9 = getelementptr inbounds [7 x i16], ptr %metrics, i32 0, i32 3
  %57 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx9, align 2
  %current_socclk = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 21
  %59 = ptrtoint ptr %current_socclk to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %current_socclk, align 8
  %arrayidx11 = getelementptr inbounds [7 x i16], ptr %metrics, i32 0, i32 4
  %60 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx11, align 4
  %current_uclk = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 22
  %62 = ptrtoint ptr %current_uclk to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %current_uclk, align 2
  %arrayidx13 = getelementptr inbounds [7 x i16], ptr %metrics, i32 0, i32 1
  %63 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx13, align 2
  %current_vclk0 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 23
  %65 = ptrtoint ptr %current_vclk0 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %current_vclk0, align 4
  %arrayidx15 = getelementptr inbounds [7 x i16], ptr %metrics, i32 0, i32 2
  %66 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx15, align 4
  %current_dclk0 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 24
  %68 = ptrtoint ptr %current_dclk0 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %current_dclk0, align 2
  %ThrottlerStatus = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 18
  %69 = ptrtoint ptr %ThrottlerStatus to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ThrottlerStatus, align 4
  %throttle_status = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 27
  %71 = ptrtoint ptr %throttle_status to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %throttle_status, align 4
  %call17 = call i64 @smu_cmn_get_indep_throttler_status(i32 noundef %70, ptr noundef nonnull @aldebaran_throttler_map) #13
  %indep_throttle_status = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 40
  %72 = ptrtoint ptr %indep_throttle_status to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %call17, ptr %indep_throttle_status, align 8
  %current_fan_speed = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 28
  %73 = ptrtoint ptr %current_fan_speed to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %current_fan_speed, align 8
  %call18 = call i32 @smu_v13_0_get_current_pcie_link_width(ptr noundef %smu) #13
  %conv19 = trunc i32 %call18 to i16
  %pcie_link_width = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 29
  %74 = ptrtoint ptr %pcie_link_width to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv19, ptr %pcie_link_width, align 2
  %75 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %smu, align 8
  %pcie_rreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %76, i32 0, i32 39
  %77 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pcie_rreg.i, align 8
  %call.i76 = call i32 %78(ptr noundef %76, i32 noundef 286262224) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %call.i76)
  %tobool.not.i77 = icmp ult i32 %call.i76, 32768
  br i1 %tobool.not.i77, label %if.end.i, label %if.then.i78

if.then.i78:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %shr2.i = lshr i32 %call.i76, 8
  %and3.i = and i32 %shr2.i, 63
  %add.i = or i32 %and3.i, 128
  br label %aldebaran_get_current_pcie_link_speed.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %call4.i = call i32 @smu_v13_0_get_current_pcie_link_speed(ptr noundef %smu) #13
  br label %aldebaran_get_current_pcie_link_speed.exit

aldebaran_get_current_pcie_link_speed.exit:       ; preds = %if.end.i, %if.then.i78
  %retval.0.i79 = phi i32 [ %add.i, %if.then.i78 ], [ %call4.i, %if.end.i ]
  %conv21 = trunc i32 %retval.0.i79 to i16
  %pcie_link_speed = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 30
  %79 = ptrtoint ptr %pcie_link_speed to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv21, ptr %pcie_link_speed, align 4
  %call.i.i = call i64 @ktime_get_with_offset(i32 noundef 1) #13
  %system_clock_counter = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 12
  %80 = ptrtoint ptr %system_clock_counter to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %call.i.i, ptr %system_clock_counter, align 8
  %GfxBusyAcc = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 22
  %81 = ptrtoint ptr %GfxBusyAcc to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %GfxBusyAcc, align 4
  %gfx_activity_acc = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 32
  %83 = ptrtoint ptr %gfx_activity_acc to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %gfx_activity_acc, align 8
  %DramBusyAcc = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 23
  %84 = ptrtoint ptr %DramBusyAcc to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %DramBusyAcc, align 4
  %mem_activity_acc = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 33
  %86 = ptrtoint ptr %mem_activity_acc to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %mem_activity_acc, align 4
  %arrayidx24 = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 21, i32 0
  %87 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx24, align 4
  %arrayidx25 = getelementptr %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 34, i32 0
  %89 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %arrayidx25, align 2
  %arrayidx24.1 = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 21, i32 1
  %90 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx24.1, align 2
  %arrayidx25.1 = getelementptr %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 34, i32 1
  %92 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %arrayidx25.1, align 2
  %arrayidx24.2 = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 21, i32 2
  %93 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx24.2, align 4
  %arrayidx25.2 = getelementptr %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 34, i32 2
  %95 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %arrayidx25.2, align 2
  %arrayidx24.3 = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 21, i32 3
  %96 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %arrayidx24.3, align 2
  %arrayidx25.3 = getelementptr %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 34, i32 3
  %98 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %arrayidx25.3, align 2
  %TimeStampHigh = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 27
  %99 = ptrtoint ptr %TimeStampHigh to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %TimeStampHigh, align 4
  %conv26 = zext i32 %100 to i64
  %shl27 = shl nuw i64 %conv26, 32
  %TimeStampLow = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 26
  %101 = ptrtoint ptr %TimeStampLow to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %TimeStampLow, align 4
  %conv28 = zext i32 %102 to i64
  %or29 = or i64 %shl27, %conv28
  %firmware_timestamp = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 35
  %103 = ptrtoint ptr %firmware_timestamp to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %or29, ptr %firmware_timestamp, align 8
  %104 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %1, ptr %table, align 4
  br label %cleanup

cleanup:                                          ; preds = %aldebaran_get_current_pcie_link_speed.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 120, %aldebaran_get_current_pcie_link_speed.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %metrics) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aldebaran_smu_handle_passthrough_sbr(ptr noundef %smu, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = zext i1 %enable to i32
  %call = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 206, i32 noundef %cond, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_wait_for_event(ptr noundef, i32 noundef, i64 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aldebaran_smu_send_hbm_bad_page_num(ptr noundef %smu, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 147, i32 noundef %size, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.126) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aldebaran_get_ecc_info(ptr noundef %smu, ptr nocapture noundef writeonly %table) #2 align 64 {
entry:
  %if_version.i = alloca i32, align 4
  %smu_version.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %if_version.i) #13
  %0 = ptrtoint ptr %if_version.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 255, ptr %if_version.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smu_version.i) #13
  %1 = ptrtoint ptr %smu_version.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 255, ptr %smu_version.i, align 4
  %call.i = call i32 @smu_cmn_get_smc_version(ptr noundef %smu, ptr noundef nonnull %if_version.i, ptr noundef nonnull %smu_version.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 0, i32 -95
  %2 = ptrtoint ptr %smu_version.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %smu_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4467200, i32 %3)
  %cmp.i = icmp ult i32 %3, 4467200
  %spec.store.select3.i = select i1 %cmp.i, i32 -95, i32 %spec.store.select.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smu_version.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %if_version.i) #13
  %not.cmp.i = xor i1 %cmp.i, true
  %tobool.not = select i1 %not.cmp.i, i1 %tobool.not.i, i1 false
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %ecc_table2 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 10
  %4 = ptrtoint ptr %ecc_table2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ecc_table2, align 8
  %call3 = call i32 @smu_cmn_update_table(ptr noundef %smu, i32 noundef 14, i32 noundef 0, ptr noundef %5, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smu, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.127) #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %ecc_table2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ecc_table2, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end6
  %i.044 = phi i32 [ 0, %if.end6 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x %struct.ecc_info_per_ch], ptr %table, i32 0, i32 %i.044
  %arrayidx8 = getelementptr [32 x %struct.EccInfo_t], ptr %11, i32 0, i32 %i.044
  %ce_count_lo_chip = getelementptr [32 x %struct.EccInfo_t], ptr %11, i32 0, i32 %i.044, i32 2
  %12 = ptrtoint ptr %ce_count_lo_chip to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ce_count_lo_chip, align 8
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayidx, align 8
  %ce_count_hi_chip = getelementptr [32 x %struct.EccInfo_t], ptr %11, i32 0, i32 %i.044, i32 3
  %15 = ptrtoint ptr %ce_count_hi_chip to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ce_count_hi_chip, align 2
  %ce_count_hi_chip12 = getelementptr [32 x %struct.ecc_info_per_ch], ptr %table, i32 0, i32 %i.044, i32 1
  %17 = ptrtoint ptr %ce_count_hi_chip12 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %ce_count_hi_chip12, align 2
  %18 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx8, align 8
  %mca_umc_status15 = getelementptr [32 x %struct.ecc_info_per_ch], ptr %table, i32 0, i32 %i.044, i32 2
  %20 = ptrtoint ptr %mca_umc_status15 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %mca_umc_status15, align 8
  %mca_umc_addr = getelementptr [32 x %struct.EccInfo_t], ptr %11, i32 0, i32 %i.044, i32 1
  %21 = ptrtoint ptr %mca_umc_addr to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %mca_umc_addr, align 8
  %mca_umc_addr18 = getelementptr [32 x %struct.ecc_info_per_ch], ptr %table, i32 0, i32 %i.044, i32 3
  %23 = ptrtoint ptr %mca_umc_addr18 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %mca_umc_addr18, align 8
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end ], [ %spec.store.select3.i, %entry.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_set_single_dpm_table(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aldebaran_get_current_clk_freq_by_table(ptr noundef %smu, i32 noundef %clk_type, ptr noundef writeonly %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %value, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 1, i32 noundef %clk_type) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %call, label %if.end2.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 4, label %sw.bb7
    i32 3, label %sw.bb13
    i32 1, label %sw.bb19
    i32 2, label %sw.bb25
    i32 5, label %if.end2.sw.epilog_crit_edge
  ]

if.end2.sw.epilog_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %. = select i1 %tobool4.not, i32 10, i32 0
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  %.42 = select i1 %tobool9.not, i32 13, i32 2
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  %call14 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  %.43 = select i1 %tobool15.not, i32 11, i32 1
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  %call20 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 43) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  %.44 = select i1 %tobool21.not, i32 14, i32 3
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  %call26 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 43) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  %.45 = select i1 %tobool27.not, i32 15, i32 5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb25, %sw.bb19, %sw.bb13, %sw.bb7, %sw.bb, %if.end2.sw.epilog_crit_edge
  %member_type.0 = phi i32 [ %., %sw.bb ], [ %.42, %sw.bb7 ], [ %.43, %sw.bb13 ], [ %.44, %sw.bb19 ], [ %.45, %sw.bb25 ], [ 7, %if.end2.sw.epilog_crit_edge ]
  %metrics_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %1 = ptrtoint ptr %metrics_table.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %metrics_table.i, align 8
  %metrics_lock.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i, i32 noundef 0) #13
  %call.i = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.epilog.aldebaran_get_smu_metrics_data.exit_crit_edge

sw.epilog.aldebaran_get_smu_metrics_data.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %aldebaran_get_smu_metrics_data.exit

if.end.i:                                         ; preds = %sw.epilog
  %3 = zext i32 %member_type.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %member_type.0, label %if.end.i.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb7.i
    i32 3, label %sw.bb11.i
    i32 5, label %sw.bb15.i
    i32 7, label %sw.bb19.i
    i32 10, label %sw.bb23.i
    i32 11, label %sw.bb25.i
    i32 13, label %sw.bb27.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %2, align 4
  %conv.i = zext i16 %5 to i32
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx5.i = getelementptr [7 x i16], ptr %2, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx5.i, align 2
  %conv6.i = zext i16 %7 to i32
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx9.i = getelementptr [7 x i16], ptr %2, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx9.i, align 4
  %conv10.i = zext i16 %9 to i32
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx13.i = getelementptr [7 x i16], ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx13.i, align 2
  %conv14.i = zext i16 %11 to i32
  br label %sw.epilog.i

sw.bb15.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx17.i = getelementptr [7 x i16], ptr %2, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx17.i, align 4
  %conv18.i = zext i16 %13 to i32
  br label %sw.epilog.i

sw.bb19.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx21.i = getelementptr [7 x i16], ptr %2, i32 0, i32 5
  %14 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx21.i, align 2
  %conv22.i = zext i16 %15 to i32
  br label %sw.epilog.i

sw.bb23.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %AverageGfxclkFrequency.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %2, i32 0, i32 2
  %16 = ptrtoint ptr %AverageGfxclkFrequency.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %AverageGfxclkFrequency.i, align 4
  %conv24.i = zext i16 %17 to i32
  br label %sw.epilog.i

sw.bb25.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %AverageSocclkFrequency.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %2, i32 0, i32 3
  %18 = ptrtoint ptr %AverageSocclkFrequency.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %AverageSocclkFrequency.i, align 2
  %conv26.i = zext i16 %19 to i32
  br label %sw.epilog.i

sw.bb27.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %AverageUclkFrequency.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %2, i32 0, i32 4
  %20 = ptrtoint ptr %AverageUclkFrequency.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %AverageUclkFrequency.i, align 4
  %conv28.i = zext i16 %21 to i32
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb27.i, %sw.bb25.i, %sw.bb23.i, %sw.bb19.i, %sw.bb15.i, %sw.bb11.i, %sw.bb7.i, %sw.bb3.i, %sw.bb.i, %if.end.i.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ %conv28.i, %sw.bb27.i ], [ %conv26.i, %sw.bb25.i ], [ %conv24.i, %sw.bb23.i ], [ %conv22.i, %sw.bb19.i ], [ %conv18.i, %sw.bb15.i ], [ %conv14.i, %sw.bb11.i ], [ %conv10.i, %sw.bb7.i ], [ %conv6.i, %sw.bb3.i ], [ %conv.i, %sw.bb.i ], [ -1, %if.end.i.sw.epilog.i_crit_edge ]
  %22 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink.i, ptr %value, align 4
  br label %aldebaran_get_smu_metrics_data.exit

aldebaran_get_smu_metrics_data.exit:              ; preds = %sw.epilog.i, %sw.epilog.aldebaran_get_smu_metrics_data.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i) #13
  br label %cleanup

cleanup:                                          ; preds = %aldebaran_get_smu_metrics_data.exit, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %aldebaran_get_smu_metrics_data.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_to_asic_specific_index(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_metrics_table_locked(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_get_gfx_vdd(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_set_performance_level(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aldebaran_i2c_xfer(ptr noundef %i2c_adap, ptr nocapture noundef readonly %msg, i32 noundef %num_msgs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %smu = getelementptr i8, ptr %i2c_adap, i32 -4464
  %cpu_addr = getelementptr i8, ptr %i2c_adap, i32 -3424
  %0 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpu_addr, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 52) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %call7.i.i, align 8
  %I2CSpeed = getelementptr inbounds %struct.SwI2cRequest_t, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %I2CSpeed to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %I2CSpeed, align 1
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %msg, align 4
  %conv = trunc i16 %6 to i8
  %shl = shl i8 %conv, 1
  %SlaveAddress = getelementptr inbounds %struct.SwI2cRequest_t, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %SlaveAddress to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %shl, ptr %SlaveAddress, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_msgs)
  %cmp185 = icmp sgt i32 %num_msgs, 0
  br i1 %cmp185, label %for.cond7.preheader.lr.ph, label %if.end.for.end69_crit_edge

if.end.for.end69_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end69

for.cond7.preheader.lr.ph:                        ; preds = %if.end
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags, align 2
  %10 = and i16 %9, 1
  %NumCmds = getelementptr inbounds %struct.SwI2cRequest_t, ptr %call7.i.i, i32 0, i32 3
  %sub47 = add nsw i32 %num_msgs, -1
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.inc67.for.cond7.preheader_crit_edge, %for.cond7.preheader.lr.ph
  %dir.0189 = phi i16 [ %10, %for.cond7.preheader.lr.ph ], [ %dir.1.lcssa, %for.inc67.for.cond7.preheader_crit_edge ]
  %c.0188 = phi i32 [ 0, %for.cond7.preheader.lr.ph ], [ %c.1.lcssa, %for.inc67.for.cond7.preheader_crit_edge ]
  %i.0186 = phi i32 [ 0, %for.cond7.preheader.lr.ph ], [ %inc68, %for.inc67.for.cond7.preheader_crit_edge ]
  %len = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0186, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %len, align 4
  %conv9 = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp10178.not = icmp eq i16 %12, 0
  br i1 %cmp10178.not, label %for.cond7.preheader.for.inc67_crit_edge, label %for.body12.lr.ph

for.cond7.preheader.for.inc67_crit_edge:          ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc67

for.body12.lr.ph:                                 ; preds = %for.cond7.preheader
  %flags15 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0186, i32 1
  %13 = ptrtoint ptr %flags15 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags15, align 2
  %15 = and i16 %14, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool18.not = icmp eq i16 %15, 0
  %buf = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0186, i32 3
  %sub = add nsw i32 %conv9, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0186, i32 %sub47)
  %cmp48 = icmp ne i32 %i.0186, %sub47
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %14)
  %tobool54.not = icmp sgt i16 %14, -1
  %or.cond = select i1 %cmp48, i1 %tobool54.not, i1 false
  br label %for.body12

for.body12:                                       ; preds = %if.end64.for.body12_crit_edge, %for.body12.lr.ph
  %dir.1183 = phi i16 [ %dir.0189, %for.body12.lr.ph ], [ %dir.2, %if.end64.for.body12_crit_edge ]
  %c.1180 = phi i32 [ %c.0188, %for.body12.lr.ph ], [ %inc66, %if.end64.for.body12_crit_edge ]
  %j.0179 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc65, %if.end64.for.body12_crit_edge ]
  br i1 %tobool18.not, label %if.then19, label %for.body12.if.end24_crit_edge

for.body12.if.end24_crit_edge:                    ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then19:                                        ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx13 = getelementptr %struct.SwI2cRequest_t, ptr %call7.i.i, i32 0, i32 4, i32 %c.1180
  %CmdConfig = getelementptr %struct.SwI2cRequest_t, ptr %call7.i.i, i32 0, i32 4, i32 %c.1180, i32 1
  %16 = ptrtoint ptr %CmdConfig to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %CmdConfig, align 1
  %18 = or i8 %17, 4
  store i8 %18, ptr %CmdConfig, align 1
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf, align 4
  %arrayidx23 = getelementptr i8, ptr %20, i32 %j.0179
  %21 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx23, align 1
  %23 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx13, align 2
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %for.body12.if.end24_crit_edge
  %xor177 = xor i16 %14, %dir.1183
  %24 = and i16 %xor177, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool30.not = icmp eq i16 %24, 0
  br i1 %tobool30.not, label %if.end24.if.end41_crit_edge, label %if.then31

if.end24.if.end41_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  %CmdConfig37 = getelementptr %struct.SwI2cRequest_t, ptr %call7.i.i, i32 0, i32 4, i32 %c.1180, i32 1
  %25 = ptrtoint ptr %CmdConfig37 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %CmdConfig37, align 1
  %27 = or i8 %26, 2
  store i8 %27, ptr %CmdConfig37, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.then31, %if.end24.if.end41_crit_edge
  %dir.2 = phi i16 [ %15, %if.then31 ], [ %dir.1183, %if.end24.if.end41_crit_edge ]
  %28 = ptrtoint ptr %NumCmds to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %NumCmds, align 1
  %inc = add i8 %29, 1
  store i8 %inc, ptr %NumCmds, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0179, i32 %sub)
  %cmp45 = icmp ne i32 %j.0179, %sub
  %brmerge = select i1 %cmp45, i1 true, i1 %or.cond
  br i1 %brmerge, label %if.end41.if.end64_crit_edge, label %if.then55

if.end41.if.end64_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

if.then55:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  %CmdConfig56 = getelementptr %struct.SwI2cRequest_t, ptr %call7.i.i, i32 0, i32 4, i32 %c.1180, i32 1
  %30 = ptrtoint ptr %CmdConfig56 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %CmdConfig56, align 1
  %32 = and i8 %31, -4
  %33 = or i8 %32, 1
  store i8 %33, ptr %CmdConfig56, align 1
  br label %if.end64

if.end64:                                         ; preds = %if.then55, %if.end41.if.end64_crit_edge
  %inc65 = add nuw nsw i32 %j.0179, 1
  %inc66 = add i32 %c.1180, 1
  %exitcond.not = icmp eq i32 %inc65, %conv9
  br i1 %exitcond.not, label %if.end64.for.inc67_crit_edge, label %if.end64.for.body12_crit_edge

if.end64.for.body12_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body12

if.end64.for.inc67_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc67

for.inc67:                                        ; preds = %if.end64.for.inc67_crit_edge, %for.cond7.preheader.for.inc67_crit_edge
  %c.1.lcssa = phi i32 [ %c.0188, %for.cond7.preheader.for.inc67_crit_edge ], [ %inc66, %if.end64.for.inc67_crit_edge ]
  %dir.1.lcssa = phi i16 [ %dir.0189, %for.cond7.preheader.for.inc67_crit_edge ], [ %dir.2, %if.end64.for.inc67_crit_edge ]
  %inc68 = add nuw nsw i32 %i.0186, 1
  %exitcond200.not = icmp eq i32 %inc68, %num_msgs
  br i1 %exitcond200.not, label %for.inc67.for.end69_crit_edge, label %for.inc67.for.cond7.preheader_crit_edge

for.inc67.for.cond7.preheader_crit_edge:          ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond7.preheader

for.inc67.for.end69_crit_edge:                    ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end69

for.end69:                                        ; preds = %for.inc67.for.end69_crit_edge, %if.end.for.end69_crit_edge
  %mutex = getelementptr i8, ptr %i2c_adap, i32 -4420
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %call72 = tail call i32 @smu_cmn_update_table(ptr noundef %smu, i32 noundef 12, i32 noundef 0, ptr noundef nonnull %call7.i.i, i1 noundef zeroext true) #13
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool75.not = icmp ne i32 %call72, 0
  %cmp185.not = xor i1 %cmp185, true
  %brmerge202 = or i1 %tobool75.not, %cmp185.not
  %call72.mux = select i1 %tobool75.not, i32 %call72, i32 %num_msgs
  br i1 %brmerge202, label %for.end69.fail_crit_edge, label %for.end69.for.body81_crit_edge

for.end69.for.body81_crit_edge:                   ; preds = %for.end69
  br label %for.body81

for.end69.fail_crit_edge:                         ; preds = %for.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

for.body81:                                       ; preds = %for.inc110.for.body81_crit_edge, %for.end69.for.body81_crit_edge
  %c.2199 = phi i32 [ %c.4, %for.inc110.for.body81_crit_edge ], [ 0, %for.end69.for.body81_crit_edge ]
  %i.1196 = phi i32 [ %inc111, %for.inc110.for.body81_crit_edge ], [ 0, %for.end69.for.body81_crit_edge ]
  %flags83 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.1196, i32 1
  %34 = ptrtoint ptr %flags83 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %flags83, align 2
  %36 = and i16 %35, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool86.not = icmp eq i16 %36, 0
  %len89 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.1196, i32 2
  %37 = ptrtoint ptr %len89 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %len89, align 4
  br i1 %tobool86.not, label %if.then87, label %for.cond92.preheader

for.cond92.preheader:                             ; preds = %for.body81
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp96191.not = icmp eq i16 %38, 0
  br i1 %cmp96191.not, label %for.cond92.preheader.for.inc110_crit_edge, label %for.body98.lr.ph

for.cond92.preheader.for.inc110_crit_edge:        ; preds = %for.cond92.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc110

for.body98.lr.ph:                                 ; preds = %for.cond92.preheader
  %buf104 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.1196, i32 3
  br label %for.body98

if.then87:                                        ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #15
  %conv90 = zext i16 %38 to i32
  %add = add i32 %c.2199, %conv90
  br label %for.inc110

for.body98:                                       ; preds = %for.body98.for.body98_crit_edge, %for.body98.lr.ph
  %c.3193 = phi i32 [ %c.2199, %for.body98.lr.ph ], [ %inc108, %for.body98.for.body98_crit_edge ]
  %j.1192 = phi i32 [ 0, %for.body98.lr.ph ], [ %inc107, %for.body98.for.body98_crit_edge ]
  %arrayidx101 = getelementptr %struct.SwI2cRequest_t, ptr %1, i32 0, i32 4, i32 %c.3193
  %39 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx101, align 1
  %41 = ptrtoint ptr %buf104 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buf104, align 4
  %arrayidx105 = getelementptr i8, ptr %42, i32 %j.1192
  %43 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %40, ptr %arrayidx105, align 1
  %inc107 = add nuw nsw i32 %j.1192, 1
  %inc108 = add i32 %c.3193, 1
  %44 = ptrtoint ptr %len89 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %len89, align 4
  %conv95 = zext i16 %45 to i32
  %cmp96 = icmp ult i32 %inc107, %conv95
  br i1 %cmp96, label %for.body98.for.body98_crit_edge, label %for.body98.for.inc110_crit_edge

for.body98.for.inc110_crit_edge:                  ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc110

for.body98.for.body98_crit_edge:                  ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body98

for.inc110:                                       ; preds = %for.body98.for.inc110_crit_edge, %if.then87, %for.cond92.preheader.for.inc110_crit_edge
  %c.4 = phi i32 [ %add, %if.then87 ], [ %c.2199, %for.cond92.preheader.for.inc110_crit_edge ], [ %inc108, %for.body98.for.inc110_crit_edge ]
  %inc111 = add nuw nsw i32 %i.1196, 1
  %exitcond201.not = icmp eq i32 %inc111, %num_msgs
  br i1 %exitcond201.not, label %for.inc110.fail_crit_edge, label %for.inc110.for.body81_crit_edge

for.inc110.for.body81_crit_edge:                  ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body81

for.inc110.fail_crit_edge:                        ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

fail:                                             ; preds = %for.inc110.fail_crit_edge, %for.end69.fail_crit_edge
  %r.0 = phi i32 [ %call72.mux, %for.end69.fail_crit_edge ], [ %num_msgs, %for.inc110.fail_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %fail, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %fail ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aldebaran_i2c_func(ptr nocapture noundef readnone %adap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_update_table(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_init_smc_tables(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_set_mp1_state(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_setup_pptable(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atombios_get_data_table(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_system_features_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_smc_version(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_set_power_limit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_send_msg_without_waiting(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_device_load_pci_state(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_wait_for_response(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_set_soft_freq_limited_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @smu_cmn_get_indep_throttler_status(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_metrics_table(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @smu_cmn_init_soft_gpu_metrics(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_get_current_pcie_link_width(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v13_0_get_current_pcie_link_speed(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !22, !24, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !115, !116, !118, !119, !120, !121, !123, !124, !125, !126, !128, !130, !131, !132, !133, !135, !136, !137, !139, !141, !143, !145, !147, !149, !150, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !172, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !200, !202, !203, !204, !205, !207, !208, !209, !211, !213, !215, !217, !219, !221, !223, !224, !225, !226, !228, !229, !230, !231, !233, !235, !237}
!llvm.module.flags = !{!239, !240, !241, !242, !243, !244, !245, !246}
!llvm.ident = !{!247}

!0 = !{ptr @aldebaran_ppt_funcs, !1, !"aldebaran_ppt_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1986, i32 35}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 744, i32 36}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 753, i32 36}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 753, i32 45}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 758, i32 4}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @aldebaran_print_clk_levels._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @aldebaran_print_clk_levels._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 765, i32 4}
!18 = !{ptr @aldebaran_print_clk_levels._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @aldebaran_print_clk_levels._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 790, i32 38}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 793, i32 7}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 797, i32 9}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 807, i32 45}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 812, i32 4}
!30 = !{ptr @aldebaran_print_clk_levels._entry.15, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @aldebaran_print_clk_levels._entry_ptr.17, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 819, i32 4}
!34 = !{ptr @aldebaran_print_clk_levels._entry.18, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @aldebaran_print_clk_levels._entry_ptr.20, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 835, i32 4}
!38 = !{ptr @aldebaran_print_clk_levels._entry.21, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @aldebaran_print_clk_levels._entry_ptr.23, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 842, i32 4}
!42 = !{ptr @aldebaran_print_clk_levels._entry.24, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @aldebaran_print_clk_levels._entry_ptr.26, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 858, i32 4}
!46 = !{ptr @aldebaran_print_clk_levels._entry.27, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @aldebaran_print_clk_levels._entry_ptr.29, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.31, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 865, i32 4}
!50 = !{ptr @aldebaran_print_clk_levels._entry.30, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @aldebaran_print_clk_levels._entry_ptr.32, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.34, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 881, i32 4}
!54 = !{ptr @aldebaran_print_clk_levels._entry.33, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @aldebaran_print_clk_levels._entry_ptr.35, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.37, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 888, i32 4}
!58 = !{ptr @aldebaran_print_clk_levels._entry.36, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @aldebaran_print_clk_levels._entry_ptr.38, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.40, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 904, i32 4}
!62 = !{ptr @aldebaran_print_clk_levels._entry.39, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @aldebaran_print_clk_levels._entry_ptr.41, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.43, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 911, i32 4}
!66 = !{ptr @aldebaran_print_clk_levels._entry.42, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @aldebaran_print_clk_levels._entry_ptr.44, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.45, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1001, i32 4}
!70 = !{ptr @.str.46, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @aldebaran_force_clk_levels._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @aldebaran_force_clk_levels._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.48, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1012, i32 4}
!75 = !{ptr @aldebaran_force_clk_levels._entry.47, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @aldebaran_force_clk_levels._entry_ptr.49, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.51, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1021, i32 4}
!79 = !{ptr @aldebaran_force_clk_levels._entry.50, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @aldebaran_force_clk_levels._entry_ptr.52, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.53, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 949, i32 4}
!83 = !{ptr @.str.54, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @aldebaran_upload_dpm_level._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @aldebaran_upload_dpm_level._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.55, !82, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.56, !82, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.58, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 963, i32 4}
!90 = !{ptr @aldebaran_upload_dpm_level._entry.57, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @aldebaran_upload_dpm_level._entry_ptr.59, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.61, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 977, i32 4}
!94 = !{ptr @aldebaran_upload_dpm_level._entry.60, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @aldebaran_upload_dpm_level._entry_ptr.62, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.63, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1394, i32 4}
!98 = !{ptr @.str.64, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @aldebaran_usr_edit_dpm_table._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @aldebaran_usr_edit_dpm_table._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.66, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1400, i32 5}
!103 = !{ptr @.str.67, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @aldebaran_usr_edit_dpm_table._entry.65, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @aldebaran_usr_edit_dpm_table._entry_ptr.68, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.70, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1410, i32 5}
!108 = !{ptr @aldebaran_usr_edit_dpm_table._entry.69, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @aldebaran_usr_edit_dpm_table._entry_ptr.71, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @aldebaran_usr_edit_dpm_table._entry.72, !111, !"_entry", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1424, i32 4}
!112 = !{ptr @aldebaran_usr_edit_dpm_table._entry_ptr.73, !111, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @aldebaran_usr_edit_dpm_table._entry.74, !114, !"_entry", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1436, i32 4}
!115 = !{ptr @aldebaran_usr_edit_dpm_table._entry_ptr.75, !114, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.76, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1089, i32 3}
!118 = !{ptr @.str.77, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @aldebaran_get_current_activity_percent._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @aldebaran_get_current_activity_percent._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.78, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1132, i32 3}
!123 = !{ptr @.str.79, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @aldebaran_thermal_get_temperature._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @aldebaran_thermal_get_temperature._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @smu13_thermal_policy, !127, !"smu13_thermal_policy", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 87, i32 43}
!128 = !{ptr @.str.80, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1212, i32 3}
!130 = !{ptr @.str.81, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @aldebaran_get_power_limit._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @aldebaran_get_power_limit._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.83, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1228, i32 5}
!135 = !{ptr @aldebaran_get_power_limit._entry.82, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @aldebaran_get_power_limit._entry_ptr.84, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.85, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1575, i32 49}
!139 = !{ptr @.str.86, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1580, i32 3}
!141 = !{ptr @aldebaran_i2c_algo, !142, !"aldebaran_i2c_algo", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1553, i32 35}
!143 = !{ptr @aldebaran_i2c_control_quirks, !144, !"aldebaran_i2c_control_quirks", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1558, i32 40}
!145 = !{ptr @.str.87, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1610, i32 25}
!147 = !{ptr @.str.88, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 411, i32 2}
!149 = !{ptr @.str.89, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.90, !148, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @aldebaran_append_powerplay_table._entry, !148, !"_entry", i1 false, i1 false}
!152 = !{ptr @aldebaran_append_powerplay_table._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.91, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 487, i32 3}
!155 = !{ptr @.str.92, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @aldebaran_run_btc._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @aldebaran_run_btc._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.93, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 468, i32 3}
!160 = !{ptr @.str.94, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @aldebaran_run_board_btc._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @aldebaran_run_board_btc._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.96, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 476, i32 3}
!165 = !{ptr @aldebaran_run_board_btc._entry.95, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @aldebaran_run_board_btc._entry_ptr.97, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.98, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1891, i32 3}
!169 = !{ptr @.str.99, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.100, !168, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @aldebaran_mode2_reset.__UNIQUE_ID_ddebug344, !168, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!172 = !{ptr @.str.101, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1895, i32 3}
!174 = !{ptr @aldebaran_mode2_reset.__UNIQUE_ID_ddebug345, !173, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!175 = !{ptr @.str.102, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1906, i32 5}
!177 = !{ptr @aldebaran_mode2_reset._entry, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @aldebaran_mode2_reset._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.104, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1913, i32 3}
!181 = !{ptr @aldebaran_mode2_reset._entry.103, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @aldebaran_mode2_reset._entry_ptr.105, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.106, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1327, i32 4}
!185 = !{ptr @.str.107, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @aldebaran_set_soft_freq_limited_range._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @aldebaran_set_soft_freq_limited_range._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.109, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1349, i32 4}
!190 = !{ptr @aldebaran_set_soft_freq_limited_range._entry.108, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @aldebaran_set_soft_freq_limited_range._entry_ptr.110, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.112, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1364, i32 5}
!194 = !{ptr @aldebaran_set_soft_freq_limited_range._entry.111, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @aldebaran_set_soft_freq_limited_range._entry_ptr.113, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.114, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1672, i32 10}
!198 = !{ptr @.str.115, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1673, i32 33}
!200 = !{ptr @.str.116, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1676, i32 5}
!202 = !{ptr @.str.117, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @aldebaran_log_thermal_throttling_event._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @aldebaran_log_thermal_throttling_event._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.119, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1683, i32 2}
!207 = !{ptr @aldebaran_log_thermal_throttling_event._entry.118, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @aldebaran_log_thermal_throttling_event._entry_ptr.120, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.121, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1646, i32 35}
!211 = !{ptr @.str.122, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1647, i32 38}
!213 = !{ptr @.str.123, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1648, i32 38}
!215 = !{ptr @.str.124, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1649, i32 38}
!217 = distinct !{null, !218, !"logging_label", i1 false, i1 false}
!218 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1645, i32 3}
!219 = !{ptr @aldebaran_throttler_map, !220, !"aldebaran_throttler_map", i1 false, i1 false}
!220 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 203, i32 22}
!221 = !{ptr @.str.125, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1980, i32 3}
!223 = !{ptr @.str.126, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @aldebaran_smu_send_hbm_bad_page_num._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @aldebaran_smu_send_hbm_bad_page_num._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.127, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 1818, i32 3}
!228 = !{ptr @.str.128, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @aldebaran_get_ecc_info._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @aldebaran_get_ecc_info._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @aldebaran_message_map, !232, !"aldebaran_message_map", i1 false, i1 false}
!232 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 93, i32 42}
!233 = !{ptr @aldebaran_clk_map, !234, !"aldebaran_clk_map", i1 false, i1 false}
!234 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 147, i32 38}
!235 = !{ptr @aldebaran_feature_mask_map, !236, !"aldebaran_feature_mask_map", i1 false, i1 false}
!236 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 159, i32 38}
!237 = !{ptr @aldebaran_table_map, !238, !"aldebaran_table_map", i1 false, i1 false}
!238 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/aldebaran_ppt.c", i32 192, i32 38}
!239 = !{i32 1, !"wchar_size", i32 2}
!240 = !{i32 1, !"min_enum_size", i32 4}
!241 = !{i32 8, !"branch-target-enforcement", i32 0}
!242 = !{i32 8, !"sign-return-address", i32 0}
!243 = !{i32 8, !"sign-return-address-all", i32 0}
!244 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!245 = !{i32 7, !"uwtable", i32 1}
!246 = !{i32 7, !"frame-pointer", i32 2}
!247 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!248 = !{!"auto-init"}
!249 = !{i32 0, i32 33}
!250 = !{i64 2148241912, i64 2148241917, i64 2148241930, i64 2148241974, i64 2148242008, i64 2148242029}
